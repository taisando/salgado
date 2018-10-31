<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroProduto.aspx.cs" Inherits="SoftwareSalgado.Paginas.CadastroProduto" Title="" MasterPageFile="~/Content/Master/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="col-12 grid-margin">
        <div class="card">
            <div class="card-body">
                <asp:Label runat="server" CssClass="card-body h4" Text="Cadastro de Produtos"></asp:Label>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group row">
                            <asp:Label runat="server" Text="Nome do Produto" CssClass="col-sm-6 col-form-label"></asp:Label>
                            <asp:TextBox runat="server" ID="txtNome" placeholder="Nome do Produto" CssClass="col-sm-10 col-form-label form-control form-control-sm "></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group row">
                            <asp:Label runat="server" Text="Categoria" CssClass="col-sm-4 col-form-label"></asp:Label>
                            <div class="col-sm-9">
                                <select class="form-control">
                                    <option>Salgado</option>
                                    <option>Doce</option>
                                    <option>Cento</option>                                    
                                </select>
                            </div>
                        </div>
                    </div>
                    

                    <div class="col-md-6">
                        <div class="form-group row">
                            <asp:Label runat="server" Text="Preço" CssClass="col-sm-4 col-form-label"></asp:Label>
                            <asp:TextBox runat="server" ID="txtPreco" placeholder="R$ 00,00" CssClass="col-sm-10 col-form-label form-control form-control-sm "></asp:TextBox>
                        </div>
                    </div>


                    <div class="col-md-12">
                        <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" class="btn btn-info btn-rounded" />
                        <p></p>
                        
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ListarProduto.aspx">Listar Produtos</asp:HyperLink>
                            
                        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
