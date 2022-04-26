
package ModeloDAO;

import Configuracion.Conexion;
import Interfaces.IComensal;
import Modelo.Comensal;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ComensalDAO implements IComensal {
 Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Comensal c=new Comensal();
    
    @Override
    public List listar() {
         ArrayList<Comensal>list=new ArrayList<>();
        String Sql="SELECT c.IdCom,c.DNI,c.NumFot,c.Nombre,c.FechaN,ca.NomCar,"
                + "a.NomArea, case when c.Sexo='M' then 'MASCULINO' ELSE 'FEMENINO' END Sexo "
                + "FROM comensal c  INNER JOIN cargo ca ON c.idcar=ca.idcar "
                + "INNER JOIN area a ON c.idarea=a.idarea ORDER BY c.Nombre";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(Sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Comensal com=new Comensal();
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
        }
        catch (Exception e){
            
        }
        return list;
    }

    @Override
    public Comensal list(int IdCom) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean agregar(Comensal com) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean editar(Comensal com) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int IdCom) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
