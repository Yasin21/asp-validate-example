<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function primeNumber(object, e) {
            var no = parseInt(e.Value);
            for (var i = 2; i < no; i++) {
                if (no % i == 0) {
                    e.IsValid = false;
                    return;
                }
            }
            e.IsValid = true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        
    <asp:Label ID="Label1" runat="server" Text="Enter Number"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:CustomValidator ID="CustomValidator1" runat="server" 
        ClientValidationFunction="primeNumber" ControlToValidate="TextBox1" 
        onservervalidate="CustomValidator1_ServerValidate">Not Prime Number</asp:CustomValidator>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Click" />
        
    </form>
</body>
</html>
