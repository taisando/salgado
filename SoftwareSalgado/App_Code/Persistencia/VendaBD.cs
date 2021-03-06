﻿using FATEC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SoftwareSalgado.App_Code.Classes;
using System.Data;


namespace SoftwareSalgado.App_Code.Persistencia
{
    public class VendaBD
    {
        public int Insert(Pedido pedido)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tbl_venda( ven_data, ven_valortotal,pes_codigo) VALUES (?data, ?valortotal, ?cliente)";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?data", pedido.Data));
            objCommand.Parameters.Add(Mapped.Parameter("?valortotal", pedido.ValorTotal));
            objCommand.Parameters.Add(Mapped.Parameter("?cliente", pedido.Cliente));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            return GetID(pedido.Cliente, pedido.Data);
        }

        public bool UpdateTotal(int venda, decimal subtotal)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "UPDATE tbl_venda SET ven_valortotal=ven_valortotal + ?subtotal WHERE ven_codigo = ?codigo";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?subtotal", subtotal));
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", venda));


            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            return true;
        }

        public int GetID(int cliente, DateTime data)
        {
            int codigo = 0;

            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_venda WHERE pes_codigo= ?cliente AND ven_data = ?data ORDER BY ven_codigo DESC;", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?cliente", cliente));
            objCommand.Parameters.Add(Mapped.Parameter("?data", data));

            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {

                codigo = Convert.ToInt32(objDataReader["ven_codigo"]);
            }

            objDataReader.Close();
            objConexao.Close();

            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();

            return codigo;
        }

        public DataSet SelectAll()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_venda ORDER BY ven_data DESC", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);

            objDataAdapter.Fill(ds);
            objConexao.Close();

            objCommand.Dispose();
            objConexao.Dispose();

            return ds;
        }
        public DataSet GetClientesMaisCompram()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT pes_nome, SUM(ven_valortotal) FROM tbl_venda INNER JOIN tbl_pessoa ON tbl_pessoa.pes_codigo = tbl_venda.pes_codigo GROUP BY pes_nome ORDER BY SUM(ven_valortotal) DESC", objConexao);

            objDataAdapter = Mapped.Adapter(objCommand);

            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            return ds;
        }
        public DataSet GetVendasMes()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT pes_nome, ven_valortotal, ven_data FROM tbl_venda INNER JOIN tbl_pessoa ON tbl_pessoa.pes_codigo = tbl_venda.pes_codigo where month(ven_data)=MONTH(NOW()) AND year(ven_data)=year(now()) order by pes_nome; ", objConexao);

            objDataAdapter = Mapped.Adapter(objCommand);

            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            return ds;
        }
        public DataSet GetVendasAno()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT pes_nome, ven_valortotal, ven_data FROM tbl_venda INNER JOIN tbl_pessoa ON tbl_pessoa.pes_codigo = tbl_venda.pes_codigo where year (ven_data)= year(now()) ORDER BY ven_data DESC;", objConexao);

            objDataAdapter = Mapped.Adapter(objCommand);

            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            return ds;
        }
        public DataSet GetVendasProduto()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT pro_nome, SUM(vit_quantidade) FROM tbl_produto INNER JOIN tbl_vendaitem ON tbl_produto.pro_codigo = tbl_vendaitem.pro_codigo GROUP BY pro_nome ORDER BY SUM(vit_quantidade) DESC;", objConexao);

            objDataAdapter = Mapped.Adapter(objCommand);

            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            return ds;
        }
        public DataSet GetVendasSemana()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT pes_nome, ven_valortotal, ven_data FROM tbl_venda INNER JOIN tbl_pessoa ON tbl_pessoa.pes_codigo = tbl_venda.pes_codigo WHERE ven_data BETWEEN DATE_ADD(NOW(), INTERVAL -6 DAY) AND NOW() order by pes_nome; ", objConexao);

            objDataAdapter = Mapped.Adapter(objCommand);

            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            return ds;
        }
        public DataSet GetVendasMesTotal()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT SUM(ven_valortotal) AS valor from tbl_venda where month(ven_data)=MONTH(NOW()) AND year(ven_data)=year(now());", objConexao);

            objDataAdapter = Mapped.Adapter(objCommand);

            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            return ds;
        }
        public DataSet GetUltimaVenda()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT ven_valortotal AS valor, pes_nome as cliente, vit_quantidade, pro_nome AS produto from tbl_venda INNER JOIN tbl_vendaitem USING (ven_codigo) INNER JOIN tbl_pessoa using (pes_codigo) INNER JOIN tbl_produto using (pro_codigo) group by ven_codigo; ", objConexao);

            objDataAdapter = Mapped.Adapter(objCommand);

            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            return ds;
        }
    }
}