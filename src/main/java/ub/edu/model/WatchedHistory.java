package ub.edu.model;

import ub.edu.model.cataleg.ContingutDigital;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class WatchedHistory {
    List<HashMap<Object, Object>> watchedHistory;

    public WatchedHistory() {
        watchedHistory = new ArrayList<HashMap<Object, Object>>();
    }

    public void add(String nomContingut, ContingutDigital contingut, String date) {
        for(HashMap<Object, Object> map : watchedHistory) {
            if(map.get("nom").equals(nomContingut)) {
                map.put(date, contingut);
                return;
            }
        }
        watchedHistory.add(new HashMap<Object, Object>() {{
            put("nom", nomContingut);
            put(date, contingut);
        }});
    }

    public List<HashMap<Object, Object>> getWatchedHistory(){
        return watchedHistory;
    }

}
