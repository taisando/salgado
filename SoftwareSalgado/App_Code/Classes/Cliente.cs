using System;
using System.Web;
using SoftwareSalgado.App_Code.Persistencia;

namespace SoftwareSalgado.App_Code.Classes
{
    public class Cliente
    {
        //propriedades
        public int Codigo { get; set; }
        public string Nome { get; set; }
        public string Telefone { get; set; }        
        public string Email { get; set; }
        public string CPF { get; set; }        
        public int Tipo { get; set; }
        
        //construtor
        public Cliente()
        {
            //
            // TODO: Construtor Lógico
            //
        }


    }
}