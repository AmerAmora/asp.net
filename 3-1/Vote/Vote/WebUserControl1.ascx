<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="Vote.WebUserControl1" %>
<asp:Label ID="question" runat="server"> How satisfied are you with our services</asp:Label>
 <%--  <asp:RadioButton ID="RadioButton1" runat="server"  Text="Excellent" GroupName="vote" />  
   <asp:RadioButton ID="RadioButton2" runat="server" Text="Very Good" GroupName="vote" />  
   <asp:RadioButton ID="RadioButton3" runat="server" Text="Good" GroupName="vote" />  
   <asp:RadioButton ID="RadioButton4" runat="server" Text="Bad" GroupName="vote" /> --%>
<asp:RadioButtonList ID="RadioButtonList1" runat="server">
    <asp:ListItem>Excellent </asp:ListItem>
    <asp:ListItem>Very Good </asp:ListItem>
    <asp:ListItem>Good </asp:ListItem>
    <asp:ListItem>Bad </asp:ListItem>
</asp:RadioButtonList>
<asp:Label ID="label1" runat="server" Visible="false">Your Answer is : </asp:Label>
<asp:Button ID="Button1" runat="server" Text="Button" OnClick="radioCheck" />
    
