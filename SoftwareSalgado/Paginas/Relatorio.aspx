<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.Master" AutoEventWireup="true" CodeBehind="Relatorio.aspx.cs" Inherits="SoftwareSalgado.Paginas.Relatorio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-12 grid-margin">
        <div class="card">
            <div class="card-body">
                <asp:Label runat="server" CssClass="card-body h4" Text="Relatórios de Venda"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" AllowSorting="True">
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetClientesMaisCompram" TypeName="SoftwareSalgado.App_Code.Persistencia.VendaBD"></asp:ObjectDataSource>
            </div>
        </div>
    </div>

</asp:Content>
