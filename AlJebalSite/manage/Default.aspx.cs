using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manage_Default : System.Web.UI.Page
{
    String Stempr = "";
    String Swind = "";
    String Sdescr = "";
    String Szip = "97333";

    String cityStempr = "";
    String citySwind = "";
    String citySdescr = "";
    String CCity = "";
    String cityzip = "";


    protected void Page_PreInit(object sender, EventArgs e)
    {


        if ((string)Session["myTheme"] == "")
            Page.Theme = "Theme1";
        else
            Page.Theme = (string)Session["myTheme"];

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        webweather.Weather cityweather = new webweather.Weather();

        Stempr = cityweather.GetCityWeatherByZIP(Szip.ToString()).Temperature.ToString() + "&deg; F"  ;
        Sdescr = cityweather.GetCityWeatherByZIP(Szip.ToString()).Description.ToString();
        Swind = cityweather.GetCityWeatherByZIP(Szip.ToString()).Wind.ToString() + ", windchill :" + cityweather.GetCityWeatherByZIP(Szip.ToString()).WindChill.ToString();


        LabelTemperature.Text = Stempr.ToString();
        LabelDescription.Text = Sdescr.ToString();
        wind.Text = Swind.ToString();
    }

    protected void updateZIP(object sender, EventArgs e)
    {
        cityzip = TextBox1.Text.ToString();
        webweather.Weather ccityweather = new webweather.Weather();

        CCity = ccityweather.GetCityWeatherByZIP(cityzip).City.ToString() + " , " + ccityweather.GetCityWeatherByZIP(cityzip).State.ToString();
        cityStempr = ccityweather.GetCityWeatherByZIP(cityzip).Temperature.ToString() + "&deg; F";
        citySdescr = ccityweather.GetCityWeatherByZIP(cityzip).Description.ToString();
        citySwind = ccityweather.GetCityWeatherByZIP(cityzip).Wind.ToString();

        Labelcity.Text = CCity;
        citytemp.Text = cityStempr;
        citydescr.Text = citySdescr;
        citywind.Text = citySwind;

    }
}