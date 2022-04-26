package Configuracion;

import java.sql.*;

public class Conexion {
    Connection con;
    
    public Conexion(){
        String Servidor="jdbc:mysql://localhost/";
        String Usuario="root";
        String Password="";
        String BaseDatos="DBCatering";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(Servidor+BaseDatos,Usuario,Password);
        } catch (Exception e){
            System.err.println("Error"+e);
        }
        
    }
    
    public Connection getConnection(){
            return con;
        }
}
