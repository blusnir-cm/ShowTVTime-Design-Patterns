package ub.edu.model.Strategies.ListStrategy.Temporada;

import ub.edu.model.Strategies.ListStrategy.ListStrategy;
import ub.edu.model.Temporada;
import java.util.List;

public class TemporadaLlistar {
    private ListStrategy<Temporada> strategy;

    public void setStrategy(ListStrategy<Temporada> strategy) { this.strategy = strategy;}

    public Iterable<String> executeList(List<Temporada> temporadas) {
        if (strategy == null) {
            throw new IllegalStateException("No se ha definido una estrategia");
        }
        return strategy.executeList(temporadas);
    }
}
