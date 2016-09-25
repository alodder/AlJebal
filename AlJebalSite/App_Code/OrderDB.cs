using System;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.ComponentModel;
using System.Collections.Generic;

[DataObject(true)]
public static class OrderDB
{
    //[DataObjectMethod(DataObjectMethodType.Select)]
    //public static DataSet GetAllOrders()
    //{
    //    SqlConnection con = new SqlConnection(GetConnectionString());

    //    String sql = "SELECT * ";

    //    SqlCommand cmd = new SqlCommand("PlaceOrder", con);
    //    cmd.CommandType = CommandType.StoredProcedure;
    //}

    [DataObjectMethod(DataObjectMethodType.Insert)]
    public static int PlaceOrder(SortedList order, int customerID)
    {
        SqlTransaction tran;

        int orderID = -1;
        SqlConnection con = new SqlConnection(GetConnectionString());

        try
        {
            if (con.State != ConnectionState.Open)
                con.Open();
        }
        catch (SqlException ex)
        {
            //
        }

        tran = con.BeginTransaction();

        string ins = "EXEC PlaceOrder @total, @customerID";

        SqlCommand cmd = new SqlCommand("PlaceOrder", con, tran);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("total", 0);
        cmd.Parameters.AddWithValue("customerID", customerID);

        try
        {
            //make an invoice for order
            SqlDataReader dataReader = cmd.ExecuteReader();
            if (dataReader.HasRows)
            {
                dataReader.Read();
                orderID = Convert.ToInt32(dataReader["OrderNum"]);
                dataReader.Close();
            }




            //add items to order
            double orderTotal = 0;
            OrderItem item;
            foreach (DictionaryEntry entry in order)
            {
                ins = "EXEC AddOrderItem @OrderNum, @ItemNum, @Quantity, @Price, @Total";
                cmd = new SqlCommand(ins, con, tran);

                item = (OrderItem)entry.Value;
                cmd.Parameters.AddWithValue("OrderNum", orderID);
                cmd.Parameters.AddWithValue("ItemNum", item.MenuItem.ItemID);
                cmd.Parameters.AddWithValue("Quantity", item.Quantity);
                cmd.Parameters.AddWithValue("Price", item.MenuItem.ItemPrice);
                cmd.Parameters.AddWithValue("Total", item.Quantity * item.MenuItem.ItemPrice);
                orderTotal += (double)(item.MenuItem.ItemPrice) * (item.Quantity);

                int i = cmd.ExecuteNonQuery();
            }

            //update order with total
            ins = "UPDATE OrderInvoice SET OrderTotal='" + orderTotal + "' WHERE OrderNum =" + orderID;
            cmd = new SqlCommand(ins, con, tran);

            int x = cmd.ExecuteNonQuery();

            tran.Commit();
        }
        catch(SqlException ex){
            tran.Rollback();
        }
        finally{
            if (con.State != ConnectionState.Closed)
                con.Close();
            con.Dispose();
            cmd.Dispose();
            tran.Dispose();
        }

        return orderID;
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public static Customer GetCustomer(String Email)
    {
        Customer customer = new Customer();
        customer.Email = Email;
        SqlConnection con = new SqlConnection(GetConnectionString());
        string sel = "SELECT CustomerID, CFirstName, CLastName, CAddress, Cellphone, Email, DWTRA "
            + "FROM Customer WHERE Email='@inEMail'";
        SqlCommand cmd = new SqlCommand(sel, con);
        cmd.Parameters.AddWithValue("inEMail", Email);

        con.Open();
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        if (!dr.HasRows)
        {
            customer.CustomerID = -1;
        }
        else
        {
            while (dr.Read())
            {
                customer.CustomerID = Int32.Parse(dr["CustomerID"].ToString());
                customer.CFirstName = dr["CFirstName"].ToString();
                customer.CLastName = dr["CLastName"].ToString();
                customer.CAddress = dr["CAddress"].ToString();
                customer.Cellphone = dr["Cellphone"].ToString();
                customer.Email = dr["Email"].ToString();
                customer.DWTRA = Int32.Parse(dr["DWTRA"].ToString());
            }
        }
        dr.Close();
        con.Close();
        return customer;
    }

    [DataObjectMethod(DataObjectMethodType.Insert)]
    public static Customer CreateCustomer(Customer newCustomer)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());

        //string ins = "EXEC CreateCustomerByEmail @Email, @FName, @LName";
        SqlCommand cmd = new SqlCommand("CreateCustomer", con);

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("fname", newCustomer.CFirstName);
        cmd.Parameters.AddWithValue("lname", newCustomer.CLastName);
        cmd.Parameters.AddWithValue("address", newCustomer.CAddress);
        cmd.Parameters.AddWithValue("phone", newCustomer.Cellphone);
        cmd.Parameters.AddWithValue("email", newCustomer.Email);

        con.Open();
        SqlDataReader dataReader = cmd.ExecuteReader();
        if (dataReader.HasRows)
        {
            dataReader.Read();
            newCustomer.CustomerID = Convert.ToInt32(dataReader["newID"]);
        }
        con.Close();
        return newCustomer;
    }

    private static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["AlJebalConnectionString4"].ConnectionString;
    }
}
