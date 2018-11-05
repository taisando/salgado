<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.Master" AutoEventWireup="true" CodeBehind="Venda.aspx.cs" Inherits="SoftwareSalgado.Paginas.Venda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:Label ID="lblTitulo" runat="server" Text="Adicionar Nova Venda" CssClass="h4"></asp:Label>
        <br />
        <br />
        <div class="card">
            <div class="card-body">
                <asp:Label runat="server" Text="Escolha um Produto"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label runat="server" Text="Quantidade"></asp:Label>
                <p>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Coxinha" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </p>
                <p>
                </p>


            </div>
        </div>
    </div>

</asp:Content>
