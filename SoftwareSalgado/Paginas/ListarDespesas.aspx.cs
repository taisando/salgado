using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using SoftwareSalgado.App_Code.Persistencia;

namespace SoftwareSalgado.Paginas
{
    public partial class ListarDespesas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Carrega();

            string[] meses = new string[] { "Janeiro", "Feveiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro" };
            int mesatual = DateTime.Now.Month;
            lblMes.Text = meses[mesatual - 1];
        }

        private void Carrega()
        {
            DespesaBD bd = new DespesaBD();
            DataSet ds = bd.SelectDespesa();
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();
        }
    }
}