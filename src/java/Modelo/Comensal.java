package Modelo;
public class Comensal {
    private int IdCom;
     private int IdCar;
     private int IdArea;
     private String DNI;
     private String Fotocheck;
      private String Nombre;
      private String FechaN;
     private String Sexo;
     private String Cargo;
     private String Area;

    public Comensal() {
    }

    public Comensal(int IdCar, int IdArea, String DNI, String Fotocheck, 
            String Nombre, String FechaN, String Sexo) {
        this.IdCar = IdCar;
        this.IdArea = IdArea;
        this.DNI = DNI;
        this.Fotocheck = Fotocheck;
        this.Nombre = Nombre;
        this.FechaN = FechaN;
        this.Sexo = Sexo;
    }

    public int getIdCom() {
        return IdCom;
    }

    public int getIdCar() {
        return IdCar;
    }

    public int getIdArea() {
        return IdArea;
    }

    public String getDNI() {
        return DNI;
    }

    public String getFotocheck() {
        return Fotocheck;
    }

    public String getNombre() {
        return Nombre;
    }

    public String getFechaN() {
        return FechaN;
    }

    public String getSexo() {
        return Sexo;
    }

    public void setIdCom(int IdCom) {
        this.IdCom = IdCom;
    }

    public void setIdCar(int IdCar) {
        this.IdCar = IdCar;
    }

    public void setIdArea(int IdArea) {
        this.IdArea = IdArea;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public void setFotocheck(String Fotocheck) {
        this.Fotocheck = Fotocheck;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public void setFechaN(String FechaN) {
        this.FechaN = FechaN;
    }

    public void setSexo(String Sexo) {
        this.Sexo = Sexo;
    }

    public void setCargo(String Cargo) {
        this.Cargo = Cargo;
    }

    public void setArea(String Area) {
        this.Area = Area;
    }

    public String getCargo() {
        return Cargo;
    }

    public String getArea() {
        return Area;
    }
}
