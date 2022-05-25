package ModeloDAO;

import Configuracion.Conexion;
import Modelo.Resumen;
import Modelo.Venta;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class VentaDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Venta v = new Venta();

    public String GenerarNumero() {
        String Numero = "";
        int N;
        String Sql = "select max(numero) Numero from venta";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Numero = rs.getString("Numero");

            }
            if (Numero == null) {
                Numero = "";
            }
            if (Numero.length() > 0) {
                N = Integer.parseInt(Numero) + 1;

            } else {
                N = 1;
            }

            Numero = this.GenerarFormato("0000000", N);

        } catch (Exception e) {
            System.out.println("Error al generar numero" + e);
        }

        return Numero;
    }

    public String GenerarFormato(String Formato, int Contador) {
        DecimalFormat df = new DecimalFormat(Formato);
        return df.format(Contador);
    }

    public int agregar(Venta v) {
        int IdVenta = 0;
        String Sql = "Insert into venta (Numero,IdCom,IdUser,Fecha,FechaR,Importe,Estado)"
                + " values (?,?,?,current_date,NOW(),?,'R')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            ps.setString(1, v.getNumero());
            ps.setInt(2, v.getIdCom());
            ps.setInt(3, v.getIdUser());
            ps.setDouble(4, v.getImporte());
            ps.executeUpdate();
            Sql = "select LAST_INSERT_ID() Id";
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                IdVenta = Integer.parseInt(rs.getString("Id"));

            }
            if (IdVenta > 0) {
                Sql = "insert into detalleventa (IdVen,IdPro,Precio,Cantidad) values(?,?,?,?)";
                con = cn.getConnection();
                ps = con.prepareStatement(Sql);
                ps.setInt(1, IdVenta);
                ps.setInt(2, v.getIdPro());
                ps.setDouble(3, v.getPrecio());
                ps.setInt(4, v.getCantidad());
                ps.executeUpdate();
            }

        } catch (Exception e) {
            System.out.println("Error al insertar: " + e);
        }
        return IdVenta;
    }

    public boolean VerificarConsumo(int IdCom, int IdPro) {
        boolean Rpta = false;
        int _IdVenta = 0;
        String Sql = "SELECT v.IdVen from venta v INNER JOIN detalleventa d"
                + " ON v.IdVen=d.idven WHERE  fecha=CURRENT_DATE AND v.IdCom=? AND d.IdPro=?";

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            ps.setInt(1, IdCom);
            ps.setInt(2, IdPro);
            rs = ps.executeQuery();
            while (rs.next()) {
                _IdVenta = rs.getInt("IdVen");
            }
            if (_IdVenta > 0) {
                Rpta = true;
            }

        } catch (Exception e) {
            System.out.println("Error al validar: " + e);
        }
        return Rpta;
    }

    public List VentaComensal(String FechaD, String FechaH, int IdArea, int IdCar) {
        ArrayList<Venta> list = new ArrayList<>();
        String Sql = "select * from v_ventas ";
        String Filtro = "";
        if (FechaD.length() > 0) {
            Filtro = " where fecha>='" + FechaD + "'";
        }
        if (FechaH.length() > 0) {
            if (Filtro.length() > 0) {
                Filtro = Filtro + " and fecha<='" + FechaH + "'";
            } else {
                Filtro = " where fecha<='" + FechaH + "'";
            }
        }
        if (IdArea > 0) {
            if (Filtro.length() > 0) {
                Filtro = Filtro + " and idarea="+IdArea;
            } else {
                Filtro = " where idarea="+IdArea;
            }
        }
        if (IdCar > 0) {
            if (Filtro.length() > 0) {
                Filtro = Filtro + " and idcar="+IdCar;
            } else {
                Filtro = " where idCar="+IdCar;
            }
        }
        Sql=Sql + Filtro +" order by numero";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Venta v = new Venta();
                v.setNumero(rs.getString("Numero"));
                v.setFecha(rs.getString("Fecha"));
                v.setDNI(rs.getString("DNI"));
                v.setNombreC(rs.getString("Nombre"));
                v.setNombreP(rs.getString("nompro"));
                v.setPrecio(rs.getDouble("precio"));
                list.add(v);
            }
        } catch (Exception e) {

        }
        return list;
    }
    
    public List VentaServicio(String FechaD, String FechaH, int IdPro) {
        ArrayList<Venta> list = new ArrayList<>();
        String Sql = "SELECT fecha, nompro, SUM(cantidad) Cantidad, SUM(cantidad * precio) Importe FROM v_ventas ";
        String Filtro = "";
        if (FechaD.length() > 0) {
            Filtro = " where fecha>='" + FechaD + "'";
        }
        if (FechaH.length() > 0) {
            if (Filtro.length() > 0) {
                Filtro = Filtro + " and fecha<='" + FechaH + "'";
            } else {
                Filtro = " where fecha<='" + FechaH + "'";
            }
        }
        if (IdPro > 0) {
            if (Filtro.length() > 0) {
                Filtro = Filtro + " and idpro="+IdPro;
            } else {
                Filtro = " where idpro="+IdPro;
            }
        }
        Sql=Sql + Filtro +" GROUP BY fecha,nompro order by fecha";
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Venta v = new Venta();
                v.setFecha(rs.getString("Fecha"));
                v.setNombreP(rs.getString("nompro"));
                v.setCantidad(rs.getInt("Cantidad"));
                v.setImporte(rs.getDouble("Importe"));
                list.add(v);
            }
        } catch (Exception e) {
            System.out.println("Error consulta por servicio "+e);
        }
        return list;
    }
    
    public List VentaResumido(String FechaD, String FechaH, int IdArea, int IdCar) {
        ArrayList<Venta> list = new ArrayList<>();
        String Sql = "SELECT dni,numfot,nombre,nomarea,nomcar,SUM(cantidad) Cantidad,SUM(importe) Importe FROM v_ventas ";
        String Filtro = "";
        if (FechaD.length() > 0) {
            Filtro = " where fecha>='" + FechaD + "'";
        }
        if (FechaH.length() > 0) {
            if (Filtro.length() > 0) {
                Filtro = Filtro + " and fecha<='" + FechaH + "'";
            } else {
                Filtro = " where fecha<='" + FechaH + "'";
            }
        }
        if (IdArea > 0) {
            if (Filtro.length() > 0) {
                Filtro = Filtro + " and idarea="+IdArea;
            } else {
                Filtro = " where idarea="+IdArea;
            }
        }
        if (IdCar > 0) {
            if (Filtro.length() > 0) {
                Filtro = Filtro + " and idcar="+IdCar;
            } else {
                Filtro = " where idCar="+IdCar;
            }
        }
        Sql=Sql + Filtro +" GROUP BY dni,numfot,nombre,nomarea,nomcar order by nombre";
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Venta v = new Venta();
                v.setDNI(rs.getString("DNI"));
                v.setFotocheck(rs.getString("NumFot"));
                v.setNombreC(rs.getString("Nombre"));
                v.setArea(rs.getString("NomArea"));
                 v.setCargo(rs.getString("NomCar"));
                v.setCantidad(rs.getInt("Cantidad"));
                v.setImporte(rs.getDouble("Importe"));
                list.add(v);
            }
        } catch (Exception e) {
            System.out.println("Error consulta por servicio "+e);
        }
        return list;
    }
    
    public List Resumen() {
        ArrayList<Resumen> list = new ArrayList<>();
        String Sql = "SELECT (SELECT COUNT(idcom) FROM comensal) CantidadC,"
                + "(SELECT COUNT(idven) FROM venta WHERE fecha=CURRENT_DATE) CAtentido,"
                + " (SELECT SUM(importe) FROM venta WHERE fecha=CURRENT_DATE) VentaDia,"
                + " (SELECT SUM(Importe) FROM venta WHERE YEAR(fecha)=YEAR(CURRENT_DATE)"
                + " AND MONTH(fecha)=MONTH(CURRENT_DATE)) VentaMes ";   
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Resumen r = new Resumen();
                r.setCantidadC(rs.getInt("CantidadC"));
                r.setCAtendidodia(rs.getInt("CAtentido"));
                r.setVentadia(rs.getDouble("VentaDia"));
                r.setVentames(rs.getDouble("VentaMes"));
                list.add(r);
            }
        } catch (Exception e) {
            System.out.println("Error consulta resumido "+e);
        }
        return list;
    }
}
