using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SoftwareSalgado.App_Code.Persistencia;

namespace SoftwareSalgado.App_Code.Classes
{
    public class Pessoa
    {
        public int Codigo { get; set; }
        public string Nome { get; set; }        
        public string Senha { get; set; }     
        public int Tipo { get; set; }
    }
}