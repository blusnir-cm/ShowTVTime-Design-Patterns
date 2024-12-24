package ub.edu.model;

import ub.edu.model.Carteras.CarteraContingutDigital;
import ub.edu.model.cataleg.ContingutDigital;

import java.util.HashMap;
import java.util.List;

public class ShowTVTimePersonaContingut {
    HashMap<String, CarteraContingutDigital> personal_content;

    public ShowTVTimePersonaContingut() {
        personal_content = new HashMap<>();
    }

    public void add(String correu, ContingutDigital c, String data){
        if (personal_content.containsKey(correu)) {
            personal_content.get(correu).add(c);
        } else {
            CarteraContingutDigital ccd = new CarteraContingutDigital();
            ccd.add(c);
            personal_content.put(correu, ccd);
        }
    }

    public List<ContingutDigital> getlist(String correu) {
        return personal_content.get(correu).getContingutDigital();
    }

    public boolean has(String correu, ContingutDigital c) {
        return personal_content.get(correu).containsKey(c.getNom());
    }

    public void remove(String correu, ContingutDigital c) {
        personal_content.get(correu).delete(c);
    }
}
