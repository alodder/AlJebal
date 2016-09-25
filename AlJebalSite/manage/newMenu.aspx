<%@ Page Title="" Language="C#" MasterPageFile="~/manage/MasterPage.master" AutoEventWireup="true" CodeFile="newMenu.aspx.cs" Inherits="manage_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="subMenuPlaceHolder" Runat="Server">
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" 
        StartingNodeUrl="~/manage/menuitems.aspx" />
    <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" 
        Orientation="Horizontal" RenderingMode="List" StaticDisplayLevels="2">
    </asp:Menu>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sideMenuPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Create a new Menu</h2>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AlJebalConnectionString4 %>" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Menus]" ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [Menus] WHERE [MenuNum] = @original_MenuNum AND (([MenuName] = @original_MenuName) OR ([MenuName] IS NULL AND @original_MenuName IS NULL))" 
        InsertCommand="INSERT INTO [Menus] ([MenuName]) VALUES (@MenuName)" 
        UpdateCommand="UPDATE [Menus] SET [MenuName] = @MenuName WHERE [MenuNum] = @original_MenuNum AND (([MenuName] = @original_MenuName) OR ([MenuName] IS NULL AND @original_MenuName IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_MenuNum" Type="Int32" />
            <asp:Parameter Name="original_MenuName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="MenuName" PropertyName="Text" 
                Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MenuName" Type="String" />
            <asp:Parameter Name="original_MenuNum" Type="Int32" />
            <asp:Parameter Name="original_MenuName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <label for="TextBox1"> Menu Name: </label><br /><asp:TextBox ID="TextBox1" 
        runat="server"></asp:TextBox><asp:Button
        ID="Button1" runat="server" Text="Create" onclick="Button1_Click" /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a menu name" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>

    <br />
    <asp:Label ID="output" runat="server" Text=""></asp:Label>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="footerPlaceHolder" Runat="Server">
</asp:Content>