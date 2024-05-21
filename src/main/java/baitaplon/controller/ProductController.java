package baitaplon.controller;

import java.util.List;

import baitaplon.controller.request.AddCart;
import baitaplon.controller.request.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import baitaplon.DAO.CategoryDao;
import baitaplon.DAO.ProductDao;
import baitaplon.entities.Category;
import baitaplon.entities.Product;

import javax.servlet.http.HttpSession;

@Controller
public class ProductController {
	
	@Autowired
    private CategoryDao CategoryDao;
    
    @Autowired
    private ProductDao ProductDao;
    
	@RequestMapping(value = {"/product"}, method = RequestMethod.GET)
    public String getProductByCategory(@PathVariable(value = "cateId", required = false) Integer cateId, Model model) {
        List<Category> categories = CategoryDao.getCate();
        model.addAttribute("categoryList", categories);

        List<Product> products;

        if (cateId != null) {
            products = ProductDao.getProductByCategory(cateId);
        } else {
            products = ProductDao.getProducts();
        }
        AddCart addCart = new AddCart();
        model.addAttribute("addCart", addCart);
        model.addAttribute("products", products);
        model.addAttribute("title", "Product");

        return "product";
    }
	  @RequestMapping(value="/product-detail")
	    public String productDetail(@RequestParam("proId") Integer proId, Model model) {
	    	Product product = ProductDao.getProductById(proId);
	    	List<Product> products = ProductDao.getProducts();
            AddCart addCart = new AddCart();
	    	model.addAttribute("product", product);
	    	model.addAttribute("products", products);
	    	model.addAttribute("addCart", addCart);
	    	model.addAttribute("title", "Chi tiết sản phẩm");
	        return "productDetail";
	    }

    @RequestMapping(value = "/addCart", method = RequestMethod.POST)
    public String addCart(AddCart addCart, Model model, HttpSession session) {
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        boolean found = false;
        for (AddCart item : cart.getItems()) {
            if (item.getProId() == addCart.getProId()) {
                item.setTotalPro(item.getTotalPro() + addCart.getTotalPro());
                found = true;
                break;
            }
        }

        if (!found) {
            cart.addItem(addCart);
        }

        session.setAttribute("cart", cart);

        return "redirect:/cart";
    }
}
