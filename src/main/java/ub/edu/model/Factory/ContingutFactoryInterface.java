package ub.edu.model.Factory;

import ub.edu.model.cataleg.Episodi;
import ub.edu.model.cataleg.Pelicula;
import ub.edu.model.cataleg.Serie;

public interface ContingutFactoryInterface {
    Pelicula createPelicula(String nom,  int estrena, int durada);
    Serie createSerie(String nom,  int estrena);
    Serie createSerie(String nomSerie, String descripcio, String url, int anyEstrena, String idioma, int durada);
    Episodi createEpisodi (String nomSerie, int numTemporada, int numEpisodi, String nom, int durada);
    Pelicula createPelicula(String titol, String descripcio, String url, int estrena, String idioma, int durada, float valoracio);
}
