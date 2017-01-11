<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Doctor.aspx.cs" Inherits="View_Doctor" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" >
    <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="libs/normalize/normalize.css" type="text/css">
    <link rel="stylesheet" href="libs/font-awesome/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/layout.css" type="text/css">
    <link rel="stylesheet" href="css/main.css" type="text/css">
    <link href="HomeStyle.css" rel="stylesheet" type="text/css">
</head>
<body style="background-image:url(background.jpg);width:auto">
    
    <div class="container">
        <div class="header" style="background-image:url(Health.jpg);width:auto;height:140px">
        <img src="logo.jpg" style="margin-top:20px;float:left;margin-left:20px"/>
         <h2>Tanim</h2>
        <h3>Hospital</h3>
       </div>
        <div>
        <ul class="nav nav-tabs" style="background:#193d04; border-radius:5px" >
       <li role="presentation" ><a href="Home.aspx">&nbsp;&nbsp;&nbsp;Home&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Aboutas.aspx">&nbsp;&nbsp;&nbsp;About Us&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation" class="active"><a href="View_Doctor.aspx">&nbsp;&nbsp;&nbsp;View Dotors&nbsp;&nbsp;&nbsp;</a></li>
            
            <li role="presentation" ><a href="FAQ.aspx">&nbsp;&nbsp;&nbsp;FAQ&nbsp;&nbsp;&nbsp;</a></li>
       <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;Donate Blood&nbsp;&nbsp;&nbsp;</a></li>
      <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;Contact Us&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Partners.aspx">&nbsp;&nbsp;&nbsp;Our Pratners&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Log_in.aspx">&nbsp;&nbsp;&nbsp;Log In&nbsp;&nbsp;&nbsp;</a></li>
      </ul> 


      </div>
        


      </div>
        <form id="form1" runat="server">
        


            <div>
            <asp:Label ID="Label1" Style="margin-top:20px;margin-left:300px;color:#e97709" runat="server" Text="Select Department"></asp:Label>
            
                <asp:DropDownList ID="SPDrop" runat="server" Style="margin-top:20px;border-radius:5px" AutoPostBack="True" Width="280px" Height="30px" OnSelectedIndexChanged="SPDrop_SelectedIndexChanged" BackColor="Silver" ForeColor="White">
                    <asp:ListItem>Select One</asp:ListItem>
                    <asp:ListItem>Cardiac &amp; Vascular Surgery</asp:ListItem>
                    <asp:ListItem>Internal Medicine &amp; Critical Care</asp:ListItem>
                    <asp:ListItem>Neurology</asp:ListItem>
                    <asp:ListItem>Orthopedics</asp:ListItem>
                    <asp:ListItem>Pathology &amp; Laboratory Medicine</asp:ListItem>
                    <asp:ListItem>ENT and Head &amp; neck Surgery</asp:ListItem>
                    <asp:ListItem>Dental Care</asp:ListItem>
                    <asp:ListItem>Psychiatry</asp:ListItem>
                </asp:DropDownList>
            

            </div>
        

        <div>


            <asp:GridView ID="GridView1" Style="margin-top:40px;" runat="server" 
        CellPadding="4" Height="250px" Width="900px" EnableSortingAndPagingCallbacks="True" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Medium" GridLines="None" HorizontalAlign="Center" ForeColor="#333333">
        <RowStyle BackColor="#EFF3FB" />
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
      <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" /> 

         <SortedAscendingCellStyle BackColor="#F5F7FB" />
         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
         <SortedDescendingCellStyle BackColor="#E9EBEF" />
         <SortedDescendingHeaderStyle BackColor="#4870BE" />

        </asp:GridView>


        
            
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:Data_ConnectionString %>" SelectCommand="SELECT [Name], [Spesialist], [Time schedule From] AS Time_schedule_From, [Time schedule To] AS Time_schedule_To, [Off Date] AS Off_Date FROM [DoctorsData]"></asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" Style="margin-top:40px;" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="300px" HorizontalAlign="Center" Width="900px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Spesialist" HeaderText="Spesialist" SortExpression="Spesialist" />
                    <asp:BoundField DataField="Time_schedule_From" HeaderText="Time Schedule From" SortExpression="Time_schedule_From" />
                    <asp:BoundField DataField="Time_schedule_To" HeaderText="To" SortExpression="Time_schedule_To" />
                    <asp:BoundField DataField="Off_Date" HeaderText="Off Date" SortExpression="Off_Date" />
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
            </div>
            <div class="footer" style="margin-top:300px;text-align:center;width:auto"><p style="color:#ffffff">
             <a href="Partners.aspx" style="color:white">Our Pratner</a> | Useful Links | Quick Links | Web Mail |<a href="HomePage.aspx" style="color:white">Official Log In</a>| About Us | Contact Us
        </p>
            </div>
        <div style="background-color:#1e4904;text-align:center;"><p style="color:#cac7c7">
            18F, Bir Uttam Qazi Nuruzzaman Sarak, West Panthapath, Dhaka 1205
Phone: (880-2) 8144400, 8142431, Mobile: 01713141447 (PABX), PABX for OPD Appointment: 2001, 2002 & 2018
24hr Emergency and Ambulance service: 8144466, 8144477, 8144488
ER Mobile: 01713377773-5, Fax: (880-2) 9118921, 9114342, email: info@squarehospital.com, web: www.hospital.com

        </p></div>

        
        
    </form>
    
</body>
</html>
