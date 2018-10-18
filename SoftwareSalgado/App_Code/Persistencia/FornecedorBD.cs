using FATEC;
using System;
using System.Web;
using System.Data;
using SoftwareSalgado.App_Code.Classes;


namespace SoftwareSalgado.App_Code.Persistencia
{
    public class FornecedorBD
    {
        public bool Insert(Fornecedor fornecedor)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tbl_fornecedor(for_codigo, for_nome, for_email, for_telefone, for_cnpj, for_endereco, for_mercadoria) VALUES (?codigo, ?nome, ?email, ?telefone, ?cnpj, ?endereco, ?mercadoria)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", fornecedor.Codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?nome", fornecedor.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?email", fornecedor.Email));
            objCommand.Parameters.Add(Mapped.Parameter("?telefone", fornecedor.Telefone));
            objCommand.Parameters.Add(Mapped.Parameter("?cnpj", fornecedor.CNPJ));
            objCommand.Parameters.Add(Mapped.Parameter("?endereco", fornecedor.Endereco));
            objCommand.Parameters.Add(Mapped.Parameter("?mercadoria", fornecedor.Mercadoria));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }
    }
}