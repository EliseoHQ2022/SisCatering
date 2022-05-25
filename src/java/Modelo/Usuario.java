
package Modelo;

public class Usuario {
    private int IdUser;
    private String Nombre;
    private String NomUser;
    private String PasUser;
    private String TipoUser;

    public Usuario() {
    }

       
    public Usuario(int IdUser, String Nombre, String NomUser, String PasUser) {
        this.IdUser = IdUser;
        this.Nombre = Nombre;
        this.NomUser = NomUser;
        this.PasUser = PasUser;
    }

    public String getTipoUser() {
        return TipoUser;
    }

    public void setTipoUser(String TipoUser) {
        this.TipoUser = TipoUser;
    }
     
    
    public int getIdUser() {
        return IdUser;
    }

    public void setIdUser(int IdUser) {
        this.IdUser = IdUser;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getNomUser() {
        return NomUser;
    }

    public void setNomUser(String NomUser) {
        this.NomUser = NomUser;
    }

    public String getPasUser() {
        return PasUser;
    }

    public void setPasUser(String PasUser) {
        this.PasUser = PasUser;
    }
    
    
}
