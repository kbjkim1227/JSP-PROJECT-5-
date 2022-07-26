package com.event.exception;

@SuppressWarnings("serial") // serialVersionUID 누락 시 경고메세지 제거
public class IdDuplicatedException extends RuntimeException{ 
	public IdDuplicatedException(String msg) {
		super(msg);
	}
}
