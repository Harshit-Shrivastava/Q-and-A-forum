<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="addques.aspx.vb" Inherits="Q_and_A_Forum.addques" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <asp:Panel ID="Panel1" runat="server">
        <div class="head">Add Question<br /><hr /></div>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp; Title&nbsp;
        <asp:TextBox ID="titlebox" runat="server" Width="597px"></asp:TextBox>
        <br />
       
        <div class="text">
            <br />
            &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="quesbox" runat="server" Height="105px" 
            TextMode="MultiLine" Width="95%" style="margin-bottom: 0px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="postbutton" runat="server" Text="Post Question" Width="111px" />
            &nbsp;<br /> &nbsp;<asp:CustomValidator ID="quesvalidator" runat="server" ErrorMessage="*Question too short or invalid." ControlToValidate="quesbox"  ValidateEmptyText="false" ></asp:CustomValidator>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </div>
        </asp:Panel>

</asp:Content>
