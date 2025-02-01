package com.r3sys.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.r3sys.model.IssueRaw;
import com.r3sys.model.RawMaterial;

@Component
public class IssueRawDao
{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public IssueRawDao(HibernateTemplate hibernateTemplate) {
		super();
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public String toString() {
		return "IssueRawDao [hibernateTemplate=" + hibernateTemplate + "]";
	}

	public IssueRawDao() {
		super();
		// TODO Auto-generated constructor stub
	}


	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	public void save(IssueRaw iraw) 
	{
		hibernateTemplate.save(iraw);
		updateRawMaterialQuantity(iraw.getId(),iraw.getiQuantity());
		
	}
	
	@Transactional
	public void updateRawMaterialQuantity(int id, double d)
	{
		RawMaterial raw1 = hibernateTemplate.get(RawMaterial.class, id);
		if(raw1 != null)
		{
			double nQuantity = raw1.getrQuantity() - d;
			if(nQuantity >= 0)
			{
				raw1.setrQuantity(nQuantity);
				hibernateTemplate.update(raw1);
			}
			else
			{
				throw new RuntimeException("Not enough raw material available");
			}
		}
	}
	
	//viewAll issuers
	@Transactional
	public List<IssueRaw> getAllIssueRaw()
	{
		List<IssueRaw> iraws = this.hibernateTemplate.loadAll(IssueRaw.class);
		return iraws;
	}

	
}
