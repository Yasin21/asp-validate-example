<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript">
         function armstrongNumber(object, e) {
             var no = parseInt(e.Value);
             var sum = 0;
             var temp = no;
             while (no > 0) {
                 var r = no % 10;
                 sum += r * r * r;
                 no = parseInt(no/10)
             }
             e.IsValid = temp == sum;
         }
    </script>
</head>
<body>
    <form id="form1" runat="server">
   <asp:Label ID="Label1" runat="server" Text="Enter Number"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:CustomValidator ID="CustomValidator1" runat="server" 
        ClientValidationFunction="armstrongNumber" ControlToValidate="TextBox1" 
        onservervalidate="CustomValidator1_ServerValidate">Not Armstrong Number</asp:CustomValidator>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Click" />
        
    </form>
</body>
</html>
