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

     
    String NumM = "";


    String Num2 = "";
   
    protected void Page_Load(object sender, EventArgs e)
    {

        NumM = TextBox1.Text.ToString();

        Session["CNumM"] = NumM.ToString();

      
        Num2 = TextBox2.Text;
        TextBox2.Text = Num2;
         

    }

    protected void GridViewG(object sender, EventArgs e)
    {
        Num2 = GridView1.SelectedRow.Cells[1].Text;
        TextBox2.Text = Num2;
        Session["RVSN"] = Num2;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource2.Update();
        Response.Redirect("~/ThankR.aspx");
    }
}