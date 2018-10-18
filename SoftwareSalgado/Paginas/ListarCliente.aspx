<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarCliente.aspx.cs" Inherits="SoftwareSalgado.Paginas.Listar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server" class="form-control">
        <div>
            Lista de Clientes<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="cli_codigo" HeaderText="Código" />
                    <asp:BoundField DataField="cli_nome" HeaderText="Nome" />
                    <asp:BoundField DataField="cli_endereco" HeaderText="Endereço" />
                    <asp:BoundField DataField="cli_telefone" HeaderText="Telefone" />
                    <asp:BoundField DataField="cli_email" HeaderText="E-mail" />
                    <asp:BoundField DataField="cli_cpf" HeaderText="CPF" />
                    <asp:BoundField DataField="cli_entrega" HeaderText="Endereço de Entrega" />
                     <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbAlterar" runat="server" CommandName="Alterar" CommandArgument='<%# Bind("cli_codigo")%>'>Alterar</asp:LinkButton>
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
    </form>
</body>
</html>
