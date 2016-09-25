<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="margin: 0 auto;">
         <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
            <h1>Checkout:</h1>
                <div id="order" class="checkout"><h2>Your Order:</h2>
                    <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox><asp:Button ID="btnRemove" runat="server" Text="Remove Item" Width="100px" OnClick="btnRemove_Click" /><br /><br />
                    <div><label for="total">Total: </label><asp:Label ID="total" runat="server" Text="0" style="text-align:right;"></asp:Label></div>
                </div>
                <label for="customerEmail">Email Address: </label><asp:TextBox ID="customerEmail" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter email address" ControlToValidate="customerEmail"></asp:RequiredFieldValidator><br />
                <asp:Button ID="Button1" runat="server" Text="Place Order"
                onclick="ConfirmDetails" />
            </asp:View>

            <asp:View ID="View2" runat="server">
                <div id="confirmation" runat="server"></div>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <h2 style="font-style:italic">Confirmation:</h2>
                <div id="getCustomerInfo">
                    <label for=""> First Name: </label><asp:TextBox ID="customerFName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="First name required"
                        ControlToValidate="customerFName" CssClass="validator"></asp:RequiredFieldValidator><br />

                    <label for=""> Last Name: </label><asp:TextBox ID="customerLName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Last name required"
                        ControlToValidate="customerLName" CssClass="validator"></asp:RequiredFieldValidator><br />

                    <label for="address"> Address: </label><asp:TextBox ID="address" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <br />

                    <label for=""> Email: </label><asp:TextBox ID="email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email address required"
                        ControlToValidate="email" CssClass="validator"></asp:RequiredFieldValidator><br />

                    <label for=""> Phone: </label><asp:TextBox ID="phone" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Phone number required"
                        ControlToValidate="phone" CssClass="validator"></asp:RequiredFieldValidator><br />

                    <asp:Button ID="Button2" runat="server" Text="Checkout" OnClick="CreateCustomer" />
                </div>
            </asp:View>
        </asp:MultiView>
    </div>
    
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DataObjectTypeName="System.Collections.SortedList" InsertMethod="PlaceOrder" 
        OldValuesParameterFormatString="original_{0}" 
        TypeName="OrderDB">
        <InsertParameters>
            <asp:SessionParameter Name="order" SessionField="order" Type="Object" />
        </InsertParameters>
    </asp:ObjectDataSource>
</asp:Content>

