<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alterar.aspx.cs" Inherits="SoftwareSalgado.Paginas.Alterar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 364px;
            margin-left: 240px;
            margin-right: 415px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-control">
        <div>
            <div class="form-group">
                Alterar Clientes<br />
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
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Listar.aspx">Listar Clientes</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Cadastrar.aspx">Cadastrar Clientes</asp:HyperLink>
                <br class="auto-style1" />
                <br class="auto-style1" />
                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                <br class="auto-style1" />
                <br class="auto-style1" />
                <br class="auto-style1" />
            </div>
        </div>
    </form>
</body>
</html>
