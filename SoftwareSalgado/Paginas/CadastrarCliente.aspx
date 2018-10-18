<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarCliente.aspx.cs" Inherits="SoftwareSalgado.Paginas.Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 535px;
            width: 664px;
            margin-left: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-row"> 
            <div class="form-group">
                <br class="auto-style1" />
                <p class="auto-style1">
                Cadastro de Clientes<br class="auto-style1" />
                <br class="auto-style1" />

                <asp:TextBox ID="txtNome" runat="server" placeholder="Nome"></asp:TextBox>
                <br class="auto-style1" />
                <br class="auto-style1" />

                <asp:TextBox ID="txtEndereco" runat="server" placeholder="Endereço"></asp:TextBox>
                <br class="auto-style1" />
                <br class="auto-style1" />
                <asp:TextBox ID="txtTelefone" runat="server" placeholder="Telefone (00)0 0000-0000"></asp:TextBox>
                <br class="auto-style1" />
                <br class="auto-style1" />
                <asp:TextBox ID="txtEmail" runat="server" placeholder="E-mail"></asp:TextBox>
                <br class="auto-style1" />
                <br class="auto-style1" />
                <asp:TextBox ID="txtCPF" runat="server" placeholder="CPF 000.000.000-00"></asp:TextBox>
                <br class="auto-style1" />
                <br class="auto-style1" />
                <asp:TextBox ID="txtEntrega" runat="server" placeholder="Endereço de entrega"></asp:TextBox>
                <br class="auto-style1" />
                <br class="auto-style1" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" class="btn btn primary"/>
                <br class="auto-style1" />
                <br class="auto-style1" />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ListarCliente.aspx">Listar Clientes</asp:HyperLink>
                <br class="auto-style1" />
                <br class="auto-style1" />
                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                </p>
            </div>
        </div>
    </form>
    <script src="../Scripts/jquery-3.3.1.js"></script>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
</body>
</html>
