
package Interfaces;

import Modelo.Comensal;
import java.util.List;


public interface IComensal {
    public List listar();
    public Comensal list(int IdCom);
    public Comensal Validar(String Fotocheck);
    public boolean agregar(Comensal com);
    public boolean editar(Comensal com);
    public boolean eliminar(int IdCom);
}
