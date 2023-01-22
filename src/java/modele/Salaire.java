/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modele;

import java.sql.Date;

/**
 *
 * @author johan
 */
public class Salaire {
    int idSalaire;
    int idEmployer;    
    double montant;
    Date dateSalaire;

    public void setIdSalaire(int idSalaire) {
        this.idSalaire = idSalaire;
    }

    public void setIdEmployer(int idEmployer) {
        this.idEmployer = idEmployer;
    }

    public void setMontant(double montant) {
        this.montant = montant;
    }

    public void setDateSalaire(Date dateSalaire) {
        this.dateSalaire = dateSalaire;
    }

    public int getIdSalaire() {
        return idSalaire;
    }

    public int getIdEmployer() {
        return idEmployer;
    }

    public double getMontant() {
        return montant;
    }

    public Date getDateSalaire() {
        return dateSalaire;
    }

    public Salaire() {
    }
    
    
    
}
