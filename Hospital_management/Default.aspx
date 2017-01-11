<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msdn %>" SelectCommand="SELECT * FROM [userdetails]"></asp:SqlDataSource>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
                <asp:BoundField DataField="User Name" HeaderText="User Name" SortExpression="User Name" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="E-mail" HeaderText="E-mail" SortExpression="E-mail" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Mobile No" HeaderText="Mobile No" SortExpression="Mobile No" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
