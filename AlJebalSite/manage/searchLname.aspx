<%@ Page Title="" Language="C#" MasterPageFile="~/manage/MasterPage.master" AutoEventWireup="true" CodeFile="searchLname.aspx.cs" Inherits="manage_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 25px;
        }
        .style2
        {
            width: 390px;
        }
        .style3
        {
            height: 25px;
            width: 390px;
        }
        .style4
        {
            width: 140px;
        }
        .style5
        {
            height: 25px;
            width: 140px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="subMenuPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sideMenuPlaceHolder" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    NavigateUrl="~/manage/searchE.aspx">By Em@il </asp:HyperLink>
&nbsp;,
                <asp:HyperLink ID="HyperLink3" runat="server" 
                    NavigateUrl="~/manage/searchFname.aspx">By First name</asp:HyperLink>
&nbsp;,
                <asp:HyperLink ID="HyperLink4" runat="server" 
                    NavigateUrl="~/manage/searchLname.aspx">By Last name</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
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
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" 
                    Text="You can look for table reservation by customer Las name"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Put Customer Last name here :"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="ResNum,CustomerID1" DataSourceID="SqlDataSource1" 
                    GridLines="Horizontal" Height="50px" Width="125px" AllowPaging="True">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <Fields>
                        <asp:BoundField DataField="ResNum" HeaderText="Resvation Number" 
                            InsertVisible="False" ReadOnly="True" SortExpression="ResNum" />
                        <asp:BoundField DataField="CustomerID" HeaderText="Customer ID" 
                            SortExpression="CustomerID" />
                        <asp:BoundField DataField="ResTimeDate" HeaderText="Time Date" 
                            SortExpression="ResTimeDate" />
                        <asp:BoundField DataField="TableID" HeaderText="TableID" 
                            SortExpression="TableID" />
                        <asp:BoundField DataField="CDateShowS" HeaderText="CDateShowS" 
                            SortExpression="CDateShowS" />
                        <asp:BoundField DataField="CFirstName" HeaderText="FirstName" 
                            SortExpression="CFirstName" />
                        <asp:BoundField DataField="CLastName" HeaderText="LastName" 
                            SortExpression="CLastName" />
                        <asp:BoundField DataField="CAddress" HeaderText="Address" 
                            SortExpression="CAddress" />
                        <asp:BoundField DataField="Cellphone" HeaderText="Cellphone" 
                            SortExpression="Cellphone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="DWTRA" 
                            HeaderText="do the customer want to recive email ad" SortExpression="DWTRA" />
                    </Fields>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                </asp:DetailsView>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                    SelectCommand="ByLastName" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:SessionParameter Name="said1" SessionField="CNum" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="footerPlaceHolder" Runat="Server">
</asp:Content>

