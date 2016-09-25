<%@ Page Title="" Language="C#" MasterPageFile="~/manage/MasterPage.master" AutoEventWireup="true" CodeFile="newreservation.aspx.cs" Inherits="manage_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 135px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sideMenuPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Customer ID:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="CustomerID" 
                        DataValueField="CustomerID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                        SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    info:</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                        AutoGenerateRows="False" CellPadding="4" DataKeyNames="CustomerID" 
                        DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" 
                        Height="50px" Width="125px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
                            <asp:BoundField DataField="CFirstName" HeaderText="CFirstName" 
                                SortExpression="CFirstName" />
                            <asp:BoundField DataField="CLastName" HeaderText="CLastName" 
                                SortExpression="CLastName" />
                            <asp:BoundField DataField="CAddress" HeaderText="CAddress" 
                                SortExpression="CAddress" />
                            <asp:BoundField DataField="Cellphone" HeaderText="Cellphone" 
                                SortExpression="Cellphone" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="DWTRA" HeaderText="DWTRA" SortExpression="DWTRA" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                        SelectCommand="getcinfo" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="cid" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    Table Number:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        DataSourceID="SqlDataSource3" DataTextField="TableID" DataValueField="TableID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                        SelectCommand="SELECT * FROM [RestTable]"></asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    Time and date:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"> mm/dd/yyyy - hh:mm </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  
                        ControlToValidate="TextBox1" 
                        InitiaValue= "mm/dd/yyyy - hh : mm"
                        ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConflictDetection="CompareAllValues" 
                        ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                        DeleteCommand="DELETE FROM [RestTableRes] WHERE [ResNum] = @original_ResNum AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([ResTimeDate] = @original_ResTimeDate) OR ([ResTimeDate] IS NULL AND @original_ResTimeDate IS NULL)) AND (([TableID] = @original_TableID) OR ([TableID] IS NULL AND @original_TableID IS NULL))" 
                        InsertCommand="INSERT INTO [RestTableRes] ([CustomerID], [ResTimeDate], [TableID]) VALUES (@CustomerID, @ResTimeDate, @TableID)" 
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
                            <asp:ControlParameter ControlID="DropDownList1" Name="CustomerID" 
                                PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="TextBox1" Name="ResTimeDate" 
                                PropertyName="Text" Type="DateTime" />
                            <asp:ControlParameter ControlID="DropDownList2" Name="TableID" 
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
                <td>
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Enter" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footerPlaceHolder" Runat="Server">
</asp:Content>

