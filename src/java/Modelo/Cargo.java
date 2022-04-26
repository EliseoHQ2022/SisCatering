
package Modelo;

public class Cargo {
    private int IdCar;
    private int NomCar;
    
    public Cargo(){
        
    }
    public Cargo(int IdCar, int NomCar) {
        this.IdCar = IdCar;
        this.NomCar = NomCar;
    }

    public int getIdCar() {
        return IdCar;
    }

    public int getNomCar() {
        return NomCar;
    }

    public void setIdCar(int IdCar) {
        this.IdCar = IdCar;
    }

    public void setNomCar(int NomCar) {
        this.NomCar = NomCar;
    }
    
    
}
