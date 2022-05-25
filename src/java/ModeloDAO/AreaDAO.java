
package ModeloDAO;

import Configuracion.Conexion;
import Interfaces.IArea;
import Modelo.Area;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AreaDAO implements IArea {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Area a = new Area();
   
    
    @Override
    public List listar() {
         ArrayList<Area> list = new ArrayList<>();
         String Sql="select * from area";
         try{
             con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Area ar = new Area();
                ar.setIdArea(rs.getInt("IdArea"));
                ar.setNomArea(rs.getString("NomArea"));
                list.add(ar);
            }
         }
         catch (Exception e){
             
         }
         return list;
    }

    @Override
    public Area list(int IdArea) {
       
         String Sql="select * from area where IdArea="+IdArea;
         try{
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                a.setIdArea(rs.getInt("IdArea"));
                a.setNomArea(rs.getString("NomArea"));
            }
         }
         catch (Exception e){
             
         }
         return a;
    }

    @Override
    public boolean agregar(Area ar) {
        String Sql="Insert into area (NomArea) values ('"+ ar.getNomArea() +"')";
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
    public boolean editar(Area ar) {
        String Sql="update area set NomArea ='"+ ar.getNomArea() +"' where idArea="+ar.getIdArea();
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
    public boolean eliminar(int IdArea) {
        String Sql="delete from area where idarea="+IdArea;
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
