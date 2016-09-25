using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;
using System.Data;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{

    private SortedList order;

    protected void Page_PreInit(object sender, EventArgs e)
    {
        if ((string)Session["myTheme2"] == "")
            Page.Theme = "Theme1";
        else
            Page.Theme = (string)Session["myTheme2"];

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
            menuLabel.Text = DropDownList1.SelectedItem.Text;
        order = GetOrder();
        DisplayOrder();
    }

    private void DisplayOrder()
    {
        decimal orderTotal = 0;
        lstOrder.Items.Clear();
        OrderItem item;
        foreach (DictionaryEntry entry in order)
        {
            item = (OrderItem)entry.Value;
            lstOrder.Items.Add(item.Display());
            orderTotal += (item.MenuItem.ItemPrice) * (item.Quantity);
        }
        totalLabel.Text = String.Format("{0:c}", orderTotal);
    }

    protected void Page_Init(object sender, EventArgs e)
    {
        ListView1.ItemCommand += new EventHandler<ListViewCommandEventArgs>(ListView1_ItemCommand);
    }

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        OrderItem item = new OrderItem();
        item.MenuItem = getMenuItem((string)e.CommandArgument);
        item.Quantity++;
        this.AddToOrder(item);
        DisplayOrder();
    }

    private MenuItem getMenuItem(String p)
    {
        MenuItem plate = new MenuItem();

        String query = "EXEC getMenuItem " + p;
        SqlConnection con = new SqlConnection("Data Source=140.211.126.155;Initial Catalog=AlJebal;Persist Security Info=True;User ID=AlJebalSystemUser;Password=Password1234");
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();

        SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

        while (reader.Read())
        {
            plate.ItemID = p;
            plate.Name = reader["ItemName"].ToString();
            plate.Category = reader["Category"].ToString();
            plate.ItemDescription = reader["ItemDescription"].ToString();
            plate.ItemPrice = decimal.Parse(reader["ItemPrice"].ToString());
            plate.ItemImage = reader["ItemImage"].ToString();
        }
        reader.Close();

        return plate;
    }

    private void AddToOrder(OrderItem item)
    {
        SortedList order = this.GetOrder();
        string productID = item.MenuItem.ItemID;
        if (order.ContainsKey(productID))
        {
            OrderItem existingItem = (OrderItem)order[productID];
            existingItem.Quantity += item.Quantity;
        }
        else
            order.Add(productID, item);
    }

    private SortedList GetOrder()
    {
        if (Session["Order"] == null)
            Session.Add("Order", new SortedList());
        return (SortedList)Session["Order"];
    }

    private static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["AlJebalConnectionString4"].ConnectionString;
    }
}