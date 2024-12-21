package ub.edu.model.Strategies.ListStrategy.Episodi;

import ub.edu.model.Strategies.ListStrategy.ListStrategy;
import ub.edu.model.Episodi;
import java.util.List;

public class EpisodiLlistar {
    private ListStrategy<Episodi> strategy;

    public void setStrategy(ListStrategy<Episodi> strategy) { this.strategy = strategy;}

    public Iterable<String> executeList(List<Episodi> episodis) {
        if (strategy == null) {
            throw new IllegalStateException("No se ha definido una estrategia");
        }
        return strategy.executeList(episodis);
    }
}
