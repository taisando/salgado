<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.Master" AutoEventWireup="true" CodeBehind="NovaVenda.aspx.cs" Inherits="SoftwareSalgado.Paginas.NovaVenda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:Label ID="lblTitulo" runat="server" Text="Adicionar Nova Venda" CssClass="h4"></asp:Label>
        <br />
        <br />
        <div class="card">
            <div class="card-body">
                <asp:Label runat="server" Text="Mês: "></asp:Label>

                <br />
                <br />

                <div class="row">
                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-danger card-img-holder text-white">
                            <div class="card-body">
                                <asp:Image runat="server" ImageUrl="~/Content/images/circle.svg" CssClass="card-img-absolute" />
                                <h4 class="font-weight-normal mb-3">Escolha o Produto                    
                                        <i class="mdi mdi-food mdi-24px float-right"></i>
                                </h4>
                                <h2 class="mb-5">+</h2>
                                <h6 class="card-text">Produto</h6>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-success card-img-holder text-white">
                            <div class="card-body">
                                <asp:Image runat="server" ImageUrl="~/Content/images/circle.svg" CssClass="card-img-absolute" />
                                <h4 class="font-weight-normal mb-3">Quantidade                  
                            <i class="mdi mdi-counter mdi-24px float-right"></i>
                                </h4>
                                <h2 class="mb-5">+</h2>
                                <h6 class="card-text"></h6>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-info card-img-holder text-white">
                            <div class="card-body">
                                <asp:Image runat="server" ImageUrl="~/Content/images/circle.svg" CssClass="card-img-absolute mb-3" />
                                <h4 class="font-weight-normal mb-3">Total                   
                            <i class="mdi mdi-calculator mdi-24px float-right"></i>
                                </h4>
                                <h2 class="mb-5">R$</h2>
                                <h6 class="card-text"></h6>
                            </div>
                        </div>
                    </div>

                    <div>

                        
                    </div>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
