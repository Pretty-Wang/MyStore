package com.pets.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pets.domain.Pet;
import com.pets.pager.PageBean;
import com.pets.service.PetService;
import com.pets.servlet.BaseServlet;
import com.pets.utils.CommonUtils;

public class PetServlet extends BaseServlet {

	private PetService petService = new PetService();
	
	/**
	 * 获取当前页码
	 * @param req
	 * @return
	 */
	private int getPc(HttpServletRequest req) {
		int pc = 1;
		String param = req.getParameter("pc");
		if(param != null && !param.trim().isEmpty()) {
			try {
				pc = Integer.parseInt(param);
			} catch(RuntimeException e) {}
		}
		return pc;
	}
	
	/**
	 * 截取url，页面中的分页导航中需要使用它做为超链接的目标！
	 * @param req
	 * @return
	 */
	private String getUrl(HttpServletRequest req) {
		String url = req.getRequestURI() + "?" + req.getQueryString();
		/*
		 * 如果url中存在pc参数，截取掉，如果不存在那就不用截取。
		 */
		int index = url.lastIndexOf("&pc=");
		if(index != -1) {
			url = url.substring(0, index);
		}
		return url;
	}
	
//	按id查询
	public String load(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String bid = req.getParameter("bid");//获取链接的参数bid
		Pet pet = petService.load(bid);//通过bid得到pet对象
		req.setAttribute("pet", pet);//保存到req中
		return "f:/jsps/pet/desc.jsp";//转发到desc.jsp
	}
	
//	按分类查询
	public String findByCategory(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		/*
		 * 1. 得到pc：如果页面传递，使用页面的，如果没传，pc=1
		 */
		int pc = getPc(req);
		/*
		 * 2. 得到url：...
		 */
		String url = getUrl(req);
		/*
		 * 3. 获取查询条件，本方法就是cid，即分类的id
		 */
		String cid = req.getParameter("cid");
		/*
		 * 4. 使用pc和cid调用service#findByCategory得到PageBean
		 */
		PageBean<Pet> pb = petService.findByCategory(cid, pc);
		/*
		 * 5. 给PageBean设置url，保存PageBean
		 */
		pb.setUrl(url);
		req.setAttribute("pb", pb);
		return "f:/jsps/pet/list.jsp";
	}
	
//	按名称查询
	public String findByBname(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		/*
		 * 1. 得到pc：如果页面传递，使用页面的，如果没传，pc=1
		 */
		int pc = getPc(req);
		/*
		 * 2. 得到url：...
		 */
		String url = getUrl(req);
		/*
		 * 3. 获取查询条件，本方法就是cid，即分类的id
		 */
		String bname = req.getParameter("bname");
		/*
		 * 4. 使用pc和cid调用service#findByCategory得到PageBean
		 */
		PageBean<Pet> pb = petService.findByBname(bname, pc);
		/*
		 * 5. 给PageBean设置url，保存PageBean
		 */
		pb.setUrl(url);
		req.setAttribute("pb", pb);
		return "f:/jsps/pet/list.jsp";
	}
}
