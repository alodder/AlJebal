<%@ Page Title="" Language="C#" MasterPageFile="~/manage/MasterPage.master" AutoEventWireup="true" CodeFile="revadvance.aspx.cs" Inherits="manage_Default3" %>

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
                    choose customer ID number :</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="CustomerID" 
                        DataValueField="CustomerID">
                        <asp:ListItem>CustomerID</asp:ListItem>
                        <asp:ListItem>TableID</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                        SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        DataKeyNames="ResNum" DataSourceID="SqlDataSource2" Height="50px" 
                        Width="125px">
                        <Fields>
                            <asp:BoundField DataField="ResNum" HeaderText="ResNum" InsertVisible="False" 
                                ReadOnly="True" SortExpression="ResNum" />
                            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" 
                                SortExpression="CustomerID" />
                            <asp:BoundField DataField="ResTimeDate" HeaderText="ResTimeDate" 
                                SortExpression="ResTimeDate" />
                            <asp:BoundField DataField="TableID" HeaderText="TableID" 
                                SortExpression="TableID" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                        SelectCommand="yourchooce" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="said1" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
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

