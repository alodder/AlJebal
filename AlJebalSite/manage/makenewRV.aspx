<%@ Page Title="" Language="C#" MasterPageFile="~/manage/MasterPage.master" AutoEventWireup="true" CodeFile="makenewRV.aspx.cs" Inherits="manage_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 345px;
        }
        .style3
        {
            width: 266px;
        }
        .style4
        {
            width: 345px;
            height: 44px;
        }
        .style5
        {
            width: 266px;
            height: 44px;
        }
        .style6
        {
            height: 44px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="subMenuPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sideMenuPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Customer First Name :"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="Cfirst" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ControlToValidate="Cfirst" Display="Dynamic" 
                    ErrorMessage="*This filed is required; please input the customer first name  " 
                    ForeColor="Red"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Customer Last Name :"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="Clast" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Clast" Display="Dynamic" 
                    ErrorMessage="**This filed is required; please input the customer Last name  " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="Customer Address  :"></asp:Label>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" Text="Street :"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="ST" runat="server" Height="61px" TextMode="MultiLine" 
                    Width="213px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" Text="City:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="city" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" Text="State:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True">OR</asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Text="Zip code:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="Zip" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label11" runat="server" Text="Email:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="email" Display="Dynamic" 
                    ErrorMessage="You need to add a valid email addreaase like Ali@AlJebal.com" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="email" Display="Dynamic" ErrorMessage=" . Email is required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label12" runat="server" Text="Cellphone:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="CellNum" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="CellNum" Display="Dynamic" 
                    ErrorMessage="you need to put cellphone number" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="CellNum" Display="Dynamic" 
                    ErrorMessage=". You need to put phone number that at least 9 digit" 
                    ForeColor="Red" ValidationExpression="\d{9,14}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label13" runat="server" 
                    Text="Do you want to recive email from us ?"></asp:Label>
            </td>
            <td class="style3">
                <asp:CheckBox ID="CheckBox1" runat="server" 
                    Text="Yes, I would like to do that " />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
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
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style1" colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label8" runat="server" Text="Table ID :"></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="TID" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="TableID" DataValueField="TableID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                    SelectCommand="SELECT * FROM [RestTable]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:FormView ID="FormView1" runat="server" CellPadding="4" 
                    DataKeyNames="TableID" DataSourceID="SqlDataSource3" ForeColor="#333333">
                    <EditItemTemplate>
                        TableID:
                        <asp:Label ID="TableIDLabel1" runat="server" Text='<%# Eval("TableID") %>' />
                        <br />
                        Chair:
                        <asp:TextBox ID="ChairTextBox" runat="server" Text='<%# Bind("Chair") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        Chair:
                        <asp:TextBox ID="ChairTextBox" runat="server" Text='<%# Bind("Chair") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        TableID:
                        <asp:Label ID="TableIDLabel" runat="server" Text='<%# Eval("TableID") %>' />
                        <br />
                        Chair:
                        <asp:Label ID="ChairLabel" runat="server" Text='<%# Bind("Chair") %>' />
                        <br />
                    </ItemTemplate>
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                    SelectCommand="GetChairNumber" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TID" Name="TID" PropertyName="SelectedValue" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label9" runat="server" Text="Date"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="Date" runat="server" ReadOnly="True">MM\DD\YYYY</asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:ImageButton ID="ClanderButton1" runat="server" Height="27px" 
                    ImageUrl="~/App_Themes/Manager/images/function_icon_set/calendar_icon.jpg" 
                    onclick="ClanderButton1_Click" Width="27px" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="Date" Display="Dynamic" 
                    ErrorMessage="this Date field is requred" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Calendar ID="CalendarBO" runat="server" BackColor="White" 
                    BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="#003399" Height="200px" 
                    onselectionchanged="CalendarBO_SelectionChanged" Visible="False" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                        Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label10" runat="server" Text="Time"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="Time" runat="server"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="Time" Display="Dynamic" 
                    ErrorMessage="This Time Field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="Time" Display="Dynamic" 
                    ErrorMessage=". You need to put a HH :MM for the time" ForeColor="Red" 
                    ValidationExpression="^(?:[01]?[0-9]|2[0-3]):[0-5][0-9]$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                    DeleteCommand="DELETE FROM [RestTableRes] WHERE [ResNum] = @original_ResNum AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([ResTimeDate] = @original_ResTimeDate) OR ([ResTimeDate] IS NULL AND @original_ResTimeDate IS NULL)) AND (([TableID] = @original_TableID) OR ([TableID] IS NULL AND @original_TableID IS NULL))" 
                    InsertCommand="INSERT INTO [RestTableRes] ([CustomerID], [ResTimeDate], [TableID]) VALUES ((select COUNT(*)+1 as CustomerID from [AlJebal].[dbo].[Customer]), @ResTimeDate, @TableID)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [RestTableRes]" 
                    UpdateCommand="UPDATE [RestTableRes] SET [CustomerID] = @CustomerID, [ResTimeDate] = @ResTimeDate, [TableID] = @TableID WHERE [ResNum] = @original_ResNum AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([ResTimeDate] = @original_ResTimeDate) OR ([ResTimeDate] IS NULL AND @original_ResTimeDate IS NULL)) AND (([TableID] = @original_TableID) OR ([TableID] IS NULL AND @original_TableID IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ResNum" Type="Int32" />
                        <asp:Parameter Name="original_CustomerID" Type="Int32" />
                        <asp:Parameter Name="original_ResTimeDate" Type="DateTime" />
                        <asp:Parameter Name="original_TableID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="CustomerID" 
                            QueryStringField="select COUNT(*)+1 as CustomerID from [AlJebal].[dbo].[Customer] " 
                            Type="Int32" />
                        <asp:SessionParameter DefaultValue="" Name="ResTimeDate" 
                            SessionField="DateTimeS" Type="DateTime" />
                        <asp:ControlParameter ControlID="TID" Name="TableID" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                        <asp:Parameter Name="ResTimeDate" Type="DateTime" />
                        <asp:Parameter Name="TableID" Type="Int32" />
                        <asp:Parameter Name="original_ResNum" Type="Int32" />
                        <asp:Parameter Name="original_CustomerID" Type="Int32" />
                        <asp:Parameter Name="original_ResTimeDate" Type="DateTime" />
                        <asp:Parameter Name="original_TableID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style3">
                <asp:Button ID="Enter" runat="server" onclick="Enter_Click" Text="Enter" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:DropDownList ID="DDID" runat="server" DataSourceID="SqlDataSource5" 
                    DataTextField="CustomerID" DataValueField="CustomerID" Visible="False">
                </asp:DropDownList>
            </td>
            <td>
                <asp:TextBox ID="erro" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                    SelectCommand="select COUNT(*)+1 as CustomerID from [AlJebal].[dbo].[Customer] ">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="footerPlaceHolder" Runat="Server">
</asp:Content>

