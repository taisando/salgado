<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlterarCliente.aspx.cs" Inherits="SoftwareSalgado.Paginas.Alterar" Title="" MasterPageFile="~/Content/Master/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="../Iconic/materialdesignicons.min.css" rel="stylesheet" />
    <link href="../../Content/Iconic/materialdesignicons.css" rel="stylesheet" />
    <link href="../../Content/Iconic/material-design-iconic-font.min.css" rel="stylesheet" />
    <link href="../CSS/vendor.bundle.base.css" rel="stylesheet" />
    <link href="../CSS/style.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="main-panel">

        <div class="content-wrapper">

            <asp:Label runat="server" Text="Alterar Clientes" class="col-md-4 control-label"></asp:Label>
            <p></p>
            <asp:Label runat="server" Text="Nome"></asp:Label>
            <asp:TextBox ID="txtNome" runat="server" CssClass="col-3" placeholder="Nome"></asp:TextBox>
            <p></p>

            <asp:Label runat="server" Text="Endereço"></asp:Label>
            <asp:TextBox ID="txtEndereco" runat="server" placeholder="Endereço"></asp:TextBox>
            <p></p>

            <asp:Label runat="server" Text="Telefone"></asp:Label>
            <asp:TextBox ID="txtTelefone" runat="server" placeholder="Telefone (00)0 0000-0000"></asp:TextBox>
            <p></p>

            <asp:Label runat="server" Text="E-mail"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" placeholder="E-mail"></asp:TextBox>
            <p></p>

            <asp:Label runat="server" Text="CPF"></asp:Label>
            <asp:TextBox ID="txtCPF" runat="server" placeholder="CPF 000.000.000-00"></asp:TextBox>
            <p></p>


            <asp:TextBox ID="txtEntrega" runat="server" placeholder="Endereço de entrega"></asp:TextBox>
            <p></p>
            <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" class="btn btn primary" />
            <p></p>

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ListarCliente.aspx">Listar Clientes</asp:HyperLink>
            

            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="CadastrarCliente.aspx">Cadastrar Clientes</asp:HyperLink>
            

            <asp:Label ID="lblMensagem" runat="server"></asp:Label>            
        </div>
    </div>

</asp:Content>
