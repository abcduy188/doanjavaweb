package vn.name.dcd.api.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import vn.name.dcd.DTO.ProductDTO;
import vn.name.dcd.service.IProductService;
@RestController(value="APIOfWeb")
public class HomeAPI {
	@Autowired
	private IProductService productService;

	@GetMapping(value = "/trang-chu")
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("web/home");
		return mav;
	}

	@GetMapping(value = "/dang-nhap")
	public ModelAndView loginPage() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}

	@GetMapping(value = "/thoat")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication(); // = isAutheticated o header.jsp
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth); // logout = sessionUtils
		}
		return new ModelAndView("redirect:/trang-chu");
	}

	@GetMapping(value = "/accessDenied")
	public ModelAndView accessDenied() {
		return new ModelAndView("redirect:/dang-nhap?accessDenied");
	}


	@GetMapping(value = "/trang-chu/trang-ao")
	public ModelAndView aoPage() {
		ProductDTO model = new ProductDTO();
		ModelAndView mav = new ModelAndView("web/ao");
		model.setListResult(productService.findAll());
		mav.addObject("model", model);
		return mav;
	}

	@GetMapping(value = "/trang-chu/trang-quan")
	public ModelAndView quanPage() {
		ProductDTO model = new ProductDTO();
		ModelAndView mav = new ModelAndView("web/quan");
		model.setListResult(productService.findAll());
		mav.addObject("model", model);
		return mav;
	}

	@GetMapping(value = "/trang-chu/danh-sach")
	public ModelAndView editNew(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("web/danhsach");
		ProductDTO model = new ProductDTO();
		model = productService.findById(id);
		mav.addObject("model", model);
		return mav;
	}
}
