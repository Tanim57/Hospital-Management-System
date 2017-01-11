<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Amin_all_patients.aspx.cs" Inherits="Amin_all_patients" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<!DOCTYPE html>

<html>
<head>
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" >
    <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="libs/normalize/normalize.css" type="text/css">
    <link rel="stylesheet" href="libs/font-awesome/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/layout.css" type="text/css">
    <link rel="stylesheet" href="css/main.css" type="text/css">
    <link href="HomeStyle.css" rel="stylesheet" type="text/css" >
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="header" style="background-image:url(Health.jpg);width:auto;height:140px">
        <img src="logo.jpg" style="margin-top:20px;float:left;margin-left:20px"/>
         <h2>Tanim</h2>
        <h3>Hospital</h3>
       </div>
        <div>
        <ul class="nav nav-tabs" style="background:#193d04; border-radius:5px" >
       <li role="presentation" ><a href="#">&nbsp;&nbsp;&nbsp;Home&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Aboutas.aspx">&nbsp;&nbsp;&nbsp;About Us&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="View_Doctor.aspx">&nbsp;&nbsp;&nbsp;View Dotors&nbsp;&nbsp;&nbsp;</a></li>
            
            <li role="presentation" ><a href="FAQ.aspx">&nbsp;&nbsp;&nbsp;FAQ&nbsp;&nbsp;&nbsp;</a></li>
       <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;Donate Blood&nbsp;&nbsp;&nbsp;</a></li>
      <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;Contact Us&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Partners.aspx">&nbsp;&nbsp;&nbsp;Our Pratners&nbsp;&nbsp;&nbsp;</a></li>
            
            <li role="presentation"><a href="Aflog.aspx">&nbsp;&nbsp;&nbsp;Log Out&nbsp;&nbsp;&nbsp;</a></li>
      </ul> 


      </div>

        
       <div class="sidebar" style="margin-top:40px;">
            <div class="sidebar-links well" style="background-color:#009933">
                <ul class="nav" style="background-color:#000000;" >
                    <!-- Patients -->
                    <li class="nav-header"><i class="fa fa-user"></i>&nbsp;&nbsp;Patients</li>
                    <li><a href="Amin_all_patients.aspx" class="active" ><i class="fa fa-bars"></i>&nbsp;&nbsp;All Patients</a></li>
                    <li><a href="Admin_add_patients.aspx" ><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Patient ID</a></li>
                    <li><a href="Admin_Edit_Patient.aspx"><i class="fa fa-minus"></i>&nbsp;&nbsp;Update Patient ID</a></li>
                    <li><a href="#remove"><i class="fa fa-remove"></i>&nbsp;&nbsp;Remove Patient ID</a></li>
                    <li class="divider"></li>
                    <!-- Doctors -->
                    <li class="nav-header"><i class="fa fa-user">&nbsp;&nbsp;</i>Doctors</li>
                    <li><a href="Admin_All_Doctor.aspx" ><i class="fa fa-bars"></i>&nbsp;&nbsp;All Doctors</a></li>
                    <li class="#add"><a href="Admin_add_doctors.aspx" ><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Doctors ID</a></li>
                    <li><a href="Admin_Edit_Doctors.aspx"><i class="fa fa-minus"></i>&nbsp;&nbsp;Edit Doctors ID</a></li>
                    <li><a href="#remove"><i class="fa fa-remove"></i>&nbsp;&nbsp;Remove Doctors ID</a></li>
                    
                </ul>
            </div>
            
        </div> 
        <div class="content">
        
        
             <h2 style="color: #800080"></h2>
     <div>
        <table Style="margin-top:20px">
            <tr>
                <td class="style3" style="color: #800000; font-size: large;">
                Search&nbsp;&nbsp;&nbsp;&nbsp;</td>
                
                <td class="auto-style1">
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>    
                 <asp:TextBox ID="TextBox1" Style="border-radius:5px" placeholder="Search Name" runat="server" Height="30px" Width="340px" CssClass="txtbox"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;

                   <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" MinimumPrefixLength="1" ServiceMethod="SearchCustomers" TargetControlID="TextBox1"></asp:AutoCompleteExtender>

                 </td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="Go" onclick="Button1_Click" onkeyup="" Height="30px" Width="100px" CssClass="button" BorderColor="#CCCCCC" BorderStyle="Double" style="border-radius:5px" BackColor="White" />
                </td>
            </tr>
           
        </table>
    <p> 
        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Maroon"></asp:Label></p>
    </div>
    <div>


     <asp:GridView ID="GridView1" Style="margin-top:40px" runat="server"  BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" Height="50px" Width="700px" EnableSortingAndPagingCallbacks="True" HorizontalAlign="Center">
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
      <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" /> 

         <SortedAscendingCellStyle BackColor="#FFF1D4" />
         <SortedAscendingHeaderStyle BackColor="#B95C30" />
         <SortedDescendingCellStyle BackColor="#F1E5CE" />
         <SortedDescendingHeaderStyle BackColor="#93451F" />

        </asp:GridView>

    </div>

             <asp:GridView ID="GridView2" Style="margin-top:40px" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="100px" HorizontalAlign="Center" Width="700px">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                     <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                     <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                     <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                     <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                     <asp:BoundField DataField="MobileNo." HeaderText="MobileNo." SortExpression="MobileNo." />
                     <asp:BoundField DataField="NationalID" HeaderText="NationalID" SortExpression="NationalID" />
                     <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                 </Columns>
                 <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                 <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                 <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                 <SortedAscendingCellStyle BackColor="#FDF5AC" />
                 <SortedAscendingHeaderStyle BackColor="#4D0000" />
                 <SortedDescendingCellStyle BackColor="#FCF6C0" />
                 <SortedDescendingHeaderStyle BackColor="#820000" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Data_ConnectionString %>" SelectCommand="SELECT * FROM [patientData]"></asp:SqlDataSource>

        </div> 

      </div>     
    
    </form>
</body>
</html>
