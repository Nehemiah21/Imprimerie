/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modele;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

/**
 *
 * @author johan
 */
public class Service {
    int idService;
    String nom;
    double marge;
    String image;

    public void setIdService(int idService) {
        this.idService = idService;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setMarge(double marge) {
        this.marge = marge;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
    
    public int getIdService() {
        return idService;
    }

    public String getNom() {
        return nom;
    }

    public double getMarge() {
        return marge;
    }

    public String getImage() {
        return image;
    }

    public Service() {
    }
    
    public static Vector<Service> allService() throws SQLException, Exception{
        String request = "SELECT*FROM Service";
        Connection connex = ConnectionPgsql.get_connection();
        ResultSet result;
        Statement statement = connex.createStatement();
        Vector<Service> answer = new Vector<>();
        Service temp = null;
        try{
            result = statement.executeQuery(request);
            while(result.next()){
                temp = new Service();
                temp.setIdService(result.getInt(1));
                temp.setNom(result.getString(2));
                temp.setMarge(result.getDouble(3));
                temp.setImage(result.getString(4));
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
