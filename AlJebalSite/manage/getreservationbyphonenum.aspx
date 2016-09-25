<%@ Page Title="" Language="C#" MasterPageFile="~/manage/MasterPage.master" AutoEventWireup="true" CodeFile="getreservationbyphonenum.aspx.cs" Inherits="manage_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sideMenuPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="what is the coustomer phone ?"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" 
                        AutoGenerateColumns="False" DataKeyNames="ResNum">
                        <Columns>
                            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" 
                                SortExpression="CustomerID" />
                            <asp:BoundField DataField="cellphone" HeaderText="cellphone" 
                                SortExpression="cellphone" />
                            <asp:BoundField DataField="CFirstName" HeaderText="CFirstName" 
                                SortExpression="CFirstName" />
                            <asp:BoundField DataField="CLastName" HeaderText="CLastName" 
                                SortExpression="CLastName" />
                            <asp:BoundField DataField="ResNum" HeaderText="ResNum" InsertVisible="False" 
                                ReadOnly="True" SortExpression="ResNum" />
                            <asp:BoundField DataField="ResTimeDate" HeaderText="ResTimeDate" 
                                SortExpression="ResTimeDate" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                        SelectCommand="bycellphone" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="firstname" PropertyName="Text" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                        SelectCommand="bycellphone" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="firstname" PropertyName="Text" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="RegularExpressionValidator" 
                        ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
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
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footerPlaceHolder" Runat="Server">
</asp:Content>

