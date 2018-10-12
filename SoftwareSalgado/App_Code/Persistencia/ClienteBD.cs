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
        /*
        public DataSet SelectByNome(String nome)
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_cliente where cli_nome like %?nome%", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?nome", nome));
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }*/

        //select
        public Cliente Select(int id)
        {
            Cliente obj = null;

            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_cliente WHERE cli_codigo = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));

            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Cliente();
                obj.Codigo = Convert.ToInt32(objDataReader["cli_codigo"]);
                obj.Nome = Convert.ToString(objDataReader["cli_nome"]);
                obj.Endereco = Convert.ToString(objDataReader["cli_endereco"]);
                obj.Telefone = Convert.ToString(objDataReader["cli_telefone"]);
                obj.Email = Convert.ToString(objDataReader["cli_email"]);
                obj.CPF = Convert.ToString(objDataReader["cli_cpf"]);
                obj.Entrega = Convert.ToString(objDataReader["cli_entrega"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }

        //update
        public bool Update(Cliente cliente)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "UPDATE tbl_cliente SET cli_nome=?nome, cli_endereco=?endereco, cli_telefone=?telefone, cli_email=?email, cli_cpf=?cpf, cli_entrega=?entrega WHERE cli_codigo =?codigo";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?nome", cliente.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?endereco", cliente.Endereco));
            objCommand.Parameters.Add(Mapped.Parameter("?telefone", cliente.Telefone));
            objCommand.Parameters.Add(Mapped.Parameter("?email", cliente.Email));
            objCommand.Parameters.Add(Mapped.Parameter("?cpf", cliente.CPF));
            objCommand.Parameters.Add(Mapped.Parameter("?entrega", cliente.Entrega));
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", cliente.Codigo));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }

    }
    
    //delete
    //construtor
    


}
