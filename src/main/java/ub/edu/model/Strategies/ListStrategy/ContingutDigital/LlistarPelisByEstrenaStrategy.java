package ub.edu.model.Strategies.ListStrategy.ContingutDigital;

import ub.edu.model.ContingutDigital;
import ub.edu.model.Pelicula;
import ub.edu.model.Strategies.ListStrategy.ListStrategy;
import ub.edu.model.exceptions.NotAvailableMoviesException;

import java.util.*;

public class LlistarPelisByEstrenaStrategy implements ListStrategy<ContingutDigital> {

    @Override
    public Iterable<String> executeList(List<ContingutDigital> contingutDigitals) {
        List<String> pelisDisponibles = new ArrayList<>();

        List<Pelicula> sortedList = new ArrayList<>();
        for (ContingutDigital c : contingutDigitals) {
            if(c instanceof Pelicula){
                sortedList.add((Pelicula) c);
            }
        }
        sortedList.sort(new Comparator<Pelicula>() {
            public int compare(Pelicula a1, Pelicula a2) {
                return (Integer.compare(a2.getAnyPrimeraEmissio(), a1.getAnyPrimeraEmissio()));
            }
        });

        for (Pelicula p : sortedList) {
            pelisDisponibles.add(p.getTitol());
        }
        if(pelisDisponibles.isEmpty()) throw new NotAvailableMoviesException();
        return pelisDisponibles;

    }
}
