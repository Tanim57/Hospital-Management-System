<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doctor_App.aspx.cs" Inherits="Doctor_App" %>

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

        <div class="header">
        <img src="logo.jpg" style="margin-top:20px;float:left;margin-left:20px"/>
         <h2>Tanim</h2>
        <h3>Hospital</h3>
       </div>
        <div>
        <ul class="nav nav-tabs" style="background:#193d04; border-radius:5px" >
       <li role="presentation" class="active"><a href="#">&nbsp;&nbsp;&nbsp;Home&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Aboutas.aspx">&nbsp;&nbsp;&nbsp;About Us&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;View Dotors&nbsp;&nbsp;&nbsp;</a></li>
            
            <li role="presentation" ><a href="FAQ.aspx">&nbsp;&nbsp;&nbsp;FAQ&nbsp;&nbsp;&nbsp;</a></li>
       <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;Donate Blood&nbsp;&nbsp;&nbsp;</a></li>
      <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;Contact Us&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Partners.aspx">&nbsp;&nbsp;&nbsp;Our Pratners&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Log_in.aspx">&nbsp;&nbsp;&nbsp;Log Out&nbsp;&nbsp;&nbsp;</a></li>
            
        
      </ul> 


      </div>

        <div class="sidebar" style="margin-top:40px;">
            <div class="sidebar-links well" style="background-color:#009933">
                <ul class="nav" style="background-color:#000000;" >
                    <!-- Patients -->
                    <li class="nav-header"><i class="fa fa-user"></i>&nbsp;&nbsp;Patients</li>
                    <li><a href="Amin_all_patients.aspx" ><i class="fa fa-bars"></i>&nbsp;&nbsp;All Patients</a></li>
                    <li><a href="Admin_add_patients.aspx" ><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Patient ID</a></li>
                    <li><a href="Admin_Edit_Patient.aspx"><i class="fa fa-minus"></i>&nbsp;&nbsp;Update Patient ID</a></li>
                    <li><a href="#remove"><i class="fa fa-remove"></i>&nbsp;&nbsp;Remove Patient ID</a></li>
                    <li class="divider"></li>
                    <!-- Doctors -->
                    <li class="nav-header"><i class="fa fa-user">&nbsp;&nbsp;</i>Doctors</li>
                    <li><a href="Admin_All_Doctor.aspx" ><i class="fa fa-bars"></i>&nbsp;&nbsp;All Doctors</a></li>
                    <li class="#add"><a href="Admin_add_doctors.aspx" class="active"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Doctors ID</a></li>
                    <li><a href="Admin_Edit_Doctors.aspx"><i class="fa fa-minus"></i>&nbsp;&nbsp;Edit Doctors ID</a></li>
                    <li><a href="#remove"><i class="fa fa-remove"></i>&nbsp;&nbsp;Remove Doctors ID</a></li>
                    <li class="divider"></li>
                    <li><a href="Doctor_App.aspx"><i class="fa fa-remove"></i>&nbsp;&nbsp;See Appointment List</a></li>
                </ul>
            </div>
            
        </div>

        <form runat="server">
        <div>
            <asp:GridView ID="GridView1" style="margin-top:20px;" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="745px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="column1" HeaderText="column1" SortExpression="column1" />
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                    <asp:BoundField DataField="Appointment_Date" HeaderText="Appointment_Date" SortExpression="Appointment_Date" />
                    <asp:BoundField DataField="Choice_Doctor" HeaderText="Choice_Doctor" SortExpression="Choice_Doctor" />
                    <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
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
            </form>

        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Data_ConnectionString %>" SelectCommand="SELECT [ID], [Name], [MobileNo.] AS column1, [Department], [Appointment Date] AS Appointment_Date, [Choice Doctor] AS Choice_Doctor, [Sex] FROM [appointment]"></asp:SqlDataSource>
    </body>
    </html>
