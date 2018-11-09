<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarCliente.aspx.cs" Inherits="SoftwareSalgado.Paginas.Listar" Title="" MasterPageFile="~/Content/Master/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="card">
        <div class="card-body">
            <asp:Label runat="server" CssClass="card-body h4" Text="Lista de Clientes"></asp:Label>
            <p></p>
            <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" CssClass="table table-bordered">
                <AlternatingRowStyle CssClass="table-danger" />
                <Columns>
                    <asp:BoundField DataField="pes_codigo" HeaderText="Código" />
                    <asp:BoundField DataField="pes_nome" HeaderText="Nome" />
                    <asp:BoundField DataField="pes_telefone" HeaderText="Telefone" />
                    <asp:BoundField DataField="pes_email" HeaderText="E-mail" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            &nbsp;&nbsp;
                            <asp:LinkButton ID="lbAlterar" runat="server" CommandName="Alterar" CommandArgument='<%# Bind("pes_codigo")%>'>Alterar <span class="mdi mdi-border-color"></span></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle CssClass="table-light" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle CssClass="table-primary" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
        </div>

        <div>
            &nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="CadastrarCliente.aspx">Cadastar Clientes</asp:HyperLink>
            <p>
                &nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="Link2" runat="server" NavigateUrl="~/Paginas/AlterarCliente.aspx">Alterar Cadastro de Clientes</asp:HyperLink>
            </p>
        </div>

    </div>

</asp:Content>
