package com.myhome.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.activation.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;

public class BoardDao {
	private static BoardDao dao;
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	private String sql;
	private static DataSource ds;
	
	static {
		try {
			System.out.println("start DBCP!");
			Context context = new InitialContext();
			ds = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//ΩÃ±€≈Ê ∆–≈œ
	private BoardDao() {}
	
	public static BoardDao getInstance() {
			if(dao == null) {
				dao = new BoardDao();
			}
			return dao;
		}
}

