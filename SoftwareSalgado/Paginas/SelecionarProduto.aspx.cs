using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SoftwareSalgado.App_Code.Persistencia;
using System.Data;

namespace SoftwareSalgado.Paginas
{
    public partial class SelecionarProduto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Carrega();
            }
        }

        private void Carrega()
        {
            int categoria = Convert.ToInt32(Session["CategoriaID"]);
            ProdutoBD bd = new ProdutoBD();
            DataSet ds = bd.SelectAllByCategoria(categoria);
            rptProdutos.DataSource = ds.Tables[0].DefaultView;
            rptProdutos.DataBind();
        }

        protected void rptProdutos_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "produto")
            {
                int codigo = 0;
                codigo = Convert.ToInt32(e.CommandArgument);
                Session["ProdutoID"] = codigo;
                Response.Redirect("SelecionarQuantidade.aspx");

                //poderia chamar outra página ou exibir informações do item clicado.
            }
        }
    }
}