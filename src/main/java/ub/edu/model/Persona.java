package ub.edu.model;

public class Persona {

    private String pwd;
    private String nom;
    private int reputation;

    public Persona(String nom, String pwd) {
        this.pwd = pwd;
        this.nom = nom;
        reputation = 0;
    }

    public String getPwd() {
        return pwd;
    }

    public String getName() {
        return nom;
    }

    public void setName(String nom) {
        this.nom = nom;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public int getReputation() {
        return reputation;
    }

    public void addReputation(int reputation) {
        this.reputation += reputation;
    }
}
