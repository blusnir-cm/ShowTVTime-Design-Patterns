package ub.edu.model.cataleg;


import ub.edu.model.Carteras.CarteraContingutDigital;
import ub.edu.model.Carteras.CarteraTema;
import ub.edu.model.quizz.Pregunta;
import ub.edu.model.quizz.Resposta;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class GrupInteres {

    private CarteraTema tematiques;
    private CarteraContingutDigital contingutDigitals;

    private String nomGrupInteres;
    private String descripcioGrupInteres;
    private List<Pregunta> preguntes;
    private String codiAcces;

    public GrupInteres(String nomGrupInteres, String descripcioGrupInteres) {
        this.nomGrupInteres = nomGrupInteres;
        this.descripcioGrupInteres = descripcioGrupInteres;
        tematiques = new CarteraTema();
        contingutDigitals = new CarteraContingutDigital();
        Random random = new Random();
        codiAcces = nomGrupInteres + "2024";
        preguntes = new ArrayList<>();
    }

    public void addPregunta(Pregunta pregunta) {
        preguntes.add(pregunta);
    }

    public Resposta getResposta(String resposta){
        //Extras
        for (Pregunta p: preguntes) {
            Resposta r = p.getResposta(resposta);
            if (r != null) {
                return r;
            }
        }
        return null;
    }

    public Pregunta getRandomPregunta() {
        return preguntes.get((int)(Math.random() * preguntes.size()));
    }

    public String getNom() {
        return nomGrupInteres;
    }
    public void setNomGrup(String nomGrup){
        this.nomGrupInteres = nomGrup;
    }
    public String getDescripcioGrupInteres() {
        return descripcioGrupInteres;
    }

    public List<ContingutDigital> getContingutDigitals() {return contingutDigitals.getContingutDigital();}
    public void setContingutDigitals(CarteraContingutDigital contingutDigitals) {
        this.contingutDigitals = contingutDigitals;
    }
    public void addTematica(Tematica t) {
        if (tematiques.size() <= 3) {
            tematiques.add(t);
        }
    }

    public void addContingutDigital(ContingutDigital cd) {
        contingutDigitals.add(cd);
    }

    public String getDescripcio() {
        return descripcioGrupInteres;
    }

    public List<String> getSeries() {
        List<Serie> series = new ArrayList<>();
        for (ContingutDigital cd: contingutDigitals.getContingutDigital()) {
            if (cd instanceof Serie) {
                series.add((Serie) cd);
            }
        }
        ArrayList<String> seriesGrup = new ArrayList<>();
        for (Serie serie: series) {
            seriesGrup.add(serie.getNom());
        }
        Collections.sort(seriesGrup);
        return seriesGrup;
    }

    public List<String> getPelicules() {
        List<Pelicula> pelicules = new ArrayList<>();
        for (ContingutDigital cd: contingutDigitals.getContingutDigital()) {
            if (cd instanceof Pelicula) {
                pelicules.add((Pelicula) cd);
            }
        }
        ArrayList<String> peliculesGrup = new ArrayList<>();
        for (Pelicula pelicula: pelicules) {
            peliculesGrup.add(pelicula.getNom());
        }
        Collections.sort(peliculesGrup);
        return peliculesGrup;
    }

    public void setDescripcio(String groupDescriptionCannotBeNull) {
        descripcioGrupInteres = groupDescriptionCannotBeNull;
    }
    public String getCodiAcces() {
        return codiAcces;
    }


}
