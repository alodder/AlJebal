﻿<%@ Page Title="" Language="C#" MasterPageFile="~/manage/MasterPage.master" AutoEventWireup="true" CodeFile="newOrders.aspx.cs" Inherits="manage_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="subMenuPlaceHolder" Runat="Server">
    
        <asp:SiteMapDataSource ID="SiteMapDataSourceForOrders" runat="server" 
        StartingNodeUrl="~/manage/orders.aspx" />
    <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSourceForOrders" 
        Orientation="Horizontal" RenderingMode="List" StaticDisplayLevels="2">
    </asp:Menu>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>New Orders: </h2>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AlJebalConnectionString4 %>" 
        SelectCommand="getOrdersNew" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" DataSourceID="SqlDataSource1" DataKeyNames="OrderNum" 
        AutoGenerateColumns="False" BorderColor="#EFEFEF" BorderStyle="Solid" 
        BorderWidth="0px" CellPadding="3" CellSpacing="3" HorizontalAlign="Left">
        <Columns>
            <asp:BoundField DataField="OrderNum" HeaderText="Order" 
                InsertVisible="False" ReadOnly="True" SortExpression="OrderNum" />
            <asp:BoundField DataField="OrderTotal" HeaderText="Total" 
                SortExpression="OrderTotal" DataFormatString="{0:c}" />
            <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" 
                ReadOnly="True" SortExpression="CustomerName" />
            <asp:BoundField DataField="CellPhone" HeaderText="Phone" 
                SortExpression="CellPhone" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
        <SelectedRowStyle BackColor="#FFFF66" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AlJebalConnectionString4 %>" 
        SelectCommand="getOrderDetails" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="orderID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
        <EmptyDataTemplate>
            <h3>No new orders.</h3>
        </EmptyDataTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="ItemNameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                </td>
                <td>
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price", "{0:c}") %>' />
                </td>
                <td>
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                </td>
                <td>
                    <asp:Label ID="TotalLabel" runat="server" Text='<%# Eval("Total", "{0:c}") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">
                                    Item</th>
                                <th runat="server">
                                    Price</th>
                                <th runat="server">
                                    Qty</th>
                                <th runat="server">
                                    Total</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:ListView>
    </asp:Content>

