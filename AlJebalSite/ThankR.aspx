<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThankR.aspx.cs" Inherits="Default3" %>

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
                    Text="Thank you for makeing reservation in Al-Jebal Restaurant ...."></asp:Label>
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="250px" 
                    ImageUrl="~/Image/reserved.jpg" style="margin-right: 0px" Width="294px" />
                <br />
                Here is your info :<br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataKeyNames="ResNum,CustomerID1" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" Height="50px" Width="199px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="ResNum" HeaderText="Resvation Number:" 
                            InsertVisible="False" ReadOnly="True" SortExpression="ResNum" />
                        <asp:BoundField DataField="ResTimeDate" HeaderText="Resvation Time and Date" 
                            SortExpression="ResTimeDate" />
                        <asp:BoundField DataField="TableID" HeaderText="The Table ID:" 
                            SortExpression="TableID" />
                        <asp:BoundField DataField="CustomerID1" HeaderText="Your Customer ID:" 
                            InsertVisible="False" ReadOnly="True" SortExpression="CustomerID1" />
                        <asp:BoundField DataField="CFirstName" HeaderText="First Name" 
                            SortExpression="CFirstName" />
                        <asp:BoundField DataField="CLastName" HeaderText="Last Name" 
                            SortExpression="CLastName" />
                        <asp:BoundField DataField="CAddress" HeaderText="Your Address" 
                            SortExpression="CAddress" />
                        <asp:BoundField DataField="Cellphone" HeaderText="Your cell Cellphone" 
                            SortExpression="Cellphone" />
                        <asp:BoundField DataField="Email" HeaderText="Your Email" 
                            SortExpression="Email" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" SelectCommand="select top 1 * 
from RestTableRes inner join Customer on RestTableRes.CustomerID = Customer.CustomerID
where Customer.Email =@p1
order by RestTableRes.ResNum DESC ">
                    <SelectParameters>
                        <asp:SessionParameter Name="p1" SessionField="CNum" />
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

