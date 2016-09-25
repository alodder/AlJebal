<%@ Page Title="" Language="C#" MasterPageFile="~/manage/MasterPage.master" AutoEventWireup="true" CodeFile="announcements.aspx.cs" Inherits="manage_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="subMenuPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sideMenuPlaceHolder" Runat="Server">
    <asp:Menu ID="TabMenu" runat="server" RenderingMode="List" 
        onmenuitemclick="TabMenu_MenuItemClick" Orientation="Horizontal">
        <Items>
            <asp:MenuItem Value="0" Text="Create Announcement "></asp:MenuItem>
            <asp:MenuItem Value="1" Text=" View Announcements"></asp:MenuItem>
        </Items>
    </asp:Menu>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex=0>
        <asp:View ID="View1" runat="server">

    <div style="padding:1em;">
        <div style="float:left;">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AlJebalConnectionString4 %>" 
                InsertCommand="EXEC makeAnnouncement @title, @content, @image, null, 'Manager', @date" >
                <InsertParameters>
                    <asp:ControlParameter ControlID="title" Name="title" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="content" Name="content" 
                        PropertyName="Text" Type="String" />
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="authID" Type="Int32" />
                    <asp:Parameter Name="authName" Type="String" />
                    <asp:ControlParameter ControlID="calendar" Name="date" 
                        PropertyName="SelectedDate" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <label for="title" style=" width:12em; text-align:right;">Title: </label><br />
            <asp:TextBox ID="title" runat="server"></asp:TextBox><br />
            <label for="content">Content: </label><br />
            <asp:TextBox ID="content" runat="server" TextMode="MultiLine"></asp:TextBox><br />
            <label for="image">Image: </label><br />
            <asp:FileUpload ID="image" runat="server" /><br />
            <br />
            
        </div>
        <div style="float:left;">
            <label for="calendar">Event Date: </label><br />
            <asp:Calendar ID="calendar" runat="server"></asp:Calendar>
        </div>
        
        <asp:Button ID="Button1" runat="server" Text="Submit" 
            style="float:left; clear:both;" onclick="Button1_Click" /><br /><br />
    </div>
    </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AlJebalConnectionString4 %>" 
                DeleteCommand="DELETE FROM [Announcements] WHERE [annID] = @annID" 
                InsertCommand="INSERT INTO [Announcements] ([annPostDate], [annTitle], [annContent], [annImage], [annAuthId], [annAuthName], [annDate]) VALUES (@annPostDate, @annTitle, @annContent, @annImage, @annAuthId, @annAuthName, @annDate)" 
                SelectCommand="SELECT * FROM [Announcements] ORDER BY [annID] DESC" 
                UpdateCommand="UPDATE [Announcements] SET [annPostDate] = @annPostDate, [annTitle] = @annTitle, [annContent] = @annContent, [annImage] = @annImage, [annAuthId] = @annAuthId, [annAuthName] = @annAuthName, [annDate] = @annDate WHERE [annID] = @annID">
                <DeleteParameters>
                    <asp:Parameter Name="annID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="annPostDate" Type="DateTime" />
                    <asp:Parameter Name="annTitle" Type="String" />
                    <asp:Parameter Name="annContent" Type="String" />
                    <asp:Parameter Name="annImage" Type="String" />
                    <asp:Parameter Name="annAuthId" Type="Int32" />
                    <asp:Parameter Name="annAuthName" Type="String" />
                    <asp:Parameter Name="annDate" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="annPostDate" Type="DateTime" />
                    <asp:Parameter Name="annTitle" Type="String" />
                    <asp:Parameter Name="annContent" Type="String" />
                    <asp:Parameter Name="annImage" Type="String" />
                    <asp:Parameter Name="annAuthId" Type="Int32" />
                    <asp:Parameter Name="annAuthName" Type="String" />
                    <asp:Parameter Name="annDate" Type="DateTime" />
                    <asp:Parameter Name="annID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="annID" 
                DataSourceID="SqlDataSource2">
                <EditItemTemplate>
                    <div class="announcement">
                    <span style="">annID:
                    <asp:Label ID="annIDLabel1" runat="server" Text='<%# Eval("annID") %>' />
                    <div class="head">
                    Title:
                    <asp:TextBox ID="annTitleTextBox" runat="server" 
                        Text='<%# Bind("annTitle") %>' />
                    PostDate:
                    <asp:TextBox ID="annPostDateTextBox" runat="server" 
                        Text='<%# Bind("annPostDate") %>' />
                    </div>
                    annContent:
                    <asp:TextBox ID="annContentTextBox" runat="server" 
                        Text='<%# Bind("annContent") %>' />
                    <br />
                    annImage:
                    <asp:TextBox ID="annImageTextBox" runat="server" 
                        Text='<%# Bind("annImage") %>' />
                    <br />
                    annAuthName:
                    <asp:TextBox ID="annAuthNameTextBox" runat="server" 
                        Text='<%# Bind("annAuthName") %>' />
                    <br />
                    annDate:
                    <asp:TextBox ID="annDateTextBox" runat="server" Text='<%# Bind("annDate") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                    <br />
                    <br />
                    </div>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <ItemTemplate>
                    <div class="announcement">
                        id: <asp:Label ID="Label5" runat="server" Text='<%# Eval("annID") %>' />
                        <div class="head">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("annTitle") %>' />
                        -
                        <asp:Label ID="Label2" class="left" runat="server" 
                            Text='<%# Eval("annPostDate", "{0:MM/dd/yy h:mm tt}") %>' />
                        </div>
                        <p class="post">
                        <asp:Label ID="Label3" runat="server" 
                            Text='<%# Eval("annContent") %>' />
                         <%# Eval("annImage").ToString()!="" ? "<hr />"+Eval("annImage") : "" %>
                        <br/>
                        <asp:Label ID="Label4" class="author" runat="server" 
                            Text='<%# "- "+Eval("annAuthName") %>' />
                        </p>
                        <%# Eval("annDate").ToString() != "" ? "<div class=\"date\">" + "<h3 class=\"month\">" + Eval("annDate", "{0:MMMM}") + "</h3>" + "<span class=\"day\">"+Eval("annDate", "{0:ddd dd}") +"</span>"+ "</div>" : ""%>
                        <br />
                        <asp:Button ID="Button2" runat="server" CommandName="Edit" Text="Edit" />
                        <asp:Button ID="Button3" runat="server" CommandName="Delete" 
                            Text="Delete" />
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <div ID="itemPlaceholderContainer" runat="server" style="">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
            </asp:ListView>
        </asp:View>
    </asp:MultiView>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="footerPlaceHolder" Runat="Server">
</asp:Content>

