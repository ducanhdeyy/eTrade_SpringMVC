package baitaplon.entities;

import javax.persistence.*;

@Entity
@Table(name="checkout_product")
public class CheckoutProduct {
    @Id
    @Column(name="id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "checkout_id")
    private Long checkoutId;
    @Column(name="product_id")
    private int productId;

    public CheckoutProduct() {
    }

    public CheckoutProduct(Long checkoutId, int productId) {
        this.checkoutId = checkoutId;
        this.productId = productId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Long getCheckoutId() {
        return checkoutId;
    }

    public void setCheckoutId(Long checkoutId) {
        this.checkoutId = checkoutId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }
}
