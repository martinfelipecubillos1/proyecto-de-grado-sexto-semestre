/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import com.mysql.cj.jdbc.PreparedStatementWrapper;
import com.mysql.cj.xdevapi.PreparableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Javier
 */
public class Consultas extends Conexion {
    public boolean autenticacion(String usuario,String contraseña){
        PreparedStatement pst = null;
        ResultSet rs=null;
        try {
            String consulta ="select * from usuarios where user = ? and password = ? ";
            pst = getConnexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, contraseña);
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
        Consultas co=new Consultas();
        System.out.println(co.autenticacion("Sma", "ASD"));
    }
}
