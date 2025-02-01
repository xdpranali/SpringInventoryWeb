package com.r3sys.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.r3sys.dao.IssueProcessedDao;
import com.r3sys.model.IssueProcessed;

@Controller
public class IssueProcessController 
{
	@Autowired
	IssueProcessed iproc;
	@Autowired
	IssueProcessedDao ipDao;
	
	@RequestMapping("/issueProcessed")
	public String openIssueProcessedItemPage()
	{
		return "issueProcessedItem";
	}
	
	@RequestMapping(path="/issueproc",method=RequestMethod.POST)
	public String newIssueprocMaterial(@RequestParam("pid") int pid,
									  @RequestParam("pissueName") String pissueName,
									  @RequestParam("pName") String pName,
									  @RequestParam("piQuantity") double piQuantity,
									  @RequestParam("pissueDate") String pissueDate,
									  @RequestParam("pissueTime") String pissueTime, 
									  Model model)
	{
		IssueProcessed iproc = new IssueProcessed();
		iproc.setPid(pid);
		iproc.setpName(pName);
		iproc.setPissueName(pissueName);
		iproc.setPiQuantity(piQuantity);
		iproc.setPissueDate(pissueDate);
		iproc.setPissueTime(pissueTime);
		
		try
		{
			ipDao.save(iproc);
			model.addAttribute("message","Processed material issued and quantity updated successfully");
            return "redirect:/viewProcIssue";
		}
		catch(Exception i)
		{
			model.addAttribute("error","Failed to issue Processed material or update quantity");
			i.printStackTrace();
		}
		return "dashboard";
	}
	
	@RequestMapping("/viewProcIssue")
	public String openViewProcIssueRaw(Model model)
	{
		List<IssueProcessed> iproc = ipDao.getAllIssueProcessed();
		model.addAttribute("issueProcList",iproc);
		return "viewIssueProcessedItem";
	}
	

	@RequestMapping("/issueprocdash")
	public String procMatPage()
	{
		return "issueProcDash";
	}

}
