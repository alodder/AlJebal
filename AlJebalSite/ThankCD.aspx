<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThankCD.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" 
                    Text="custom Dish Requst"></asp:Label>
                <br />
                <br />
                Here is your info :<br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataKeyNames="custom_disheNum,CustomerID1" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" Height="50px" Width="199px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="custom_disheNum" HeaderText="Custom order number:" 
                            InsertVisible="False" ReadOnly="True" SortExpression="custom_disheNum" />
                        <asp:BoundField DataField="CustomerID" HeaderText="Your Customer ID:" 
                            SortExpression="CustomerID" />
                        <asp:BoundField DataField="Description" HeaderText="Description of the order:" 
                            SortExpression="Description" />
                        <asp:BoundField DataField="DisheName" HeaderText="Your Dishe Name:" 
                            SortExpression="DisheName" />
                        <asp:BoundField DataField="NumberOfgust" HeaderText="Number of gust:" 
                            SortExpression="NumberOfgust" />
                        <asp:BoundField DataField="Date" HeaderText="Date" 
                            SortExpression="Date" />
                        <asp:BoundField DataField="Price" HeaderText="Price" 
                            SortExpression="Price" NullDisplayText="The manger we talk to you " />
                        <asp:BoundField DataField="CFirstName" HeaderText="First Name" 
                            SortExpression="CFirstName" />
                        <asp:BoundField DataField="CLastName" HeaderText="Last Name" 
                            SortExpression="CLastName" />
                        <asp:BoundField DataField="CAddress" HeaderText="your Address:" 
                            SortExpression="CAddress" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" SelectCommand="Select top 1 * 
from AlJebal.dbo.CustomDishe inner join Customer on CustomDishe.CustomerID= Customer.CustomerID
where Customer.Email = @Email
order by custom_disheNum DESC ">
                    <SelectParameters>
                        <asp:SessionParameter Name="Email" SessionField="CNum" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

