package ub.edu.model.Strategies.ListStrategy.Grup;

import ub.edu.model.GrupInteres;
import ub.edu.model.Strategies.ListStrategy.ListStrategy;

import java.util.List;

public class GroupLlistar {

    private ListStrategy<GrupInteres> strategy;

    public void setStrategy(ListStrategy<GrupInteres> strategy) { this.strategy = strategy;}

    public Iterable<String> executeList(List<GrupInteres> grupsInteres) {
        if (strategy == null) {
            throw new IllegalStateException("No se ha definido una estrategia");
        }
        return strategy.executeList(grupsInteres);
    }
}
