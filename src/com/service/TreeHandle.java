package com.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.struts2.ServletActionContext;

import com.dao.OperateDao;
import com.opensymphony.xwork2.ActionSupport;
import com.service.ItemLibrary.New10;
import com.service.ItemLibrary.New35;
import com.service.ItemLibrary.Remake10;
import com.service.ItemLibrary.Remake35;
import com.service.ItemLibrary.Station35;

import entity.TItemlibrarytree;
import entity.TreeItem;

/**
 * 类型树
 * @author Administrator
 *
 */
public class TreeHandle extends ActionSupport {
	
	private static final long serialVersionUID = 41497698243680639L;
	private String treeJsonString;
	private String treeids;
	private String name;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTreeids() {
		return treeids;
	}

	public void setTreeids(String treeids) {
		this.treeids = treeids;
	}

	public String getTreeJsonString() {
		return treeJsonString;
	}

	public void setTreeJsonString(String treeJsonString) {
		this.treeJsonString = treeJsonString;
	}
	private List<TreeItem> getTreeData(TItemlibrarytree note,boolean showcheck,Integer checkstate,boolean complete,boolean isexpand)
	{
		List<TreeItem> list=new ArrayList<TreeItem>();
		List<TItemlibrarytree> child=getChild(note);
		for (TItemlibrarytree temp : child) 
		{
			TreeItem treeItem=new TreeItem();
			treeItem.setId(temp.getId().toString());
			treeItem.setText(temp.getNotetext());
			treeItem.setValue(temp.getNoteaction()+";"+temp.getNoteentity());
			treeItem.setCheckstate(checkstate);
			treeItem.setComplete(complete);
			if(temp.getNoteaction()!=null && temp.getNoteaction().indexOf(".jsp")>-1)
			{
				treeItem.setIsexpand(false);
			}
			else {
				treeItem.setIsexpand(isexpand);
			}
			treeItem.setHasChildren(haveChild(temp));
			treeItem.setShowcheck(showcheck);
			if(temp.getNoteaction()!=null && temp.getNoteaction().equals("name"))
			{
				treeItem.setShowcheck(true);
			}
			if(temp.getNotetext().indexOf("kV")>-1)
			{
				treeItem.setShowcheck(true);
			}
			if(treeItem.isHasChildren())
			{
				treeItem.setChildNodes(getTreeData(temp, showcheck, checkstate, complete, isexpand));
			}
			else {
				treeItem.setIsexpand(false);
				treeItem.setChildNodes(null);
			}
			list.add(treeItem);
		}
		return list;
	}
	private boolean haveChild(TItemlibrarytree note)
	{
		HashMap<Integer,Object> hashMap=new HashMap<Integer,Object>();
		hashMap.put(1, note.getId());
		List<TItemlibrarytree> list=OperateDao.getList("from TItemlibrarytree T where T.noteparentid=?", hashMap);
		if(list.size()>0)
		{
			return true;
		}
		return false;
	}
	private List<TItemlibrarytree> getChild(TItemlibrarytree note)
	{
		HashMap<Integer,Object> hashMap=new HashMap<Integer,Object>();
		if(note!=null)
		{
			hashMap.put(1, note.getId());
		}
		else {
			hashMap.put(1, 1);
		}
		List<TItemlibrarytree> list=OperateDao.getList("from TItemlibrarytree T where T.noteparentid=? order by T.noteorderby", hashMap);
		return list;
	}
	public String initTree() {
		try {
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/html");
			response.setCharacterEncoding("utf-8");
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Cache-Control", "no-cache, must-revalidate");
			response.setHeader("Pragma", "no-cache");
			PrintWriter writer = response.getWriter();

			if(!getTreeids().equals("") && !getTreeids().equals("undefined"))
			{
				for (String s : getTreeids().split(";")) {
					if(s.split(",")[1].equals("TItemlibraryNew10"))
					{
						new New10().DeleteNew10ByTreeID(Integer.valueOf(s.split(",")[0]));
					}
				    if(s.split(",")[1].equals("TItemlibraryRemake10"))
					{
						new Remake10().DeleteRemake10ByTreeID(Integer.valueOf(s.split(",")[0]));
					}
				    if(s.split(",")[1].equals("TItemlibraryNew35"))
					{
						new New35().DeleteNew35ByTreeID(Integer.valueOf(s.split(",")[0]));
					}
				    if(s.split(",")[1].equals("TItemlibraryRemake35"))
					{
						new Remake35().DeleteRemake35ByTreeID(Integer.valueOf(s.split(",")[0]));
					}
				    if(s.split(",")[1].equals("TItemlibraryStation35"))
					{
						new Station35().DeleteStation35ByTreeID(Integer.valueOf(s.split(",")[0]));
					}
				    TItemlibrarytree note=(TItemlibrarytree) OperateDao.getObject("from TItemlibrarytree T where T.id="+Integer.valueOf(s.split(",")[0]), null);
				    if(note.getNoteaction().indexOf(".jsp")>-1)
				    {
						List<TItemlibrarytree> child= OperateDao.getList("from TItemlibrarytree T where T.noteparentid="+Integer.valueOf(s.split(",")[0]), null);
						for (TItemlibrarytree temp : child) 
						{
							OperateDao.ExecuteBySql("delete from TItemlibrarytree T where T.id="+temp.getId());
						}
				    }
				    OperateDao.ExecuteBySql("delete from TItemlibrarytree T where T.id="+Integer.valueOf(s.split(",")[0]));
				    
				}
			}
			if(!getName().equals(""))
			{
				String name=java.net.URLDecoder.decode(getName(),"UTF-8");
				
				TItemlibrarytree library=(TItemlibrarytree) OperateDao.merge(new TItemlibrarytree(name,2,1,"name",""));
				OperateDao.saveOrUpdate(new TItemlibrarytree("10(20、6)kV",library.getId(),1,"kV",""));
				OperateDao.saveOrUpdate(new TItemlibrarytree("35kV",library.getId(),2,"kV",""));
				OperateDao.saveOrUpdate(new TItemlibrarytree("110（66）kV",library.getId(),3,"kV",""));
				OperateDao.saveOrUpdate(new TItemlibrarytree("220kV",library.getId(),4,"kV",""));
			}

			HashMap<Integer,Object> hashMap=new HashMap<Integer,Object>();
			hashMap.put(1, 1);
			TItemlibrarytree topNote=(TItemlibrarytree) OperateDao.getObject("from TItemlibrarytree T where T.id=?", hashMap);
			List<TreeItem> list=getTreeData(topNote, false,0,true,true);
			
			JSONArray fromObject2 = JSONArray.fromObject(list);

			treeJsonString = fromObject2.toString().replace("childNodes",
					"ChildNodes");
			;
			writer.print(treeJsonString);
			writer.flush();
			writer.close();

		} catch (IOException e) {
			e.printStackTrace();
		}

		return null;
	}
}
