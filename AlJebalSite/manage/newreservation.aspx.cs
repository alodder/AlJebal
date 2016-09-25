using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataSource4.Insert();
    }
}