<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="custom_order.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 393px;
        }
        .style2
        {
            width: 118px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Custom Order</h2>
<p>Give us the details on your dream dish and we'll do our best to serve you! A manager will get back to you with details and cost.</p>
    <table style="width:100%;">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" 
                    Text="Give a name for your custom dish :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="D_name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="D_name" Display="Dynamic" 
                    ErrorMessage="This Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label2" runat="server" Text="What kind of dish it is ? "></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="WhatKindDD" runat="server">
                    <asp:ListItem Value="none">choose </asp:ListItem>
                    <asp:ListItem>Salads </asp:ListItem>
                    <asp:ListItem>See food</asp:ListItem>
                    <asp:ListItem>Appetizers </asp:ListItem>
                    <asp:ListItem>Sandwiches</asp:ListItem>
                    <asp:ListItem>Dessert</asp:ListItem>
                    <asp:ListItem>Main course </asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label3" runat="server" Text="Your dish description :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Dish_Description" runat="server" Height="88px" 
                    TextMode="MultiLine" Width="186px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="Dish_Description" Display="Dynamic" 
                    ErrorMessage="This Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label4" runat="server" 
                    Text="This dish can be served for how many people "></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="191px">
                    <asp:ListItem>1</asp:ListItem> <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label5" runat="server" Text="for what date ? "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Date" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:ImageButton ID="ClanderButton1" runat="server" Height="27px" 
                    ImageUrl="~/App_Themes/Manager/images/function_icon_set/calendar_icon.jpg" 
                    onclick="ClanderButton1_Click" Width="27px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Calendar ID="CalendarBO" runat="server" BackColor="White" 
                    BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                    ForeColor="Black" Height="190px" 
                    onselectionchanged="CalendarBO_SelectionChanged" Visible="False" 
                    Width="350px" NextPrevFormat="FullMonth">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" 
                        VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                        Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label6" runat="server" Text="Customer First Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Cfirst" runat="server" style="margin-left: 0px"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ControlToValidate="Cfirst" Display="Dynamic" 
                    ErrorMessage="*This filed is required; please input the customer first name  " 
                    ForeColor="Red"></asp:CustomValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label7" runat="server" Text="Customer Last Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Clast" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Clast" Display="Dynamic" 
                    ErrorMessage="**This filed is required; please input the customer Last name  " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label8" runat="server" Text="Customer Address  :"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="ST" runat="server" Height="51px" TextMode="MultiLine" 
                    Width="387px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="ST" Display="Dynamic" 
                    ErrorMessage="* This Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label9" runat="server" Text="City:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="city" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label10" runat="server" Text="State:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True">OR</asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label11" runat="server" Text="Zip code:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Zip" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="Zip" Display="Dynamic" 
                    ErrorMessage="* This Field is Required* This Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label12" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="email" Display="Dynamic" 
                    ErrorMessage="You need to add a valid email addreaase like Ali@AlJebal.com" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="email" Display="Dynamic" ErrorMessage=" . Email is required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label13" runat="server" Text="Cellphone:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="CellNum" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="CellNum" Display="Dynamic" 
                    ErrorMessage="you need to put cellphone number" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="CellNum" Display="Dynamic" 
                    ErrorMessage=". You need to put phone number that at least 9 digit" 
                    ForeColor="Red" ValidationExpression="\d{9,14}"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" 
                    Text="Yes, I would like to do that " />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                    DeleteCommand="DELETE FROM [Customer] WHERE [CustomerID] = @original_CustomerID AND (([CFirstName] = @original_CFirstName) OR ([CFirstName] IS NULL AND @original_CFirstName IS NULL)) AND (([CLastName] = @original_CLastName) OR ([CLastName] IS NULL AND @original_CLastName IS NULL)) AND (([CAddress] = @original_CAddress) OR ([CAddress] IS NULL AND @original_CAddress IS NULL)) AND (([Cellphone] = @original_Cellphone) OR ([Cellphone] IS NULL AND @original_Cellphone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([DWTRA] = @original_DWTRA) OR ([DWTRA] IS NULL AND @original_DWTRA IS NULL))" 
                    InsertCommand="INSERT INTO [Customer] ([CFirstName], [CLastName], [CAddress], [Cellphone], [Email], [DWTRA]) VALUES (@CFirstName, @CLastName, @CAddress, @Cellphone, @Email, @DWTRA)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Customer]" 
                    UpdateCommand="UPDATE [Customer] SET [CFirstName] = @CFirstName, [CLastName] = @CLastName, [CAddress] = @CAddress, [Cellphone] = @Cellphone, [Email] = @Email, [DWTRA] = @DWTRA WHERE [CustomerID] = @original_CustomerID AND (([CFirstName] = @original_CFirstName) OR ([CFirstName] IS NULL AND @original_CFirstName IS NULL)) AND (([CLastName] = @original_CLastName) OR ([CLastName] IS NULL AND @original_CLastName IS NULL)) AND (([CAddress] = @original_CAddress) OR ([CAddress] IS NULL AND @original_CAddress IS NULL)) AND (([Cellphone] = @original_Cellphone) OR ([Cellphone] IS NULL AND @original_Cellphone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([DWTRA] = @original_DWTRA) OR ([DWTRA] IS NULL AND @original_DWTRA IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_CustomerID" Type="Int32" />
                        <asp:Parameter Name="original_CFirstName" Type="String" />
                        <asp:Parameter Name="original_CLastName" Type="String" />
                        <asp:Parameter Name="original_CAddress" Type="String" />
                        <asp:Parameter Name="original_Cellphone" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_DWTRA" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="Cfirst" Name="CFirstName" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="Clast" Name="CLastName" PropertyName="Text" 
                            Type="String" />
                        <asp:SessionParameter Name="CAddress" SessionField="AddressS" Type="String" />
                        <asp:ControlParameter ControlID="CellNum" Name="Cellphone" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="email" Name="Email" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="CheckBox1" Name="DWTRA" PropertyName="Checked" 
                            Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CFirstName" Type="String" />
                        <asp:Parameter Name="CLastName" Type="String" />
                        <asp:Parameter Name="CAddress" Type="String" />
                        <asp:Parameter Name="Cellphone" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="DWTRA" Type="Int32" />
                        <asp:Parameter Name="original_CustomerID" Type="Int32" />
                        <asp:Parameter Name="original_CFirstName" Type="String" />
                        <asp:Parameter Name="original_CLastName" Type="String" />
                        <asp:Parameter Name="original_CAddress" Type="String" />
                        <asp:Parameter Name="original_Cellphone" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_DWTRA" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Make this dish" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                    DeleteCommand="DELETE FROM [CustomDishe] WHERE [custom_disheNum] = @original_custom_disheNum AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([What_kind] = @original_What_kind) OR ([What_kind] IS NULL AND @original_What_kind IS NULL)) AND (([DisheName] = @original_DisheName) OR ([DisheName] IS NULL AND @original_DisheName IS NULL)) AND (([NumberOfgust] = @original_NumberOfgust) OR ([NumberOfgust] IS NULL AND @original_NumberOfgust IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL))" 
                    InsertCommand="INSERT INTO [CustomDishe] ([CustomerID], [Description], [What_kind], [DisheName], [NumberOfgust], [Date]) VALUES ((select COUNT(*)+1 as CustomerID from [AlJebal].[dbo].[Customer]), @Description, @What_kind, @DisheName, @NumberOfgust, @Date)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [custom_disheNum], [CustomerID], [Description], [What_kind], [DisheName], [NumberOfgust], [Date] FROM [CustomDishe]" 
                    UpdateCommand="UPDATE [CustomDishe] SET [CustomerID] = @CustomerID, [Description] = @Description, [What_kind] = @What_kind, [DisheName] = @DisheName, [NumberOfgust] = @NumberOfgust, [Date] = @Date WHERE [custom_disheNum] = @original_custom_disheNum AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([What_kind] = @original_What_kind) OR ([What_kind] IS NULL AND @original_What_kind IS NULL)) AND (([DisheName] = @original_DisheName) OR ([DisheName] IS NULL AND @original_DisheName IS NULL)) AND (([NumberOfgust] = @original_NumberOfgust) OR ([NumberOfgust] IS NULL AND @original_NumberOfgust IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_custom_disheNum" Type="Int32" />
                        <asp:Parameter Name="original_CustomerID" Type="Int32" />
                        <asp:Parameter Name="original_Description" Type="String" />
                        <asp:Parameter Name="original_What_kind" Type="String" />
                        <asp:Parameter Name="original_DisheName" Type="String" />
                        <asp:Parameter Name="original_NumberOfgust" Type="String" />
                        <asp:Parameter Name="original_Date" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:QueryStringParameter Name="CustomerID" 
                            QueryStringField="select COUNT(*)+1 as CustomerID from [AlJebal].[dbo].[Customer] " 
                            Type="Int32" />
                        <asp:ControlParameter ControlID="Dish_Description" Name="Description" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="WhatKindDD" Name="What_kind" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="D_name" Name="DisheName" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="RadioButtonList1" Name="NumberOfgust" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="Date" Name="Date" PropertyName="Text" 
                            Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="What_kind" Type="String" />
                        <asp:Parameter Name="DisheName" Type="String" />
                        <asp:Parameter Name="NumberOfgust" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="original_custom_disheNum" Type="Int32" />
                        <asp:Parameter Name="original_CustomerID" Type="Int32" />
                        <asp:Parameter Name="original_Description" Type="String" />
                        <asp:Parameter Name="original_What_kind" Type="String" />
                        <asp:Parameter Name="original_DisheName" Type="String" />
                        <asp:Parameter Name="original_NumberOfgust" Type="String" />
                        <asp:Parameter Name="original_Date" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

