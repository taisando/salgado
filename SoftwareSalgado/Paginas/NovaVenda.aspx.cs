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

        protected void Coxinha_Click(object sender, EventArgs e)
        {
            int codigo = Convert.ToInt32(Session["01"]);
           
                Response.Redirect("../Paginas/Quantidade.aspx");
            
        }
    }
}