package vn.name.dcd.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import vn.name.dcd.DTO.MyAccount;
import vn.name.dcd.constant.SystemConstant;
import vn.name.dcd.entity.AccountEntity;
import vn.name.dcd.entity.RoleEntity;
import vn.name.dcd.repository.AccountRepository;

@Service
public class CustomUserDetailsService implements UserDetailsService {
	@Autowired
	private AccountRepository accountRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		AccountEntity accountEntity = accountRepository.findOneByUsernameAndStatus(username,
				SystemConstant.ACTIVE_STATUS);
		if (accountEntity== null) {
			throw new UsernameNotFoundException("Tài khoản không tồn tại hoặc đang bị khóa");

		}
		List<GrantedAuthority> authorities = new ArrayList<>();
		for (RoleEntity role : accountEntity.getRoles()) {
			authorities.add(new SimpleGrantedAuthority(role.getCode())); // code: ADMIN; USER
		}

		MyAccount myAccount = new MyAccount(accountEntity.getUsername(), accountEntity.getPassword(), true, true, true,
				true, authorities);
		myAccount.setFullname(accountEntity.getFullname());
		return myAccount;
	}

}
