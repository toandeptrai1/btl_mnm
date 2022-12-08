package JewelryShop.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import JewelryShop.Entity.Category;

@Service
public interface ICategoryService {
	public List<Category> getAllCategories();

}
