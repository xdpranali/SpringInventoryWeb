package com.r3sys.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.r3sys.model.IssueProcessed;
import com.r3sys.model.ProcessedMaterial;

@Component
public class IssueProcessedDao 
{
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public String toString() {
		return "IssueProcessedDao [hibernateTemplate=" + hibernateTemplate + "]";
	}

	public IssueProcessedDao() {
		super();
		// TODO Auto-generated constructor stub
	}

	public IssueProcessedDao(HibernateTemplate hibernateTemplate) {
		super();
		this.hibernateTemplate = hibernateTemplate;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
	public void save(IssueProcessed iproc) 
	{
		hibernateTemplate.save(iproc);
		updateProcessedMaterialQuantity(iproc.getPid(),iproc.getPiQuantity());
		
	}
	
	@Transactional
	private void updateProcessedMaterialQuantity(int pid, double d)
	{
		ProcessedMaterial pm1 = hibernateTemplate.get(ProcessedMaterial.class, pid);
		if(pm1 != null)
		{
			double nQuantity = pm1.getpQuantity() - d;
			if(nQuantity >= 0)
			{
				pm1.setpQuantity(nQuantity);
				hibernateTemplate.update(pm1);
			}
			else
			{
				throw new RuntimeException("Not enough Processed material available");
			}
		}
	}
	
	//viewAll process issuers
		@Transactional
		public List<IssueProcessed> getAllIssueProcessed()
		{
			List<IssueProcessed> iproc = this.hibernateTemplate.loadAll(IssueProcessed.class);
			return iproc;
		}

}
