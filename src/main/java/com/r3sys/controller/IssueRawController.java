package com.r3sys.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.r3sys.dao.IssueRawDao;
import com.r3sys.model.IssueRaw;

@Controller
public class IssueRawController 
{
	@Autowired
	IssueRaw iraw;
	
	@Autowired
	IssueRawDao iDao;
	
	@RequestMapping("/issueRawMaterial")
	public String openIssueRawMaterialPage()
	{
		return "issueRaw";
	}
	
	@RequestMapping(path="/issueRaw",method=RequestMethod.POST)
	public String newIssueRawMaterial(@RequestParam("id") int id,
									  @RequestParam("issueName") String issueName,
									  @RequestParam("rName") String rName,
									  @RequestParam("iQuantity") double iQuantity,
									  @RequestParam("issueDate") String issueDate,
									  @RequestParam("issueTime") String issueTime, 
									  Model model)
	{
		IssueRaw iraw = new IssueRaw();
		iraw.setId(id);
		iraw.setrName(rName);
		iraw.setIssueName(issueName);
		iraw.setiQuantity(iQuantity);
		iraw.setIssueDate(issueDate);
		iraw.setIssueTime(issueTime);
		
		try
		{
			iDao.save(iraw);
			model.addAttribute("message","Raw material issued and quantity updated successfully");
            return "redirect:/viewIssue";
		}
		catch(Exception i)
		{
			model.addAttribute("error","Failed to issue raw material or update quantity");
			i.printStackTrace();
		}
		return "dashboard";
	}
	
	@RequestMapping("/viewIssue")
	public String openViewIssueRaw(Model model)
	{
		List<IssueRaw> iraws = iDao.getAllIssueRaw();
		model.addAttribute("issueRawList",iraws);
		return "viewIssueRaw";
	}
	
	@RequestMapping("/issuedash")
	public String rawMatPage()
	{
		return "issueRawDash";
	}

}
