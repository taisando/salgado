using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SoftwareSalgado.App_Code.Persistencia;

namespace SoftwareSalgado.App_Code.Classes

{
    public class Usuario
    {
        public int Codigo { get; set; }
        public string NomeUsuario { get; set; }
        public string Senha { get; set; }

        public Usuario()
        {

        }
    }

}