package com.mindtree.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.model.Country;
@Repository
public interface CountryRepo extends JpaRepository<Country,Integer>{

}
