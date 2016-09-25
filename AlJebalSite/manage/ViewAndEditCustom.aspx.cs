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
    String NumM = "";
    String Num = "";

    String Num2 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        

        Session["CNumM"] = NumM.ToString();


        Num2 = TextBox2.Text;
        TextBox2.Text = Num2;

        Num = TextBox2.Text.ToString();
       
        
    }
    protected void GridViewG(object sender, EventArgs e)
    {
        Num2 = GridView1.SelectedRow.Cells[2].Text;
        TextBox2.Text = Num2;
        Session["RVSN"] = Num2;
        Session["CNum"] = Num.ToString();
        

    }
}