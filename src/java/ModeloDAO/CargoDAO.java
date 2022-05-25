
package ModeloDAO;

import Configuracion.Conexion;
import Interfaces.ICargo;
import Modelo.Cargo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CargoDAO implements ICargo{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Cargo c = new Cargo();
    @Override
    public List listar() {
        ArrayList<Cargo> list = new ArrayList<>();
         String Sql="select * from cargo";
         try{
             con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Cargo ca = new Cargo();
                ca.setIdCar(rs.getInt("IdCar"));
                ca.setNomCar(rs.getString("NomCar"));
                list.add(ca);
            }
         }
         catch (Exception e){
             
         }
         return list;
    }

    @Override
    public Cargo list(int IdCar) {
        String Sql="select * from cargo where IdCar="+IdCar;
         try{
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                c.setIdCar(rs.getInt("IdCar"));
                c.setNomCar(rs.getString("NomCar"));
            }
         }
         catch (Exception e){
             
         }
         return c;
    }

    @Override
    public boolean agregar(Cargo ca) {
         String Sql="Insert into cargo (NomCar) values ('"+ ca.getNomCar() +"')";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(Sql);
            ps.executeUpdate();
            
        }
        catch(Exception e){
            
        }
        return false; 
    }

    @Override
    public boolean editar(Cargo ca) {
        String Sql="update cargo set NomCar ='"+ ca.getNomCar() +"' where idCar="+ca.getIdCar();
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(Sql);
            ps.executeUpdate();
            
        }
        catch(Exception e){
            
        }
        return false;
    }

    @Override
    public boolean eliminar(int IdCar) {
        String Sql="delete from cargo where idCar="+IdCar;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(Sql);
            ps.executeUpdate();
        }
        catch(Exception e){
            
        }
        return false;
    }
    
}
