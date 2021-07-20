package vn.name.dcd.api.admin;

import java.util.Base64;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import vn.name.dcd.DTO.ProductDTO;
import vn.name.dcd.service.ICategoryService;
import vn.name.dcd.service.IProductService;
import vn.name.dcd.utils.CommonConstant;
import vn.name.dcd.utils.MessageUltis;

@RestController(value = "productAPIOfAdmin")
public class ProductAPI {
	@Autowired
	private IProductService productService;
	@Autowired
	private ICategoryService categoryService;
	@Autowired
	private CommonConstant commonConstant;
	@Autowired
	private MessageUltis messageUtils;
	
	
	// GET
	@GetMapping(value = "/quan-tri/trang-chu")
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("admin/adminhome");
		return mav;
	}

	@GetMapping(value = "/quan-tri/tai-khoan")
	public ModelAndView profilePage() {
		ModelAndView mav = new ModelAndView("admin/new/listofaccount");
		return mav;
	}

	@GetMapping(value = "/quan-tri/danh-sach-san-pham")
	public ModelAndView showList(HttpServletRequest request, @Param("keyword") String keyword) {
		ProductDTO model = new ProductDTO();
		ModelAndView mav = new ModelAndView("admin/new/listofproduct");
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtils.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		model.setListResult(productService.findAll(keyword));
		mav.addObject("model", model);
		return mav;
	}

	@GetMapping(value = "/quan-tri/san-pham/chinh-sua")
	public ModelAndView editNew(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/new/editofproduct");
		ProductDTO model = new ProductDTO();
		if (id != null) {
			model = productService.findById(id);
		}
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtils.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("categories", categoryService.findAll());
		mav.addObject("model", model);
		return mav;
	}

	// POST
	@PostMapping("/api/product")
	public ProductDTO createProduct(@RequestBody ProductDTO productDTO) {
		try {
			byte[] decodeBase64 = Base64.getDecoder().decode(productDTO.getBase64().getBytes());
			commonConstant.writeOrUpdate(decodeBase64, "/thumbnail/" + productDTO.getHinhanh());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productService.save(productDTO);
	}

	// PUT
	@PutMapping("/api/product")
	public ProductDTO updateProduct(@RequestBody ProductDTO productDTO) {
		try {
			byte[] decodeBase64 = Base64.getDecoder().decode(productDTO.getBase64().getBytes());
			commonConstant.writeOrUpdate(decodeBase64, "/thumbnail/" + productDTO.getHinhanh());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productService.save(productDTO);
	}

	// DEL
	@DeleteMapping("/api/product")
	public void deleteProduct(@RequestBody long[] ids) {
		productService.delete(ids);
	}
}
