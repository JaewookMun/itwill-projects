package erp.data;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import oracle.ucp.jdbc.PoolDataSource;
import oracle.ucp.jdbc.PoolDataSourceFactory;

/**
 * The {@code ProductCP} represents Connection Pooling function for ProductDAO.
 * 
 * @author Margin
 *
 */

public class ProductCP {
	
	private static PoolDataSource _pds;
	
	static {
		_pds=PoolDataSourceFactory.getPoolDataSource();
		InputStream in=ProductCP.class.getClassLoader().getResourceAsStream("erp/data/connection.properties");
		Properties properties = new Properties();
		try {
			properties.load(in);
		} catch (IOException e1) {
			System.out.println("connection.properties 파일을 찾을 수 없습니다."+e1.getMessage());
		}
		String driver=(String)properties.get("driver");
		String url=(String)properties.get("url");
		String user=(String)properties.get("user");
		String passwd=(String)properties.get("passwd");
		int initalCons = Integer.parseInt((String)properties.get("initialCons"));
		int maxCons = Integer.parseInt((String)properties.get("maxCons"));
		
		try {
			_pds.setConnectionFactoryClassName(driver);
			_pds.setURL(url);
			_pds.setUser(user);
			_pds.setPassword(passwd);
			_pds.setInitialPoolSize(initalCons);
			_pds.setMaxPoolSize(maxCons);
		} catch (SQLException e) {
			// getStackTrace()와 getMessage의 차이점?? 
			e.getStackTrace();
		}
	}
	
	public Connection getConnection() {
		Connection con=null;
		try {
			con=_pds.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public void close(Connection con) {
		try {
			if(con!=null) con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void close(Connection con, PreparedStatement pstmt) {
		try {
			if(pstmt!=null) pstmt.close();
			if(con!=null) con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		try {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(con!=null) con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
