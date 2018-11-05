using System;
using System.Web;
using SoftwareSalgado.App_Code.Persistencia;

namespace SoftwareSalgado.App_Code.Classes
{
    public class Produto
    {
        public int Codigo { get; set; }
        public string Nome { get; set; }        
        public decimal Preco { get; set; }
        public int Categoria { get; set; }


        //construtor
        public Produto()
        {

        }


    }
}