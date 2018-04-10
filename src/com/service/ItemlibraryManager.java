package com.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import com.dao.OperateDao;
import com.service.ItemLibrary.ActionBase;

import entity.TItemlibrary;

/**
 * 项目库操作
 * @author Administrator
 *
 */
public class ItemlibraryManager {
	private List<TItemlibrary> itemlibraryList;
	//更新表明主键ID条件
	private Integer attache_id;
	//更新表明对应字段
	private String attache_field;
	//更新表明对应字段值
	private String attache_fileid;
	//更新表名
	private String tableName;
	//删除附件ID
	private Integer id;
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getAttache_id() {
		return attache_id;
	}

	public void setAttache_id(Integer attache_id) {
		this.attache_id = attache_id;
	}

	public String getAttache_fileid() {
		return attache_fileid;
	}

	public void setAttache_fileid(String attache_fileid) {
		this.attache_fileid = attache_fileid;
	}

	public String getAttache_field() {
		return attache_field;
	}

	public void setAttache_field(String attache_field) {
		this.attache_field = attache_field;
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}


	
	public List<TItemlibrary> getItemlibraryList() {
		return itemlibraryList;
	}

	public void setItemlibraryList(List<TItemlibrary> itemlibraryList) {
		this.itemlibraryList = itemlibraryList;
	}
	
	public String returnList() throws Exception
	{
		if(getId()!=null && !getId().equals(""))
		{
			ActionBase aa=new ActionBase();
			aa.DeleteAttachByID(getId().toString());
			OperateDao.ExecuteBySql("update "+tableName+" T "+" set T.F"+getAttache_field()+" = '"+getAttache_fileid()+"' where T.id="+getAttache_id());
		}
		HashMap<Integer, Object> hashMap = new HashMap<Integer, Object>();
		List<Integer> idlist=new ArrayList<Integer>();
		for (String s : getAttache_fileid().split("@"))
		{
			if(!s.equals(""))
			{
				idlist.add(Integer.parseInt(s));
			}
		}
		hashMap.put(1, idlist);
		itemlibraryList = OperateDao.getList("from TItemlibrary  where id in (:id) order by id", hashMap);
		return "list";
	}
}
