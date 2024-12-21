package ub.edu.model.Strategies.ListStrategy.ContingutDigital;

import ub.edu.model.ContingutDigital;
import ub.edu.model.Strategies.ListStrategy.ListStrategy;

import java.util.ArrayList;
import java.util.List;

public class LlistarContingutStrategy implements ListStrategy<ContingutDigital> {

    @Override
    public Iterable<String> executeList(List<ContingutDigital> contingutDigitals) {
        List<String> llista = new ArrayList<>();
        for(ContingutDigital s: contingutDigitals){
            llista.add(s.getTitol());
        }
        return llista;
    }
}
