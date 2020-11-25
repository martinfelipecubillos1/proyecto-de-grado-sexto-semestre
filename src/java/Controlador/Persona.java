
package Controlador;

public class Persona {
    int id_estudiante;
    String primer_nombre;
    String Segundo_nombre;
    String primer_apellido;
    String Segundo_apellido;
    int id_materia;
    public Persona()
    {
        
    }

    public Persona(int id_materia,int id_estudiante, String primer_nombre, String Segundo_nombre, String primer_apellido, String Segundo_apellido) {
        this.id_estudiante = id_estudiante;
        this.primer_nombre = primer_nombre;
        this.Segundo_nombre = Segundo_nombre;
        this.primer_apellido = primer_apellido;
        this.Segundo_apellido = Segundo_apellido;
        this.id_materia=id_materia;
    }

    public int getId_materia() {
        return id_materia;
    }

    public void setId_materia(int id_materia) {
        this.id_materia = id_materia;
    }

    public int getId_estudiante() {
        return id_estudiante;
    }

    public void setId_estudiante(int id_estudiante) {
        this.id_estudiante = id_estudiante;
    }

    public String getPrimer_nombre() {
        return primer_nombre;
    }

    public void setPrimer_nombre(String primer_nombre) {
        this.primer_nombre = primer_nombre;
    }

    public String getSegundo_nombre() {
        return Segundo_nombre;
    }

    public void setSegundo_nombre(String Segundo_nombre) {
        this.Segundo_nombre = Segundo_nombre;
    }

    public String getPrimer_apellido() {
        return primer_apellido;
    }

    public void setPrimer_apellido(String primer_apellido) {
        this.primer_apellido = primer_apellido;
    }

    public String getSegundo_apellido() {
        return Segundo_apellido;
    }

    public void setSegundo_apellido(String Segundo_apellido) {
        this.Segundo_apellido = Segundo_apellido;
    }
    
}
