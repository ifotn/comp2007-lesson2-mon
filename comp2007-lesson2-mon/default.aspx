<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="comp2007_lesson2_mon._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lesson 2 Home Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblFirstname" runat="server"></asp:Label>
        <asp:Literal ID="ltlFirstname" runat="server"></asp:Literal>
        <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" Text="Click Me" OnClick="btnSubmit_Click" />
        <asp:Label ID="lblX" runat="server" Visible="false"></asp:Label>
    
    </div>
    <div>
        <asp:literal ID="ltlToppings" runat="server" />
        <asp:DropDownList runat="server" ID="ddlCountry">
            <asp:ListItem Value="1" Text="Canada"></asp:ListItem>
            <asp:ListItem Value="2" Text="Brazil"></asp:ListItem>
            <asp:ListItem Value="3" Text="India"></asp:ListItem>
        </asp:DropDownList>
        <select name="country">
        <option value="1">Canada</option>
            <option value="2">Brazil</option>
            <option value="3">India</option>
        </select>
        <asp:checkboxlist runat="server" ID="cblToppings">
            <asp:ListItem Value="1" Text="Pepperoni"></asp:ListItem>
            <asp:ListItem Value="2" Text="Mushrooms"></asp:ListItem>
            <asp:ListItem Value="3" Text="Green Pepper"></asp:ListItem>
        </asp:checkboxlist>

        <asp:Button runat="server" ID="btnSelections" Text="Show Selections" OnClick="btnSelections_Click" />
    </div>

    </form>
</body>
</html>
