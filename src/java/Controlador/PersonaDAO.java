
package Controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PersonaDAO implements CRUD {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Persona p= new Persona();
    @Override
    public List listar() {
        ArrayList<Persona>list= new ArrayList<Persona>();
        String  sql= "select ID_estudiante,Primer_nombre,Segundo_nombre,Primer_apellido,Segundo_apellido from estudiantes where ID_materia=1210";
        try {
            con=cn.getConnexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next())
            {
                Persona per= new Persona();
                per.setId_estudiante(rs.getInt("ID_estudiante"));
                per.setPrimer_nombre(rs.getString("Primer_nombre"));
                per.setSegundo_nombre(rs.getString("Segundo_nombre"));
                per.setPrimer_apellido(rs.getString("Primer_apellido"));
                per.setSegundo_apellido(rs.getString("Segundo_apellido"));
                list.add(per);
            }
            
            
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Persona list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Persona per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
