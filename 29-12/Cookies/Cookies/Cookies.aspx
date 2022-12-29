<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cookies.aspx.cs" Inherits="Cookies.Cookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
                <asp:CheckBox ID="CheckBox1" runat="server" /> remember me 
                <br />

        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </form>
</body>
</html>
