using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using SoftwareSalgado.App_Code.Classes;
using SoftwareSalgado.App_Code.Persistencia;

namespace SoftwareSalgado.Paginas
{
    public partial class NovaVenda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ClienteBD bd = new ClienteBD();
                DataSet ds = bd.SelectAll();
                ddlCliente.DataSource = ds.Tables[0].DefaultView;
                ddlCliente.DataTextField = "cli_nome";
                ddlCliente.DataValueField = "cli_codigo";
                ddlCliente.DataBind();
            }
        }

        protected void btnNovaVenda_Click(object sender, EventArgs e)
        {
        }
    }
}