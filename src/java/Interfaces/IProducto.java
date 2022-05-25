package Interfaces;

import Modelo.Producto;
import java.util.List;

public interface IProducto {

    public List listar();

    public Producto list(int IdPro);

    public boolean agregar(Producto pr);

    public boolean editar(Producto pr);

    public boolean eliminar(int IdPro);
}
