<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication2.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Teste cadastro</title>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"/>
    <link href="~/view/styles/StyleSheet1.css" rel="stylesheet" type="text/css" />

</head>
<body>


    <form class="form-container" id="form1" runat="server">
        <div class="main-container">


            <div class="title">

                cadastre-se

            </div>
            <div class="forms">
                <div class="campos-esquerda">

                    <div>
                        <label for="username">Nome completo:</label>
                        <br />
                        <asp:TextBox ID="CampoNome" runat="server" required="Nome" placeholder="Digite seu nome"/>
                    </div>



                    <div>
                        <label for="CPF">CPF:</label>
                        <br />
                        <asp:TextBox type="text" ID="CampoCPF" runat="server" MaxLength="14" placeholder="XXX.XXX.XXX-XX"/>
                    </div>


                    <div>
                        <label for="Date">Data de nascimento:</label>
                        <br />
                        <asp:TextBox ID="date" runat="server" placeholder="From" type="date"></asp:TextBox>
                    </div>

                    <div class="selectGender">
                        <label id="labelgender">Selecione o genêro</label>

                        <asp:DropDownList id="Input_select" runat="Server">
                              <asp:ListItem Text="Masculino" Value="Masculino"/>
                              <asp:ListItem Text="Feminino" Value="Feminino"/>
                        </asp:DropDownList>
                        
                    </div>

                    <div>
                    </div>

                </div>
                <div class="campos-direita">

                        <div class="email">

                                <asp:Label ID="email" runat="server" Text="E-mail"></asp:Label><br />
                                <asp:TextBox class="input" ID="campoEmail" runat="server" placeholder="name@example.com" type="email"></asp:TextBox><br />

                        </div>


                     <div class="telefone">

                                <asp:Label ID="labeltelefone" runat="server" Text="Celular"></asp:Label><br />
                                <asp:TextBox runat="server" ID="telefone" placeholder="(XX) 9XXXX-XXXX" pattern="\(\d{2}\) 9\d{4}-\d{4}" oninput="formatarTelefone(this);" MaxLength="15"/>


                        </div>

                        <div class="password">

                            <asp:Label ID="label_senha" runat="server" Text="Senha"></asp:Label><br />
                            <asp:TextBox class="input" ID="password" type="password" runat="server" placeholder="*******"></asp:TextBox><br />

                            <asp:Label ID="label_confirmasenha" runat="server" Text="Confirmar senha"></asp:Label><br />
                            <asp:TextBox class="input" ID="confirm_password" type="password" runat="server" onblur="validarSenha()" placeholder="*******"></asp:TextBox>
                        </div>


                </div>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Submit" BorderStyle="Solid" ToolTip="Submit" OnClick="Button1_Click"/>
            <div class="buttonop">
                Já possui uma conta? <a href="login.aspx" id="hiperlink"> &nbsp;Entrar</a>
                <br />
                <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
            </div>

        </div>
    </form>



    <script type="text/javascript" src="/view/script/script.js"></script>

</body>
</html>
