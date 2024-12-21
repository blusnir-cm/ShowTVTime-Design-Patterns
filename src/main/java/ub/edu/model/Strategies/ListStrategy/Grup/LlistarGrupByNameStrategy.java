package ub.edu.model.Strategies.ListStrategy.Grup;

import ub.edu.model.GrupInteres;
import ub.edu.model.Strategies.ListStrategy.ListStrategy;
import ub.edu.model.exceptions.NotAvailableException;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class LlistarGrupByNameStrategy implements ListStrategy<GrupInteres> {
    @Override
    public Iterable<String> executeList(List<GrupInteres> grupsInteres){
        ArrayList<String> grupsDisponibles = new ArrayList<>();
        for (GrupInteres grup : grupsInteres) {
            grupsDisponibles.add(grup.getNomGrup());
        }
        Collections.sort(grupsDisponibles);
        return grupsDisponibles;
    }
}
