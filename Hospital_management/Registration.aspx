<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 259px;
            text-align: right;
        }
        .auto-style3 {
            width: 259px;
            text-align: right;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
            width: 215px;
        }
        .auto-style6 {
            width: 215px;
        }
        .auto-style7 {
            width: 259px;
            text-align: right;
            height: 30px;
        }
        .auto-style8 {
            width: 215px;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
    </style>
</head>
<body>

    
   

    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">First Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="Full_name" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Full_name" ErrorMessage="Full Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">User Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="User_name" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="User_name" ErrorMessage="User Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Age:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="Age_text" runat="server" MaxLength="3" TextMode="Number" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="Age_" runat="server" ControlToValidate="Age_text" ErrorMessage="Age is reqiured" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">E-mail:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="email" runat="server"  Width="200px" TextMode="Email"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="E-mail is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Insert valid E-mail ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="pass" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pass" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="conpass" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="conpass" ErrorMessage="Confirm Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="conpass" ErrorMessage="Password must be same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Mobile No.</td>
                <td class="auto-style5">
                    <asp:TextBox ID="mobile" runat="server" AutoCompleteType="Disabled" MaxLength="13" OnTextChanged="mobile_TextChanged" TextMode="Number" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="mobile" ErrorMessage="Mobile No. is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Gender:</td>
                <td class="auto-style8">
                    <asp:DropDownList ID="gender" runat="server" Width="200px">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Famale</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="gender" ErrorMessage="Select Your Gender" ForeColor="Red" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;
                    <input id="Reset1" type="reset" value="Reset" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>

    </form>


</body>
    
</html>


