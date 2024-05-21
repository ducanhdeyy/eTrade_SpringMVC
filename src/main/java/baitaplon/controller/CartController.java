package baitaplon.controller;

import baitaplon.DAO.CheckoutDao;
import baitaplon.DAO.CheckoutProductDao;
import baitaplon.DAO.UserDao;
import baitaplon.controller.request.AddCart;
import baitaplon.controller.request.Cart;
import baitaplon.controller.request.ListProductCart;
import baitaplon.entities.Checkout;
import baitaplon.entities.CheckoutProduct;
import baitaplon.entities.Product;
import baitaplon.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Controller
public class CartController {
	@Autowired
	private baitaplon.DAO.ProductDao ProductDao;

	@Autowired
	private UserDao userDAO;

	@Autowired
	private CheckoutDao checkoutDao;

	@Autowired
	private CheckoutProductDao checkoutProductDao;

	@RequestMapping(value="/cart")
	public String Cart(Model model, HttpSession session) {
		Cart cart = (Cart) session.getAttribute("cart");

		List<ListProductCart> listProductCart = new ArrayList<>();

		if (cart == null){
			model.addAttribute("listProductCarts", listProductCart);
			return "Cart";
		}

		for (AddCart item : cart.getItems()) {
			ListProductCart productCart = new ListProductCart();
			Product product = ProductDao.getProductById(item.getProId());
			productCart.setProId(product.getProId());
			productCart.setProName(product.getProName());
			productCart.setPrice(product.getPrice());
			productCart.setImage(product.getImage());
			productCart.setTotalPro(item.getTotalPro());
			productCart.setSubTotalPro(item.getTotalPro() * product.getPrice());
			listProductCart.add(productCart);
		}

		Double totalProCart = listProductCart.stream().mapToDouble(ListProductCart::getSubTotalPro).sum();
		model.addAttribute("totalProCart", totalProCart);
		model.addAttribute("listProductCarts", listProductCart);
		return "Cart";
	}

	@RequestMapping(value = "/removeCart")
	public String removeCart(@RequestParam("proId") Integer proId, HttpSession session) {
		Cart cart = (Cart) session.getAttribute("cart");
		if (cart != null) {
			Iterator<AddCart> iterator = cart.getItems().iterator();
			while (iterator.hasNext()) {
				AddCart item = iterator.next();
				if (item.getProId() == proId) {
					iterator.remove();
					break;
				}
			}
		}
		return "redirect:/cart";
	}
	@RequestMapping(value = "/addToOrder" , method = RequestMethod.POST)
	public String addToOrder() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication != null && authentication.isAuthenticated() && hasUserRole(authentication)) {
			// User is authenticated, handle accordingly
			return "authenticated-page";
		} else {
			// User is not authenticated, handle accordingly
			return "login";
		}
	}

	public boolean hasUserRole(Authentication authentication) {
		for (GrantedAuthority authority : authentication.getAuthorities()) {
			if (authority.getAuthority().equals("ROLE_USER")) {
				return true;
			}
		}
		return false;
	}

	@RequestMapping(value = "checkout", method = RequestMethod.GET)
	public String checkout(Model model, HttpSession session) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication != null && authentication.isAuthenticated() && hasUserRole(authentication)) {
			Cart cart = (Cart) session.getAttribute("cart");

			List<ListProductCart> listProductCart = new ArrayList<>();

			if (cart == null){
				model.addAttribute("listProductCarts", listProductCart);
				return "Cart";
			}

			for (AddCart item : cart.getItems()) {
				ListProductCart productCart = new ListProductCart();
				Product product = ProductDao.getProductById(item.getProId());
				productCart.setProId(product.getProId());
				productCart.setProName(product.getProName());
				productCart.setPrice(product.getPrice());
				productCart.setImage(product.getImage());
				productCart.setTotalPro(item.getTotalPro());
				productCart.setSubTotalPro(item.getTotalPro() * product.getPrice());
				listProductCart.add(productCart);
			}

			Double totalProCart = listProductCart.stream().mapToDouble(ListProductCart::getSubTotalPro).sum();
			Checkout checkoutCart = new Checkout();
			String successMessage = (String) session.getAttribute("successMessage");
			if (successMessage != null) {
				model.addAttribute("success", successMessage);
				session.removeAttribute("successMessage");
			}
			model.addAttribute("checkoutCart", checkoutCart);
			model.addAttribute("totalProCart", totalProCart);
			model.addAttribute("listProductCarts", listProductCart);
			return "checkout";
		} else {
			return "login";
		}
	}

	@RequestMapping(value = "addCheckoutCart", method = RequestMethod.POST)
	public String addCheckoutCart(Model model, HttpSession session, Checkout checkout) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication.getPrincipal() instanceof UserDetails userDetails) {
			// Lấy thông tin về người dùng từ UserDetails

            String username = userDetails.getUsername();
			User user = userDAO.findByUserName(username);

			if (user==null){
				return "index";
			}
			Cart cart = (Cart) session.getAttribute("cart");
			List<AddCart> items = cart.getItems();
			float totalProCart = 0;

			for (int i = 0; i < items.size(); i++) {
				AddCart item = items.get(i);
				Product product = ProductDao.getProductById(item.getProId());
				totalProCart += item.getTotalPro() * product.getPrice();
			}
			checkout.setUserId(user.getId());
			checkout.setTotalProCart(totalProCart);

			boolean isCreate = checkoutDao.create(checkout);
			if (isCreate){
				for (AddCart item : cart.getItems()) {
					CheckoutProduct checkoutProduct = new CheckoutProduct();
					Product product = ProductDao.getProductById(item.getProId());
					checkoutProduct.setCheckoutId(checkout.getId());
					checkoutProduct.setProductId(product.getProId());
					checkoutProductDao.create(checkoutProduct);
				}
				cart = new Cart();
				session.setAttribute("cart", cart);
				session.setAttribute("successMessage", "You create order successfully");
				return "redirect:/cart";
			}

		}
		return "index";
	}
}
