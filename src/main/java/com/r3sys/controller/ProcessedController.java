package com.r3sys.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.r3sys.dao.ProcessedDao;
import com.r3sys.model.ProcessedMaterial;

@Controller
public class ProcessedController
{
	@Autowired
	ProcessedMaterial pm;
	@Autowired
	ProcessedDao processedDao;
	
	//ProcessedMaterial
		@RequestMapping("/addProcessedMaterial")
		public String openAddProcessedItemPage()
		{
			return "addProcessedItem";
		}
		
		@RequestMapping(path="/addProcessed",method=RequestMethod.POST)
		public String addProcessedMaterial(@ModelAttribute ProcessedMaterial pm,HttpServletRequest request)
		{
			int d = processedDao.addProcessedMaterial(pm);
			return "redirect:/viewProcessed";
		}
		
		@RequestMapping("/viewProcessed")
		public String openViewProcessedItemPage(Model model)
		{
			List<ProcessedMaterial> pm = processedDao.getAllProcessedMaterial();
			model.addAttribute("processedList",pm);
			return "viewProcessedItem";
		}
		
		@RequestMapping(path="/deleteProcessedMaterial",method=RequestMethod.GET)
		public String deleteProcessedItem(HttpServletRequest request)
		{
			int pid = Integer.parseInt(request.getParameter("pid"));
			processedDao.deleteProcessedMaterial(pid);
			return "redirect:/viewProcessed";
		}

		@RequestMapping("/updateProcessed")
		public String openUpdateProcessedItemPage()
		{
			return "updateProcessedItem";
		}
		
		@RequestMapping(path="/updateProcessedItem",method=RequestMethod.POST)
		public String updateProcessed(@ModelAttribute ProcessedMaterial pm,HttpServletRequest request)
		{
			int pid = Integer.parseInt(request.getParameter("pid"));
			double pquantity = Double.parseDouble(request.getParameter("pquantity"));
			processedDao.updateProcessed(pid,pquantity);
			
			return "redirect:/viewProcessed";
			
		}

		
		@RequestMapping("/showUnavailableProcessedItem")
		public String openUnavailableProcPage(Model model)
		{
			List<ProcessedMaterial> pm = processedDao.showUnavailableProc();
			model.addAttribute("uprocList",pm);
			return "showUnavailableProcessedItem";
		}

		@RequestMapping("/Processeddash")
		public String procMatPage()
		{
			return "processedRawDash";
		}
		

}
