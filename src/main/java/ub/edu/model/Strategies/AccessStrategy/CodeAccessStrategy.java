package ub.edu.model.Strategies.AccessStrategy;

import ub.edu.model.GrupInteres;
import ub.edu.model.Persona;

public class CodeAccessStrategy implements AccessStrategy {

    private String code;

    public CodeAccessStrategy(String code) {
        this.code = code;
    }

    @Override
    public boolean executeAccess(Persona follower, GrupInteres group) {
        if (code != null && group.validateCode(code)) {
            follower.memberGrup(group);
            follower.addReputation(150);
            return true;
        }
        return false;
    }
}
