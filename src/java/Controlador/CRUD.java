
package Controlador;

import java.util.List;

public interface CRUD {
    public List listar();
    public Persona list(int id);
    public boolean add(Persona per);
}
