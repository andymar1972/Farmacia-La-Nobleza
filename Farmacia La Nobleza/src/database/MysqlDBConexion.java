package database;

import java.sql.Connection;
import java.sql.DriverManager;

public class MysqlDBConexion {
	
	public static Connection getConexion() {
		Connection cn = null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			//String connecctionURL="jdbc:mysql://localhost:3306/CovidFarma?user=root&password=&useUnicode=true&characterEncoding=UTF-8";
			String connecctionURL="jdbc:mysql://localhost:3307/CovidFarma?user=root&password=mysql&useUnicode=true&characterEncoding=UTF-8";
			cn=DriverManager.getConnection(connecctionURL);
			
			
		} catch (Exception e) {
			System.out.println( "Error: "+e.toString().toUpperCase());
		}
		return cn;
	}

}
