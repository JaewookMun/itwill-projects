package erp.data;

import java.util.List;

/**
 * The {@code DAO} Interface represents CRUD function methods. 
 * <p>
 * 
 * @author margin
 *
 */

public interface DAO {
	
	public int insertProduct(ProductDTO product);
	public int[] insertProducts(List<ProductDTO> products);

	public int deleteProduct(String lotNo);

	public int updateProduct(ProductDTO product);
	
	public ProductDTO searchProduct(String lotNo);
	public List<ProductDTO> searchProducts(String pCode);
	public List<ProductDTO> searchAll();
	
}
