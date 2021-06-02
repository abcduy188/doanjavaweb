package vn.name.dcd.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.name.dcd.DTO.ProductDTO;
import vn.name.dcd.converter.ProductConverter;
import vn.name.dcd.entity.CategoryEntity;
import vn.name.dcd.entity.ProductEntity;
import vn.name.dcd.repository.CategoryRepository;
import vn.name.dcd.repository.ProductRepository;
import vn.name.dcd.service.IProductService;

@Service
public class ProductService implements IProductService {

	@Autowired
	private ProductRepository productRepositpory;
	@Autowired
	private ProductConverter productConverter;
	@Autowired
	private CategoryRepository categoryRepository;

	@Override
	public List<ProductDTO> findAll(String keyword) {
		if (keyword != null) {
			List<ProductDTO> models = new ArrayList<>();
			List<ProductEntity> entities = productRepositpory.search(keyword);
			for (ProductEntity item : entities) {
				ProductDTO productDTO = productConverter.toDto(item);
				models.add(productDTO);
			}
			return models;
		}
		List<ProductDTO> models = new ArrayList<>();
		List<ProductEntity> entities = productRepositpory.findAll();
		for (ProductEntity item : entities) {
			ProductDTO productDTO = productConverter.toDto(item);
			models.add(productDTO);
		}
		return models;
	}

	@Override
	public ProductDTO findById(long id) {
		ProductEntity entity = productRepositpory.findOne(id);
		return productConverter.toDto(entity);
	}

	@Override
	@Transactional
	public ProductDTO save(ProductDTO dto) {
		CategoryEntity category = categoryRepository.findOneByCode(dto.getCategoryCode());// findcategory by code
		ProductEntity productEntity = new ProductEntity();
		if (dto.getId() != null) {
			ProductEntity oldNew = productRepositpory.findOne(dto.getId());
			oldNew.setCategory(category);
			productEntity = productConverter.toEntity(oldNew, dto);
		} else {
			productEntity = productConverter.toEntity(dto);
			productEntity.setCategory(category);
		}
		return productConverter.toDto(productRepositpory.save(productEntity));
	}
	@Override
	@Transactional
	public void delete(long[] ids) {
		for (long id: ids) {
			productRepositpory.delete(id);
		}
	}
}
