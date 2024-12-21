package ub.edu.model.Strategies.ListStrategy.ContingutDigital;

import ub.edu.model.ContingutDigital;
import ub.edu.model.Pelicula;
import ub.edu.model.Strategies.ListStrategy.ListStrategy;
import ub.edu.model.exceptions.NotAvailableException;
import ub.edu.model.exceptions.NotAvailableMoviesException;

import java.util.*;

public class LlistarPelisByNameStrategy implements ListStrategy<ContingutDigital> {
    @Override
    public Iterable<String> executeList(List<ContingutDigital> contingutDigitals)  {
        SortedSet<String> pelisDisponibles = new TreeSet<>();

        List<Pelicula> sortedList = new ArrayList<>();
        for (ContingutDigital c : contingutDigitals) {
            if(c instanceof Pelicula){
                sortedList.add((Pelicula) c);
            }
        }
        sortedList.sort(new Comparator<Pelicula>() {
            public int compare(Pelicula a1, Pelicula a2) {
                return (a1.getTitol().compareTo(a2.getTitol()));
            }
        });

        for (Pelicula p : sortedList) {
            pelisDisponibles.add(p.getTitol());
        }
        return pelisDisponibles;

    }
}
