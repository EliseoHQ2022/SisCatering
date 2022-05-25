
package Interfaces;

import Modelo.Usuario;
import java.util.List;

public interface IUsuario {
    public List listar();

    public Usuario list(int IdUser);

    public boolean agregar(Usuario us);

    public boolean editar(Usuario us);

    public boolean eliminar(int IdUser);
   public Usuario Validar(Usuario u); 
}
