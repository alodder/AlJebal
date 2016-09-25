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
    protected void have_uRadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (have_uRadioButtonList1.SelectedValue.ToString() == "Yes")
        {
            What_kind.Visible = true;
            LebaneseCheckBox1.Visible = true;
            PersianCheckBox1.Visible = true;
            Moroccanbox.Visible = true;
            GulfCheckBox1.Visible = true;
            Like_the_most.Visible = true;
            Like_the_mostRadioButtonList1.Visible = true;

        }
        else
        {

            What_kind.Visible = false;
            LebaneseCheckBox1.Visible = false;
            PersianCheckBox1.Visible = false;
            Moroccanbox.Visible = false;
            GulfCheckBox1.Visible = false;
            Like_the_most.Visible = false;
            Like_the_most.Visible = false;
            Like_the_mostRadioButtonList1.Visible = false;
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue.ToString() == "Yes")
        {
            Namee.Visible = true;
            Yourname.Visible = true;
            PhoneNum.Visible = true;
            Label1.Visible = true;
            email.Visible = true;
            youremail.Visible = true;
            ZipTextBox1.Visible = true;
            city.Visible = true;
            statbox.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;


        }
        else
        {
            Namee.Visible = false;
            Yourname.Visible = false;
            PhoneNum.Visible = false;
            Label1.Visible = false;
            email.Visible = false;
            youremail.Visible = false;
            ZipTextBox1.Visible = false;
            city.Visible = false;
            statbox.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
        }

    }
    protected void bteenter_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
        Response.Redirect("~/ThankS.aspx");

    }
    String Zepcodt = "";
    protected void ZipTextBox1_TextChanged(object sender, EventArgs e)
    {
        webweather.Weather cityweather = new webweather.Weather();
         Zepcodt = ZipTextBox1.Text.ToString();
         city.Text = cityweather.GetCityWeatherByZIP(Zepcodt.ToString()).City.ToString();
         statbox.Text = cityweather.GetCityWeatherByZIP(Zepcodt.ToString()).State.ToString();
    }
}