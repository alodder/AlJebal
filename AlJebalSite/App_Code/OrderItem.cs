using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for CartItem
/// </summary>
public class OrderItem
{
    public MenuItem MenuItem;
    public int Quantity;

    public string Display()
    {
        string displayString = MenuItem.Name + " (" + Quantity.ToString() + " at " + MenuItem.ItemPrice.ToString("c") + " each)";
        return displayString;
    }
}