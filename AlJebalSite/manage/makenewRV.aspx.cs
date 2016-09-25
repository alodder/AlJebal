using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Web.UI.WebControls.WebParts;

public partial class manage_Default3 : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if ((string)Session["myTheme"] == "")
            Page.Theme = "Theme1";
        else
            Page.Theme = (string)Session["myTheme"];

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        int IDB = 0;

/*
        int VBI = 0;
 
        VBI = int.Parse(DDID.SelectedValue.ToString());

        Session["GETIDNOW"] = VBI + "";
        IDBT.Text = Session["GETIDNOW"].ToString();
        */

        string connectionString = "Provider=SQLOLEDB;Data Source=140.211.126.155;Initial Catalog=AlJebal;User ID=AlJebalSystemUser;Password=Password1234" + "Integrated Security=SSPI;";
        string selectSQL;
        selectSQL = "select top 1 dbo.Customer.CustomerID from Customer order by CustomerID DESC"; 
        OleDbConnection con = new OleDbConnection(connectionString);
        OleDbCommand cmd = new OleDbCommand(selectSQL, con);
        OleDbDataReader reader;

        
        try
        {
            con.Open();
            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                IDB = int.Parse(reader["IDB"].ToString());


            }
            reader.Close();
        }
        catch (Exception err)
        {
            erro.Text = err.Message;
        }
        finally
        {
            con.Close();
        }

        Session["IDB"] = IDB + 1;
        String x = "";
        x = Session["IDB"].ToString();
       // IDBT.Text = x;

        
    }
    protected void Enter_Click(object sender, EventArgs e)
    {
        String FullAddress = "";
        String DateTTime = "";
        FullAddress = ST.Text.ToString() + " , " + city.Text.ToString() + " , " + "OR," + Zip.Text.ToString();

        
       //int re =  int.Parse(gID.SelectedValue.ToString());
      // gID.

       //Session["re"] = re + 1+ "";

       //IDBT.Text = Session["re"].ToString();
        int CustomerID = 0;
        
        string connectionString = "Provider=SQLOLEDB;Data Source=140.211.126.155;Initial Catalog=AlJebal;User ID=AlJebalSystemUser;Password=Password1234" + "Integrated Security=SSPI;";
        string selectSQL;
        selectSQL = "select CustomerID from Customer where Email ='" + email.Text.ToString() + "'";
        OleDbConnection con = new OleDbConnection(connectionString);
        OleDbCommand cmd = new OleDbCommand(selectSQL, con);
        OleDbDataReader reader;


        try
        {
            con.Open();
            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                CustomerID = int.Parse(reader["CustomerID"].ToString());


            }
            reader.Close();
        }
        catch (Exception err)
        {
            erro.Text = err.Message;
        }
        finally
        {
            con.Close();
        }
       
        Session["CustomerID"] = CustomerID ;
        
       


        DateTTime = Date.Text.ToString() + " " + Time.Text.ToString();
         Session["AddressS"] = FullAddress;
         SqlDataSource1.Insert();
         Session["DateTimeS"] = DateTTime;
         SqlDataSource4.Insert();
         Response.Redirect("~/manage/RVdeaitalview.aspx");
        
        
    }
    protected void ClanderButton1_Click(object sender, ImageClickEventArgs e)
    {

        CalendarBO.Visible = true;
        ClanderButton1.Visible = false;
         


    }
    protected void CalendarBO_SelectionChanged(object sender, EventArgs e)
    {
        Date.Text = CalendarBO.SelectedDate.Month.ToString() + "/"
                   + CalendarBO.SelectedDate.Day.ToString() +
                   "/" + CalendarBO.SelectedDate.Year.ToString();

        CalendarBO.Visible = false;
        ClanderButton1.Visible = true;
    }


}