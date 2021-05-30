package vn.name.dcd.service;

import java.util.List;

import vn.name.dcd.DTO.ProductDTO;

public interface IProductService {
	List<ProductDTO> findAll();
	ProductDTO findById(long id);
	ProductDTO save(ProductDTO dto);
}
