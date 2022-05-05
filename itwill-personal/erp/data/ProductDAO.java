package erp.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 
 * @author Margin
 * @see erp.data.DAO
 * @see erp.data.ProductCP
 * @see erp.data.ProductDTO
 */

public class ProductDAO extends ProductCP implements DAO {
	
	private static ProductDAO _instance=null;
	
	private ProductDAO() {};
	
	static {
		_instance = new ProductDAO();
	}
	
	public static ProductDAO getInstance() {
		return _instance;
	}
	
	
	@Override
	public int insertProduct(ProductDTO product) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			String sql="INSERT INTO total_products VALUES(?,?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, product.getpName());
			pstmt.setString(2, product.getpCode());
			pstmt.setString(3, product.getLotNo());
			pstmt.setInt(4, product.getQty());
			pstmt.setString(5, product.getMfgDate());
			pstmt.setString(6, product.getExDate());
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[Error] insertProduct() : "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}

	@Override
	public int[] insertProducts(List<ProductDTO> products) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int[] rowsArr=null;
		
		try {
			con=getConnection();
			con.setAutoCommit(false);
			String sql="INSERT INTO total_products VALUES(?,?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			
			// con.prepareStatement() 를 for문 안에 넣으면 원하는 명령을 수행하지 못함. 
			// - 지역변수로 처리되어 초기화된다고 생각됨.
			for(int i=0; i<products.size(); i++) {
				pstmt.setString(1, products.get(i).getpName());
				pstmt.setString(2, products.get(i).getpCode());
				pstmt.setString(3, products.get(i).getLotNo());
				pstmt.setInt(4, products.get(i).getQty());
				pstmt.setString(5, products.get(i).getMfgDate());
				pstmt.setString(6, products.get(i).getExDate());
				pstmt.addBatch();
			}
			rowsArr=pstmt.executeBatch();
			con.commit();
		} catch (SQLException e) {
			System.out.println("[Error] insertProducts() : "+e.getMessage());
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} finally {
			close(con, pstmt);
		}
		
		return rowsArr;
	}

	@Override
	public int deleteProduct(String lotNo) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			
			String sql = "DELETE FROM TOTAL_PRODUCTS WHERE lotNo=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, lotNo);
			
			rows=pstmt.executeUpdate();

		} catch (SQLException e) {
			System.out.println("[Error] deleteProduct() : "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
	/**
	 * update information based on "lotNo".<p>
	 * {@code qty, mfgDate, exDate} are editable.
	 */
	@Override
	public int updateProduct(ProductDTO product) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			String sql="UPDATE total_products SET pName=?, pCode=?"
					+ ", qty=?, mfgDate=?, exDate=? WHERE lotNo=?";
			
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, product.getpName());
			pstmt.setString(2, product.getpCode());
			pstmt.setInt(3, product.getQty());
			pstmt.setString(4, product.getMfgDate());
			pstmt.setString(5, product.getExDate());
			pstmt.setString(6, product.getLotNo());
			
			rows=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("[Error] deleteProduct() : "+e.getMessage());
		} finally {
			close(con,pstmt);
		}
		
		return rows;
	}

	@Override
	public ProductDTO searchProduct(String lotNo) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		ProductDTO product=null;
		
		try {
			con=getConnection();
			String sql="SELECT * FROM total_products WHERE lotNo=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, lotNo);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				product=new ProductDTO();
				product.setpName(rs.getString("pName"));
				product.setpCode(rs.getString("pCode"));
				product.setLotNo(rs.getString("lotNo"));
				product.setQty(rs.getInt("qty"));
				product.setMfgDate(rs.getString("mfgDate").substring(0,10));
				product.setExDate(rs.getString("exDate").substring(0,10));
			}
		} catch (SQLException e) {
			System.out.println("[Error] searchProduct() : "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return product;
	}

	@Override
	public List<ProductDTO> searchProducts(String pCode) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<ProductDTO> productList=new ArrayList<ProductDTO>();
		
		try {
			con=getConnection();
			String sql="SELECT * FROM total_products WHERE pCode=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, pCode);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				ProductDTO product=new ProductDTO();
				product.setpName(rs.getString("pName"));
				product.setpCode(rs.getString("pCode"));
				product.setLotNo(rs.getString("lotNo"));
				product.setQty(rs.getInt("qty"));
				product.setMfgDate(rs.getString("mfgDate").substring(0,10));
				product.setExDate(rs.getString("exDate").substring(0,10));
				
				productList.add(product);
			}
			
		} catch (SQLException e) {
			System.out.println("[Error] searchProducts() : "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return productList;
	}

	@Override
	public List<ProductDTO> searchAll() {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<ProductDTO> productList=new ArrayList<ProductDTO>();
		
		try {
			con=getConnection();
			String sql = "SELECT * FROM TOTAL_PRODUCTS ORDER BY pName";
			
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				ProductDTO product=new ProductDTO();
				product.setpName(rs.getString("pName"));
				product.setpCode(rs.getString("pCode"));
				product.setLotNo(rs.getString("lotNo"));
				product.setQty(rs.getInt("qty"));
				product.setMfgDate(rs.getString("mfgDate").substring(0,10));
				product.setExDate(rs.getString("exDate").substring(0,10));
				
				productList.add(product);
			}
			
		} catch (SQLException e) {
			System.out.println("[Error] searchAll() : "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		return productList;
	}

}
