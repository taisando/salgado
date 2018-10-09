using FATEC;
using System;
using System.Web;
using SoftwareSalgado.App_Code.Classes;
using System.Data; //para uso de DataSet

namespace SoftwareSalgado.App_Code.Persistencia
{
    public class ClienteBD
    {
        //métodos
        //insert
        public bool Insert(Cliente cliente)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tbl_cliente(cli_codigo,cli_nome, cli_endereco, cli_telefone, cli_email, cli_cpf, cli_entrega) " +
                "VALUES (?codigo,?nome, ?endereco, ?telefone, ?email, ?cpf, ?entrega)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", cliente.Codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?nome", cliente.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?endereco", cliente.Endereco));
            objCommand.Parameters.Add(Mapped.Parameter("?telefone", cliente.Telefone));
            objCommand.Parameters.Add(Mapped.Parameter("?email", cliente.Email));
            objCommand.Parameters.Add(Mapped.Parameter("?cpf", cliente.CPF));
            objCommand.Parameters.Add(Mapped.Parameter("?entrega", cliente.Entrega));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }
        //selectall
        public DataSet SelectAll()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_cliente", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }
        //select
        //update
        //delete
        //construtor
        public ClienteBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }


    }
}