package baitaplon.controller.request;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<AddCart> items;

    public Cart() {
        this.items = new ArrayList<>();
    }

    public List<AddCart> getItems() {
        return items;
    }

    public void addItem(AddCart item) {
        items.add(item);
    }
}
