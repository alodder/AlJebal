using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    String NumM = "";


    String Num2 = "";
    String cEmail = "";
   
    protected void Page_Load(object sender, EventArgs e)
    {

        NumM = TextBox1.Text.ToString();

        Session["CNumM"] = NumM.ToString();
        cEmail = email.Text.ToString();
      
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
        String FullAddress = "";
       
        FullAddress = ST.Text.ToString() + " , " + city.Text.ToString() + " , " + "OR," + Zip.Text.ToString();

        Session["AddressS"] = FullAddress;
        SqlDataSource3.Insert();
        SqlDataSource2.Update();
        Response.Redirect("~/ThankR.aspx?chosen=" + cEmail);
    }
}