<%@ Page Title="" Language="C#" MasterPageFile="~/manage/MasterPage.master" AutoEventWireup="true" CodeFile="menuitems.aspx.cs" Inherits="manage_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="subMenuPlaceHolder" Runat="Server">

    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" 
        StartingNodeUrl="~/manage/menuitems.aspx" />
    <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" 
        Orientation="Horizontal" RenderingMode="List" StaticDisplayLevels="2">
    </asp:Menu>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sideMenuPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Menu Items</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ItemNum" DataSourceID="SqlDataSource1"
        BorderStyle="None" CellPadding="3" CellSpacing="3" EnableTheming="False"
        GridLines="Horizontal" ForeColor="#444444" HeaderStyle-ForeColor="#ff6803"
        PagerStyle-ForeColor="#FF6803" Width="60%" HorizontalAlign="Left">
        <Columns>
            <asp:BoundField DataField="ItemNum" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="ItemNum" />
            <asp:BoundField DataField="ItemName" HeaderText="Name" 
                SortExpression="ItemName" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category" />
            <asp:BoundField DataField="ItemDescription" HeaderText="Description" 
                SortExpression="ItemDescription" />
            <asp:BoundField DataField="ItemPrice" HeaderText="Price" 
                SortExpression="ItemPrice" DataFormatString="{0:c}" />
            <asp:TemplateField HeaderText="Image" SortExpression="ItemImage">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ItemImage") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" ImageUrl='<%# Eval("ItemImage").ToString()!="" ? Eval("ItemImage") : "~/App_Themes/Theme1/images/250/plate-1.png" %>' Width="50" Height="50" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
        <HeaderStyle BorderStyle="None" BorderWidth="0px" />

<PagerStyle ForeColor="#FF6803"></PagerStyle>

        <SelectedRowStyle BackColor="#FFCC00" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AlJebalConnectionString4 %>" 
        SelectCommand="SELECT * FROM [Items] ORDER BY [ItemNum] DESC"></asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="ItemNum" 
            DataSourceID="SqlDataSource2">

            <EditItemTemplate>
                <span style="">ItemNum:
                <asp:Label ID="ItemNumLabel1" runat="server" Text='<%# Eval("ItemNum") %>' />
                <br />
                ItemName:
                <asp:TextBox ID="ItemNameTextBox" runat="server" 
                    Text='<%# Bind("ItemName") %>' />
                <br />
                Category:
                <asp:TextBox ID="CategoryTextBox" runat="server" 
                    Text='<%# Bind("Category") %>' />
                <br />
                ItemDescription:
                <asp:TextBox ID="ItemDescriptionTextBox" runat="server" 
                    Text='<%# Bind("ItemDescription") %>' />
                <br />
                ItemPrice:
                <asp:TextBox ID="ItemPriceTextBox" runat="server" 
                    Text='<%# Bind("ItemPrice") %>' />
                <br />
                ItemImage:
                <asp:TextBox ID="ItemImageTextBox" runat="server" 
                    Text='<%# Bind("ItemImage") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">ItemName:
                <asp:TextBox ID="ItemNameTextBox" runat="server" 
                    Text='<%# Bind("ItemName") %>' />
                <br />Category:
                <asp:TextBox ID="CategoryTextBox" runat="server" 
                    Text='<%# Bind("Category") %>' />
                <br />ItemDescription:
                <asp:TextBox ID="ItemDescriptionTextBox" runat="server" 
                    Text='<%# Bind("ItemDescription") %>' />
                <br />ItemPrice:
                <asp:TextBox ID="ItemPriceTextBox" runat="server" 
                    Text='<%# Bind("ItemPrice") %>' />
                <br />ItemImage:
                <asp:TextBox ID="ItemImageTextBox" runat="server" 
                    Text='<%# Bind("ItemImage") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">
                <label style="width:8em; display:inline-block">Item ID:</label><%# Eval("ItemNum") %>  <br />
                <label style="width:8em; display:inline-block">Name: </label><%# Eval("ItemName") %>                <br />
                <label style="width:8em; display:inline-block">Category: </label><%# Eval("Category") %>                <br />
                <label style="width:8em; display:inline-block">Description: </label><%# Eval("ItemDescription") %>                <br />
                <label style="width:8em; display:inline-block">Price: </label><%# Eval("ItemPrice", "{0:c}") %>                <br />
                <asp:Image ID="Image1" ImageUrl='<%# Eval("ItemImage").ToString()!="" ? Eval("ItemImage") : "~/App_Themes/Theme1/images/250/plate-1.png" %>' Width="50" Height="50" runat="server" /><br />
                <label style="width:8em; display:inline-block">Image URL: </label><br /><%# Eval("ItemImage") %>            <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
<br /><br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="order" style="float:left; max-width:30%">
                <div ID="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                    
                </div>
                </div>

            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="">ItemNum:
                <asp:Label ID="ItemNumLabel" runat="server" Text='<%# Eval("ItemNum") %>' />
                <br />
                ItemName:
                <asp:Label ID="ItemNameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                <br />
                Category:
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />
                ItemDescription:
                <asp:Label ID="ItemDescriptionLabel" runat="server" 
                    Text='<%# Eval("ItemDescription") %>' />
                <br />
                ItemPrice:
                <asp:Label ID="ItemPriceLabel" runat="server" Text='<%# Eval("ItemPrice") %>' />
                <br />
                ItemImage:
                <asp:Label ID="ItemImageLabel" runat="server" Text='<%# Eval("ItemImage") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
<br /><br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:AlJebalConnectionString4 %>" 
        DeleteCommand="DELETE FROM [Items] WHERE [ItemNum] = @original_ItemNum AND (([ItemName] = @original_ItemName) OR ([ItemName] IS NULL AND @original_ItemName IS NULL)) AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL)) AND (([ItemDescription] = @original_ItemDescription) OR ([ItemDescription] IS NULL AND @original_ItemDescription IS NULL)) AND (([ItemPrice] = @original_ItemPrice) OR ([ItemPrice] IS NULL AND @original_ItemPrice IS NULL)) AND (([ItemImage] = @original_ItemImage) OR ([ItemImage] IS NULL AND @original_ItemImage IS NULL))" 
        InsertCommand="INSERT INTO [Items] ([ItemName], [Category], [ItemDescription], [ItemPrice], [ItemImage]) VALUES (@ItemName, @Category, @ItemDescription, @ItemPrice, @ItemImage)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Items] WHERE ([ItemNum] = @ItemNum)" 
        UpdateCommand="UPDATE [Items] SET [ItemName] = @ItemName, [Category] = @Category, [ItemDescription] = @ItemDescription, [ItemPrice] = @ItemPrice, [ItemImage] = @ItemImage WHERE [ItemNum] = @original_ItemNum AND (([ItemName] = @original_ItemName) OR ([ItemName] IS NULL AND @original_ItemName IS NULL)) AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL)) AND (([ItemDescription] = @original_ItemDescription) OR ([ItemDescription] IS NULL AND @original_ItemDescription IS NULL)) AND (([ItemPrice] = @original_ItemPrice) OR ([ItemPrice] IS NULL AND @original_ItemPrice IS NULL)) AND (([ItemImage] = @original_ItemImage) OR ([ItemImage] IS NULL AND @original_ItemImage IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ItemNum" Type="Int32" />
            <asp:Parameter Name="original_ItemName" Type="String" />
            <asp:Parameter Name="original_Category" Type="String" />
            <asp:Parameter Name="original_ItemDescription" Type="String" />
            <asp:Parameter Name="original_ItemPrice" Type="Decimal" />
            <asp:Parameter Name="original_ItemImage" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ItemName" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="ItemDescription" Type="String" />
            <asp:Parameter Name="ItemPrice" Type="Decimal" />
            <asp:Parameter Name="ItemImage" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="ItemNum" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ItemName" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="ItemDescription" Type="String" />
            <asp:Parameter Name="ItemPrice" Type="Decimal" />
            <asp:Parameter Name="ItemImage" Type="String" />
            <asp:Parameter Name="original_ItemNum" Type="Int32" />
            <asp:Parameter Name="original_ItemName" Type="String" />
            <asp:Parameter Name="original_Category" Type="String" />
            <asp:Parameter Name="original_ItemDescription" Type="String" />
            <asp:Parameter Name="original_ItemPrice" Type="Decimal" />
            <asp:Parameter Name="original_ItemImage" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footerPlaceHolder" Runat="Server">
</asp:Content>

