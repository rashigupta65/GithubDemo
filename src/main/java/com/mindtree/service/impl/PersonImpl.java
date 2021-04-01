package com.mindtree.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.model.Person;
import com.mindtree.model.State;
import com.mindtree.repository.CountryRepo;
import com.mindtree.repository.PersonRepo;
import com.mindtree.repository.StateRepo;
import com.mindtree.service.PersonService;

@Service
public class PersonImpl implements PersonService{
	@Autowired
	StateRepo sr;
	@Autowired
	CountryRepo cr;
	@Autowired
	PersonRepo pr;
	@Override
	public boolean addPerson(Person person) {
		person = pr.save(person);
		return true;
	}
	@Override
	public List<Person> getAll() {
		List<Person> persons = pr.findAll();
		return persons;
	}
	@Override
	public List<Person> getAllByState(int sid){
		List<Person> persons=pr.findByState(sid);
		return persons;
	}
}

