
package Modelo;

public class Venta {
    private int IdCom;
    private String Numero;
    private int IdUser;
    private String Fecha;
    private String FechaR;
    private double Importe;
    private String Estado;
    private int IdPro;
    private double Precio;
    private int Cantidad;
    private String DNI;
    private String NombreC;
    private String Fotocheck;
    private String Area;
    private String Cargo;

    public String getFotocheck() {
        return Fotocheck;
    }

    public void setFotocheck(String Fotocheck) {
        this.Fotocheck = Fotocheck;
    }

    public String getArea() {
        return Area;
    }

    public void setArea(String Area) {
        this.Area = Area;
    }

    public String getCargo() {
        return Cargo;
    }

    public void setCargo(String Cargo) {
        this.Cargo = Cargo;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public String getNombreC() {
        return NombreC;
    }

    public void setNombreC(String NombreC) {
        this.NombreC = NombreC;
    }

    public String getNombreP() {
        return NombreP;
    }

    public void setNombreP(String NombreP) {
        this.NombreP = NombreP;
    }
    private String NombreP;

    public String getNumero() {
        return Numero;
    }

    public void setNumero(String Numero) {
        this.Numero = Numero;
    }
   

    public int getIdCom() {
        return IdCom;
    }

    public void setIdCom(int IdCom) {
        this.IdCom = IdCom;
    }

    public int getIdUser() {
        return IdUser;
    }

    public void setIdUser(int IdUser) {
        this.IdUser = IdUser;
    }

    public String getFecha() {
        return Fecha;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }

    public String getFechaR() {
        return FechaR;
    }

    public void setFechaR(String FechaR) {
        this.FechaR = FechaR;
    }

    public double getImporte() {
        return Importe;
    }

    public void setImporte(double Importe) {
        this.Importe = Importe;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

    public int getIdPro() {
        return IdPro;
    }

    public void setIdPro(int IdPro) {
        this.IdPro = IdPro;
    }

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }

    public double getPrecio() {
        return Precio;
    }

    public void setPrecio(double Precio) {
        this.Precio = Precio;
    }
    
    
}
