using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Default3 : System.Web.UI.Page
{
    private SortedList order;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Request.IsSecureConnection)
        {
            string url = Request.Url.ToString().Replace("http:", "https:");
            Response.Redirect(url);
        }
        this.GetOrder();
        if (!IsPostBack)
            this.DisplayOrder();
    }

    private void DisplayOrder()
    {
        decimal orderTotal = 0;
        ListBox1.Items.Clear();
        OrderItem item;
        foreach (DictionaryEntry entry in order)
        {
            item = (OrderItem)entry.Value;
            ListBox1.Items.Add(item.Display());
            orderTotal += (item.MenuItem.ItemPrice) * (item.Quantity);
        }
        total.Text = String.Format("{0:c}", orderTotal);
    }

    private void GetOrder()
    {
        if (Session["Order"] == null)
            Session.Add("Order", new SortedList());
        this.order = (SortedList)Session["Order"];
        //return (SortedList)Session["Order"];
    }

    private void AddToOrder(OrderItem item)
    {
        this.GetOrder();
        string productID = item.MenuItem.ItemID;
        if (order.ContainsKey(productID))
        {
            OrderItem existingItem = (OrderItem)order[productID];
            existingItem.Quantity += item.Quantity;
        }
        else
            order.Add(productID, item);
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        if (order.Count > 0)
        {
            if (ListBox1.SelectedIndex >= 0)
            {
                OrderItem item = (OrderItem)order.GetByIndex(0);
                order.RemoveAt(ListBox1.SelectedIndex);
                if (item.Quantity > 1){
                    item.Quantity--;
                    AddToOrder(item);
                }
                DisplayOrder();
            }
            else
            {
                total.Text = "Please select the item you want to remove." + ListBox1.SelectedIndex;
            }
        }
    }

    protected void ConfirmDetails(object sender, EventArgs e)
    {
        String orderEmail = customerEmail.Text;
        Customer customer = getCustomerByEmail(orderEmail);

        if (customer.CustomerID == 0)
        {
            MultiView1.ActiveViewIndex = 2;
            email.Text = orderEmail;
        }
        else
        {
            PlaceOrder(customer);
        }
    }

    protected void CreateCustomer(object sender, EventArgs e)
    {
        confirmation.InnerHtml += "<h1>entered CreateCustomer</h1>";
        Customer newCustomer = new Customer();
        newCustomer.CFirstName = customerFName.Text.ToString();
        newCustomer.CLastName = customerLName.Text.ToString();
        newCustomer.CAddress = address.Text.ToString();
        newCustomer.Email = email.Text.ToString();
        newCustomer.Cellphone = phone.Text.ToString();

        newCustomer = OrderDB.CreateCustomer(newCustomer);

        PlaceOrder( newCustomer);
    }

    protected void PlaceOrder( Customer customer)
    {
        //String orderEmail = customerEmail.Text;
        MultiView1.ActiveViewIndex = 1 ;
        confirmation.InnerHtml += "<h2 style=\"font-style:italic\">Placing order...</h2>";

        //Customer customer = getCustomerByEmail(orderEmail);
        total.Text = OrderDB.PlaceOrder( order, customer.CustomerID).ToString();

        confirmation.InnerHtml = "<h1>Thank You</h1><h2 style=\"font-style:italic\">Your order has been placed: </h2><br />";
        confirmation.InnerHtml += "<address id=\"customerInfo\">";
        confirmation.InnerHtml += customer.CustomerID + "<br />";
        confirmation.InnerHtml += customer.CFirstName + " " + customer.CLastName + "<br />";
        confirmation.InnerHtml += customer.CAddress + "<br />";
        confirmation.InnerHtml += customer.Cellphone+ "<br />";
        confirmation.InnerHtml += customer.Email + "<br />";
        confirmation.InnerHtml += "</address>";

        confirmation.InnerHtml += "<ul id=\"placedOrder\">";

        decimal orderTotal = 0;
        OrderItem item;
        foreach (DictionaryEntry entry in order)
        {
            confirmation.InnerHtml += "<li>";
            item = (OrderItem)entry.Value;
            confirmation.InnerHtml += item.Display();
            orderTotal += (item.MenuItem.ItemPrice) * (item.Quantity);
            confirmation.InnerHtml += "</li>";
        }
        confirmation.InnerHtml += "<li></li><li>Total: "+String.Format("{0:c}", orderTotal)+"</li>";

        confirmation.InnerHtml += "</ul>";

        Session["Order"] = null;
        Session.Add("Order", new SortedList());
        this.order = (SortedList)Session["Order"];
    }

    private Customer getCustomerByEmail(string orderEmail)
    {
        AlJebalCustomerRef.AlJebalCustomer customerService = new AlJebalCustomerRef.AlJebalCustomer();
        AlJebalCustomerRef.CustomerInfo info = customerService.getCustomerInfo( orderEmail);

        String customerInfo = info.fname + " " + info.lname + "<address>" + info.address + "<br />" + info.cellphone + "<br />" + info.emailAddress + "</address>";

        Customer cuxtommer = new Customer();
        cuxtommer.CAddress = info.address;
        cuxtommer.Cellphone = info.cellphone;
        cuxtommer.CFirstName = info.fname;
        cuxtommer.CLastName = info.lname;
        cuxtommer.CustomerID = info.id;
        cuxtommer.Email = info.emailAddress;

        return cuxtommer;
    }
}