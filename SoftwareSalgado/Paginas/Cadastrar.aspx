<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastrar.aspx.cs" Inherits="SoftwareSalgado.Paginas.Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="height: 363px; width: 908px">
                Cadastro de Clientes<br />
                <br />
                <asp:TextBox ID="txtNome" runat="server" Width="150px">Nome</asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtEndereco" runat="server" Width="150px">Endereço</asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtTelefone" runat="server" Width="150px">Telefone</asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtEmail" runat="server" Width="149px">E-mail</asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtCPF" runat="server" Width="150px">CPF</asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtEntrega" runat="server" Width="150px">Endereço de Entrega</asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnSalvar" runat="server" CssClass="btn btn primary" OnClick="btnSalvar_Click" Text="Salvar" />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Listar.aspx">Listar Clientes</asp:HyperLink>
                <br />
                <br />
                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            </div>
        </div>
    </form>
    <script src="../Scripts/jquery-3.3.1.js"></script>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
</body>
</html>
