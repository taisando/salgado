<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.Master" AutoEventWireup="true" CodeBehind="RelatorioVendaSemana.aspx.cs" Inherits="SoftwareSalgado.Paginas.RelatorioVendaSemana" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-12 grid-margin">
        <div class="card">
            <div class="card-body">
                <asp:Label runat="server" CssClass="card-body h4" Text="Relatório de Venda da Semana"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" CssClass="table table-bordered" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="pes_nome" HeaderText="Cliente" />
                        <asp:BoundField DataField="ven_data" HeaderText="Data" />
                        <asp:BoundField DataField="ven_valortotal" HeaderText="Total" />
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
        </div>
    </div>

</asp:Content>
