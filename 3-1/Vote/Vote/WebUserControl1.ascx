<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="Vote.WebUserControl1" %>
<asp:Label ID="question" runat="server"> How satisfied are you with our services</asp:Label>
   <asp:RadioButtonList ID="RadioButtonList1" runat="server">
    <asp:ListItem Value="1">Excellent </asp:ListItem>
    <asp:ListItem Value="2">Very Good </asp:ListItem>
    <asp:ListItem Value="3">Good </asp:ListItem>
    <asp:ListItem Value="4">Poor </asp:ListItem>
</asp:RadioButtonList>
<asp:Button ID="Button1" runat="server" Text="Button" OnClick="radioCheck" />
<div id="results" runat="server" visible="false">
    <h3>Thank you for your vote</h3>
    <div class="progress">
        <div class="progress-bar" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="excellent1" runat="server" ></div>
    </div>
    <br />
    <div class="progress">
        <div class="progress-bar" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="vgood1" runat="server" ></div>
    </div>
    <br />
    <div class="progress">
        <div class="progress-bar" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="good1" runat="server" ></div>
    </div>
    <br />
    <div class="progress">
        <div class="progress-bar" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="poor1" runat="server" ></div>
    </div>



</div>
    
