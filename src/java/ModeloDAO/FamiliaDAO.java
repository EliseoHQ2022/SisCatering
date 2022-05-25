package ModeloDAO;

import Configuracion.Conexion;
import Interfaces.IFamilia;
import Modelo.Familia;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class FamiliaDAO implements IFamilia {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Familia f = new Familia();
    @Override
    public List listar() {
         ArrayList<Familia> list = new ArrayList<>();
         String Sql="select * from familia";
         try{
             con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Familia fa = new Familia();
                fa.setIdFam(rs.getInt("IdFam"));
                fa.setNomFam(rs.getString("NomFam"));
                list.add(fa);
            }
         }
         catch (Exception e){
             
         }
         return list;
    }

    @Override
    public Familia list(int IdFam) {
        String Sql="select * from familia where IdFam="+IdFam;
         try{
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                f.setIdFam(rs.getInt("IdFam"));
                f.setNomFam(rs.getString("NomFam"));
            }
         }
         catch (Exception e){
             
         }
         return f;
    }

    @Override
    public boolean agregar(Familia fa) {
        String Sql="Insert into familia (NomFam) values ('"+ fa.getNomFam() +"')";
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
    public boolean editar(Familia fa) {
        String Sql="update familia set NomFam ='"+ fa.getNomFam() +"' where idFam="+fa.getIdFam();
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
    public boolean eliminar(int IdFam) {
        String Sql="delete from familia where idFam="+IdFam;
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
