<%@ Page Title="" Language="C#" MasterPageFile="~/manage/MasterPage.master" AutoEventWireup="true" CodeFile="createMenuItem.aspx.cs" Inherits="manage_Default2" %>

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
    <h2>Create Dish</h2>
    <label for="dishName">Dish Name: </label><br />
    <asp:TextBox ID="dishName" runat="server"></asp:TextBox><asp:RequiredFieldValidator
        ID="RequiredFieldValidator1" runat="server" ErrorMessage="Must enter name" 
        ControlToValidate="dishName" CssClass="validation"></asp:RequiredFieldValidator><br />
    <label for="dishCategory">Category: </label><asp:DropDownList ID="dishCategory" runat="server">
        <asp:ListItem Value="Appetizer">Appetizer</asp:ListItem>
        <asp:ListItem Value="Soup">Soup</asp:ListItem>
        <asp:ListItem Value="Salad">Salad</asp:ListItem>
        <asp:ListItem Value="Entree">Entree</asp:ListItem>
        <asp:ListItem Value="Sandwich">Sandwich</asp:ListItem>
    </asp:DropDownList><br />
    <label for="dishDescription">Description: </label><br />
    <asp:TextBox ID="dishDescription" 
        runat="server" TextMode="MultiLine"></asp:TextBox><asp:RequiredFieldValidator
        ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter a description" 
        ControlToValidate="dishDescription" CssClass="validation"></asp:RequiredFieldValidator><br />
    <label for="dishPrice">Price $</label><asp:TextBox ID="dishPrice" runat="server" Columns="4"></asp:TextBox><asp:RequiredFieldValidator
        ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="Please enter a price" ControlToValidate="dishPrice" 
        CssClass="validation"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator
            ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="Please enter a valid price: '433' or '3.99' " ControlToValidate="dishPrice" 
        CssClass="validation" ValidationExpression="^\d+(\.\d{2})?$"></asp:RegularExpressionValidator><br />
        <label for="imageUrl"> Image url: </label><br />
        <asp:TextBox ID="imageUrl" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Enter Item" 
        onclick="Button1_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:AlJebalConnectionString4 %>" 
    SelectCommand="SELECT * FROM [Items]" 
        OldValuesParameterFormatString="original_{0}" 
        ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [Items] WHERE [ItemNum] = @original_ItemNum AND (([ItemName] = @original_ItemName) OR ([ItemName] IS NULL AND @original_ItemName IS NULL)) AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL)) AND (([ItemDescription] = @original_ItemDescription) OR ([ItemDescription] IS NULL AND @original_ItemDescription IS NULL)) AND (([ItemPrice] = @original_ItemPrice) OR ([ItemPrice] IS NULL AND @original_ItemPrice IS NULL)) AND (([ItemImage] = @original_ItemImage) OR ([ItemImage] IS NULL AND @original_ItemImage IS NULL))" 
        InsertCommand="INSERT INTO [Items] ([ItemName], [Category], [ItemDescription], [ItemPrice], [ItemImage]) VALUES (@ItemName, @Category, @ItemDescription, @ItemPrice, @ItemImage)" 
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
                <asp:ControlParameter ControlID="dishName" Name="ItemName" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="dishCategory" Name="Category" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="dishDescription" Name="ItemDescription" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="dishPrice" Name="ItemPrice" 
                    PropertyName="Text" Type="Decimal" />
                 <asp:ControlParameter ControlID="imageUrl" Name="ItemImage" 
                    PropertyName="Text" Type="String" />
            </InsertParameters>
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

