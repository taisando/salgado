<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.Master" AutoEventWireup="true" CodeBehind="ListarVenda.aspx.cs" Inherits="SoftwareSalgado.Paginas.ListarVenda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="card">
        <div class="card-body">
            <asp:Label runat="server" CssClass="card-body h4" Text="Últimas Vendas Realizadas"></asp:Label>
            <p></p>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" CssClass="table table-bordered" AutoGenerateColumns="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ven_codigo" HeaderText="Código da Venda" />
                    <asp:BoundField DataField="ven_data" HeaderText="Data da Compra" />
                    <asp:BoundField DataField="ven_valortotal" HeaderText="Valor da Compra" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle CssClass="table-success" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>

        <div>
            &nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Paginas/NovaVenda.aspx">Cadastar Nova Venda</asp:HyperLink>

        </div>

    </div>

</asp:Content>
