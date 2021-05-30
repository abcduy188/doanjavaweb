package vn.name.dcd.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import vn.name.dcd.entity.AccountEntity;

public interface AccountRepository extends JpaRepository<AccountEntity, Long>{
	AccountEntity findOneByUsernameAndStatus(String name, int status);
}
