<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="login.aspx.vb" Inherits="Q_and_A_Forum.login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="head">Login<br /><hr /></div>
    <br />
    <div class="text">
    <asp:Label ID="Label1" runat="server" Text="Login to view your account information or post questions or answers"></asp:Label>
    <br /> <br />
    Username: &nbsp;
    <asp:TextBox ID="userbox" runat="server"></asp:TextBox>
    <br /><br />
    Password: &nbsp;&nbsp;
    <input type="password" id="passbox" runat="server" />
    <br /><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Submit" runat="server" Text="Login" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="clearbutton" runat="server" Text="Clear" />
    <br /><br />
        <asp:Label ID="errmsg" runat="server" Text="*Invalid username/password combination" Visible="false" ForeColor="Red"></asp:Label>
    <br /><br />
    
    </div>
</asp:Content>
