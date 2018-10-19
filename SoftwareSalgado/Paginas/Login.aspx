<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SoftwareSalgado.Paginas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
</head>
<link href="../Content/bootstrap.min.css" rel="stylesheet" />
<link href="../Content/fonts/font-awesome.min.css" rel="stylesheet" />
<link href="../Content/images/icons/icon-font.min.css" rel="stylesheet" />
<link href="../Content/CSS/hamburgers.min.css" rel="stylesheet" />
<link href="../Content/CSS/animsition.min.css" rel="stylesheet" />
<link href="../Content/CSS/select2.min.css" rel="stylesheet" />
<link href="../Content/CSS/daterangepicker.css" rel="stylesheet" />
<link href="../Content/CSS/util.css" rel="stylesheet" />
<link href="../Content/CSS/main.css" rel="stylesheet" />

<body>
    <div class="limiter">
        <div class="container-login100" style="background-image: url('images/bg-01.jpg');">
            <div class="wrap-login100 p-t-30 p-b-50">
                <span class="login100-form-title p-b-41">Login
                </span>

                <form id="form1" runat="server" class="login100-form">
                    <div class="wrap-input100 validate-input" data-validate="Enter username">
                        <span class="focus-input100" data-placeholder="&#xe82a;"></span>
                        <asp:TextBox ID="txtNome" runat="server" class="input100" placeholder="Nome"></asp:TextBox>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Enter username">
                        <span class="focus-input100" data-placeholder="&#xe80f;"></span>
                        <asp:TextBox ID="txtSenha" runat="server" class="input100" placeholder="Senha"></asp:TextBox>
                    </div>

                    <div class="container-login100-form-btn m-t-32">
                        <asp:Button ID="btnEntrar" runat="server" OnClick="btnEntrar_Click" Text="Entrar" CssClass="login100-form-btn" />
                        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                    </div>
                </form>

            </div>
        </div>
    </div>

    <script src="../Scripts/jquery-3.2.1.min.js"></script>
    <script src="../Scripts/JS/animsition.min.js"></script>
    <script src="../Scripts/popper.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/vendor/select2.min.js"></script>
    <script src="../Scripts/vendor/moment.min.js"></script>
    <script src="../Scripts/vendor/daterangepicker.js"></script>
    <script src="../Scripts/countdowntime.js"></script>
    <script src="../Scripts/JS/main.js"></script>
</body>
</html>