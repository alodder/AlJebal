using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    String SY2 = "";
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if ((string)Session["myTheme2"] == "")
            Page.Theme = "Theme1";
        else
            Page.Theme = (string)Session["myTheme2"];

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        SY2 = DropDownList1.SelectedValue.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

       
        Session["myTheme2"] = SY2;
        Response.Redirect("~/ChangThem.aspx");
    }
}