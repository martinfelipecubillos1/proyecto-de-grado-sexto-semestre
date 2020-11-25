
package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
   private String USERNAME= "root";
   private String PASSWORD ="";
   private String HOST ="localhost";
   private String PORT = "3306";
   private String DATABASE = "colegio";
   private String CLASSNAME= "com.mysql.cj.jdbc.Driver";
   private String URL="jdbc:mysql://"+HOST+":"+PORT+"/"+DATABASE;
   private Connection con;
   public Conexion()
   {
       try {
           Class.forName(CLASSNAME);
           con =DriverManager.getConnection(URL,USERNAME,PASSWORD);
           System.out.println("CONECTADO");
       } catch (ClassNotFoundException e) {
           System.out.println(" ERrr"+e);
       } catch(SQLException e)
       {
           System.out.println("error"+e);
       }
   }
    public Connection getConnexion()
    {
        return con;
    }
    public static void main(String[] args) {
        Conexion con = new Conexion();
    }
}
