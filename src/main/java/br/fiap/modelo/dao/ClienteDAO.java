package br.fiap.modelo.dao;

import java.sql.SQLException;

import br.fiap.modelo.bean.Cliente;
import br.fiap.modelo.conexao.ConnectionFactory;

public class ClienteDAO extends DAO{

	public ClienteDAO() {
		this.connection = ConnectionFactory.getInstance().getConnection();
		
		
	}
	
	public void cadastrar(Cliente cliente) {
		int id=0;
		
		try {
			connection.setAutoCommit(false);
			
			sql = "select max(id_cliente) from java_cliente";
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				id = rs.getInt(1);
			}
			
			sql = "insert into java_cliente values(?,?,?)";
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id+1);
			ps.setString(2, cliente.getNome());
			ps.setString(3, cliente.getCpf());
			ps.execute();
			
			
			connection.commit();
		} catch (SQLException e) {
			try {
				connection.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		
	}
}
