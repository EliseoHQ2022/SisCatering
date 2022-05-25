
package Interfaces;


import Modelo.Area;
import java.util.List;

public interface IArea {
    public List listar();
    public Area list(int IdArea);
    public boolean agregar(Area ar);
    public boolean editar(Area ar);
    public boolean eliminar(int IdArea);
}
