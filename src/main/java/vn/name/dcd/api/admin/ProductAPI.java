package vn.name.dcd.api.admin;

import java.util.Base64;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
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

@RestController(value = "productAPIOfAdmin")
public class ProductAPI {
	@Autowired
	private IProductService productService;
	@Autowired
	private ICategoryService categoryService;
	@Autowired
	private CommonConstant commonConstant;
	

	// GET
	@GetMapping(value = "/quan-tri/trang-chu")
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("admin/home");
		return mav;
	}

	@GetMapping(value = "/quan-tri/danh-sach-san-pham")
	public ModelAndView showList() {
		ProductDTO model = new ProductDTO();
		ModelAndView mav = new ModelAndView("admin/new/listproduct");
		model.setListResult(productService.findAll());
		mav.addObject("model", model);
		return mav;
	}

	@GetMapping(value = "/quan-tri/san-pham/chinh-sua")
	public ModelAndView editNew(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/new/edit");
		ProductDTO model = new ProductDTO();
		if (id != null) {
			model = productService.findById(id);
		}
		mav.addObject("categories", categoryService.findAll());
		mav.addObject("model", model);
		return mav;
	}

	// POST
	@PostMapping(value="/api/product")
	public ProductDTO createProduct(@RequestBody ProductDTO productDTO) {
		 try {	
	            byte[] decodeBase64 = Base64.getDecoder().decode(productDTO.getBase64().getBytes());
	            commonConstant.writeOrUpdate(decodeBase64, "/thumbnail/"+productDTO.getHinhanh());
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
	            commonConstant.writeOrUpdate(decodeBase64, "/thumbnail/"+productDTO.getHinhanh());
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		return productService.save(productDTO);
	}

	// DEL
	@DeleteMapping("/api/product")
	public void deleteProduct(@RequestBody long[] ids) {
		System.out.print("ok");
	}
}
