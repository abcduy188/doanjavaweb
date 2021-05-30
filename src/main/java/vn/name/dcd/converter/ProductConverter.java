package vn.name.dcd.converter;

import org.springframework.stereotype.Component;

import vn.name.dcd.DTO.ProductDTO;
import vn.name.dcd.entity.ProductEntity;

@Component
public class ProductConverter {
	public ProductDTO toDto(ProductEntity entity) {
		ProductDTO result = new ProductDTO();
		result.setId(entity.getId());
		result.setTensp(entity.getTensp());
		result.setMota(entity.getMota());
		result.setContent(entity.getContent());
		result.setHinhanh(entity.getHinhanh());
		result.setCategoryCode(entity.getCategory().getCode());
		return result;
	}
	public ProductEntity toEntity(ProductDTO dto) {
		ProductEntity result = new ProductEntity();
		result.setId(dto.getId());
		result.setTensp(dto.getTensp());
		result.setMota(dto.getMota());
		result.setContent(dto.getContent());
		result.setHinhanh(dto.getHinhanh());
		return result;
	}
	public ProductEntity toEntity(ProductEntity result, ProductDTO dto) {
		result.setTensp(dto.getTensp());
		result.setMota(dto.getMota());
		result.setContent(dto.getContent());
		result.setHinhanh(dto.getHinhanh());
		return result;
	}
}
