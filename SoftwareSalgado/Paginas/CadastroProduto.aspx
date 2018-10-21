<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroProduto.aspx.cs" Inherits="SoftwareSalgado.Paginas.CadastroProduto" Title="" MasterPageFile="~/Content/Master/Principal.Master" %>

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
                <p class="auto-style1">
                Cadastro de Produtos<br class="auto-style1" />
                <br class="auto-style1" />

                <asp:TextBox ID="txtNome" runat="server" placeholder="Nome"></asp:TextBox>
                <br class="auto-style1" />
                <br class="auto-style1" />

                <asp:TextBox ID="txtTipo" runat="server" placeholder="Tipo"></asp:TextBox>
                <br class="auto-style1" />
                <br class="auto-style1" />
                
                <asp:TextBox ID="txtPreco" runat="server" placeholder="Preço 0,00"></asp:TextBox>
                <br class="auto-style1" />
                <br class="auto-style1" />
                
                <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" class="btn btn primary"/>
                <br class="auto-style1" />
                <br class="auto-style1" />

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ListarProduto.aspx">Listar Produtos</asp:HyperLink>
                <br class="auto-style1" />
                <br class="auto-style1" />

                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                </p>
            </div>
        </div>
  </asp:Content>
