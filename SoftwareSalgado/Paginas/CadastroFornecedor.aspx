<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroFornecedor.aspx.cs" Inherits="SoftwareSalgado.Paginas.CadastroFornecedor" Title="" MasterPageFile="~/Content/Master/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="col-12 grid-margin">
        <div class="card">
            <div class="card-body">
                <asp:Label runat="server" CssClass="card-body h4" Text="Cadastro de Fornecedores"></asp:Label>

                <div class="row">

                    <div class="col-md-6">
                        <div class="form-group row">
                            <asp:Label runat="server" Text="Nome" CssClass="col-sm-4 col-form-label"></asp:Label>
                            <asp:TextBox runat="server" ID="txtNome" placeholder="Nome" CssClass="col-sm-10 col-form-label form-control form-control-sm "></asp:TextBox>
                        </div>
                    </div>

                 <div class="col-md-6">
                        <div class="form-group row">
                            <asp:Label runat="server" Text="Telefone" CssClass="col-sm-4 col-form-label"></asp:Label>
                            <asp:TextBox runat="server" ID="txtTelefone" placeholder="Telefone (00)0 0000-0000" CssClass="col-sm-10 col-form-label form-control form-control-sm "></asp:TextBox>
                        </div>
                    </div>

                    
                    <div class="col-md-6">
                        <div class="form-group row">
                            <asp:Label runat="server" Text="E-Mail" CssClass="col-sm-6 col-form-label"></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" placeholder="E-mail" CssClass="col-sm-10 col-form-label form-control form-control-sm"></asp:TextBox>
                        </div>
                    </div>
                    
                    <div class="col-md-6">
                        <div class="form-group row">
                            <asp:Label runat="server" Text="CNPJ" CssClass="col-sm-6 col-form-label"></asp:Label>
                            <asp:TextBox ID="txtCNPJ" runat="server" placeholder="E-mail" CssClass="col-sm-10 col-form-label form-control form-control-sm"></asp:TextBox>
                        </div>
                    </div>                


                    <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" class="btn btn-info btn-rounded" />
                    
                    <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
