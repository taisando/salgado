<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.Master" AutoEventWireup="true" CodeBehind="NovaDespesa.aspx.cs" Inherits="SoftwareSalgado.Paginas.NovaDespesa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="lblTitulo" runat="server" Text="Adicionar Nova Despesa" CssClass="h4"></asp:Label>
        <br />
        <br />
        <div class="card">
            <div class="card-body">


                <div class="template-demo form-group">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <asp:Label runat="server" Text="Escolha uma Categoria" CssClass="col-sm-6 col-form-label"></asp:Label>
                                <asp:DropDownList ID="ddlCategoria" runat="server" CssClass="form-control col-sm-6">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <asp:Label runat="server" ID="lblValor" Text="Valor da Despesa" CssClass="col-sm-6 col-form-label"></asp:Label>
                                <asp:TextBox runat="server" ID="txtValor" placeholder="R$" CssClass="col-sm-6 col-form-label form-control form-control-sm"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <p>
                        <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" CssClass="btn btn-info btn-rounded" />
                    </p>

                    <div class="col-md-6">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ListarDespesas.aspx">Listar Despesas</asp:HyperLink>
                        <asp:Label runat="server" ID="lblMensagem"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
