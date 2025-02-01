package com.r3sys.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.r3sys.dao.ManagerDao;
import com.r3sys.dao.RawDao;
import com.r3sys.model.Manager;
import com.r3sys.model.RawMaterial;

@Controller
public class InventoryController
{
	@Autowired
	RawMaterial raw;
	@Autowired
	RawDao rawDao;
	
	@Autowired
	Manager manager;
	@Autowired
	ManagerDao mDao;
	
	@RequestMapping("/")
	public String openIndexPage()
	{
		return "index";
	}
	
	@RequestMapping(path="/loginAdmin",method=RequestMethod.POST)
	public String adminLogin(HttpServletRequest request, Model model)
	{
		String aemail = request.getParameter("email");
		String apass = request.getParameter("password");
		
		model.addAttribute("em",aemail);
		return "dashboard";
		
	}
	
	@RequestMapping("/addRawMaterial")
	public String openAddRawPage()
	{
		return "addRaw";
	}
	
	@RequestMapping(path="/addRaw",method=RequestMethod.POST)
	public String addRawMaterial(@ModelAttribute RawMaterial raw,HttpServletRequest request)
	{
		int i = rawDao.addRawMaterial(raw);
		return "redirect:/viewRawMaterial";
	}
	
	@RequestMapping("/viewRawMaterial")
	public String openViewRawPage(Model model)
	{
		List<RawMaterial> raw = rawDao.getAllRawMaterial();
		model.addAttribute("rawList",raw);
		return "viewRaw";
	}
	
	@RequestMapping(path="/deleteRawMaterial",method=RequestMethod.GET)
	public String deleteRaw(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		rawDao.deleteRawMaterial(id);
		return "redirect:/viewRawMaterial";
	}
	
	@RequestMapping("/updateRawMaterial")
	public String openUpdatePage()
	{
		return "updateRaw";
	}
	
	@RequestMapping(path="/updateRaw",method=RequestMethod.POST)
	public String updateRawPage(@ModelAttribute RawMaterial raw,HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		double quantity = Double.parseDouble(request.getParameter("quantity"));
		rawDao.updateRaw(id,quantity);
		
		return "redirect:/viewRawMaterial";
		
	}
	
	@RequestMapping("/showUnavailableRawItem")
	public String openUnavailableRawPage(Model model)
	{
		List<RawMaterial> raw = rawDao.showUnavailableRaw();
		model.addAttribute("urawList",raw);
		return "showUnavailableRawItem";
	}
	
	@RequestMapping("/changePass")
	public String openChangePasswordPage()
	{
		return "changePassword";
	}
	
	@RequestMapping(path="/changePassword",method=RequestMethod.POST)
	public String changePass(HttpServletRequest request)
	{
		String email = request.getParameter("email");
		String npassword = request.getParameter("npassword");
		Manager manager = mDao.getInfo(email);
		String setpass = manager.getPassword();
		setpass = npassword;
		manager.setPassword(setpass);
		mDao.setPassword(manager);
		return "dashboard";
	}
	@RequestMapping("/Rawdash")
	public String rawMatPage()
	{
		return "rawMaterialDash";
	}
	
}
