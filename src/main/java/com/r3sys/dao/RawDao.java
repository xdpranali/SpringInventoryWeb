package com.r3sys.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.r3sys.model.IssueRaw;
import com.r3sys.model.RawMaterial;

@Component
public class RawDao 
{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int addRawMaterial(RawMaterial raw) 
	{
		int i =  (Integer) this.hibernateTemplate.save(raw);
		return i;
	}
	public RawMaterial getRaw(int id)
	{
		RawMaterial raw = this.hibernateTemplate.get(RawMaterial.class, id);
		return raw;
	}
	
	//View All RawMaterial
	@Transactional
	public List<RawMaterial> getAllRawMaterial() 
	{
		 List<RawMaterial> raw = this.hibernateTemplate.loadAll(RawMaterial.class);
		 return raw;
	}
	
	@Transactional
	public void updateRawMaterial(RawMaterial raw) 
	{
		 this.hibernateTemplate.update(raw);
	}
	
	 @Transactional
		public void updateRaw(int id, double quantity) 
		{
		 RawMaterial raw  = getRaw(id); 
	    	if(raw != null)
	    	{
	    		raw.setrQuantity(raw.getrQuantity() + quantity );
	    		hibernateTemplate.save(raw);
	    	}
		}
	
	@Transactional
	public void deleteRawMaterial(int id)
	{
		RawMaterial raw  = getRaw(id);
		this.hibernateTemplate.delete(raw);
	}
	
	@Transactional
	public List<RawMaterial> showUnavailableRaw()
	{
		String query = "from RawMaterial where rQuantity=0 ";
		return (List<RawMaterial>) this.hibernateTemplate.find(query);
	}

}
