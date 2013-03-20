<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="register.aspx.vb" Inherits="Q_and_A_Forum.WebForm3" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="head">Register New Profile<br /><hr /></div>

    <br />
    <br />
    <div class="text">
    Please enter details for registration<br />
    <br />
    Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtName" runat="server" size="40" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RFVal1" runat="server" ErrorMessage="*Required Field" 
    ControlToValidate="txtName" ></asp:RequiredFieldValidator>
    
    <br />
    <br />
    User Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="txtUId" runat="server" size="40"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVal2" runat="server" ErrorMessage="*Required Field"
        ControlToValidate="txtUId" ></asp:RequiredFieldValidator>
    
    <br />
    <br />
    Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="txtPass" runat="server" type="password" size="40"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVal3" runat="server" ErrorMessage="*Required Field"
        ControlToValidate="txtPass" ></asp:RequiredFieldValidator>
    
    <br />
    <br />
    Confirm Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="txtCPass" runat="server" size="40" type="password" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVal4" runat="server" ErrorMessage="*Required Field"
        ControlToValidate="txtCPass" ></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompVal1" runat="server" ErrorMessage="*Passwords Must Match"
        ControlToValidate="txtCPass" ControlToCompare="txtPass"></asp:CompareValidator>
    
    <br />
    <br />
    E-mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="txtEmail" runat="server" size="40" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVal5" runat="server" ErrorMessage="*Required Field"
        ControlToValidate="txtEmail" ></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegExVal1" runat="server" ErrorMessage="*E-mail Required"
        ValidationExpression=".+@.+" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>

    
    <br />
    <br />
    Phone No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
    <asp:TextBox ID="txtPhNo" runat="server" size="40"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RFVal6" runat="server" ErrorMessage="*Required Field"
        ControlToValidate="txtPhNo" ></asp:RequiredFieldValidator>

    <br />
    <br />
    Date of birth&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Calendar ID="Calendar1" runat="server" ShowNextPrevMonth="true" SelectionMode="Day"></asp:Calendar>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:Button ID="Register" runat="server" Text="Register" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Clear" runat="server" Text="Clear" />
    
    <br />
    </div>
</asp:Content>
