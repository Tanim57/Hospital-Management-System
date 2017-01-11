<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_remove_Patient.aspx.cs" Inherits="Admin_remove_Patient" %>

<!DOCTYPE html>

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
        <div class="header">
        <img src="logo.jpg" style="margin-top:20px;float:left;margin-left:20px"/>
         <h2>Tanim</h2>
        <h3>Hospital</h3>
       </div>

        
        <div class="sidebar">
            <div class="sidebar-links well">
                <ul class="nav">
                    <!-- Patients -->
                    <li class="nav-header"><i class="fa fa-user"></i>&nbsp;&nbsp;Patients</li>
                    <li><a href="#view" ><i class="fa fa-bars"></i>&nbsp;&nbsp;All Patients</a></li>
                    <li><a href="#add" class="active"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Patient</a></li>
                    <li><a href="#edit"><i class="fa fa-minus"></i>&nbsp;&nbsp;Edit Patient</a></li>
                    <li><a href="#remove"><i class="fa fa-remove"></i>&nbsp;&nbsp;Remove Patient</a></li>
                    <li class="divider"></li>
                    <!-- Doctors -->
                    <li class="nav-header"><i class="fa fa-user">&nbsp;&nbsp;</i>Doctors</li>
                    <li><a href="#view" ><i class="fa fa-bars"></i>&nbsp;&nbsp;All Doctors</a></li>
                    <li class="#add"><a href="#"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Book</a></li>
                    <li><a href="#edit"><i class="fa fa-minus"></i>&nbsp;&nbsp;Edit Book</a></li>
                    <li><a href="#remove"><i class="fa fa-remove"></i>&nbsp;&nbsp;Remove Book</a></li>
                    <li class="divider"></li>
                    
                    <li><a href="index.htm">&nbsp;Back to home</a></li>
                    <li><a href="#logout">&nbsp;Logout</a></li>
                </ul>
            </div>
            
        </div> 
        <div class="content">
        
        
             <h2 style="color: #800080"></h2>
     <div>
        <table>
            <tr>
                <td class="style3" style="color: #800000; font-size: large;">
                Search&nbsp;&nbsp;&nbsp;&nbsp;</td>
                
                <td class="auto-style1">
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
                 <asp:TextBox ID="TextBox1" Style="border-radius:5px" placeholder="Search ID" runat="server" Height="30px" Width="340px" CssClass="txtbox"></asp:TextBox>
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


     <asp:GridView ID="GridView1" runat="server"  BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" Height="16px" Width="824px" EnableSortingAndPagingCallbacks="True">
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

        </div> 

      </div>     
    
    </form>
</body>
</html>
