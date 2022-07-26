package com.animal.exception;

@SuppressWarnings("serial")
public class IdDuplicatedException extends RuntimeException{
	public IdDuplicatedException(String msg) {
		super(msg);
	}
}
