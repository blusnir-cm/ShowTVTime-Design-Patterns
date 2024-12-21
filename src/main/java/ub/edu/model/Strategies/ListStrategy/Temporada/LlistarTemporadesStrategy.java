package ub.edu.model.Strategies.ListStrategy.Temporada;

import ub.edu.controller.MessagesCAT;
import ub.edu.model.Strategies.ListStrategy.ListStrategy;
import ub.edu.model.Temporada;
import ub.edu.model.exceptions.NotAvailableException;

import java.util.List;
import java.util.SortedSet;
import java.util.TreeSet;

public class LlistarTemporadesStrategy implements ListStrategy<Temporada> {
    @Override
    public Iterable<String> executeList(List<Temporada> temporades){
        SortedSet<String> temporadesDisponibles = new TreeSet<>();
        if (temporades.isEmpty()) {
            temporadesDisponibles.add(MessagesCAT.ShowWithoutSeasons.getMessage());
        } else {
            for (Temporada t : temporades) {
                temporadesDisponibles.add(String.valueOf(t.getNumTemporada()));
            }
        }
        return temporadesDisponibles;
    }
}
