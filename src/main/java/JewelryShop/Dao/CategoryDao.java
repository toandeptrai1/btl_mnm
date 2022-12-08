package JewelryShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import JewelryShop.Entity.Category;
import JewelryShop.Entity.MapperCategory;
@Repository
public class CategoryDao extends BaseDao {
	public List<Category> getAllCategories() {
		List<Category> list=new ArrayList<Category>();
		String sql="SELECT * FROM jewelryshop.category;";
		list=_jdbcTemplate.query(sql, new MapperCategory());
		return list;
	}

}
