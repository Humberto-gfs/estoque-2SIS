package br.fiap.modelo.dao;

import br.fiap.modelo.conexao.ConnectionFactory;
import br.fiap.modelo.bean.Perfil;
import java.util.LinkedList;
import java.util.List;

public class PerfilDAO extends DAO {
    public PerfilDAO() {
        this.connection = ConnectionFactory.getInstance().getConnection();
    }

    public List<Perfil> listarPerfil() {
        List<Perfil> lista = new LinkedList<>();
        String sql = "select * from sequencia_perfil";
        
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                int id = rs.getInt("id_perfil");
                String nome = rs.getString("nome");

                Perfil perfil = new Perfil();
                perfil.setIdPerfil(id);
                perfil.setPerfil(nome);
                
                lista.add(perfil);
            }
        } catch (Exception e) {
            System.out.println("Deu erro e não sabemos o que aconteceu\n" + e);
        }
        
        return lista;
    }
}
