package ModeloDAO;

import Configuracion.Conexion;
import Interfaces.IComensal;
import Modelo.Comensal;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Date;
import java.util.Set;

public class ComensalDAO implements IComensal {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Comensal c = new Comensal();

    @Override
    public List listar() {
        ArrayList<Comensal> list = new ArrayList<>();
        String Sql = "SELECT c.IdCom,c.DNI,c.NumFot,c.Nombre,c.FechaN,ca.NomCar,"
                + "a.NomArea, case when c.Sexo='M' then 'MASCULINO' ELSE 'FEMENINO' END Sexo "
                + "FROM comensal c  INNER JOIN cargo ca ON c.idcar=ca.idcar "
                + "INNER JOIN area a ON c.idarea=a.idarea ORDER BY c.Nombre";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Comensal com = new Comensal();
                com.setIdCom(rs.getInt("IdCom"));

                com.setDNI(rs.getString("DNI"));
                com.setFotocheck(rs.getString("NumFot"));
                com.setNombre(rs.getString("Nombre"));
                com.setFechaN(rs.getString("FechaN"));
                com.setCargo(rs.getString("NomCar"));
                com.setArea(rs.getString("NomArea"));

                com.setSexo(rs.getString("Sexo"));
                list.add(com);

            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public Comensal list(int IdCom) {
        String Sql = "select * from comensal where IdCom=" + IdCom;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                c.setIdCom(rs.getInt("IdCom"));
                c.setIdCar(rs.getInt("IdCar"));
                c.setIdArea(rs.getInt("IdArea"));
                c.setDNI(rs.getString("DNI"));
                c.setFotocheck(rs.getString("NumFot"));
                c.setNombre(rs.getString("Nombre"));
                c.setFechaN(rs.getString("FechaN"));
                c.setSexo(rs.getString("Sexo"));
            }
        } catch (Exception e) {
            System.out.println("Error:" + e);
        }
        return c;
    }

    @Override
    public boolean agregar(Comensal com) {
        String Sql = "Insert into comensal (IdCar,IdArea,DNI,NumFot,Nombre,FechaN,Sexo)"
                + " values (?,?,?,?,?,?,?)";
        Date FechaN = null;
        try {

            String _FechaN = com.getFechaN();
            if (_FechaN.length() > 0) {
                DateFormat FormatoF = new SimpleDateFormat("yyyy-MM-dd");
                DateFormat FormatoS = new SimpleDateFormat("yyyy-MM-dd");
                FechaN = FormatoF.parse(_FechaN);
                _FechaN = FormatoS.format(FechaN);
            }
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            ps.setInt(1, com.getIdCar());
            ps.setInt(2, com.getIdArea());
            ps.setString(3, com.getDNI());
            ps.setString(4, com.getFotocheck());
            ps.setString(5, com.getNombre());
            ps.setString(6, _FechaN);
            ps.setString(7, com.getSexo());
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println("Error al insertar: " + e);
        }
        return false;
    }

    @Override
    public boolean editar(Comensal com) {
        String Sql = "Update comensal set IdCar=?,IdArea=?,DNI=?,NumFot=?,Nombre=?,FechaN=?,Sexo=?"
                + " where idcom=?";
        Date FechaN = null;
        try {
            String _FechaN = com.getFechaN();
            if (_FechaN.length() > 0) {
                DateFormat FormatoF = new SimpleDateFormat("yyyy-MM-dd");
                DateFormat FormatoS = new SimpleDateFormat("yyyy-MM-dd");
                FechaN = FormatoF.parse(_FechaN);
                _FechaN = FormatoS.format(FechaN);
            }
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            ps.setInt(1, com.getIdCar());
            ps.setInt(2, com.getIdArea());
            ps.setString(3, com.getDNI());
            ps.setString(4, com.getFotocheck());
            ps.setString(5, com.getNombre());
            ps.setString(6, _FechaN);
            ps.setString(7, com.getSexo());
            ps.setInt(8, com.getIdCom());
            ps.executeUpdate();

        } catch (Exception e) {
 System.out.println("Error al actualizar: " + e);
        }
        return false;
    }

    @Override
    public boolean eliminar(int IdCom) {
        String Sql = "delete from comensal where idCom=" + IdCom;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            ps.executeUpdate();
        } catch (Exception e) {

        }
        return false;
    }

    @Override
    public Comensal Validar(String Fotocheck) {
        String Sql = "select * from comensal where (DNI=? or NumFot=?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            ps.setString(1, Fotocheck);
            ps.setString(2, Fotocheck);
            rs = ps.executeQuery();
            c.setIdCom(0);
            while (rs.next()) {
                c.setIdCom(rs.getInt("IdCom"));
                c.setIdCar(rs.getInt("IdCar"));
                c.setIdArea(rs.getInt("IdArea"));
                c.setDNI(rs.getString("DNI"));
                c.setFotocheck(rs.getString("NumFot"));
                c.setNombre(rs.getString("Nombre"));
                c.setFechaN(rs.getString("FechaN"));
                c.setSexo(rs.getString("Sexo"));
            }
        } catch (Exception e) {
            System.out.println("Error:" + e);
        }
        return c;
    }

}
