<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarCliente.aspx.cs" Inherits="SoftwareSalgado.Paginas.Listar" Title="" MasterPageFile="~/Content/Master/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        Lista de Clientes<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="pes_codigo" HeaderText="Código" />
                <asp:BoundField DataField="pes_nome" HeaderText="Nome" />
                <asp:BoundField DataField="pes_endereco" HeaderText="Endereço" />
                <asp:BoundField DataField="pes_telefone" HeaderText="Telefone" />
                <asp:BoundField DataField="pes_email" HeaderText="E-mail" />
                <asp:BoundField DataField="pes_cpf" HeaderText="CPF" />               
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbAlterar" runat="server" CommandName="Alterar" CommandArgument='<%# Bind("pes_codigo")%>'>Alterar</asp:LinkButton>
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
    <p style="width: 1114px">
        &nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="CadastrarCliente.aspx">Cadastar Clientes</asp:HyperLink>
    </p>

</asp:Content>
