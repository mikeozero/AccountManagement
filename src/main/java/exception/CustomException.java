package exception;

public class CustomException extends Exception {
	private String message;
    
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public CustomException(String message) {
		super();
		this.message = message;
	};
	

}
