/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author nehemiah
 */
public class ConnectionPgsql {
    public static Connection get_connection() throws SQLException, Exception{
        Connection con = null;     
        try
        {
        Class.forName("org.postgresql.Driver");
        con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/imprimerie","postgres","johan");
        }
        catch (Exception e){
            throw new Exception(e.getMessage());
        }
        con.setAutoCommit(false);
        return con;
    }
    public static void commitOrClose(Connection connection,Statement statement,boolean canCommit)throws Exception{
        try {
            if (connection != null && canCommit == true) connection.commit();
            if (statement != null) statement.close();
            if (connection != null) connection.close();
        }catch (Exception e){
            throw new Exception(e.getMessage()+"    commit or/and close error");
        }
    }
    
}
