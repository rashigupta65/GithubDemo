package com.mindtree.exception;

import java.util.Date;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;

@ControllerAdvice
@RequestMapping("/error")
public class GlobalExceptionHandler {
	@ExceptionHandler(ApplicationException.class)
	@RequestMapping(value="/errors", method=RequestMethod.GET)
	public String resourceNotFoundException(ApplicationException e, WebRequest r,Model m) {
		ErrorMessage m1 = new ErrorMessage(HttpStatus.NOT_FOUND.value(), new Date(), e.getMessage(),
				r.getDescription(false));
		m.addAttribute("exception",m1);
		return "errors";

	}
	@RequestMapping(value="/error1", method=RequestMethod.GET)
	public String globalExceptionHandler(Exception e, WebRequest r,Model m) {
		ErrorMessage m1 = new ErrorMessage(HttpStatus.INTERNAL_SERVER_ERROR.value(), new Date(), e.getMessage(),
				r.getDescription(false));
		m.addAttribute("exception",m1);
		return "error1";

	}
}
