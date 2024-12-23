package ub.edu.model;

import ub.edu.model.Carteras.CarteraPersona;

import java.util.*;

public class ShowTVTimePersones {

    private CarteraPersona cartera;

    public ShowTVTimePersones(){
        cartera = new CarteraPersona();
    }
    public void setCarteraPersones (List<Persona> llistaC) {
        cartera = new CarteraPersona(llistaC);
    }
    public Persona findPersonaCartera(String string) {
        return cartera.get(string);
    }

    public void addPersona(Persona persona) {
        cartera.add(persona);
    }

    public List<Persona> getPersones() {
        return cartera.getPersones();
    }

}
