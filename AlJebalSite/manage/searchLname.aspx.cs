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
        if ((string)Session["myTheme"] == "")
            Page.Theme = "Theme1";
        else
            Page.Theme = (string)Session["myTheme"];

    }
    String Num = ""; 
    protected void Page_Load(object sender, EventArgs e)
    {
        Num = TextBox1.Text.ToString();

        Session["CNum"] = Num.ToString();
    }
}