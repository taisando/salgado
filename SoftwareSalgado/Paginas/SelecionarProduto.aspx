<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.Master" AutoEventWireup="true" CodeBehind="SelecionarProduto.aspx.cs" Inherits="SoftwareSalgado.Paginas.SelecionarProduto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="lblTitulo" runat="server" Text="Adicionar Nova Venda" CssClass="h4"></asp:Label>
        <br />
        <br />
        <div class="card">
            <div class="card-body">
                <asp:Label runat="server" Text="Selecione um Produto"></asp:Label>
                <div class="template-demo">
                    <br />
                    <asp:Repeater ID="rptProdutos" runat="server" OnItemCommand="rptProdutos_ItemCommand">
                        <ItemTemplate>
                            <div>
                                <p>
                                    <asp:Button ID="btnProduto" runat="server" CssClass="form-control col-md-3 btn btn-outline-success"
                                        Text='<%# DataBinder.Eval(Container.DataItem, "pro_nome") %>'
                                        CommandArgument='<%# DataBinder.Eval(Container.DataItem, "pro_codigo") %>'
                                        CommandName="produto" CausesValidation="false" />
                                </p>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
