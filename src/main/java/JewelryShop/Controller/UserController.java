package JewelryShop.Controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import JewelryShop.Dto.CartDto;
import JewelryShop.Entity.Category;
import JewelryShop.Entity.Order;
import JewelryShop.Entity.OrderDetail;
import JewelryShop.Entity.User;
import JewelryShop.Service.BillServiceImpl;
import JewelryShop.Service.CategoryServiceImpl;
import JewelryShop.Service.UserServiceImpl;
import net.htmlparser.jericho.CharacterReference;

@Controller
public class UserController {
	@Autowired
	UserServiceImpl userService;
	@Autowired
	BillServiceImpl billService;
	@Autowired
	CategoryServiceImpl categoryService=new CategoryServiceImpl();
	@RequestMapping(value = {"/editProfile"} ,method = RequestMethod.POST)
	public String Index(Model mv,HttpServletRequest req,HttpSession session,HttpServletResponse res) {
		
		try {
			req.setCharacterEncoding("UTF-8");
	        res.setCharacterEncoding("UTF-8");
			User user=(User)session.getAttribute("User");
			if(user!=null) {
				user.setUser_phone(req.getParameter("SDT"));
				user.setUser_fullname(CharacterReference.decode(req.getParameter("hoTen")));
				user.setUser_address(CharacterReference.decode(req.getParameter("diaChi")));
				user.setUser_email(req.getParameter("email"));
				user.setUser_name(req.getParameter("tenDN"));
				user.setUser_pass(req.getParameter("password"));
				
				if(userService.editUser(user)>0) {
					session.setAttribute("User", user);
					return "redirect:"+req.getHeader("Referer");
				}else {
					mv.addAttribute("message", "Lưu không thành công!");
					return "redirect:"+req.getHeader("Referer");
				}
			}else {
				return "redirect:/";
			}
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<Category> listC=new ArrayList<Category>();
		listC=categoryService.getAllCategories();
		
		mv.addAttribute("listC", listC);
		return "redirect:"+req.getHeader("Referer");
	}
	@RequestMapping(value = {"/checkout"} ,method = RequestMethod.GET)
	public String checkOut(Model mv) {
		List<Category> listC=new ArrayList<Category>();
		listC=categoryService.getAllCategories();
		
		mv.addAttribute("listC", listC);
		
		return "user/checkout";
	}
	@RequestMapping(value = {"/thanhtoan"} ,method = RequestMethod.POST)
	public String thanhtoan(Model mv,HttpSession session,HttpServletRequest req) {
		
		User user=(User)session.getAttribute("User");
		double amount=Double.parseDouble((String) session.getAttribute("TotalPrice"));
		HashMap<Integer, CartDto> cart=(HashMap<Integer, CartDto>)session.getAttribute("Cart");
		if(user!=null&&cart!=null) {
			Order order=new Order();
			order.setOrder_user_id(user.getUser_id());
			order.setOrder_phone(req.getParameter("sdt"));
			order.setOrder_notes(req.getParameter("notes"));
			order.setOrder_ship_address(req.getParameter("diachi"));
			order.setOrder_amount(amount);
			
			if(billService.addOrder(order)>0) {
				System.out.println(billService.getIdOrder(user.getUser_id()));
				for (Map.Entry<Integer,CartDto> itemCart : cart.entrySet()) {
					OrderDetail orderDetail=new OrderDetail();
					orderDetail.setOrder_detail_order_id(billService.getIdOrder(user.getUser_id()));
					
					orderDetail.setOrder_detail_pid(itemCart.getValue().getProduct().getProduct_id());
					orderDetail.setOrder_detail_price(itemCart.getValue().getTotalPrice());
					orderDetail.setOrder_detail_quantity(itemCart.getValue().getQuantity());
					billService.addOrderDetal(orderDetail);
				
					
				}
				session.removeAttribute("Cart");
				session.removeAttribute("TotalQuanty");
				session.removeAttribute("TotalPrice");
				return "redirect:/cart";
			}else {
				return "redirect:/dang-nhap";
			}
			
			
		}else {
			
			return "redirect:/dang-nhap";
		}
		
		
		
	}
	

}
