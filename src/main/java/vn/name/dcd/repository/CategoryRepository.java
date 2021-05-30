package vn.name.dcd.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import vn.name.dcd.entity.CategoryEntity;

public interface CategoryRepository extends JpaRepository<CategoryEntity, Long>{
	CategoryEntity findOneByCode(String code);
}
