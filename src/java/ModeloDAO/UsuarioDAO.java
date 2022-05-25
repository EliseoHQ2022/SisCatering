package ModeloDAO;

import Configuracion.Conexion;
import Interfaces.IUsuario;
import Modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class UsuarioDAO implements IUsuario {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Usuario u = new Usuario();
    int r = 0;

    @Override
    public Usuario Validar(Usuario u) {
        String Sql = "select * from usuario where nomuser=? and pasuser=?";
        try {
            u.setIdUser(0);
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            ps.setString(1, u.getNomUser());
            ps.setString(2, u.getPasUser());
            rs = ps.executeQuery();
            while (rs.next()) {
                r = 1;
                u.setIdUser(rs.getInt("IdUser"));
                u.setNomUser(rs.getString("NomUser"));
                u.setPasUser(rs.getString("PasUser"));
                u.setTipoUser(rs.getString("TipoUser"));
            }
        } catch (Exception e) {
           
        }
return u;
    }

    @Override
    public List listar() {
        ArrayList<Usuario> list = new ArrayList<>();
        String Sql = "select iduser,nombre,nomuser,pasuser,"
                + " case when TipoUser='U' then 'CAJERO' ELSE 'ADMINISTRADOR' END TipoUser from usuario";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Usuario us = new Usuario();
                us.setIdUser(rs.getInt("IdUser"));
                us.setNombre(rs.getString("Nombre"));
                us.setNomUser(rs.getString("NomUser"));
                us.setPasUser(rs.getString("PasUser"));
                us.setTipoUser(rs.getString("TipoUser"));
                list.add(us);
            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public Usuario list(int IdUser) {
        String Sql = "select * from usuario where IdUser=" + IdUser;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                u.setIdUser(rs.getInt("IdUser"));
                u.setNombre(rs.getString("Nombre"));
                u.setNomUser(rs.getString("NomUser"));
                u.setPasUser(rs.getString("PasUser"));
                u.setTipoUser(rs.getString("TipoUser"));
            }
        } catch (Exception e) {

        }
        return u;
    }

    @Override
    public boolean agregar(Usuario us) {
        String Sql = "Insert into usuario (Nombre,NomUser,PasUser,TipoUser)"
                + " values (?,?,?,?)";

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            ps.setString(1, us.getNombre());
            ps.setString(2, us.getNomUser());
            ps.setString(3, us.getPasUser());
            ps.setString(4, us.getTipoUser());
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println("Error al insertar: " + e);
        }
        return false;
    }

    @Override
    public boolean editar(Usuario us) {
        String Sql = "update usuario set Nombre=?,NomUser=?,TipoUser=?"
                + " where iduser=?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            ps.setString(1, us.getNombre());
            ps.setString(2, us.getNomUser());
            ps.setString(3, us.getTipoUser());
            ps.setInt(4, us.getIdUser());
            ps.executeUpdate();
            if (us.getPasUser().length() > 0) {
                Sql = "update usuario set PasUser=? where iduser=?";
                con = cn.getConnection();
                ps = con.prepareStatement(Sql);
                ps.setString(1, us.getPasUser());
                ps.setInt(2, us.getIdUser());
                ps.executeUpdate();
            }
        } catch (Exception e) {
            System.out.println("Error al actualizar: " + e);
        }
        return false;
    }

    @Override
    public boolean eliminar(int IdUser) {
        String Sql = "delete from usuario where idUser=?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            ps.setInt(1, IdUser);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error al eliminar: " + e);
        }
        return false;
    }

}
