<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SoftwareSalgado.Paginas.ADM.Index" Title="" MasterPageFile="~/Content/Master/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="card">
        <div class="card bg-gradient-primary text-white col-md-12">
            <p></p>
            <asp:Label ID="lblTitulo" runat="server" Text="" CssClass="">Aviso: <i class="mdi mdi-comment-processing-outline float-right"> </i></asp:Label>
            
            <asp:Label runat="server" ID="lblAlertaEstoqueMinimo" CssClass="h4 text-white"></asp:Label>
            
        </div>

        <div class="card">
            <div class="card-body">

                <asp:Label runat="server" Text="Mês " CssClass="h5"></asp:Label>
                <asp:Label runat="server" ID="lblMes" CssClass="h5"></asp:Label>

                <br />
                <br />
                <div class="row">
                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-success card-img-holder text-white">
                            <div runat="server" class="card-body">
                                <h4 class="font-weight-normal mb-3">Vendas                  
                                    <i class="mdi mdi-square-inc-cash mdi-22px float-right"></i>
                                </h4>
                                <h2 class="mb-5">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="" />
                                        <Columns>
                                            <asp:BoundField DataField="valor" HeaderText="Total" />                                            
                                        </Columns>
                                        <FooterStyle BackColor="" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="" ForeColor="White" />
                                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                        <SortedDescendingHeaderStyle BackColor="#820000" />
                                    </asp:GridView>
                                    
                                </h2>
                                <h6 class="card-text">Adicionar Nova Venda </h6>
                                <asp:Button runat="server" OnClick="Unnamed3_Click" Text="+" CssClass="btn btn-gradient-primary btn-icon btn-rounded font-weight-bold h6" />
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-danger card-img-holder text-white">
                            <div class="card-body">

                                <h4 class="font-weight-normal mb-3">Despesas                    
                                        <i class="mdi mdi-contrast-circle mdi-24px float-right"></i>
                                </h4>
                                <h2 class="mb-5">
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="" />
                                        <Columns>
                                            <asp:BoundField DataField="concat('R$ ', ROUND (SUM(des_valor),2))" HeaderText="Total" />                                            
                                        </Columns>
                                        <FooterStyle BackColor="" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="" ForeColor="White" />
                                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                        <SortedDescendingHeaderStyle BackColor="#820000" />
                                    </asp:GridView>
                                </h2>
                                <h6 class="card-text">Nova Despesa</h6>
                                <asp:Button runat="server" Text="+" CssClass="btn btn-gradient-primary btn-icon btn-rounded font-weight-bold h6" />
                            </div>
                        </div>
                    </div>



                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-info card-img-holder text-white">
                            <div class="card-body">
                                <asp:Image runat="server" ImageUrl="~/Content/images/circle.svg" CssClass="card-img-absolute mb-3" />
                                <h4 class="font-weight-normal mb-3">Lucro                   
                            <i class="mdi mdi-calculator mdi-24px float-right"></i>
                                </h4>
                                <h2 class="mb-5">R$</h2>
                                <h6 class="card-text"></h6>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>



</asp:Content>


