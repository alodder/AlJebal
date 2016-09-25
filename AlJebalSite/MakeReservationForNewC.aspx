<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MakeReservationForNewC.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
        }
        .style3
        {
            width: 218px;
            height: 40px;
        }
        .style4
        {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style3">
                </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1" colspan="2">
                <asp:Label ID="Label16" runat="server" 
                    Text="From here you can creat new table reservation"></asp:Label>
                :</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="4">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label2" runat="server" Text="Please in put the date:&nbsp;"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="*This Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label15" runat="server" 
                    Text="* The date should be like this MM/DD/2011"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" 
                    Text="Please chose the number of chair that you want:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridViewG"
                    DataKeyNames="ResNum,TableID1" DataSourceID="SqlDataSource1" 
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" ButtonType="Image" 
                            SelectImageUrl="~/App_Themes/Manager/images/function_icon_set/blinklist_48.png" />
                        <asp:BoundField DataField="ResNum" HeaderText="ResNum" InsertVisible="False" 
                            ReadOnly="True" SortExpression="ResNum" />
                        <asp:BoundField DataField="ResTimeDate" HeaderText="The Time and Date that is available on " 
                            SortExpression="ResTimeDate" />
                        <asp:BoundField DataField="Chair" HeaderText="The number of Chair" 
                            SortExpression="Chair" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                    SelectCommand="Nores" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="p1" 
                            PropertyName="SelectedValue" Type="Int32" />
                        <asp:SessionParameter Name="p2" SessionField="CNumM" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label3" runat="server" Text="You have selected :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="4">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/MakeReservation.aspx">if you know you Customer ID </asp:HyperLink>
            </td>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
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
                <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
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
                <asp:Label ID="Label4" runat="server" Text="Customer First Name :"></asp:Label>
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
                <asp:Label ID="Label5" runat="server" Text="Customer Last Name :"></asp:Label>
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
                <asp:Label ID="Label6" runat="server" Text="Customer Address  :"></asp:Label>
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
                <asp:TextBox ID="ST" runat="server" Height="61px" TextMode="MultiLine" 
                    Width="213px"></asp:TextBox>
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
                <asp:Label ID="Label7" runat="server" Text="City:"></asp:Label>
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
                <asp:Label ID="Label8" runat="server" Text="State:"></asp:Label>
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
                <asp:Label ID="Label9" runat="server" Text="Zip code:"></asp:Label>
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
                <asp:Label ID="Label11" runat="server" Text="Email:"></asp:Label>
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
                <asp:Label ID="Label12" runat="server" Text="Confirm email" Visible="False"></asp:Label>
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
                <asp:Label ID="Label14" runat="server" 
                    Text="Do you want to recive email from us ?"></asp:Label>
            </td>
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                    DeleteCommand="DELETE FROM [RestTableRes] WHERE [ResNum] = @original_ResNum AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL))" 
                    InsertCommand="INSERT INTO [RestTableRes] ([CustomerID]) VALUES (@CustomerID)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [ResNum], [CustomerID] FROM [RestTableRes]" 
                    
                    UpdateCommand="UPDATE [RestTableRes] SET [CustomerID] = (select COUNT(*)+1 as CustomerID from [AlJebal].[dbo].[Customer]) WHERE [ResNum] = @original_ResNum AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ResNum" Type="Int32" />
                        <asp:Parameter Name="original_CustomerID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="CustomerID" 
                            QueryStringField="select COUNT(*)+1 as CustomerID from [AlJebal].[dbo].[Customer] " 
                            Type="Int32" />
                        <asp:ControlParameter ControlID="TextBox2" Name="original_ResNum" 
                            PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="TextBox4" Name="original_CustomerID" 
                            PropertyName="Text" Type="Int32" DefaultValue="" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Enter" />
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
    </table>
</asp:Content>

