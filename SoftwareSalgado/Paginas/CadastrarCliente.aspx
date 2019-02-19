<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarCliente.aspx.cs" Inherits="SoftwareSalgado.Paginas.Cadastrar" Title="" MasterPageFile="~/Content/Master/Principal.Master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="col-12 grid-margin">
        <div class="card">
            <div class="card-body">

                <asp:Label runat="server" CssClass="card-body h4" Text="Cadastro de Clientes"></asp:Label>

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
                            <asp:TextBox ID="txtTelefone" runat="server" placeholder="Telefone (00)0 0000-0000" CssClass="col-sm-9 col-form-label form-control form-control-sm"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-group row">
                            <asp:Label runat="server" Text="Logradouro" CssClass="col-sm-9 col-form-label"></asp:Label>
                            <asp:Label runat="server" Text="Número" CssClass="col-sm-3 col-form-label"></asp:Label>
                            <asp:TextBox ID="txtLogradouro" runat="server" placeholder="Logradouro" CssClass="col-sm-9 col-form-label form-control form-control-sm"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;                      
                            <asp:TextBox ID="txtNumero" runat="server" placeholder="N°" CssClass="col-sm-1 col-form-label form-control form-control-sm"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group row">
                            <asp:Label runat="server" Text="Complemento" CssClass="col-sm-6 col-form-label"></asp:Label>
                            <asp:TextBox ID="txtComplemento" runat="server" placeholder="Completmento" CssClass="col-sm-10 col-form-label form-control form-control-sm"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group row">
                            <asp:Label runat="server" Text="Cidade" CssClass="col-sm-6 col-form-label"></asp:Label>
                            <asp:TextBox ID="txtCidade" runat="server" placeholder="Cidade" CssClass="col-sm-9 col-form-label form-control form-control-sm"></asp:TextBox>
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
                            <asp:Label runat="server" Text="CPF" CssClass="col-sm-6 col-form-label"></asp:Label>
                            <asp:TextBox ID="txtCPF" runat="server" placeholder="CPF 000.000.000-00" CssClass="col-sm-9 col-form-label form-control form-control-sm"></asp:TextBox>
                        </div>
                    </div>

                    <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" CssClass="btn btn-rounded btn-info" />

                </div>
            </div>

            <div class="col-md-6">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ListarCliente.aspx">Listar Clientes</asp:HyperLink>

                <asp:Label ID="lblMensagem" runat="server"></asp:Label>

                <p></p>
            </div>
        </div>
    </div>



</asp:Content>
