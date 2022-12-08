package JewelryShop.Controller.Admin;

import java.io.Console;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import JewelryShop.Entity.MyFile;
import JewelryShop.Entity.Product;
import JewelryShop.Entity.User;
import JewelryShop.Service.BillServiceImpl;
import JewelryShop.Service.ProductServiceImpl;
import JewelryShop.Service.UserServiceImpl;

@Controller
public class AdminController {
	@Autowired
	BillServiceImpl billService;
	@Autowired
	UserServiceImpl userService;
	@Autowired
	ProductServiceImpl productService;
	@RequestMapping(value = {"/quan-tri/"} ,method = RequestMethod.GET)
	public String Index(Model mv,HttpSession session) {
		User user=(User)session.getAttribute("User");
		if(user!=null&&user.getUser_role()==1) {
			mv.addAttribute("totalSale", billService.getTotalSale());
			mv.addAttribute("Revenue", String.format("%.0f", billService.getRevenue()) );
			mv.addAttribute("myFile", new MyFile());
		
			mv.addAttribute("CountCustomer", billService.getCountCustomers());
			return "admin/index";
		}
		if(user!=null&&user.getUser_role()!=1) {
			return "redirect:/";
		}
		return "redirect:/dang-nhap";
	}
	@RequestMapping(value = {"/quan-tri/user/view"} ,method = RequestMethod.GET)
	public String userView(Model mv,HttpSession session) {
		User user=(User)session.getAttribute("User");
		if(user!=null&&user.getUser_role()==1) {
			List<User> listUser=new ArrayList<User>();
			listUser=userService.getUsers();
			if (listUser!=null) {
				mv.addAttribute("listUser", listUser);
			}
			return "admin/userView";
		}
		if(user!=null&&user.getUser_role()!=1) {
			return "redirect:/";
		}
		return "redirect:/dang-nhap";
	}
	@RequestMapping(value = {"/quan-tri/user/profile"} ,method = RequestMethod.GET)
	public String ViewProfile(Model mv,HttpSession session,@RequestParam("id")int id) {
		User user=(User)session.getAttribute("User");
		if(user!=null&&user.getUser_role()==1) {
			if(id>0) {
				User userEdit=new User();
				userEdit=userService.getUser(id);
				mv.addAttribute("userEdit", userEdit);
				return "admin/profile";
			}
			
		}
		if(user!=null&&user.getUser_role()!=1) {
			return "redirect:/";
		}
		return "redirect:/dang-nhap";
	}
	@RequestMapping(value = {"/quan-tri/user/edit"} ,method = RequestMethod.POST)
	public String EditUser(Model mv,HttpSession session,HttpServletRequest req ) {
		int id=Integer.parseInt(req.getParameter("id"));
		User user=(User)session.getAttribute("User");
		if(user!=null&&user.getUser_role()==1) {
			if(id>0) {
				User userEdit=new User();
				userEdit=userService.getUser(id);
				userEdit.setUser_fullname(req.getParameter("fullName"));
				userEdit.setUser_address(req.getParameter("address"));
				userEdit.setUser_email(req.getParameter("email"));
				userEdit.setUser_phone(req.getParameter("phone"));
				if(userService.editUser(userEdit)>0) {
					return "redirect:/quan-tri/user/view";
				}else {
					return "redirect:/quan-tri/user/profile?id="+id+"";
				}
				
				
			}else {
				return "redirect:/";
			}
			
		}
		if(user!=null&&user.getUser_role()!=1) {
			return "redirect:/";
		}
		return "redirect:/dang-nhap";
	}
	@RequestMapping(value = {"/quan-tri/user/delete"} ,method = RequestMethod.GET)
	public String delUser(Model mv,HttpSession session,@RequestParam("id")int id) {
		User user=(User)session.getAttribute("User");
		if(user!=null&&user.getUser_role()==1) {
			if(id>0) {
				if(userService.delUser(id)>0) {
					return "redirect:/quan-tri/user/view";
				}else {
					return "redirect:/quan-tri/user/view";
				}
			}
			
		}
		if(user!=null&&user.getUser_role()!=1) {
			return "redirect:/";
		}
		return "redirect:/dang-nhap";
	}
	
	
	@RequestMapping(value = {"/quan-tri/user/add"} ,method = RequestMethod.POST)
	public String addUser(Model mv,HttpSession session,HttpServletRequest req) {
		User user=(User)session.getAttribute("User");
		if(user!=null&&user.getUser_role()==1) {
		  User userAdd=new User();
		  userAdd.setUser_fullname(req.getParameter("fullname"));
		  userAdd.setUser_address(req.getParameter("address"));
		  userAdd.setUser_name(req.getParameter("username"));
		  userAdd.setUser_email(req.getParameter("email"));
		  userAdd.setUser_pass(req.getParameter("pass"));
		  userAdd.setUser_role(Integer.parseInt(req.getParameter("role")));
		  if(userService.addUser(userAdd)>0) {
			  return "redirect:/quan-tri/user/view";
		  }
		  return "redirect:/quan-tri/user/view";
			
		}
		if(user!=null&&user.getUser_role()!=1) {
			return "redirect:/";
		}
		return "redirect:/dang-nhap";
	}
	@RequestMapping(value = {"/quan-tri/user/add"} ,method = RequestMethod.GET)
	public String formAdd(Model mv,HttpSession session,HttpServletRequest req) {
		User user=(User)session.getAttribute("User");
		if(user!=null&&user.getUser_role()==1) {
			return "admin/AddUser";
			
		}
		if(user!=null&&user.getUser_role()!=1) {
			return "redirect:/";
		}
		return "redirect:/dang-nhap";
	}
	@RequestMapping(value = {"/quan-tri/product/view"} ,method = RequestMethod.GET)
	public String ProductViews(Model mv,HttpSession session,HttpServletRequest req) {
		User user=(User)session.getAttribute("User");
		if(user!=null&&user.getUser_role()==1) {
			List<Product> listP=new ArrayList<Product>();
			listP=productService.getNewProduct();
			
			mv.addAttribute("ListP", listP);
			
			
			return "admin/Product";
			
		}
		if(user!=null&&user.getUser_role()!=1) {
			return "redirect:/";
		}
		return "redirect:/dang-nhap";
	}
	@RequestMapping(value = {"/quan-tri/product/detail"} ,method = RequestMethod.GET)
	public String ProductDetail(Model mv,HttpSession session,HttpServletRequest req) {
		User user=(User)session.getAttribute("User");
		if(user!=null&&user.getUser_role()==1) {
			List<Product> listP=new ArrayList<Product>();
			listP=productService.getNewProduct();
			
			mv.addAttribute("ListP", listP);
			
			
			return "admin/ProductDetail";
			
		}
		if(user!=null&&user.getUser_role()!=1) {
			return "redirect:/";
		}
		return "redirect:/dang-nhap";
	}
	
	@RequestMapping(value = {"/quan-tri/product/uploadFile"} ,method = RequestMethod.POST)
	public String ProductUploadFile(Model mv,HttpSession session,HttpServletRequest req,@ModelAttribute("myFile")MyFile myFile) {
		User user=(User)session.getAttribute("User");
		if(user!=null&&user.getUser_role()==1) {
			 try {
			    
			     
			      MultipartFile multipartFile=myFile.getMultipartFile();
			      String fileName = multipartFile.getOriginalFilename();
			      File file = new File("D:\\WebSpring\\JewelryShop\\WebContent\\assets\\images", fileName);
			      multipartFile.transferTo(file);
			      System.out.println(fileName);
			    } catch (Exception e) {
			      e.printStackTrace();
			     
			    }
			
			
			return "redirect:"+req.getHeader("Referer");
			
		}
		if(user!=null&&user.getUser_role()!=1) {
			return "redirect:/";
		}
		return "redirect:/dang-nhap";
	}
	

}
