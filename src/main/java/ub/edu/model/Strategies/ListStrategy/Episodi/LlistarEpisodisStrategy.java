package ub.edu.model.Strategies.ListStrategy.Episodi;

import ub.edu.model.Episodi;
import ub.edu.model.Strategies.ListStrategy.ListStrategy;
import ub.edu.model.exceptions.NotAvailableException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class LlistarEpisodisStrategy implements ListStrategy<Episodi> {

    @Override
    public Iterable<String> executeList(List<Episodi> episodis) {
        List<String> episodisDisponibles = new ArrayList<>();

        episodis.sort(new Comparator<Episodi>() {
            public int compare(Episodi a1, Episodi a2) {
                return (Integer.compare(a1.getNumEpisodi(), a2.getNumEpisodi()));
            }
        });

        for (Episodi e : episodis) {
            episodisDisponibles.add(e.getTitolEpisodi());
        }

        return episodisDisponibles;
    }
}
