package com.mindtree.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.mindtree.model.State;

@Repository
public interface StateRepo extends JpaRepository<State,Integer>{
	@Query("select sname from State where cid = :cid")
	public List<String> findByCountry(@Param("cid") int cid);
}
