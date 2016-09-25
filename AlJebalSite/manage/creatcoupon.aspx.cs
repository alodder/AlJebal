using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class manage_Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    String COcode = "";
    String COtitle = "";
    public System.Drawing.Image Base64ToImage(byte[] imageBytes)
    {
        // Convert Base64 String to byte[]
        // byte[] imageBytes = Convert.FromBase64String(base64String);
        MemoryStream ms = new MemoryStream(imageBytes, 0, imageBytes.Length);

        // Convert byte[] to Image
        ms.Write(imageBytes, 0, imageBytes.Length);
        System.Drawing.Image image = System.Drawing.Image.FromStream(ms, true);
        return image;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        webbarcode.BarCode GbardoN = new webbarcode.BarCode();

        COcode = couboncode.Text.ToString();
        COtitle = coupontitle.Text.ToString();

        System.Drawing.Image im = Base64ToImage(GbardoN.Code39(COcode, 100, true, COtitle));

        

        im.Save(Server.MapPath(".\\COP\\") + "coubon.jpg");

        

        //Response.Redirect("~/Default2.aspx");

    }
}