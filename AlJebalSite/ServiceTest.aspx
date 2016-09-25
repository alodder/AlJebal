<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ServiceTest.aspx.cs" Inherits="Default6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="MenuDataClassesDataContext" EnableInsert="True" 
            EntityTypeName="" TableName="Menus">
        </asp:LinqDataSource>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="MenuNum" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="MenuNum" HeaderText="MenuNum" InsertVisible="False" 
                    ReadOnly="True" SortExpression="MenuNum" />
                <asp:BoundField DataField="MenuName" HeaderText="MenuName" 
                    SortExpression="MenuName" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
