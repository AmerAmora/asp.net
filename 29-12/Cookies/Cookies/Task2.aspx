<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task2.aspx.cs" Inherits="Cookies.Task2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:DropDownList ID="dropColor" AutoPostBack="true" runat="server" OnSelectedIndexChanged="Color">
            <asp:ListItem Value="Red">Red</asp:ListItem>
             <asp:ListItem Value="Green">Green</asp:ListItem>
             <asp:ListItem Value="Blue">Blue</asp:ListItem>
        </asp:DropDownList>
    </form>
</body>
</html>
