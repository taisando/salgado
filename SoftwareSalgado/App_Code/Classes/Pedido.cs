using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SoftwareSalgado.App_Code.Classes
{
    public class Pedido
    {
        //propriedades
        public int Codigo { get; set; }
        public int Quantidade { get; set; }
        public DateTime Data { get; set; }
        public decimal ValorTotal { get; set; }
        public int NomeProduto { get; set; }

    }
}