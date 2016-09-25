<%@ Page Title="" Language="C#" MasterPageFile="~/manage/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="manage_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="subMenuPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sideMenuPlaceHolder" Runat="Server">
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
        AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
        DataKeyNames="Email">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Customer Name" HeaderText="Customer Name" 
                SortExpression="Customer Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" 
                SortExpression="Email" />
            <asp:BoundField DataField="Rating" HeaderText="Rating" 
                SortExpression="Rating" />
            <asp:BoundField DataField="Commonds" HeaderText="Commonds" 
                SortExpression="Commonds" />
        </Columns>
    </asp:GridView>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Email" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
            Customer Name:
            <asp:Label ID="Customer_NameLabel" runat="server" 
                Text='<%# Eval("[Customer Name]") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            <br />
            Rating:
            <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
            <br />
            Commonds:
            <asp:Label ID="CommondsLabel" runat="server" Text='<%# Eval("Commonds") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:AlJebalConnectionString4 %>" 
        DeleteCommand="DELETE FROM [feedback2] WHERE [Email] = @original_Email AND (([Customer Name] = @original_Customer_Name) OR ([Customer Name] IS NULL AND @original_Customer_Name IS NULL)) AND (([Rating] = @original_Rating) OR ([Rating] IS NULL AND @original_Rating IS NULL)) AND (([Commonds] = @original_Commonds) OR ([Commonds] IS NULL AND @original_Commonds IS NULL))" 
        InsertCommand="INSERT INTO [feedback2] ([Customer Name], [Email], [Rating], [Commonds]) VALUES (@Customer_Name, @Email, @Rating, @Commonds)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [feedback2]" 
        UpdateCommand="UPDATE [feedback2] SET [Customer Name] = @Customer_Name, [Rating] = @Rating, [Commonds] = @Commonds WHERE [Email] = @original_Email AND (([Customer Name] = @original_Customer_Name) OR ([Customer Name] IS NULL AND @original_Customer_Name IS NULL)) AND (([Rating] = @original_Rating) OR ([Rating] IS NULL AND @original_Rating IS NULL)) AND (([Commonds] = @original_Commonds) OR ([Commonds] IS NULL AND @original_Commonds IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Customer_Name" Type="String" />
            <asp:Parameter Name="original_Rating" Type="String" />
            <asp:Parameter Name="original_Commonds" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Customer_Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Rating" Type="String" />
            <asp:Parameter Name="Commonds" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Customer_Name" Type="String" />
            <asp:Parameter Name="Rating" Type="String" />
            <asp:Parameter Name="Commonds" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Customer_Name" Type="String" />
            <asp:Parameter Name="original_Rating" Type="String" />
            <asp:Parameter Name="original_Commonds" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <a href="feedbackCrystalReport.rpt">feedbackCrystalReport.rpt</a>
    </asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="footerPlaceHolder" Runat="Server">
</asp:Content>

