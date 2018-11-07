<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.Master" AutoEventWireup="true" CodeBehind="NovaVenda.aspx.cs" Inherits="SoftwareSalgado.Paginas.NovaVenda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:Label ID="lblTitulo" runat="server" Text="Adicionar Nova Venda" CssClass="h4"></asp:Label>
        <br />
        <br />
        <div class="card">
            <div class="card-body">
                <asp:Label runat="server" Text="Escolha um Cliente"></asp:Label>
                <p></p>

                <div class="template-demo form-group">
                    
                    <asp:DropDownList ID="ddlCliente" runat="server" CssClass="form-control col-md-5">
                    </asp:DropDownList>
                    <asp:Button ID="btnNovaVenda" runat="server" Text="Iniciar Venda" OnClick="btnNovaVenda_Click" CssClass="btn btn-outline-info"/>
                </div>
            </div>
        </div>


    </div>


</asp:Content>
