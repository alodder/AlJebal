<%@ Page Title="" Language="C#" MasterPageFile="~/manage/MasterPage.master" AutoEventWireup="true" CodeFile="RVdeaitalview.aspx.cs" Inherits="manage_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="subMenuPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sideMenuPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" DataKeyNames="ResNum,CustomerID1" 
        DataSourceID="SqlDataSource1" Height="50px" Width="125px" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="ResNum" HeaderText="Reservation Number " 
                InsertVisible="False" ReadOnly="True" SortExpression="ResNum" />
            <asp:BoundField DataField="CustomerID" HeaderText="Customer ID" 
                SortExpression="CustomerID" />
            <asp:BoundField DataField="ResTimeDate" HeaderText="Reservation Date and Time" 
                SortExpression="ResTimeDate" />
            <asp:BoundField DataField="TableID" HeaderText="Table ID" 
                SortExpression="TableID" />
            <asp:BoundField DataField="CFirstName" HeaderText="Customer First Name" 
                SortExpression="CFirstName" />
            <asp:BoundField DataField="CLastName" HeaderText="Customer Last Name" 
                SortExpression="CLastName" />
            <asp:BoundField DataField="CAddress" HeaderText="Customer Address" 
                SortExpression="CAddress" />
            <asp:BoundField DataField="Cellphone" HeaderText="Cellphone" 
                SortExpression="Cellphone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
        SelectCommand="Select *
From RestTableRes inner join Customer on RestTableRes.CustomerID = Customer.CustomerID">
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="footerPlaceHolder" Runat="Server">
</asp:Content>

