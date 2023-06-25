package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Feedback;
@Repository
public interface FeedbackRepository extends CrudRepository<Feedback, Integer>{
	
	@Query("select f from Feedback f where ffname=?1")
	public Feedback viewfeedback(String funame);
}
