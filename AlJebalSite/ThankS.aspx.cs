using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
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
}