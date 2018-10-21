<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroFornecedor.aspx.cs" Inherits="SoftwareSalgado.Paginas.CadastroFornecedor" Title="" MasterPageFile="~/Content/Master/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="../Iconic/materialdesignicons.min.css" rel="stylesheet" />
    <link href="../../Content/Iconic/materialdesignicons.css" rel="stylesheet" />
    <link href="../../Content/Iconic/material-design-iconic-font.min.css" rel="stylesheet" />
    <link href="../CSS/vendor.bundle.base.css" rel="stylesheet" />
    <link href="../CSS/style.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 535px;
            width: 664px;
            margin-left: 40px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

        <div class="form-row">
            <div class="form-group">
            <br class="auto-style1" />
                <p class="auto-style1">Cadastro de Fornecedor<br class="auto-style1" />
                <br class="auto-style1" />

            <asp:TextBox ID="txtNome" runat="server" placeholder="Nome"></asp:TextBox>
                <br class="auto-style1" />
                <br class="auto-style1" />

            <asp:TextBox ID="txtCNPJ" runat="server" placeholder="CNPJ"></asp:TextBox>
                <br class="auto-style1" />
                <br class="auto-style1" />

            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
                <br class="auto-style1" />
                <br class="auto-style1" />

            <asp:TextBox ID="txtTelefone" runat="server" placeholder="Telefone (00)0 0000-0000"></asp:TextBox>
                <br class="auto-style1" />
                <br class="auto-style1" />

            <asp:TextBox ID="txtEndereco" runat="server" placeholder="Endereço"></asp:TextBox>
                <br class="auto-style1" />
                <br class="auto-style1" />

            <asp:TextBox ID="txtMercadoria" runat="server" placeholder="Mercadoria"></asp:TextBox>
                <br class="auto-style1" />
                <br class="auto-style1" />

            <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" class="btn btn primary"/>
                <br class="auto-style1" />
                <br class="auto-style1" />
            <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            </div>
        </div>
  </asp:Content>