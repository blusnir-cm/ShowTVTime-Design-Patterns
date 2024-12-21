package ub.edu.model.Strategies.ListStrategy.ContingutDigital;

import ub.edu.model.ContingutDigital;
import ub.edu.model.Strategies.ListStrategy.ListStrategy;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class LlistarContingutByDateStrategy implements ListStrategy<ContingutDigital> {

    @Override
    public Iterable<String> executeList(List<ContingutDigital> contingutDigitals) {
        List<ContingutDigital> llistaCombinada = new ArrayList<>(contingutDigitals);
        // Ordenar por anyPrimeraEstrena (descendente)
        llistaCombinada.sort(new Comparator<Object>() {
            @Override
            public int compare(Object o1, Object o2) {
                int any1 = 0, any2 = 0;

                any1 = ((ContingutDigital) o1).getAnyPrimeraEmissio();

                any2 = ((ContingutDigital) o2).getAnyPrimeraEmissio();

                // Ordenar en orden descendente (de más nuevo a más viejo)
                return Integer.compare(any2, any1);
            }
        });

        // Crear una lista de títulos ordenados
        List<String> titolsOrdenats = new ArrayList<>();
        for (ContingutDigital obj : llistaCombinada) {
            titolsOrdenats.add( obj.getTitol());
        }

        return titolsOrdenats;
    }
}
