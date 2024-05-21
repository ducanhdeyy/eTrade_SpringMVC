package baitaplon.controller.request;

public class AddCart {
    private int proId;
    private int totalPro;

    public AddCart(int proId, int totalPro, String size, String color) {
        this.proId = proId;
        this.totalPro = totalPro;
    }

    public AddCart() {
    }

    public int getProId() {
        return proId;
    }

    public void setProId(int proId) {
        this.proId = proId;
    }

    public int getTotalPro() {
        return totalPro;
    }

    public void setTotalPro(int totalPro) {
        this.totalPro = totalPro;
    }

}
