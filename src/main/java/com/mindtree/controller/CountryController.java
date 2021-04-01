package com.mindtree.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mindtree.model.Country;
import com.mindtree.service.CountryService;
import com.mindtree.service.StateService;

@Controller
@RequestMapping("/country")
public class CountryController {
	@Autowired
	CountryService cs;
	@Autowired
	StateService ss;

	@RequestMapping(value = "/details", method = RequestMethod.GET)
	public String EnterDetails(Model m) {
		Country m1 = new Country();
		m.addAttribute("country", m1);
		return "detail-page";
	}

	@RequestMapping(value = "/submitForm")
	public String submitForm(@ModelAttribute Country country, BindingResult result) {
		boolean isAdded = cs.addCountry(country);
		if (isAdded == true) {
			return "success";
		} else {
			return "failure";
		}
	}

	
	
}
