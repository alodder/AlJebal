<%@ Page Title="" Language="C#" MasterPageFile="~/manage/MasterPage.master" AutoEventWireup="true" CodeFile="reservations.aspx.cs" Inherits="manage_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sideMenuPlaceHolder" Runat="Server">
    <div id="sideMenu">
    <h2>Menu</h2>
    <ul>
        <li>Review Reservations</li>
        <li>New</li>
        <li>Cancel</li>
        <li>Modify</li>
    </ul>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>
    <table style="width:100%;">
        <tr>
            <td>
                Here you can view all of your Reservation:</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="ResNum" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ButtonType="Image" 
                            CancelImageUrl="~/App_Themes/Manager/images/function_icon_set/cross_48.png" 
                            EditImageUrl="~/App_Themes/Manager/images/function_icon_set/pencil_48.png" 
                            EditText="modify" 
                            InsertImageUrl="~/App_Themes/Manager/images/function_icon_set/pencil_48.png" 
                            ShowEditButton="True" 
                            UpdateImageUrl="~/App_Themes/Manager/images/function_icon_set/pencil_48.png" />
                        <asp:BoundField DataField="ResNum" HeaderText="ResNum" InsertVisible="False" 
                            ReadOnly="True" SortExpression="ResNum" />
                        <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" 
                            SortExpression="CustomerID" />
                        <asp:BoundField DataField="ResTimeDate" HeaderText="ResTimeDate" 
                            SortExpression="ResTimeDate" />
                        <asp:BoundField DataField="TableID" HeaderText="TableID" 
                            SortExpression="TableID" />
                        <asp:CommandField ButtonType="Image" 
                            DeleteImageUrl="~/App_Themes/Manager/images/function_icon_set/cancel_48.png" 
                            DeleteText="Cancel this reservation" ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                    DeleteCommand="DELETE FROM [RestTableRes] WHERE [ResNum] = @original_ResNum AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([ResTimeDate] = @original_ResTimeDate) OR ([ResTimeDate] IS NULL AND @original_ResTimeDate IS NULL)) AND (([TableID] = @original_TableID) OR ([TableID] IS NULL AND @original_TableID IS NULL))" 
                    InsertCommand="INSERT INTO [RestTableRes] ([CustomerID], [ResTimeDate], [TableID]) VALUES (@CustomerID, @ResTimeDate, @TableID)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [RestTableRes]" 
                    UpdateCommand="UPDATE [RestTableRes] SET [CustomerID] = @CustomerID, [ResTimeDate] = @ResTimeDate, [TableID] = @TableID WHERE [ResNum] = @original_ResNum AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([ResTimeDate] = @original_ResTimeDate) OR ([ResTimeDate] IS NULL AND @original_ResTimeDate IS NULL)) AND (([TableID] = @original_TableID) OR ([TableID] IS NULL AND @original_TableID IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ResNum" Type="Int32" />
                        <asp:Parameter Name="original_CustomerID" Type="Int32" />
                        <asp:Parameter Name="original_ResTimeDate" Type="DateTime" />
                        <asp:Parameter Name="original_TableID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                        <asp:Parameter Name="ResTimeDate" Type="DateTime" />
                        <asp:Parameter Name="TableID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                        <asp:Parameter Name="ResTimeDate" Type="DateTime" />
                        <asp:Parameter Name="TableID" Type="Int32" />
                        <asp:Parameter Name="original_ResNum" Type="Int32" />
                        <asp:Parameter Name="original_CustomerID" Type="Int32" />
                        <asp:Parameter Name="original_ResTimeDate" Type="DateTime" />
                        <asp:Parameter Name="original_TableID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
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
    </table>
</p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footerPlaceHolder" Runat="Server">
</asp:Content>

