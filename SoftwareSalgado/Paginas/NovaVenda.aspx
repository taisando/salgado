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
                <asp:Label runat="server" Text="Escolha um Produto"></asp:Label>
                <p></p>

                <div class="template-demo">
                    <asp:Button runat="server" Text="Coxinha" CssClass="btn btn-success btn-md btn-fw" OnClick="Coxinha_Click" />
                    <asp:Button runat="server" Text="Pastel Frango" CssClass="btn btn-success btn-md btn-fw" />
                    <asp:Button runat="server" Text="Pizza Frango" CssClass="btn btn-success btn-md btn-fw" />
                    <asp:Button runat="server" Text="Pizza Carne" CssClass="btn btn-success btn-md btn-fw" />
                    <asp:Button runat="server" Text="Pizza Presunto" CssClass="btn btn-success btn-md btn-fw" />
                    <asp:Button runat="server" Text="Enroladinho Queijo" CssClass="btn btn-success btn-md" />
                    <asp:Button runat="server" Text="Esfiha Frango" CssClass="btn btn-success btn-md" />
                    <asp:Button runat="server" Text="Esfiha Carne" CssClass="btn btn-success btn-md" />
                    <asp:Button runat="server" Text="Empada" CssClass="btn btn-success btn-md" />
                    <asp:Button runat="server" Text="Bolinho Aipim" CssClass="btn btn-success btn-md" />                
                    <asp:Button runat="server" Text="Bolinho Bacalhau" CssClass="btn btn-success btn-md" />
                    <asp:Button runat="server" Text="Bolinha Queijo" CssClass="btn btn-success btn-md" />
                    <asp:Button runat="server" Text="Salsicha Empanada" CssClass="btn btn-success btn-md" />
                    <asp:Button runat="server" Text="Croquete" CssClass="btn btn-success btn-md" />
                    <asp:Button runat="server" Text="Risoles Carne" CssClass="btn btn-success btn-md" />
                    <asp:Button runat="server" Text="Bolinho Caipira" CssClass="btn btn-success btn-md" />
                    <asp:Button runat="server" Text="Espetinho" CssClass="btn btn-success btn-md" />
                    <asp:Button runat="server" Text="Kibe" CssClass="btn btn-success btn-md" />
                </div>
            </div>
        </div>


    </div>


</asp:Content>
