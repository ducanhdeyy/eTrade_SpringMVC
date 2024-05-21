package baitaplon.controller.request;

import javax.persistence.Column;

public class ListProductCart {
    private int proId;
    private String proName;
    private float price;
    private String image;
    private int totalPro;
    private float subTotalPro;

    public ListProductCart(int proId, String proName, float price, String image, int totalPro, float subTotalPro) {
        this.proId = proId;
        this.proName = proName;
        this.price = price;
        this.image = image;
        this.totalPro = totalPro;
        this.subTotalPro = subTotalPro;
    }

    public ListProductCart() {
    }

    public int getProId() {
        return proId;
    }

    public void setProId(int proId) {
        this.proId = proId;
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getTotalPro() {
        return totalPro;
    }

    public void setTotalPro(int totalPro) {
        this.totalPro = totalPro;
    }

    public float getSubTotalPro() {
        return subTotalPro;
    }

    public void setSubTotalPro(float subTotalPro) {
        this.subTotalPro = subTotalPro;
    }
}
