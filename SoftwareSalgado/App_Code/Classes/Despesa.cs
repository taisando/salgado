using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SoftwareSalgado.App_Code.Classes
{
    public class Despesa
    {
        public int Codigo { get; set; }
        public DateTime Data { get; set; }
        public decimal Valor { get; set; }
        public int Categoria { get; set; }
    }
}