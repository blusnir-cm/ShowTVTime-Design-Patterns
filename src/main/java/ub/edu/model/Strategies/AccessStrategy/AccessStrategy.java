package ub.edu.model.Strategies.AccessStrategy;

import ub.edu.model.GrupInteres;
import ub.edu.model.Persona;
import ub.edu.model.exceptions.GrupInteresNotFoundException;

public interface AccessStrategy {

    // Returns true if the follower has access to the group, false otherwise
    boolean executeAccess(Persona follower, GrupInteres group);
}
