<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Task2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Заданние 1: Проверка данных<br />
            <asp:Label ID="Label1" runat="server" Text="Имя пользователя: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CausesValidation="True"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Пароль: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CausesValidation="True" style="margin-top: 0px" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Повторить пароль: "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CausesValidation="True" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Электронная почта: "></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CausesValidation="True" TextMode="Email"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Возраст: "></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" CausesValidation="True" MaxLength="65" TextMode="Number" ToolTip="Возраст"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Проверить" />
&nbsp;<br />
            Задание 2: Отправка данных<br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Отправить" />
        </div>
    </form>
</body>
</html>
