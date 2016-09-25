<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewMenu.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:AlJebalConnectionString4 %>" 
    SelectCommand="getMenuItems" SelectCommandType="StoredProcedure">
     <SelectParameters>
         <asp:ControlParameter ControlID="DropDownList1" DefaultValue="2" Name="menuNum" 
             PropertyName="SelectedValue" Type="Int32" />
     </SelectParameters>
    </asp:SqlDataSource>
    	<h1>Menu</h1>
        <div id="menus">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource2" DataTextField="MenuName" DataValueField="MenuNum">
            </asp:DropDownList>
        	<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AlJebalConnectionString4 %>" 
                SelectCommand="SELECT * FROM [Menus]"></asp:SqlDataSource>
        	<h2>
                <asp:Label ID="menuLabel" runat="server" Text='<%# Eval("MenuName") %>'></asp:Label> Menu:</h2>
            <ul class="menu">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="ItemNum" 
                    DataSourceID="SqlDataSource1">
                    
                    
                    <EmptyDataTemplate>
                        <span>Empty Menu.</span>
                    </EmptyDataTemplate>
                    
                    <ItemTemplate>
                        <li class="menuitem">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ItemImage").ToString()!="" ? Eval("ItemImage") : "~/App_Themes/Theme1/images/250/plate-1.png" %>' Width="250" />
                            <div>
                                <h3><%# Eval("ItemName") %></h3>
                                <p><%# Eval("ItemDescription") %></p>
                                Price:
                                <asp:Label ID="ItemPriceLabel" runat="server" Text='<%# Eval("ItemPrice", "{0:c}") %>' />
                            </div>
                        <asp:Button ID="Button1" runat="server" Text="Add to Order" CommandArgument='<%# Eval("ItemNum") %>' />
<br /></li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div style="" ID="itemPlaceholderContainer" runat="server">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                        ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                        ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </div>
                    </LayoutTemplate>
                </asp:ListView>
            </ul>
        </div>

        <div id="order">
            <h3>Your order</h3>
            <asp:ListBox ID="lstOrder" runat="server"></asp:ListBox><br />
            <label for="totalLabel">Total: </label><asp:Label ID="totalLabel" runat="server" Text="Label"></asp:Label><br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/checkout.aspx">Checkout</asp:LinkButton>
         </div>
</asp:Content>

