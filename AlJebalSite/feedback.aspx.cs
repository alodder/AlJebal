using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manage_Default2 : System.Web.UI.Page
{

    protected void Page_PreInit(object sender, EventArgs e)
    {
        if ((string)Session["myTheme2"] == null)
            Page.Theme = "Theme1";
        else
            Page.Theme = (string)Session["myTheme2"];

    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
    }
}