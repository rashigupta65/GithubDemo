package com.mindtree.service;

import java.util.List;

import com.mindtree.model.Country;

public interface CountryService {
	public List<Country> getAll();
	public boolean addCountry(Country country);
	public Country find(int cid);
}
