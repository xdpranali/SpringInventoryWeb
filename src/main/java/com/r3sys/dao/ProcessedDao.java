package com.r3sys.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.r3sys.model.ProcessedMaterial;

@Component
public class ProcessedDao 
{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int addProcessedMaterial(ProcessedMaterial pm) 
	{
		int d =  (Integer) this.hibernateTemplate.save(pm);
		return d;
	}
	
	//View single ProcessedMaterial.
	public ProcessedMaterial getProcessed(int pid)
	{
		ProcessedMaterial pm = this.hibernateTemplate.get(ProcessedMaterial.class, pid);
		return pm;
	}
	
	//View All ProcessedMaterial
	@Transactional
	public List<ProcessedMaterial> getAllProcessedMaterial() 
	{
		 List<ProcessedMaterial> pm = this.hibernateTemplate.loadAll(ProcessedMaterial.class);
		 return pm;
	}
	
	@Transactional
	public void updateProcessedMaterial(ProcessedMaterial pm) 
	{
		 this.hibernateTemplate.update(pm);
	}
	
	 @Transactional
		public void updateProcessed(int pid, double pquantity) 
		{
		 ProcessedMaterial pm  = getProcessed(pid); 
	    	if(pm != null)
	    	{
	    		pm.setpQuantity(pm.getpQuantity() + pquantity );
	    		hibernateTemplate.save(pm);
	    	}
		}
	
	@Transactional
	public void deleteProcessedMaterial(int pid)
	{
		ProcessedMaterial pm  = getProcessed(pid);
		this.hibernateTemplate.delete(pm);
	}

	@Transactional
	public List<ProcessedMaterial> showUnavailableProc()
	{
		String query = "from ProcessedMaterial where pQuantity=0 ";
		return (List<ProcessedMaterial>) this.hibernateTemplate.find(query);
		
	}

}
