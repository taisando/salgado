<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.Master" AutoEventWireup="true" CodeBehind="CadastrarMP.aspx.cs" Inherits="SoftwareSalgado.Paginas.CadastrarMP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-12 grid-margin">
        <div class="card">
            <div class="card-body">
                <asp:Label runat="server" CssClass="card-body h4" Text="Cadastrar Nova Matéria-Prima"></asp:Label>
                <br />

                <div class="row">                    
                    <div class="col-md-6">
                        <div class="form-group row">
                            <asp:Label runat="server" Text="Nome" CssClass="col-sm-6 col-form-label"></asp:Label>
                            <asp:TextBox runat="server" ID="txtNome" placeholder="Nome da Nova Matéria-Prima" CssClass="col-sm-10 col-form-label form-control form-control-sm "></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" class="btn btn-info btn-rounded" />
                        <p></p>                        

                        <asp:Label ID="lblMensagem" runat="server"></asp:Label>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
