<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User Data.aspx.cs" Inherits="User_Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" DataKeyNames="Id">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="M.R.No." HeaderText="M.R.No." SortExpression="M.R.No." InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="MobileNo." HeaderText="MobileNo." SortExpression="MobileNo." />
                <asp:BoundField DataField="NationalID" HeaderText="NationalID" SortExpression="NationalID" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DocotorsConnectionString %>" SelectCommand="SELECT * FROM [patient]"></asp:SqlDataSource>
    </form>
</body>
</html>
