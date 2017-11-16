package com.cg.project.exception;

public class BankingException extends Exception {

	/**
	 * Banking Exception class
	 */
	private static final long serialVersionUID = 1L;

	public BankingException() {
	}

	public BankingException(String message) {
		super(message);
	}

	public BankingException(Throwable cause) {
		super(cause);
	}

	public BankingException(String message, Throwable cause) {
		super(message, cause);
	}

	public BankingException(String message, Throwable cause,
			boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

}
