package vn.name.dcd.utils;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import vn.name.dcd.DTO.MyAccount;

public class SecurityUtils {
	
	public static MyAccount getPrincipal() {
		MyAccount myAccount = (MyAccount) (SecurityContextHolder.getContext()).getAuthentication().getPrincipal();
        return myAccount; 
    }
	public static List<String> getAuthorities() 
	{
		List<String> results= new ArrayList<>();
		@SuppressWarnings("unchecked")
		List<GrantedAuthority> authorities = (List<GrantedAuthority>)(SecurityContextHolder.getContext().getAuthentication().getAuthorities());
        for (GrantedAuthority authority : authorities) {
            results.add(authority.getAuthority());
        }
		return results;
	}
}
