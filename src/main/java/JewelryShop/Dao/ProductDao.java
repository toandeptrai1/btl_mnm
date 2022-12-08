package JewelryShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import JewelryShop.Entity.MapperProduct;
import JewelryShop.Entity.Product;

@Repository
public class ProductDao extends BaseDao {
	public List<Product> getAllProduct(){
		List<Product> list=new ArrayList<Product>();
		String sql="SELECT * FROM jewelryshop.product;";
		list=_jdbcTemplate.query(sql, new MapperProduct());
		return list;
	}
	
	public List<Product> getNewProduct(){
		List<Product> list=new ArrayList<Product>();
		String sql="SELECT * FROM jewelryshop.product ORDER BY product_id DESC LIMIT 8;";
		list=_jdbcTemplate.query(sql, new MapperProduct());
		return list;
	}
	public List<Product> getProductsByCate(int cid){
		List<Product> list=new ArrayList<Product>();
		String sql="SELECT * FROM jewelryshop.product WHERE product_category_id="+cid+"";
		list=_jdbcTemplate.query(sql, new MapperProduct());
		return list;
	}
	public Product getProductByID(int id) {
		Product p=new Product();
		String sql="SELECT * FROM jewelryshop.product WHERE product_id="+id+";";
		p=_jdbcTemplate.queryForObject(sql, new MapperProduct());
		return p;
	}
	

}
