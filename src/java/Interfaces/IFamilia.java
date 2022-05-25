package Interfaces;

import Modelo.Familia;
import java.util.List;

public interface IFamilia {
    public List listar();
    public Familia list(int IdFam);
    public boolean agregar(Familia fa);
    public boolean editar(Familia fa);
    public boolean eliminar(int IdFam);
}
