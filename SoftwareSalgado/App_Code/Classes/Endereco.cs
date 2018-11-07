using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SoftwareSalgado.App_Code.Persistencia;

namespace SoftwareSalgado.App_Code.Classes
{
    public class Endereco
    {
        //propriedades
        public int Codigo { get; set; }
        public string Logradouro { get; set; }
        public int Numero { get; set; }
        public string Complemento { get; set; }       
        public string Cidade { get; set; }      


        //construtor
        public Endereco()
        {
            //
            // TODO: Construtor Lógico
            //
        }
    }
}