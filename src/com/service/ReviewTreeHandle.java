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

import entity.TReviewtree;
import entity.TreeItem;

public class ReviewTreeHandle extends ActionSupport {
	private static final long serialVersionUID = -5418099572622979205L;
	private String treeJsonString;
	private String name;
	private String unit;
	private String time;
	private String ontime;
	private Integer id;
	private String treeids;
	public String getTreeids() {
		return treeids;
	}

	public void setTreeids(String treeids) {
		this.treeids = treeids;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getOntime() {
		return ontime;
	}

	public void setOntime(String ontime) {
		this.ontime = ontime;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTreeJsonString() {
		return treeJsonString;
	}

	public void setTreeJsonString(String treeJsonString) {
		this.treeJsonString = treeJsonString;
	}
	private List<TReviewtree> getChild(TReviewtree note)
	{
		HashMap<Integer,Object> hashMap=new HashMap<Integer,Object>();
		if(note!=null)
		{
			hashMap.put(1, note.getId());
		}
		else {
			hashMap.put(1, 1);
		}
		List<TReviewtree> list=OperateDao.getList("from TReviewtree T where T.noteparentid=? order by T.noteorderby", hashMap);
		return list;
	}
	private boolean haveChild(TReviewtree note)
	{
		HashMap<Integer,Object> hashMap=new HashMap<Integer,Object>();
		hashMap.put(1, note.getId());
		List<TReviewtree> list=OperateDao.getList("from TReviewtree T where T.noteparentid=?", hashMap);
		if(list.size()>0)
		{
			return true;
		}
		return false;
	}
	private List<TreeItem> getTreeData(TReviewtree note,boolean showcheck,Integer checkstate,boolean complete,boolean isexpand)
	{
		List<TreeItem> list=new ArrayList<TreeItem>();
		List<TReviewtree> child=getChild(note);
		for (TReviewtree temp : child) 
		{
			TreeItem treeItem=new TreeItem();
			treeItem.setId(temp.getId().toString());
			if(temp.getReviewunit()!=null && !temp.getReviewunit().equals(""))
			{
				treeItem.setText(temp.getNotetext()+"（"+temp.getReviewunit()+"）");
			}
			else {
				treeItem.setText(temp.getNotetext());
			}
			treeItem.setValue(temp.getNoteaction());
			treeItem.setCheckstate(checkstate);
			treeItem.setComplete(complete);
			treeItem.setIsexpand(isexpand);
			treeItem.setHasChildren(haveChild(temp));
			treeItem.setShowcheck(showcheck);
			if(temp.getNoteaction()!=null)
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
	public String initTree() {
		try {
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/html");
			response.setCharacterEncoding("utf-8");
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Cache-Control", "no-cache, must-revalidate");
			response.setHeader("Pragma", "no-cache");
			PrintWriter writer = response.getWriter();
			
			if(getName()!=null && !getName().equals("undefined") && !getName().equals(""))
			{
				String nameString=java.net.URLDecoder.decode(getName(),"UTF-8");
				String unitString=java.net.URLDecoder.decode(getUnit(),"UTF-8");
				String timeString=java.net.URLDecoder.decode(getTime(),"UTF-8");
				String ontimeString=java.net.URLDecoder.decode(getOntime(),"UTF-8");
				TReviewtree note=new TReviewtree();
				note.setNoteparentid(getId());
				note.setNotetext(nameString);
				note.setReviewname(nameString);
				note.setReviewunit(unitString);
				note.setReviewtime(timeString);
				note.setReviewontime(ontimeString);
				if(getId()==12)//配网农网项目可研代初设评审要点细则
				{
					note.setNoteaction("grade/Rural/gradeRuralData.jsp");
				}
				else if(getId()==4)//产业基建项目
				{
					note.setNoteaction("grade/Capital/gradeCapitalData.jsp");
				}
				else if(getId()==5)//产业技改、大修项目
				{
					note.setNoteaction("grade/Industry/gradeIndustryData.jsp");
				}
				else if(getId()==6)//非生产性大修项目
				{
					note.setNoteaction("grade/Overhaul/gradeOverhaulData.jsp");
				}
				else if(getId()==7)//非生产性技改项目
				{
					note.setNoteaction("grade/Technical/gradeTechnicalData.jsp");
				}
				else if(getId()==8)//固定资产零星购置项目
				{
					note.setNoteaction("grade/Assets/gradeAssetsData.jsp");
				}
				else if(getId()==9)//管理咨询项目
				{
					note.setNoteaction("grade/Manage/gradeManageData.jsp");
				}
				else if(getId()==10)//教育培训项目
				{
					note.setNoteaction("grade/Teach/gradeTeachData.jsp");
				}
				OperateDao.saveOrUpdate(note);
			}
			if(getTreeids()!=null && !getTreeids().equals("undefined") && !getTreeids().equals(""))
			{
				String ss=java.net.URLDecoder.decode(getTreeids(),"UTF-8");
				for (String s : ss.split(";"))
				{
					OperateDao.ExecuteBySql("delete from TReviewtree T where T.id="+Integer.valueOf(s.split(",")[0]));
					if(s.split(",")[1].equals("grade/Rural/gradeRuralData.jsp"))
					{
						OperateDao.ExecuteBySql("delete from TGradeRural T where T.treeid="+Integer.valueOf(s.split(",")[0]));
					}
				}
			}
			HashMap<Integer,Object> hashMap=new HashMap<Integer,Object>();
			hashMap.put(1, 1);
			TReviewtree topNote=(TReviewtree) OperateDao.getObject("from TReviewtree T where T.id=?", hashMap);
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
