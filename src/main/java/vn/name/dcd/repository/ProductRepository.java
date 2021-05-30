package vn.name.dcd.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import vn.name.dcd.entity.ProductEntity;

public interface ProductRepository extends JpaRepository<ProductEntity, Long> {

}
