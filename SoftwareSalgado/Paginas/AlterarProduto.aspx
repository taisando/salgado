<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlterarProduto.aspx.cs" Inherits="SoftwareSalgado.Paginas.AlterarProduto" Title="" MasterPageFile="~/Content/Master/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <link href="../Iconic/materialdesignicons.min.css" rel="stylesheet" />
    <link href="../../Content/Iconic/materialdesignicons.css" rel="stylesheet" />  
    <link href="../Iconic/material-design-iconic-font.min.css" rel="stylesheet" />
    <link href="../CSS/vendor.bundle.base.css" rel="stylesheet" />
    <link href="../CSS/style.css" rel="stylesheet" />    

    <style type="text/css">
        .auto-style1 {
            height: 364px;
            margin-left: 240px;
            margin-right: 415px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-fluid">
        
        <div class="form-group">
            <asp:Label runat="server" Text="Alterar Produto"></asp:Label>
            <br />
            <asp:TextBox ID="txtNome" runat="server" placeholder="Nome"></asp:TextBox>
            <br class="auto-style1" />
            <br class="auto-style1" />

            <asp:TextBox ID="txtTipo" runat="server" placeholder="Tipo"></asp:TextBox>
            <br class="auto-style1" />
            <br class="auto-style1" />

            <asp:TextBox ID="txtPreco" runat="server" placeholder="Preço 0,00"></asp:TextBox>
            <br class="auto-style1" />
            <br class="auto-style1" />


            <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" class="btn btn primary" />
            <br class="auto-style1" />
            <br class="auto-style1" />

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ListarProduto.aspx">Listar Produtos</asp:HyperLink>
            &nbsp;&nbsp;
               <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Paginas/CadastroProduto.aspx">Cadastrar Produtos</asp:HyperLink>
            <br class="auto-style1" />
            <br class="auto-style1" />

            <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            <br class="auto-style1" />
            <br class="auto-style1" />
            <br class="auto-style1" />
        </div>
    </div>
    </asp:Content>

