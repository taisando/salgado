<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.Master" AutoEventWireup="true" CodeBehind="Quantidade.aspx.cs" Inherits="SoftwareSalgado.Paginas.Quantidade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:Label ID="lblTitulo" runat="server" Text="Adicionar Nova Venda" CssClass="h4"></asp:Label>
        <br />
        <br />
        <div class="card">
            <div class="card-body">
                <asp:Label runat="server" Text="Escolha a Quantidade"></asp:Label>
                <p></p>

                <div class="template-demo">
                    <asp:Button runat="server" Text="01" CssClass="btn btn-info btn-icon" OnClick="Unnamed2_Click" />
                    <asp:Button runat="server" Text="02" CssClass="btn btn-info btn-icon " />
                    <asp:Button runat="server" Text="03" CssClass="btn btn-info btn-icon " />
                    <asp:Button runat="server" Text="04" CssClass="btn btn-info btn-icon " />
                    <asp:Button runat="server" Text="05" CssClass="btn btn-info btn-icon " />
                    <asp:Button runat="server" Text="06" CssClass="btn btn-info btn-icon " />
                    <asp:Button runat="server" Text="07" CssClass="btn btn-info btn-icon " />
                    <asp:Button runat="server" Text="08" CssClass="btn btn-info btn-icon " />
                    <asp:Button runat="server" Text="09" CssClass="btn btn-info btn-icon " />
                    <asp:Button runat="server" Text="10" CssClass="btn btn-info btn-icon " />
                    <p></p>
                    <asp:Button runat="server" Text="15" CssClass="btn btn-danger btn-icon btn-fw" />                    
                    <asp:Button runat="server" Text="20" CssClass="btn btn-danger btn-icon btn-fw" />
                    <asp:Button runat="server" Text="50" CssClass="btn btn-danger btn-icon btn-fw" />

                    <div class="card-body">
                        <p><asp:Label runat="server" Text="Quantidade: "></asp:Label></p>
                        <p>
                        <asp:Button runat="server" Text="Adicionar mais Produtos" CssClass="btn btn-fw" /></p>

                        <p>
                        <asp:Button runat="server" Text="Finalizar Venda" CssClass="btn btn-danger btn-fw" /></p>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>

</asp:Content>
