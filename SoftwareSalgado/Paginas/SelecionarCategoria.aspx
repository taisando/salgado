<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.Master" AutoEventWireup="true" CodeBehind="SelecionarCategoria.aspx.cs" Inherits="SoftwareSalgado.Paginas.SelecionarCategoria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="lblTitulo" runat="server" Text="Adicionar Nova Venda" CssClass="h4"></asp:Label>
        <br />
        <br />
        <div class="card">
            <div class="card-body">
                <asp:Label runat="server" Text="Selecione uma Categoria de Produto"></asp:Label>
                <div class="template-demo form-group">
                    <br />

                    <asp:Repeater ID="rptCategorias" runat="server" OnItemCommand="rptCategorias_ItemCommand">
                        <ItemTemplate>
                            <div>
                                <p>
                                    <asp:Button ID="btnCategoria" runat="server" CssClass="form-control col-md-3 btn btn-outline-success"
                                        Text='<%# DataBinder.Eval(Container.DataItem, "cat_nome") %>'
                                        CommandArgument='<%# DataBinder.Eval(Container.DataItem, "cat_codigo") %>'
                                        CommandName="categoria" CausesValidation="false" />
                                </p>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
