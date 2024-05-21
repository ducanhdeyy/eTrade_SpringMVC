package baitaplon.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import baitaplon.DAO.CategoryDao;
import baitaplon.DAO.ProductDao;
import baitaplon.entities.Category;
import baitaplon.entities.CustomUserDetails;
import baitaplon.entities.Product;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private CategoryDao CategoryDao;

	@Autowired
	private ProductDao ProductDao;

	@RequestMapping(value = "/dashboard")
	public String dashboard(Model model) {
		model.addAttribute("mess", "Welcome to admin page");
		CustomUserDetails user = (CustomUserDetails)

		SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("user", user);
		model.addAttribute("title", "DashBoard");
		return "Admin/dashboard";
	}

	@RequestMapping(value = "/product")
	public String index(Model model) {
		List<Product> list = ProductDao.getProducts();
		model.addAttribute("list", list);
		model.addAttribute("title", "List product");
		return "Admin/product/index";
	}

	@RequestMapping(value = "/addProduct")
	public String add(Model model) {
		Product product = new Product();
		List<Category> listCategory = CategoryDao.getCate();
		model.addAttribute("product", product);
		model.addAttribute("listCategory", listCategory);
		model.addAttribute("title", "Add new product");
		return "Admin/product/add";
	}

	@RequestMapping(value = "/insertProduct")
	public String save(@ModelAttribute("product") Product product, BindingResult result,
			@RequestParam("imageInset") MultipartFile fileImage, HttpServletRequest request, Model model) {

		String path = request.getServletContext().getRealPath("resources/images");
		File f = new File(path);
		String fileName = fileImage.getOriginalFilename();
		File distination = new File(f.getAbsolutePath() + "/" + fileName);
		if (!distination.exists()) {
			try {
				Files.write(distination.toPath(), fileImage.getBytes(), StandardOpenOption.CREATE);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		product.setImage(fileName);

		if (ProductDao.insertProduct(product)) {
			model.addAttribute("success", "Insert successfully!");
			List<Product> list = ProductDao.getProducts();
			model.addAttribute("list", list);
			model.addAttribute("title", "List product");
			return "Admin/product/index";
		} else {
			return "Admin/product/add";
		}

	}

	@RequestMapping(value = "/detail")
	public String productDetail(@RequestParam("proId") Integer proId, Model model) {
		Product product = ProductDao.getProductById(proId);
		model.addAttribute("product", product);
		model.addAttribute("title", "Product Detail");
		return "Admin/product/detail";
	}
	@RequestMapping("/deleteProduct")
	public String deleteStudent(@RequestParam("proId") Integer proId, Model model) {
		boolean bl = ProductDao.delete(proId);
		if (bl) {
			model.addAttribute("success", "Delete successfully!");
		} else {
			model.addAttribute("error", "Delete failed!");
		}
		List<Product> list = ProductDao.getProducts();
		model.addAttribute("list", list);
		return "Admin/product/index";
	}

	@RequestMapping("/editProduct")
	public String editProduct(@RequestParam("proId") Integer proId, Model model) {
		Product product = ProductDao.getProductById(proId);
		List<Category> listCategory = CategoryDao.getCate();
		model.addAttribute("product", product);
		model.addAttribute("listCategory", listCategory);
		model.addAttribute("title", "Edit Product");
		return "Admin/product/edit";
	}

	@RequestMapping(value = "/updateProduct")
	public String update(@ModelAttribute("product") Product product, BindingResult result,
			@RequestParam("fileImage") MultipartFile fileImage, HttpServletRequest request, Model model) {
		String fileName = fileImage.getOriginalFilename();
		boolean isEmpty = fileName == null || fileName.trim().isEmpty();
		if (!isEmpty) {
			String path = request.getServletContext().getRealPath("resources/images");
			File f = new File(path);

			File distination = new File(f.getAbsolutePath() + "/" + fileName);
			if (!distination.exists()) {
				try {
					Files.write(distination.toPath(), fileImage.getBytes(), StandardOpenOption.CREATE);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			product.setImage(fileName);
		}

		if (ProductDao.update(product)) {
			model.addAttribute("success", "Insert successfully!");
			List<Product> list = ProductDao.getProducts();
			model.addAttribute("list", list);
			model.addAttribute("title", "List product");
			return "Admin/product/index";
		} else {
			return "redirect:/updateProduct";
		}
	}

	
}