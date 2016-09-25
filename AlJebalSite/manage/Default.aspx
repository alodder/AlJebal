<%@ Page Title="" Language="C#" MasterPageFile="~/manage/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="manage_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Portal</h1>
    <fieldset class="control">
        <legend>Today Weather in Corvallis City&nbsp; </legend>
        <ul>
            <li>
                <asp:Label ID="LtextTemperature" runat="server" Text="Temperature:"></asp:Label>
                <asp:Label ID="LabelTemperature" runat="server"></asp:Label>
            </li>
            <li>
                <asp:Label ID="LabelDescription" runat="server"></asp:Label>
            </li>
            <li>
                <asp:Label ID="Label1" runat="server" Text="Wind speed:"></asp:Label>
                <asp:Label ID="wind" runat="server"></asp:Label>
            </li>
        </ul>
    </fieldset>
        
    <fieldset class="control">
        <legend>Today Weather in selected city: </legend>
        <ul>
            <li>
                <asp:Label ID="Label3" runat="server" Text="city: "></asp:Label>
                <asp:Label ID="Labelcity" runat="server"></asp:Label>
            </li>
            <li>
                <asp:Label ID="LtextTemperature0" runat="server" Text="Temperature:"></asp:Label>
                <asp:Label ID="citytemp" runat="server"></asp:Label>
            </li>
            <li>
                <asp:Label ID="citydescr" runat="server"></asp:Label>
            </li>
            <li>
                <asp:Label ID="Label2" runat="server" Text="Wind speed:"></asp:Label>
                <asp:Label ID="citywind" runat="server"></asp:Label>
            </li>
            <li>
                <asp:Label ID="Label4" runat="server" Text="Enter zipcode: "></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="updateZIP"></asp:TextBox>
            </li>
        </ul>
    </fieldset>
    <fieldset class="control">
        <legend>Recent Activity Control: </legend>
        <ul>
            <li>2 New Orders</li>
            <li>1 New Custom Order</li>
            <li>1 New Reservation</li>
            <li>1 New Feedback</li>
        </ul>
    </fieldset>
    <fieldset class="control">
        <legend>Order Control>Order Control</legend>
        <ul>
            <li>View New Orders</li>
            <li>View Custom Order Requests</li>
            <li>View Orders</li>
        </ul>
    </fieldset>
    <fieldset class="control">
        <legend>System Status</legend>
        <ul>
            <li>1 current user session</li>
        </ul>
    </fieldset>
    <fieldset class="control">
        <legend>New Control</legend>
        <ul>
            <li>Control menu option</li>
            <li>nuther menu option</li>
        </ul>
    </fieldset>
    <fieldset class="control">
        <legend>New Control</legend>
        <ul>
            <li>Control menu option</li>
            <li>nuther menu option</li>
        </ul>
    </fieldset>
    <fieldset class="control controlBlock">
        <legend>New Control</legend>
        <ul>
            <li>Control menu option</li>
            <li>nuther menu option</li>
        </ul>
    </fieldset>
    <fieldset class="control">
        <legend>New Control</legend>
        <ul>
            <li>Control menu option</li>
            <li>nuther menu option</li>
        </ul>
    </fieldset>
</asp:Content>
