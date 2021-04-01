package com.mindtree.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.mindtree.model.Person;
@Repository
public interface PersonRepo extends JpaRepository<Person,Integer>{
	@Query("select p from Person p where sid = :sid")
	public List<Person> findByState(@Param("sid") int sid);
}
