﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manage_Default2 : System.Web.UI.Page
{
    String SY = "";
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if ((string)Session["myTheme"] == "")
            Page.Theme = "Manager";
        else
            Page.Theme = (string)Session["myTheme"];

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        SY = DropDownList1.SelectedValue.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        Session["myTheme"] = SY;
        
        Response.Redirect("~/manage/ThemsC.aspx");
    }
}