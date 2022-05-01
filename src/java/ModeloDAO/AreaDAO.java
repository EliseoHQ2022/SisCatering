
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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean agregar(Area ar) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean editar(Area ar) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int IdArea) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
