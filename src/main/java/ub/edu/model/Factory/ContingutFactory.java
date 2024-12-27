package ub.edu.model.Factory;

import ub.edu.model.cataleg.Episodi;
import ub.edu.model.cataleg.Pelicula;
import ub.edu.model.cataleg.Serie;

public enum ContingutFactory implements ContingutFactoryInterface {
    INSTANCE;


    @Override
    public Pelicula createPelicula(String nom, int estrena, int durada) {
        return new Pelicula(nom, estrena, durada);
    }

    @Override
    public Serie createSerie(String nom, int estrena) {
        return new Serie(nom, estrena);
    }

    @Override
    public Serie createSerie(String nomSerie, String descripcio, String url, int anyEstrena, String idioma, int durada) {
        return new Serie(nomSerie, descripcio, url, anyEstrena, idioma, durada);
    }

    @Override
    public Episodi createEpisodi(String nomSerie, int numTemporada, int numEpisodi, String nom, int durada) {
        return new Episodi(nomSerie, numTemporada, numEpisodi, nom, durada);
    }

    @Override
    public Pelicula createPelicula(String titol, String descripcio, String url, int estrena, String idioma, int durada, float valoracio) {
        return new Pelicula(titol, descripcio, url, estrena, idioma, durada, valoracio);
    }
}
