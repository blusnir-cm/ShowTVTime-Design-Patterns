package ub.edu.model.Strategies.ListStrategy;

import ub.edu.model.exceptions.NotAvailableException;
import java.util.List;

public interface ListStrategy<T> {
    Iterable<String> executeList(List<T> llista);
}
