<%@ Page Title="" Language="C#" MasterPageFile="~/manage/MasterPage.master" AutoEventWireup="true" CodeFile="ViewAndEditCustom.aspx.cs" Inherits="manage_Default2" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="subMenuPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sideMenuPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                <br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="CustomerID" DataSourceID="SqlDataSource2" Height="50px" 
                    Width="223px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="CustomerID" HeaderText="Customer ID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
                        <asp:BoundField DataField="CFirstName" HeaderText="First Name" 
                            SortExpression="CFirstName" />
                        <asp:BoundField DataField="CLastName" HeaderText="Last Name" 
                            SortExpression="CLastName" />
                        <asp:BoundField DataField="CAddress" HeaderText="Address" 
                            SortExpression="CAddress" />
                        <asp:BoundField DataField="Cellphone" HeaderText="Cellphone" 
                            SortExpression="Cellphone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
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
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" OnSelectedIndexChanged="GridViewG"
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="custom_disheNum" 
                    DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" ButtonType="Image" 
                            CancelImageUrl="~/App_Themes/Manager/images/function_icon_set/cross_48.png" 
                            DeleteImageUrl="~/App_Themes/Manager/images/function_icon_set/cancel_48.png" 
                            EditImageUrl="~/App_Themes/Manager/images/function_icon_set/pencil_48.png" 
                            InsertImageUrl="~/App_Themes/Manager/images/function_icon_set/pencil_48.png" 
                            SelectImageUrl="~/App_Themes/Manager/images/function_icon_set/speech_bubble_48.png" 
                            UpdateImageUrl="~/App_Themes/Manager/images/function_icon_set/pencil_48.png" />
                        <asp:BoundField DataField="custom_disheNum" HeaderText="Custom dishe#" 
                            InsertVisible="False" ReadOnly="True" SortExpression="custom_disheNum" />
                        <asp:BoundField DataField="CustomerID" HeaderText="Customer ID" 
                            SortExpression="CustomerID" />
                        <asp:BoundField DataField="Description" HeaderText="Description" 
                            SortExpression="Description" />
                        <asp:BoundField DataField="What_kind" HeaderText="What kind" 
                            SortExpression="What_kind" />
                        <asp:BoundField DataField="DisheName" HeaderText="Dishe Name" 
                            SortExpression="DisheName" />
                        <asp:BoundField DataField="NumberOfgust" HeaderText="Number Of gust" 
                            SortExpression="NumberOfgust" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Managercom" HeaderText="Managercom" 
                            SortExpression="Managercom" />
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
                    DeleteCommand="DELETE FROM [CustomDishe] WHERE [custom_disheNum] = @original_custom_disheNum AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([What_kind] = @original_What_kind) OR ([What_kind] IS NULL AND @original_What_kind IS NULL)) AND (([DisheName] = @original_DisheName) OR ([DisheName] IS NULL AND @original_DisheName IS NULL)) AND (([NumberOfgust] = @original_NumberOfgust) OR ([NumberOfgust] IS NULL AND @original_NumberOfgust IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Managercom] = @original_Managercom) OR ([Managercom] IS NULL AND @original_Managercom IS NULL))" 
                    InsertCommand="INSERT INTO [CustomDishe] ([CustomerID], [Description], [What_kind], [DisheName], [NumberOfgust], [Date], [Price], [Managercom]) VALUES (@CustomerID, @Description, @What_kind, @DisheName, @NumberOfgust, @Date, @Price, @Managercom)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [CustomDishe]" 
                    UpdateCommand="UPDATE [CustomDishe] SET [CustomerID] = @CustomerID, [Description] = @Description, [What_kind] = @What_kind, [DisheName] = @DisheName, [NumberOfgust] = @NumberOfgust, [Date] = @Date, [Price] = @Price, [Managercom] = @Managercom WHERE [custom_disheNum] = @original_custom_disheNum AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([What_kind] = @original_What_kind) OR ([What_kind] IS NULL AND @original_What_kind IS NULL)) AND (([DisheName] = @original_DisheName) OR ([DisheName] IS NULL AND @original_DisheName IS NULL)) AND (([NumberOfgust] = @original_NumberOfgust) OR ([NumberOfgust] IS NULL AND @original_NumberOfgust IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Managercom] = @original_Managercom) OR ([Managercom] IS NULL AND @original_Managercom IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_custom_disheNum" Type="Int32" />
                        <asp:Parameter Name="original_CustomerID" Type="Int32" />
                        <asp:Parameter Name="original_Description" Type="String" />
                        <asp:Parameter Name="original_What_kind" Type="String" />
                        <asp:Parameter Name="original_DisheName" Type="String" />
                        <asp:Parameter Name="original_NumberOfgust" Type="String" />
                        <asp:Parameter Name="original_Date" Type="String" />
                        <asp:Parameter Name="original_Price" Type="String" />
                        <asp:Parameter Name="original_Managercom" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="What_kind" Type="String" />
                        <asp:Parameter Name="DisheName" Type="String" />
                        <asp:Parameter Name="NumberOfgust" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                        <asp:Parameter Name="Managercom" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="What_kind" Type="String" />
                        <asp:Parameter Name="DisheName" Type="String" />
                        <asp:Parameter Name="NumberOfgust" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                        <asp:Parameter Name="Managercom" Type="String" />
                        <asp:Parameter Name="original_custom_disheNum" Type="Int32" />
                        <asp:Parameter Name="original_CustomerID" Type="Int32" />
                        <asp:Parameter Name="original_Description" Type="String" />
                        <asp:Parameter Name="original_What_kind" Type="String" />
                        <asp:Parameter Name="original_DisheName" Type="String" />
                        <asp:Parameter Name="original_NumberOfgust" Type="String" />
                        <asp:Parameter Name="original_Date" Type="String" />
                        <asp:Parameter Name="original_Price" Type="String" />
                        <asp:Parameter Name="original_Managercom" Type="String" />
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
                <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" Visible="False"></asp:TextBox>
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                    SelectCommand="ByCID" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:SessionParameter Name="p1" SessionField="RVSN" Type="Int32" />
                    </SelectParameters>
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
<asp:Content ID="Content5" ContentPlaceHolderID="footerPlaceHolder" Runat="Server">
</asp:Content>

