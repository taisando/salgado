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
                ddlCliente.DataTextField = "pes_nome";
                ddlCliente.DataValueField = "pes_codigo";
                ddlCliente.DataBind();
                //vai fazer carregar a pagina com dados do banco
            }
        }
        protected void btnNovaVenda_Click(object sender, EventArgs e)
        {
            VendaBD bd = new VendaBD();
            Pedido pedido = new Pedido();
            pedido.Cliente = Convert.ToInt32(ddlCliente.SelectedItem.Value);
            pedido.Data = DateTime.Now;
            pedido.ValorTotal = 0;

            int vendaID = bd.Insert(pedido);
            Session["VendaID"] = vendaID;
            Response.Redirect("SelecionarCategoria.aspx");
        }

    }
}