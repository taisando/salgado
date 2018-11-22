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
                <asp:Label runat="server" Text="Escolha uma Categoria"></asp:Label>
                <p></p>

                <div class="template-demo form-group">

                    <asp:DropDownList ID="ddlCategoria" runat="server" CssClass="form-control col-md-5">
                    </asp:DropDownList>


                    <asp:Label runat="server" ID="lblValor" Text="Valor da Despesa"></asp:Label>
                    <asp:TextBox runat="server" ID="txtValor"></asp:TextBox>
                    <p>
                        <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" CssClass="btn btn-outline-info" />
                    </p>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
