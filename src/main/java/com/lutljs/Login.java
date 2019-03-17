package com.lutljs;

import java.sql.Connection;
import java.sql.SQLException;

public class Login {

	Function Fun = new Function();
	public static int AdminID = 0;
	public static int AdminType = 0;

	public Login() {

	}

	public boolean LoginCheck(String s1, String s2) {
		try {
			Connection Conn = Utils.getConnection();
			boolean OK = true;
			OK = Fun.CheckLogin(Conn, s1, s2);
			return OK;

		} catch (SQLException e) {
			return false;
		}
	}
}