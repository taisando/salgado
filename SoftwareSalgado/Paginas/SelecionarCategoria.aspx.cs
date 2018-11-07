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
    public partial class SelecionarCategoria : System.Web.UI.Page
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
            CategoriaBD bd = new CategoriaBD();
            DataSet ds = bd.SelectAll();
            rptCategorias.DataSource = ds.Tables[0].DefaultView;
            rptCategorias.DataBind();
        }

        protected void rptCategorias_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "categoria")
            {
                int codigo = 0;
                codigo = Convert.ToInt32(e.CommandArgument);
                Session["CategoriaID"] = codigo; //passa para a proxima sessão levando o cat_codigo
                Response.Redirect("SelecionarProduto.aspx");

                //poderia chamar outra página ou exibir informações do item clicado.
            }
        }
    }
}