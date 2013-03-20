<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="profile.aspx.vb" Inherits="Q_and_A_Forum.profile"  MasterPageFile="~/Site2.Master" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="head">Welcome
        <asp:Label ID="welcome" runat="server"></asp:Label>
        <br /><hr /></div>
    <br />
    <div class="text">
    
    
    
    
        Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="name" runat="server"></asp:Label>
        <br />
        <br />
        E-Mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="email" runat="server"></asp:Label>
        <br />
        <br />
        Phone-No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="phone" runat="server"></asp:Label>
        <br />
        <br />
        Date Of Birth:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="dob" runat="server"></asp:Label>
    
    
    </div>
</asp:Content>
