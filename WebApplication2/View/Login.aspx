<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"/>
    <link href="~/view/styles/estiloLogin.css" rel="stylesheet" type="text/css" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="card">
                <h1 id="tituloLogin">login</h1>
                <div class="campos">
                    <div class="inputs" id="divInputLogin">
                        <asp:TextBox class="input" ID="loginEmail" type="email" runat="server" placeholder="name@example.com"></asp:TextBox>
                    </div>
                    <div class="inputs" id="divInputPassword">
                        <asp:TextBox class="input" ID="password" type="password" runat="server" placeholder="*******"></asp:TextBox>
                        <div class="buttonop"> <a href="Index.aspx" class="hiperlink"> Esqueceu a senha?</a></div>
                    </div>
                </div>
                     <asp:Button class="button" runat="server" Text="Submit" BorderStyle="Solid" ToolTip="Submit" />
                <div class="buttonop">
                Não possui uma conta? <a href="Index.aspx" class="hiperlink"> &nbsp;Cadastre-se</a>
            </div>
            </div>

        </div>
    </form>
</body>
</html>
