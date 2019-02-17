using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SoftwareSalgado.App_Code.Persistencia;
using SoftwareSalgado.App_Code.Classes;
using System.Data;

namespace SoftwareSalgado.Paginas
{
    public partial class EntradaMP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Carrega();
                CarregaEstoque();
            }
        }
        private void Carrega()
        {
            EstoqueMPBD bd = new EstoqueMPBD();
            DataSet ds = bd.SelectAll();
            ddlMP.DataSource = ds.Tables[0].DefaultView;
            ddlMP.DataTextField = "mat_nome";
            ddlMP.DataValueField = "mat_codigo";
            ddlMP.DataBind();
        }

        private void CarregaEstoque()
        {
            EstoqueMPBD bd = new EstoqueMPBD();
            DataSet ds = bd.GetEstoque();
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();
        }
        
        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            EstoqueMP estoqueMP = new EstoqueMP();
            estoqueMP.MateriaPrima = Convert.ToInt32(ddlMP.Text);
            estoqueMP.Quantidade = Convert.ToInt32(txtQuantidade.Text);
            estoqueMP.Data = DateTime.Now;
            estoqueMP.Entrada = 0;

            EstoqueMPBD bd = new EstoqueMPBD();
            if (bd.Insert(estoqueMP))
            {
                Response.Write("<script>alert('Matéria-Prima cadastrada com sucesso!')</script>");                
            }
            else
            {
                lblMensagem.Text = "Erro ao salvar.";
            }
        }
    }
}
