/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import java.util.Vector;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author nehemiah
 */
public class Specialite {
    int idSpe;
    String nom;

    public void setIdSpe(int idSpe) {
        this.idSpe = idSpe;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getIdSpe() {
        return idSpe;
    }

    public String getNom() {
        return nom;
    }


    public Specialite() {
    }
    
    public static Vector<Specialite> all_Specialite() throws SQLException, Exception{
        String request = "SELECT*FROM specialite";
        Connection connex = ConnectionPgsql.get_connection();
        ResultSet result;
        Statement statement = connex.createStatement();
        Vector<Specialite> answer = new Vector<>();
        Specialite temp = null;
        try{
            result = statement.executeQuery(request);
            while(result.next()){
                temp = new Specialite();
                temp.setIdSpe(result.getInt(1));
                temp.setNom(result.getString(2));
                answer.add(temp);
            }
            return answer;
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
    }
    
    public static Vector<Specialite> allSpecialite() throws SQLException, Exception{
        String request = "SELECT*FROM Specialite";
        Connection connex = ConnectionPgsql.get_connection();
        ResultSet result;
        Statement statement = connex.createStatement();
        Vector<Specialite> answer = new Vector<>();
        Specialite temp = null;
        try{
            result = statement.executeQuery(request);
            while(result.next()){
                temp = new Specialite();
                temp.setIdSpe(result.getInt(1));
                temp.setNom(result.getString(2));
                answer.add(temp);
            }
            return answer;
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }finally{
            ConnectionPgsql.commitOrClose(connex, statement, true);
        }
    }
        
    
}
