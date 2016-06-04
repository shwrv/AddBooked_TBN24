<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-decoration: underline;
        }
        .auto-style2 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
&nbsp;<span class="auto-style2"><strong> </strong></span><span class="auto-style1">DashBoad Link </span><br />
        <br />
&nbsp;
    
        <asp:TextBox ID="TextBoxUName" runat="server" Width="150px"></asp:TextBox>
        admin2<br />
        &nbsp;
        <asp:TextBox ID="TextBoxPsswrd" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
        123<br />
        &nbsp;
        <asp:Button ID="ButtonLogin" runat="server" Text="Show DashBoard" Width="117px" OnClick="ButtonLogin_Click" />
    
        &nbsp;<br />
        <br />
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUName" ErrorMessage="Enter Username" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPsswrd" ErrorMessage="Enter Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    
    </div>
    </form>
</body>
</html>
