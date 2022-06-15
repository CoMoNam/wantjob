package com.web.domain;

public class LoginDTO {
	private String id;
	private String password;
	private boolean useCookie;
	
	
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getpassword() {
		return password;
	}

	public void setpassword(String password) {
		this.password = password;
	}
	public boolean isUseCookie() {
		return useCookie;
	}
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	
	@Override
	 public String toString() {
        return "LoginDTO{" +
                "ID='" + id + '\'' +
                ", password='" + password + '\'' +
                ", useCookie=" + useCookie +
                '}';
    }

	
	}


