package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.Query;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Admin;


@Repository
public interface AdminRepository extends CrudRepository<Admin,String>
{
	@Query("select a from Admin a where ausername=?1 and apassword=?2")
	public Admin checkadminlogin(String auname,String apwd);
	
	
	
}
