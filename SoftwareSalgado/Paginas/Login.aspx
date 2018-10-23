<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SoftwareSalgado.Paginas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../Content/fonts/Linearicons/icon-font.min.css" rel="stylesheet" />
    <link href="../Content/vendor/animate/animate.css" rel="stylesheet" />
    <link href="../Content/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" />
    <link href="../Content/vendor/animsition/css/animsition.min.css" rel="stylesheet" />
    <link href="../Content/vendor/select2/select2.min.css" rel="stylesheet" />
    <link href="../Content/vendor/daterangepicker/daterangepicker.css" rel="stylesheet" />
    <link href="../Content/CSS/util.css" rel="stylesheet" />
    <link href="../Content/CSS/main.css" rel="stylesheet" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
</head>


<body>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100 p-t-30 p-b-50">
                <span class="login100-form-title p-b-41">Login
                </span>

                <form id="form1" runat="server" class="login100-form validate-form p-b-33 p-t-5">
                    <div class="wrap-input100 validate-input" data-validate="Enter username">
                        <asp:TextBox ID="txtNome" runat="server" class="input100" placeholder="Nome"></asp:TextBox>
                        <span class="focus-input100" data-placeholder="&#xe82a;"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Entre com a senha">
                        <asp:TextBox ID="txtSenha" runat="server" class="input100" placeholder="Senha"></asp:TextBox>
                        <span class="focus-input100" data-placeholder="&#xe80f;"></span>
                    </div>

                    <div class="container-login100-form-btn m-t-32">
                        <asp:Button ID="btnEntrar" runat="server" OnClick="btnEntrar_Click" Text="Entrar" CssClass="login100-form-btn" />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="lblMensagem" runat="server"></asp:Label>

                    </div>
                </form>

            </div>
        </div>
    </div>

    <script src="../Scripts/jquery-3.2.1.min.js"></script>
    <script src="../Content/vendor/animsition/js/animsition.min.js"></script>
    <script src="../Scripts/popper.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Content/vendor/select2/select2.min.js"></script>
    <script src="../Content/vendor/daterangepicker/moment.min.js"></script>
    <script src="../Content/vendor/daterangepicker/daterangepicker.js"></script>
    <script src="../Content/vendor/countdowntime/countdowntime.js"></script>

</body>
</html>
