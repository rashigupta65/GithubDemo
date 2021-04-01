package com.mindtree.service;

import java.util.List;

import com.mindtree.model.Person;

public interface PersonService {
	public boolean addPerson(Person person) ;
	public List<Person> getAll();
	public List<Person> getAllByState(int sid);
}
