using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void pageMultiView(object sender, EventArgs e)
    {
        if (MultiView1.ActiveViewIndex < MultiView1.Views.Count-1)
            MultiView1.ActiveViewIndex = MultiView1.ActiveViewIndex + 1;
        else
            MultiView1.ActiveViewIndex = 0;
    }

    protected void printDate(DateTime date)
    {
        Console.WriteLine(date.ToShortDateString());
    }
    
}