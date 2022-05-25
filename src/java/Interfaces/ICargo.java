
package Interfaces;

import Modelo.Cargo;
import java.util.List;
public interface ICargo {
     public List listar();
    public Cargo list(int IdCar);
    public boolean agregar(Cargo ca);
    public boolean editar(Cargo ca);
    public boolean eliminar(int IdCar);
}
