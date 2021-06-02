package vn.name.dcd.service;

import java.util.List;

import vn.name.dcd.DTO.ProductDTO;

public interface IProductService {
	List<ProductDTO> findAll(String keyword);
	ProductDTO findById(long id);
	ProductDTO save(ProductDTO dto);
	void delete(long[] ids);
}
