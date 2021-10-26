package com.emergentes.te_eventos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {
         static String driver="com.mysql.jdbc.Driver";
    static String url = "jdbc:mysql://localhost:3306/bd_eventos";
    static String usuario ="root";
    static String password = "";
    Connection conn = null;
    
    public Conexion(){
        try{
            //especificacion del driver
            Class.forName(driver);
            //establece la conexion a la basede datos
            conn=DriverManager.getConnection(url, usuario , password);
            //Verificar si la conexion fue exitosa
            if(conn !=null){
                System.out.println("Conexion OK:  "+ conn);
            }
        } catch(SQLException ex){
            System.out.println("Error de SQL "+ ex.getMessage());
        } catch (ClassNotFoundException ex){
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE,null,ex);
        }
    }

public void desconectar(){
    try{
        conn.close();
    }catch (SQLException ex){
        Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE,null,ex);
    }
    
}

    public Connection conectar() {
    return conn;    
    }
}
