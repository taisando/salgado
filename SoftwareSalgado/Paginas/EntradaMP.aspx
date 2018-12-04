<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.Master" AutoEventWireup="true" CodeBehind="EntradaMP.aspx.cs" Inherits="SoftwareSalgado.Paginas.EntradaMP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Label runat="server" CssClass="card-body h4" Text="Controle de Matéria-Prima"></asp:Label>
    <p></p>
    <div class="col-12 grid-margin">
        <div class="card">
            <div class="card-body">                

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group row">
                            <asp:Label runat="server" Text="Entrada de Matéria-Prima" CssClass="col-sm-9 col-form-label h4"></asp:Label>
                            <div class="col-sm-9">
                                <asp:DropDownList ID="ddlMP" runat="server" CssClass="col-sm-10 col-form-label form-control form-control-sm"></asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group row">
                            <asp:Label runat="server" Text="Quantidade" CssClass="col-sm-9 col-form-label h4"></asp:Label>
                            <asp:TextBox runat="server" ID="txtQuantidade" placeholder="Kg" CssClass="col-sm-5 col-form-label form-control form-control-sm "></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" class="btn btn-info btn-rounded" />
                        <p></p>

                        <asp:Label ID="lblMensagem" runat="server"></asp:Label>

                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="col-12 grid-margin">
        <div class="card">
            <div class="card-body">
                <asp:Label runat="server" CssClass="card-body h4" Text="Estoque"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="mat_nome" HeaderText="Nome da Matéria-Prima" />
                        <asp:BoundField DataField="quantidade" HeaderText="Quantidade em Kilos" />
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
