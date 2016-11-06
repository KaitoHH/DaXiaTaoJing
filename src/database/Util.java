package database;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.beans.PropertyVetoException;
import java.sql.*;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/11/2
 * Description:
 * All rights reserved.
 */
public class Util {
	private static ComboPooledDataSource source;

	static {
		source = new ComboPooledDataSource();
		try {
			source.setDriverClass("com.mysql.jdbc.Driver"); //loads the jdbc driver
			source.setJdbcUrl("jdbc:mysql://kaitohh.com:3306/daxiataojing?useSSL=false");
			source.setUser("root");
			source.setPassword("Dax1a");
			source.setMinPoolSize(5);
			source.setAcquireIncrement(5);
			source.setMaxPoolSize(20);
		} catch (PropertyVetoException e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() {
		/*String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://kaitohh.com:3306/daxiataojing?useSSL=false";
		String username = "root";
		String password = "Dax1a";
		Connection conn = null;
		try {
			Class.forName(driver);
			conn = (Connection) DriverManager.getConnection(url, username, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;*/

		try {
			return source.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public static ResultSet getResult(String sql) {
		Connection connection = getConnection();
		try {
			Statement statement = connection.createStatement();
			return statement.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
