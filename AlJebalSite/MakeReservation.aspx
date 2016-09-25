<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MakeReservation.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 305px;
        }
        .style2
        {
            width: 126px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label2" runat="server" Text="Please in put the date:&nbsp;"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="*This Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                * The date should be like this MM/DD/2011</td>
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
                    DataKeyNames="ResNum,TableID1" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ResNum" HeaderText="ResNum" InsertVisible="False" 
                            ReadOnly="True" SortExpression="ResNum" />
                        <asp:BoundField DataField="ResTimeDate" HeaderText="The Time and Date that is avloble on " 
                            SortExpression="ResTimeDate" />
                        <asp:BoundField DataField="Chair" HeaderText="The number of Chair" 
                            SortExpression="Chair" />
                    </Columns>
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
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                    DeleteCommand="DELETE FROM [RestTableRes] WHERE [ResNum] = @original_ResNum AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL))" 
                    InsertCommand="INSERT INTO [RestTableRes] ([CustomerID]) VALUES (@CustomerID)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [ResNum], [CustomerID] FROM [RestTableRes]" 
                    
                    UpdateCommand="UPDATE [RestTableRes] SET [CustomerID] = @CustomerID WHERE [ResNum] = @original_ResNum AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ResNum" Type="Int32" />
                        <asp:Parameter Name="original_CustomerID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="TextBox3" Name="CustomerID" 
                            PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="TextBox2" Name="original_ResNum" 
                            PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="TextBox4" DefaultValue="" 
                            Name="original_CustomerID" PropertyName="Text" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label4" runat="server" 
                    Text="Please in put your Customer ID here:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
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
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Enter" />
                <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label5" runat="server" 
                    Text="If you don't have Customer ID click "></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/MakeReservationForNewC.aspx"> Here</asp:HyperLink>
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
    </table>
</asp:Content>

