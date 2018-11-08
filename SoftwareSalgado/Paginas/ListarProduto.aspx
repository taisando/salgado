<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarProduto.aspx.cs" Inherits="SoftwareSalgado.Paginas.ListarProduto" Title="" MasterPageFile="~/Content/Master/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="card">
        <div class="card-body">
            <asp:Label runat="server" CssClass="card-body h4" Text="Lista de Produtos"></asp:Label>

            <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="pro_codigo" HeaderText="Código" />
                    <asp:BoundField DataField="pro_nome" HeaderText="Nome" />
                    <asp:BoundField DataField="pro_preco" HeaderText="Preço" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbAlterar" runat="server" CommandName="Alterar" CommandArgument='<%# Bind("pro_codigo")%>'>Alterar <span class="mdi mdi-border-color"></span></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
        <br />
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="CadastroProduto.aspx">Cadastrar Produtos</asp:HyperLink>
            &nbsp;
       </div>
    </div>
</asp:Content>
