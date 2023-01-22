/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;
import java.util.*;

/**
 *
 * @author nehemiah
 */

public class Emp {
    int idEmp;
    int idNiveau;
    String nom;
    String prenom;
    String genre;
    Date dtn;

    public void setIdEmp(int idEmp) {
        this.idEmp = idEmp;
    }

    public void setIdNiveau(int idNiveau) {
        this.idNiveau = idNiveau;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public void setDtn(Date dtn) {
        this.dtn = dtn;
    }

    public int getIdEmp() {
        return idEmp;
    }

    public int getIdNiveau() {
        return idNiveau;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public String getGenre() {
        return genre;
    }

    public Date getDtn() {
        return dtn;
    }

    public Emp() {
    }
    
    
}
