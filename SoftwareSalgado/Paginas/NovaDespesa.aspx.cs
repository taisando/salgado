using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SoftwareSalgado.App_Code.Persistencia;
using System.Data;
using SoftwareSalgado.App_Code.Classes;

namespace SoftwareSalgado.Paginas
{
    public partial class NovaDespesa : System.Web.UI.Page
    {
      protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DespesaBD bd = new DespesaBD();
                DataSet ds = bd.SelectAll();
                ddlCategoria.DataSource = ds.Tables[0].DefaultView;
                ddlCategoria.DataTextField = "sud_nome";
                ddlCategoria.DataValueField = "sud_codigo";
                ddlCategoria.DataBind();
                //vai fazer carregar a pagina com dados do banco
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Despesa despesa = new Despesa();
            despesa.Valor = Convert.ToDecimal (txtValor.Text);
            despesa.Categoria = Convert.ToInt32(ddlCategoria.SelectedItem.Value);
            despesa.Data = DateTime.Now;

            DespesaBD bd = new DespesaBD();
            if (bd.Insert(despesa))
            {
                Response.Write("<script>alert('Despesa cadastrada com sucesso!')</script>");
                txtValor.Text = "";
            }
            else
            {
                lblMensagem.Text = "Erro ao salvar.";
            }
        }
    }
}