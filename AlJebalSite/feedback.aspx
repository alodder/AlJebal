<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="manage_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div style="margin:0 auto">
    <h2>Your Feedback</h2>
    <p>Please let us know how we're doing!</p>

    <p style="height: 25px; width: 724px; margin-left: 0px; margin-bottom: 19px">
        <label style="width:6em; display:inline-block; text-align:right;">Your Name: </label><asp:TextBox ID="TextBox1" runat="server" Width="256px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="no empty"></asp:RequiredFieldValidator>
    </p>

    <p style="height: 25px; width: 728px; margin-left: 0px; margin-top: 0px; margin-bottom: 19px">
    <label style="width:6em; display:inline-block; text-align:right;">Email: </label><asp:TextBox ID="TextBox3" runat="server" Width="260px" style="margin-top: 2px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="no empty"></asp:RequiredFieldValidator>
    </p>

    <p style="height: 25px; width: 422px; margin-left: 0px; margin-top: 0px; margin-bottom: 19px">
    <label style="width:6em; display:inline-block; text-align:right;">Rating:</label>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" style="margin-left:6em;">
            <asp:ListItem>Excellent</asp:ListItem>
            <asp:ListItem>Good</asp:ListItem>
            <asp:ListItem>Average</asp:ListItem>
            <asp:ListItem>Below Average</asp:ListItem>
        </asp:CheckBoxList>
    </p>

    Your Comments: <br />
    <asp:TextBox ID="TextBox2" runat="server" Height="131px" 
        style="margin-top: 0px" Columns="80"></asp:TextBox>
    <br />
&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Yes, i am sure" 
    onclick="Button1_Click1" />
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:AlJebalConnectionString5 %>" 
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
            <asp:controlParameter Name="Customer_Name" Type="String" ControlID="textbox1" />
            <asp:controlParameter Name="Email" Type="String" ControlID="textbox2" />
            <asp:controlParameter Name="Rating" Type="String" ControlID="CheckBoxList1" />
            <asp:controlParameter Name="Commonds" Type="String" ControlID="textbox3" />
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
</asp:Content>
