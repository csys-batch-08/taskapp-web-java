package com.chainsys.demoapp.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionUtil {
	
	
	/**
	 * @return a Connection Object
	 */
	public static Connection getDbConnect()
	{
		Connection con=null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		} 
		return con;
	}

}
