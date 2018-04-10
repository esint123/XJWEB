package com;

import com.opensymphony.xwork2.ActionSupport;

public class HellloAction extends ActionSupport {

	private static final long serialVersionUID = 7755790853899660314L;

	public String execute() throws Exception {

		return "OK";
	}
}
