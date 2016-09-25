<%@ Page Title="" Language="C#" MasterPageFile="~/manage/MasterPage.master" AutoEventWireup="true" CodeFile="manageMenu.aspx.cs" Inherits="manage_Default2" %>

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
    <asp:Menu ID="TabMenu" OnMenuItemClick="Menu1_MenuItemClick" runat="server" 
        RenderingMode="List">
    <Items>
        <asp:MenuItem Value="0" Text="Menus "></asp:MenuItem>
        <asp:MenuItem Value="1" Text="Unassigned Dishes"></asp:MenuItem>
    </Items>
    </asp:Menu>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1"  runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AlJebalConnectionString4 %>"
                SelectCommand="SELECT * FROM [Menus]"></asp:SqlDataSource>
            <asp:DropDownList ID="ListofMenus" runat="server" DataSourceID="SqlDataSource1" 
                DataTextField="MenuName" DataValueField="MenuNum"  AutoPostBack="True">
            </asp:DropDownList>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AlJebalConnectionString4 %>" 
                SelectCommand="getMenuItems" SelectCommandType="StoredProcedure" DeleteCommand="EXEC RemoveFromMenu @itemNum, @menuNum" 
                >
                <DeleteParameters>
                    <asp:Parameter Name="itemNum" Type="Int32" />
                    <asp:ControlParameter ControlID="ListofMenus" Name="menuNum" 
                        PropertyName="SelectedValue" Type="Int32" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="ListofMenus" Name="menuNum" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource2" DataKeyNames="ItemNum" BorderStyle="None" CellPadding="3" CellSpacing="3" HorizontalAlign="Left" EnableTheming="False" GridLines="Horizontal" ForeColor="#444444" AlternatingRowStyle-Wrap="False" HeaderStyle-ForeColor="#ff6803" PagerStyle-ForeColor="#FF6803">
                <AlternatingRowStyle Wrap="False" />
                <Columns>
                    <asp:BoundField DataField="ItemNum" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ItemNum" />
                    <asp:BoundField DataField="ItemName" HeaderText="Dish" 
                        SortExpression="ItemName" />
                    <asp:BoundField DataField="Category" HeaderText="Category" 
                        SortExpression="Category" />
                    <asp:BoundField DataField="ItemPrice" DataFormatString="{0:c}" 
                        HeaderText="Price" SortExpression="ItemPrice" />
                    <asp:TemplateField HeaderText="ItemImage" SortExpression="ItemImage">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ItemImage") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="50" 
                                ImageUrl='<%# Eval("ItemImage").ToString()!="" ? Eval("ItemImage") : "~/App_Themes/Theme1/images/250/plate-1.png" %>' 
                                Width="50" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Button" HeaderText="Remove" 
                        ShowDeleteButton="True" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <EmptyDataTemplate>
                    No dishes in this menu.
                </EmptyDataTemplate>
                <HeaderStyle BorderStyle="Dotted" BorderWidth="1px" />
                <PagerStyle ForeColor="#FF6803" />
                <SelectedRowStyle BackColor="#FFCC00" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AlJebalConnectionString4 %>"
                DeleteCommand="DELETE FROM [Menu_Items] WHERE [Menu_ItemNum] = @original_Menu_ItemNum AND (([ItemNum] = @original_ItemNum) OR ([ItemNum] IS NULL AND @original_ItemNum IS NULL)) AND (([MenuNum] = @original_MenuNum) OR ([MenuNum] IS NULL AND @original_MenuNum IS NULL))" 
                InsertCommand="INSERT INTO [Menu_Items] ([ItemNum], [MenuNum]) VALUES (@ItemNum, @MenuNum)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT * FROM [Menu_Items] WHERE (([ItemNum] = @ItemNum) AND ([MenuNum] = @MenuNum))" 
        
                UpdateCommand="UPDATE [Menu_Items] SET [ItemNum] = @ItemNum, [MenuNum] = @MenuNum WHERE [Menu_ItemNum] = @original_Menu_ItemNum">
                <DeleteParameters>
                    <asp:Parameter Name="original_Menu_ItemNum" Type="Int32" />
                    <asp:Parameter Name="original_ItemNum" Type="Int32" />
                    <asp:Parameter Name="original_MenuNum" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ItemNum" Type="Int32" />
                    <asp:Parameter Name="MenuNum" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="ItemNum" 
                        PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="ListofMenus" Name="MenuNum" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ItemNum" Type="Int32" />
                    <asp:Parameter Name="MenuNum" Type="Int32" />
                    <asp:Parameter Name="original_Menu_ItemNum" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Menu_ItemNum" 
                DataSourceID="SqlDataSource3">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="Menu_ItemNumLabel" runat="server" 
                                Text='<%# Eval("Menu_ItemNum") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ItemNumLabel" runat="server" Text='<%# Eval("ItemNum") %>' />
                        </td>
                        <td>
                            <asp:Label ID="MenuNumLabel" runat="server" Text='<%# Eval("MenuNum") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="Menu_ItemNumLabel1" runat="server" 
                                Text='<%# Eval("Menu_ItemNum") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ItemNumTextBox" runat="server" Text='<%# Bind("ItemNum") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="MenuNumTextBox" runat="server" Text='<%# Bind("MenuNum") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>
                                No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                Text="Clear" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="ItemNumTextBox" runat="server" Text='<%# Bind("ItemNum") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="MenuNumTextBox" runat="server" Text='<%# Bind("MenuNum") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="Menu_ItemNumLabel" runat="server" 
                                Text='<%# Eval("Menu_ItemNum") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ItemNumLabel" runat="server" Text='<%# Eval("ItemNum") %>' />
                        </td>
                        <td>
                            <asp:Label ID="MenuNumLabel" runat="server" Text='<%# Eval("MenuNum") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <div id="order">
                                <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server">
                                        </th>
                                        <th runat="server">
                                            Menu_ItemNum</th>
                                        <th runat="server">
                                            ItemNum</th>
                                        <th runat="server">
                                            MenuNum</th>
                                    </tr>
                                    <tr ID="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                                </div>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="">
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="Menu_ItemNumLabel" runat="server" 
                                Text='<%# Eval("Menu_ItemNum") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ItemNumLabel" runat="server" Text='<%# Eval("ItemNum") %>' />
                        </td>
                        <td>
                            <asp:Label ID="MenuNumLabel" runat="server" Text='<%# Eval("MenuNum") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:DetailsView ID="DetailsView1" runat="server" Width="20%" 
                AutoGenerateRows="False" DataKeyNames="Menu_ItemNum" 
                DataSourceID="SqlDataSource3" BorderStyle="None" BorderWidth="0px" 
                HorizontalAlign="Left" Visible="False">
                <EmptyDataTemplate>
                    No Menu
                </EmptyDataTemplate>
                <Fields>
                    <asp:BoundField DataField="Menu_ItemNum" HeaderText="Menu_ItemNum" 
                        InsertVisible="False" ReadOnly="True" SortExpression="Menu_ItemNum" />
                    <asp:BoundField DataField="ItemNum" HeaderText="ItemNum" 
                        SortExpression="ItemNum" />
                    <asp:TemplateField HeaderText="MenuNum" SortExpression="MenuNum">
                        <EditItemTemplate>
                             <asp:DropDownList ID="ListofMenus2" runat="server" DataSourceID="SqlDataSource1" 
                                DataTextField="MenuName" DataValueField="MenuNum" SelectedValue='<%# Bind("MenuNum") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("MenuNum") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("MenuNum") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AlJebalConnectionString4 %>" 
                SelectCommand="getMenuItems" SelectCommandType="StoredProcedure" 
                InsertCommand="INSERT INTO [Menu_Items] ([ItemNum], [MenuNum]) VALUES (@ItemNum, @MenuNum)">
                <InsertParameters>
                    <asp:ControlParameter ControlID="GridView2" Name="ItemNum" 
                        PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="DropDownList2" DefaultValue="2" Name="MenuNum" 
                        PropertyName="SelectedValue" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="-1" Name="menuNum" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ItemNum" 
                DataSourceID="SqlDataSource4" BorderStyle="None" CellPadding="3" CellSpacing="3" HorizontalAlign="Left" EnableTheming="False" GridLines="Horizontal" ForeColor="#444444" AlternatingRowStyle-Wrap="False" HeaderStyle-ForeColor="#ff6803" PagerStyle-ForeColor="#FF6803">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ItemName" HeaderText="ItemName" 
                        SortExpression="ItemName" />
                    <asp:BoundField DataField="ItemDescription" HeaderText="ItemDescription" 
                        SortExpression="ItemDescription" />
                    <asp:BoundField DataField="ItemPrice" HeaderText="ItemPrice" 
                        SortExpression="ItemPrice" DataFormatString="{0:c}" />
                    <asp:TemplateField HeaderText="ItemImage" SortExpression="ItemImage">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("ItemImage") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image2" ImageUrl='<%# Eval("ItemImage") %>' Width="100" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <SelectedRowStyle BackColor="#FFCC00" />
            </asp:GridView>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Insert Into" />
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" 
                DataTextField="MenuName" DataValueField="MenuNum">
            </asp:DropDownList>
            
        </asp:View>
    </asp:MultiView>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="footerPlaceHolder" Runat="Server">
</asp:Content>