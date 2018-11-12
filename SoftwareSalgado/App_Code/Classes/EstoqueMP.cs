using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SoftwareSalgado.App_Code.Classes
{
    public class EstoqueMP
    {
        public int Codigo { get; set; }
        public DateTime Data { get; set; }
        public int Quantidade { get; set; }
        public int MateriaPrima { get; set; }
    }
}