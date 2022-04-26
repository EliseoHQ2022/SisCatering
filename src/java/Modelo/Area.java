
package Modelo;

public class Area {
    private  int IdArea;
    private String NomArea;
    
    public Area(){
        
    }
    public Area(int IdArea, String NomArea) {
        this.IdArea = IdArea;
        this.NomArea = NomArea;
    }

    public int getIdArea() {
        return IdArea;
    }

    public String getNomArea() {
        return NomArea;
    }

    public void setIdArea(int IdArea) {
        this.IdArea = IdArea;
    }

    public void setNomArea(String NomArea) {
        this.NomArea = NomArea;
    }
    
    
}
