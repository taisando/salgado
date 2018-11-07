using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SoftwareSalgado.App_Code.Persistencia;

namespace SoftwareSalgado.App_Code.Classes
{
    public class Pedido
    {
        public int Codigo { get; set; }
        public int Cliente { get; set; }
        public DateTime Data { get; set; }
        public decimal ValorTotal { get; set; }
    }
}