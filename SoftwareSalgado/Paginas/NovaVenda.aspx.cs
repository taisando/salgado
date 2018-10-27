using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoftwareSalgado.Paginas
{
    public partial class NovaVenda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Pedido pedido = new Pedido();
            pedido.Nome = txtNome.Text;
           

            ClienteBD bd = new ClienteBD();
            bd.Insert(cliente);
            Response.Write("Cliente cadastrado com sucesso!");
        }
    }
}