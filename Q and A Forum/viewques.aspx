<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="viewques.aspx.vb" Inherits="Q_and_A_Forum.viewques" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="head">Question<br /><hr /></div>
    <asp:Label ID="Label1" runat="server" Text="<br/> <br/>"></asp:Label>
    <div class="text" style=" font-size:18px" >
    <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="titlelabel" runat="server" Text="titleLabel"></asp:Label>
        <br />
        &nbsp;&nbsp;
        <br />
        &nbsp;
        
        <!-- set formatting for a particular question -->
        <div>
        <asp:Label ID="queslabel" runat="server" Text="Queslabel"></asp:Label>
        </div>

    </asp:Panel>
    </div>
    <br />
    
    <asp:Panel ID="Panel2" runat="server">
        <asp:Button ID="ansbutton" runat="server" Text="Answer Question" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="anslabel" runat="server" Text="Add Your Answer:" Visible="false"></asp:Label>
        <br />
        <asp:Button ID="postbutton" runat="server" Text="Post Answer" Width="111px" 
            Visible="false"/>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ansbox" runat="server" Height="96px" 
            TextMode="MultiLine" Visible="False" Width="474px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ansbox" ErrorMessage="*Answer too short"></asp:RequiredFieldValidator>
        <asp:CustomValidator ID="ansvalidator" runat="server" ErrorMessage="*Answer too short" ControlToValidate="ansbox" ></asp:CustomValidator>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </asp:Panel>
    
</asp:Content>
