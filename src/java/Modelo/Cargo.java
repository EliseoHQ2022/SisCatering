
package Modelo;

public class Cargo {
    private int IdCar;
    private String NomCar;
    
    public Cargo(){
        
    }
    public Cargo(int IdCar, String NomCar) {
        this.IdCar = IdCar;
        this.NomCar = NomCar;
    }

    public int getIdCar() {
        return IdCar;
    }

    public String getNomCar() {
        return NomCar;
    }

    public void setIdCar(int IdCar) {
        this.IdCar = IdCar;
    }

    public void setNomCar(String NomCar) {
        this.NomCar = NomCar;
    }
    
    
}
