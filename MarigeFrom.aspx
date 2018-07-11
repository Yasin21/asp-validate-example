<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MarigeFrom.aspx.cs" Inherits="MarigeFrom" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        table{
            border-collapse:collapse;
        }
        .style1
        {
            height: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" border="1" >
        <tr>
            <th width="50%">
                Enter Full Name
            </th>
            <td style="margin-left: 80px">
                
                <asp:TextBox ID="TextBox1" runat="server" Width="100%"></asp:TextBox>
                
            </td>
            <td width="10%">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <th class="style1">
                Enter Birthdate
            </th>
            <td class="style1">
                
                <asp:TextBox ID="TextBox2" runat="server" Width="100%"></asp:TextBox>
                
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ValidationExpression="\d{2}-\d{2}-\d{4}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <th class="style1">
                Enter Anual Income
            </th>
            <td class="style1">
                
                <asp:TextBox ID="TextBox3" runat="server" Width="100%"></asp:TextBox>
                
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox3" ValidationExpression="\d{5,7}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <th>
                Enter Mobile Number
            </th>
            <td>
                
                <asp:TextBox ID="TextBox4" runat="server" Width="100%"></asp:TextBox>
                
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox4" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <th>
                Enter Age
            </th>
            <td>
                
                <asp:TextBox ID="TextBox5" runat="server" Width="100%"></asp:TextBox>
                
            </td>
            <td>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox5" MaximumValue="100" MinimumValue="18" 
                    Type="Integer">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <th>
                Enter Gender
            </th>
            <td>
                
                <asp:TextBox ID="TextBox6" runat="server" Width="100%"></asp:TextBox>
                
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox6" ValidationExpression="M|F|m|f">*</asp:RegularExpressionValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ControlToValidate="TextBox6" onservervalidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <th>
                Enter Email
            </th>
            <td>
                
                <asp:TextBox ID="TextBox7" runat="server" Width="100%"></asp:TextBox>
                
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox7">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <th>
                Enter Confirm Email Address
            </th>
            <td>
                
                <asp:TextBox ID="TextBox8" runat="server" Width="100%"></asp:TextBox>
                
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox7" ControlToValidate="TextBox8">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <th>
                Enter Address
            </th>
            <td>
                
                <asp:TextBox ID="TextBox9" runat="server" Width="100%"></asp:TextBox>
                
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox9">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <th>
                Enter Pin Code
            </th>
            <td>
                
                <asp:TextBox ID="TextBox10" runat="server" Width="100%"></asp:TextBox>
                
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox10" ValidationExpression="\d{6}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <th>
                Enter Nationality
            </th>
            <td>
                
                <asp:TextBox ID="TextBox11" runat="server" Width="100%"></asp:TextBox>
                
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox11">*</asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <th>
                Enter Occupation
            </th>
            <td>
                
                <asp:TextBox ID="TextBox12" runat="server" Width="100%"></asp:TextBox>
                
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox12">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Register" 
                    onclick="Button1_Click" />
            </td>
            <td>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
