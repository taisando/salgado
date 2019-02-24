<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.Master" AutoEventWireup="true" CodeBehind="ListarVenda.aspx.cs" Inherits="SoftwareSalgado.Paginas.ListarVenda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="card">
        <div class="card-body">
            <asp:Label runat="server" CssClass="card-body h4" Text="Últimas Vendas Realizadas"></asp:Label>

             
                  
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Paginas/NovaVenda.aspx">Cadastar Nova Venda</asp:HyperLink>
        </div>
    </div>

</asp:Content>
