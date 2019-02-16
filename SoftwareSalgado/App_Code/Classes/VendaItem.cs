using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SoftwareSalgado.App_Code.Classes
{
    public class VendaItem
    {
        public int Codigo { get; set; }
        public int Venda { get; set; }
        public int Produto { get; set; }
        public int Quantidade { get; set; }
        public decimal Subtotal { get; set; }
        public decimal PrecoUnitario { get; set; }
    }
}