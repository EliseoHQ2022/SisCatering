package ModeloDAO;

import Configuracion.Conexion;
import Interfaces.IProducto;
import Modelo.Producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductoDAO implements IProducto {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Producto p = new Producto();

    @Override
    public List listar() {
        ArrayList<Producto> list = new ArrayList<>();
        String Sql = "select p.idpro,p.idfam,fa.nomfam,p.nompro,p.costo,p.precio,"
                + "case when p.foto='' then 'sinimagen.jpeg' else p.foto end Foto"
                + " from producto p inner join familia fa on p.idfam=fa.idfam";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto pr = new Producto();
                pr.setIdPro(rs.getInt("IdPro"));
                pr.setNomPro(rs.getString("NomPro"));
                pr.setNomFam(rs.getString("NomFam"));
                pr.setCosto(rs.getDouble("Costo"));
                pr.setPrecio(rs.getDouble("Precio"));
                pr.setImagen(rs.getString("Foto"));
                list.add(pr);
            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public Producto list(int IdPro) {
        String Sql = "select * from producto where IdPro=" + IdPro;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                p.setIdPro(rs.getInt("IdPro"));
                p.setIdFam(rs.getInt("IdFam"));
                p.setNomPro(rs.getString("NomPro"));
                p.setCosto(rs.getDouble("Costo"));
                p.setPrecio(rs.getDouble("Precio"));
            }
        } catch (Exception e) {

        }
        return p;
    }

    @Override
    public boolean agregar(Producto pr) {
        String Sql = "Insert into producto (IdFam,NomPro,Costo,Precio,Foto) values (?,?,?,?,?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            ps.setInt(1, pr.getIdFam());
            ps.setString(2, pr.getNomPro());
            ps.setDouble(3, pr.getCosto());
            ps.setDouble(4, pr.getPrecio());
            ps.setString(5, pr.getImagen());
            ps.executeUpdate();

        } catch (Exception e) {

        }
        return false;
    }

    @Override
    public boolean editar(Producto pr) {
        String Sql = "update producto set IdFam=?,NomPro=?,Costo=?,Precio=? where idpro=?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);

            ps.setInt(1, pr.getIdFam());
            ps.setString(2, pr.getNomPro());
            ps.setDouble(3, pr.getCosto());
            ps.setDouble(4, pr.getPrecio());
            ps.setInt(5, pr.getIdPro());

            ps.executeUpdate();

            if (pr.getImagen().length() > 0) {
                Sql = "update producto set Foto=? where idpro=?";
                con = cn.getConnection();
                ps = con.prepareStatement(Sql);
                ps.setString(1, pr.getImagen());
                ps.setInt(2, pr.getIdPro());
                ps.executeUpdate();
            }

        } catch (Exception e) {

        }
        return false;
    }

    @Override
    public boolean eliminar(int IdPro) {
        String Sql = "delete from producto where idPro=" + IdPro;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            ps.executeUpdate();
        } catch (Exception e) {

        }
        return false;
    }

}
