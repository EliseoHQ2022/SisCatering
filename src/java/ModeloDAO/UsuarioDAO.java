package ModeloDAO;

import Configuracion.Conexion;
import Interfaces.IUsuario;
import Modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioDAO implements IUsuario {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Usuario u = new Usuario();
    int r=0;
    @Override
    public int Validar(Usuario u) {
        String Sql = "select * from usuario where nomuser=? and pasuser=?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            ps.setString(1,u.getNomUser());
           ps.setString(2,u.getPasUser());
           
           rs = ps.executeQuery();
           while(rs.next()){
               r=1;
               u.setNomUser(rs.getString("NomUser"));
               u.setPasUser(rs.getString("PasUser"));
           }
            
            if (r==1){
               
                return 1;
                
                
            }
            else {
                return 0;
            }
        } catch (Exception e) {
            return 1;
        }
        
    }

}
