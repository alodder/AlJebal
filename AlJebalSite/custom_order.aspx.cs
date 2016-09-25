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

     
     
    String cEmail = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        cEmail = email.Text.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String FullAddress = "";

        FullAddress = ST.Text.ToString() + " , " + city.Text.ToString() + " , " + "OR," + Zip.Text.ToString();
        Session["AddressS"] = FullAddress;
        SqlDataSource4.Insert();
        SqlDataSource3.Insert();
        Response.Redirect("~/ThankCD.aspx?chosen=" + cEmail);

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