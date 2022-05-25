package Modelo;
public class Producto {
    private int IdPro;
    private int IdFam;
    private String NomFam;
    private String NomPro;
    private double Costo;
    private double Precio;
    private String Imagen;

    public Producto() {
    }

    
    public int getIdPro() {
        return IdPro;
    }

    public void setIdPro(int IdPro) {
        this.IdPro = IdPro;
    }

    public int getIdFam() {
        return IdFam;
    }

    public void setIdFam(int IdFam) {
        this.IdFam = IdFam;
    }

    public String getNomFam() {
        return NomFam;
    }

    public void setNomFam(String NomFam) {
        this.NomFam = NomFam;
    }

    public String getNomPro() {
        return NomPro;
    }

    public void setNomPro(String NomPro) {
        this.NomPro = NomPro;
    }

    public double getCosto() {
        return Costo;
    }

    public void setCosto(double Costo) {
        this.Costo = Costo;
    }

    public double getPrecio() {
        return Precio;
    }

    public void setPrecio(double Precio) {
        this.Precio = Precio;
    }

    public String getImagen() {
        return Imagen;
    }

    public void setImagen(String Imagen) {
        this.Imagen = Imagen;
    }
    
    
            
}
