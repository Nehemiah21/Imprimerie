/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

/**
 *
 * @author nehemiah
 */
public class Niveau {
    int idNiv;
    String nom;

    public void setIdNiv(int idNiv) {
        this.idNiv = idNiv;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getIdNiv() {
        return idNiv;
    }

    public String getNom() {
        return nom;
    }

    public Niveau() {
    }

    public static Vector<Niveau> allNiveau() throws SQLException, Exception{
        String request = "SELECT*FROM Niveau";
        Connection connex = ConnectionPgsql.get_connection();
        ResultSet result;
        Statement statement = connex.createStatement();
        Vector<Niveau> answer = new Vector<>();
        Niveau temp = null;
        try{
            result = statement.executeQuery(request);
            while(result.next()){
                temp = new Niveau();
                temp.setIdNiv(result.getInt(1));
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
