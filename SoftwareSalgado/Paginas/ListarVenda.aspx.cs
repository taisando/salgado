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
    public partial class ListarVenda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Carrega();
        }
        private void Carrega()
        {
            VendaBD bd = new VendaBD();
            DataSet ds = bd.SelectAll();
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();
        }
        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        // int codigo = 0;
        // switch (e.CommandName)
        //{
        //    case "Alterar":
        //      codigo = Convert.ToInt32(e.CommandArgument);
        //      Session["ID"] = codigo;
        //      Response.Redirect("AlterarCliente.aspx");
        //      break;
        //  }
    }
}