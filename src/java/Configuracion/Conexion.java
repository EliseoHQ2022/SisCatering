package Configuracion;

import java.sql.*;

public class Conexion {
    Connection con;
    
    public Conexion(){
        //String Servidor="jdbc:mysql://node8612-env-3610853.sp.skdrive.net:3306/";
        String Servidor="jdbc:mysql://localhost/";
        String Usuario="root";
        //String Password="nRFKOZalO2";
        String Password="";
        String BaseDatos="dbcatering";
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
