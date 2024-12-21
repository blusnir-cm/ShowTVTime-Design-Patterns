package ub.edu.model.Strategies.ListStrategy.ContingutDigital;

import ub.edu.model.ContingutDigital;
import ub.edu.model.Serie;
import ub.edu.model.Strategies.ListStrategy.ListStrategy;

import java.util.List;
import java.util.SortedSet;
import java.util.TreeSet;

public class LlistarSeriesByNameStrategy implements ListStrategy<ContingutDigital> {

    @Override
    public Iterable<String > executeList(List<ContingutDigital> contingutDigitals) {
        SortedSet<String> seriesDisponibles = new TreeSet<>();
        for (ContingutDigital c : contingutDigitals) {
            if(c instanceof Serie){
                seriesDisponibles.add(c.getTitol());
            }
        }
        return seriesDisponibles;
    }
}
