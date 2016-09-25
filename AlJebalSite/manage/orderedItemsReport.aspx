<%@ Page Title="" Language="C#" MasterPageFile="~/manage/MasterPage.master" AutoEventWireup="true" CodeFile="orderedItemsReport.aspx.cs" Inherits="manage_Default5" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="subMenuPlaceHolder" Runat="Server">
<asp:SiteMapDataSource ID="SiteMapDataSourceForOrders" runat="server" 
        StartingNodeUrl="~/manage/orders.aspx" />
    <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSourceForOrders" 
        Orientation="Horizontal" RenderingMode="List" StaticDisplayLevels="2">
    </asp:Menu>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sideMenuPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="100%" 
        Font-Names="Verdana" Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
        WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
        <LocalReport ReportPath="manage\Report1.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
            </DataSources>
        </LocalReport>

    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetData" TypeName="DataSet1TableAdapters.OrderItemTableAdapter">
        <InsertParameters>
            <asp:Parameter Name="OrderNum" Type="Int32" />
            <asp:Parameter Name="ItemNum" Type="Int32" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Total" Type="Decimal" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="footerPlaceHolder" Runat="Server">
</asp:Content>

