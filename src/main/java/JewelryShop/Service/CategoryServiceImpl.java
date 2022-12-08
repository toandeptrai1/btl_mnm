package JewelryShop.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import JewelryShop.Dao.CategoryDao;
import JewelryShop.Entity.Category;
@Service
public class CategoryServiceImpl implements ICategoryService {
	@Autowired
	CategoryDao categoryDao=new CategoryDao();

	@Override
	public List<Category> getAllCategories() {
		
		return categoryDao.getAllCategories();
	}

}
