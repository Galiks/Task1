<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Task1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Задание 1: Логин и пароль.<br />
            <asp:Label ID="Login" runat="server" Text="Логин: "></asp:Label>
            <input id="inputLogin" name="inputLogin" type="text" /><br />
            <asp:Label ID="Password" runat="server" Text="Пароль: "></asp:Label>
            <input id="inputPassword" name="inputPassword" type="password" /><br />
            <asp:Button ID="SendButton" runat="server" OnClick="SendButton_Click" Text="Отправить" />
        </div>
        <p>
            &nbsp;</p>
        <div>
            Задание 2: Элементы<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:ListBox ID="ListBox1" runat="server">
                <asp:ListItem>Один</asp:ListItem>
                <asp:ListItem>Два</asp:ListItem>
                <asp:ListItem>Три</asp:ListItem>
            </asp:ListBox>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Один</asp:ListItem>
                <asp:ListItem>Два</asp:ListItem>
                <asp:ListItem>Три</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:RadioButton ID="RadioButton1" runat="server" />
            <br />
            <asp:RadioButton ID="RadioButton2" runat="server" />
            <br />
            <asp:RadioButton ID="RadioButton3" runat="server" />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Отправить" />
            <br />
            Что было нажато: <asp:Label ID="Label1" runat="server" Text="Ничего"></asp:Label>
        </div>
    </form>
</body>
</html>
