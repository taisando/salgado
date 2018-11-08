<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.Master" AutoEventWireup="true" CodeBehind="SelecionarQuantidade.aspx.cs" Inherits="SoftwareSalgado.Paginas.Quantidade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:Label ID="lblTitulo" runat="server" Text="Adicionar Nova Venda" CssClass="h4"></asp:Label>
        <br />
        <br />
        <div class="card">
            <div class="card-body">

                <div class="row">
                    <div class="col-md-6">
                        <asp:Label runat="server" Text="Produto Selecionado: "></asp:Label>
                        <asp:Label ID="lblProduto" runat="server" CssClass="text-danger font-weight-bold"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:Label ID="lblSubtotal1" runat="server">Preço Unitário: R$ </asp:Label>
                        <asp:Label ID="lblPreco" runat="server" CssClass="text-danger font-weight-bold"></asp:Label>
                    </div>
                </div>

                <div>
                    <p>
                        <br />
                        <asp:Label runat="server" Text="Escolha a Quantidade"></asp:Label>
                    </p>

                    <div class="template-demo">
                        <asp:Button runat="server" ID="btnUm" Text="01" CssClass="btn btn-outline-info btn-icon" />
                        <asp:Button runat="server" ID="btnDois" Text="02" CssClass="btn btn-outline-info btn-icon " />
                        <asp:Button runat="server" ID="btnTres" Text="03" CssClass="btn btn-outline-info btn-icon " />
                        <asp:Button runat="server" ID="btnQuatro" Text="04" CssClass="btn btn-outline-info btn-icon " />
                        <asp:Button runat="server" ID="btnCinco" Text="05" CssClass="btn btn-outline-info btn-icon " />
                        <asp:Button runat="server" ID="btnSeis" Text="06" CssClass="btn btn-outline-info btn-icon " />
                        <asp:Button runat="server" ID="btnSete" Text="07" CssClass="btn btn-outline-info btn-icon " />
                        <asp:Button runat="server" ID="btnOito" Text="08" CssClass="btn btn-outline-info btn-icon " />
                        <asp:Button runat="server" ID="btnNove" Text="09" CssClass="btn btn-outline-info btn-icon " />
                        <asp:Button runat="server" ID="btnDez" Text="10" CssClass="btn btn-outline-info btn-icon " />
                        <p>
                            <br />
                            <asp:Button runat="server" ID="btnQuinze" Text="15" CssClass="btn btn-outline-success btn-icon btn-fw" />
                            <asp:Button runat="server" ID="btnVinte" Text="20" CssClass="btn btn-outline-success btn-icon btn-fw" />
                            <asp:Button runat="server" ID="btnCinquenta" Text="50" CssClass="btn btn-outline-success btn-icon btn-fw" />
                        </p>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <asp:Label runat="server" >Quantidade:</asp:Label>
                                    <asp:Label runat="server" ID="lblQuantidade">0</asp:Label>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="lblSubtotal0" runat="server">Subtotal: R$ </asp:Label>
                                    <asp:Label ID="lblSubtotal" runat="server">0</asp:Label>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6">
                                    <asp:Button runat="server" ID="btnAdicionar" Text="Adicionar mais Produtos" CssClass="btn btn-fw" />
                                </div>

                                <div class="col-md-6">
                                    <asp:Button runat="server" ID="FinalizarVenda" Text="Finalizar Venda" CssClass="btn btn-gradient-danger btn-fw" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
