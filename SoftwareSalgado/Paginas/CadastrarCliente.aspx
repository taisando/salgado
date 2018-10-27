<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarCliente.aspx.cs" Inherits="SoftwareSalgado.Paginas.Cadastrar" Title="" MasterPageFile="~/Content/Master/Principal.Master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">


    <link href="../Iconic/materialdesignicons.min.css" rel="stylesheet" />
    <link href="../../Content/Iconic/materialdesignicons.css" rel="stylesheet" />
    <link href="../../Content/Iconic/material-design-iconic-font.min.css" rel="stylesheet" />
    <link href="../CSS/vendor.bundle.base.css" rel="stylesheet" />
    <link href="../CSS/style.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    
        <div class="col-12 grid-margin">
            <div class="card">
                <div class="card-body">

                    <asp:Label runat="server" CssClass="card-body h6" Text="Cadastro de Clientes"></asp:Label>
                    <p></p>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group row">

                                <asp:Label runat="server" Text="Nome" CssClass="col-sm-3 col-form-label"></asp:Label>

                                <asp:TextBox runat="server" ID="txtNome" placeholder="Nome" CssClass="col-sm-9 col-form-label form-control"></asp:TextBox>

                                <asp:Label runat="server" Text="Endereço" CssClass="col-sm-3 col-form-label"></asp:Label>

                                <asp:TextBox ID="txtEndereco" runat="server" placeholder="Endereço" CssClass="col-sm-9 col-form-label form-control"></asp:TextBox>


                                <asp:Label runat="server" Text="Telefone" CssClass="col-sm-3 col-form-label"></asp:Label>
                                <asp:TextBox ID="txtTelefone" runat="server" placeholder="Telefone (00)0 0000-0000" CssClass="col-sm-9 col-form-label form-control"></asp:TextBox>

                                <asp:Label runat="server" Text="E-Mail" CssClass="col-sm-3 col-form-label"></asp:Label>
                                <asp:TextBox ID="txtEmail" runat="server" placeholder="E-mail" CssClass="col-sm-9 col-form-label form-control"></asp:TextBox>

                                <asp:Label runat="server" Text="CPF" CssClass="col-sm-3 col-form-label"></asp:Label>
                                <asp:TextBox ID="txtCPF" runat="server" placeholder="CPF 000.000.000-00" CssClass="col-sm-9 col-form-label form-control"></asp:TextBox>

                               
                                <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" CssClass="btn btn-gradient-light" />
                                <p></p>

                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ListarCliente.aspx">Listar Clientes</asp:HyperLink>


                                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>

</asp:Content>
