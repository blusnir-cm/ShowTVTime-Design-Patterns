package ub.edu.model.Strategies.ListStrategy.ContingutDigital;

import ub.edu.model.Carteras.CarteraTema;
import ub.edu.model.ContingutDigital;
import ub.edu.model.Pelicula;
import ub.edu.model.Strategies.ListStrategy.ListStrategy;
import ub.edu.model.Tematica;
import ub.edu.model.exceptions.NotAvailableException;
import ub.edu.model.exceptions.NotAvailableMoviesException;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class LlistarPelisByTematicaStrategy implements ListStrategy<ContingutDigital> {

    private String tematica;

    public LlistarPelisByTematicaStrategy(String tematica) { this.tematica = tematica; }

    @Override
    public Iterable<String> executeList(List<ContingutDigital> contingutDigitals) {
        ArrayList<String> pelisDisponibles = new ArrayList<>();


        ArrayList<String> sortedList = new ArrayList<>();
        for (ContingutDigital c : contingutDigitals) {
            if(c instanceof Pelicula){
                CarteraTema tematiques = ((Pelicula)c).getTematiques();
                if (tematiques.containsKey(tematica)) {
                    sortedList.add(c.getTitol());
                }
            }
        }
        sortedList.sort(new Comparator<String>() {
            public int compare(String a1, String a2) {
                return (a1.compareTo(a2));
            }
        });
        for (String s : sortedList) {
            pelisDisponibles.add(s);
        }
        return pelisDisponibles;
    }
}
