using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SoftwareSalgado.App_Code.Persistencia;
using System.Data;
using System.Web.UI.DataVisualization.Charting;

namespace SoftwareSalgado.Paginas
{
    public partial class Relatorio : System.Web.UI.Page
    {
        private void Carrega()
        {
            VendaBD bd = new VendaBD();
            DataSet ds = bd.GetClientesMaisCompram();
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Carrega();
        }              
    }
}