<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SoftwareSalgado.Paginas.ADM.Index" Title="" MasterPageFile="~/Content/Master/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="../Iconic/materialdesignicons.min.css" rel="stylesheet" />
    <link href="../../Content/Iconic/materialdesignicons.css" rel="stylesheet" />
    <link href="../../Content/Iconic/material-design-iconic-font.min.css" rel="stylesheet" />
    <link href="../CSS/vendor.bundle.base.css" rel="stylesheet" />
    <link href="../CSS/style.css" rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="main-panel">

        <div class="content-wrapper">
            
            <asp:Label ID="lblTitulo" runat="server" Text="Tela Pricipal do Administrador" CssClass="h2"></asp:Label>
            <p></p>
            <p></p>

            <div class="row">
                <div class="col-md-4 stretch-card grid-margin">
                    <div class="card bg-gradient-danger card-img-holder text-white">
                        <div class="card-body">
                            <asp:Image runat="server" ImageUrl="~/Content/images/circle.svg" CssClass="card-img-absolute" />
                            <h4 class="font-weight-normal mb-3">Weekly Sales                    
                            <i class="mdi mdi-chart-line mdi-24px float-right"></i>
                            </h4>
                            <h2 class="mb-5">$ 15,0000</h2>
                            <h6 class="card-text">Increased by 60%</h6>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 stretch-card grid-margin">
                    <div class="card bg-gradient-info card-img-holder text-white">
                        <div class="card-body">
                            <asp:Image runat="server" ImageUrl="~/Content/images/circle.svg" CssClass="card-img-absolute" />
                            <h4 class="font-weight-normal mb-3">Weekly Orders                    
                            <i class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
                            </h4>
                            <h2 class="mb-5">45,6334</h2>
                            <h6 class="card-text">Decreased by 10%</h6>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 stretch-card grid-margin">
                    <div class="card bg-gradient-success card-img-holder text-white">
                        <div class="card-body">
                            <asp:Image runat="server" ImageUrl="~/Content/images/circle.svg" CssClass="card-img-absolute mb-3" />
                            <h4 class="font-weight-normal mb-3">Visitors Online                    
                            <i class="mdi mdi-diamond mdi-24px float-right"></i>
                            </h4>
                            <h2 class="mb-5">95,5741</h2>
                            <h6 class="card-text">Increased by 5%</h6>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
</asp:Content>


