
package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class consulta2 extends Conexion{
    public boolean autenticacion(int usuario){
        PreparedStatement pst = null;
        ResultSet rs=null;
        try {
            String consulta ="select * from estudiantes where ID_estudiante = ? ";
            pst = getConnexion().prepareStatement(consulta);
            pst.setString(1,Integer.toString(usuario));
            rs = pst.executeQuery();
            if(rs.next())
            {
                return true;
            }
        } catch (Exception e) {
            System.out.println("ERRORS"+e);
        }finally{
            try {
                if(getConnexion() !=null)getConnexion().close();
                if(pst!=null) pst.close();;
                if(rs!=null) rs.close();
            } catch (Exception e) {
                System.out.println("error"+e);
            }
        }
        return false;
    }
    public static void main(String[] args) {
        consulta2 co=new consulta2();
        System.out.println(co.autenticacion(13131301));
    }

}
