package com.mindtree.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.model.Country;
import com.mindtree.repository.CountryRepo;
import com.mindtree.service.CountryService;

@Service
public class CountryImpl implements CountryService {
	@Autowired
	CountryRepo cr;

	@Override
	public List<Country> getAll() {
		List<Country> countries = cr.findAll();
		return countries;
	}

	@Override
	public boolean addCountry(Country country) {
		country = cr.save(country);
		return true;
	}
	@Override
	public Country find(int cid) {
		return cr.findById(cid).get();
	}
}
