package com.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.struts2.ServletActionContext;

import com.dao.OperateDao;

import entity.TItemlibrary;
import entity.TItemlibrarytree;
import entity.TItemtemplate;
import entity.TreeItem;

public class TemplateTreeHandle {
	private String treeJsonString;
	private String fileName;
	private InputStream fileStream;
	private Integer id;

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public InputStream getFileStream() {
		return fileStream;
	}
	public String getTreeJsonString() {
		return treeJsonString;
	}
	public void setFileStream(InputStream fileStream) {
		this.fileStream = fileStream;
	}
	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public void setTreeJsonString(String treeJsonString) {
		this.treeJsonString = treeJsonString;
	}
	public String downloadToAttach() throws UnsupportedEncodingException
	{
		TItemlibrary item=(TItemlibrary) OperateDao.getObject("from TItemlibrary where id="+getId(), null);
	    String root = ServletActionContext.getServletContext().getRealPath(File.separator);
	    setFileName(item.getFilename());
	    File file=new File(root+item.getFilepath()+item.getFilename());
	    if(file.isFile())
	    {
			fileName=java.net.URLEncoder.encode(fileName, "UTF-8");
	        try {  
	        	fileStream=new FileInputStream(file);  
	        }catch(Exception e){
	        	e.printStackTrace();
	        }
	        return "download";
	    }
		return null;
	}
	public String downloadToExcel() throws UnsupportedEncodingException
	{
		TItemtemplate template=(TItemtemplate) OperateDao.getObject("from TItemtemplate where id="+getId(), null);
		String root = ServletActionContext.getServletContext().getRealPath(File.separator);
		setFileName(template.getFilepath());
		File file=new File(root+"Template"+File.separator +getFileName());
		fileName=java.net.URLEncoder.encode(fileName, "UTF-8");
        try {  
        	fileStream=new FileInputStream(file);  
        }catch(Exception e){
        	e.printStackTrace();
        }
        
		return "download";
	}
	private List<TreeItem> getTreeData(TItemtemplate note,boolean showcheck,Integer checkstate,boolean complete,boolean isexpand)
	{
		List<TreeItem> list=new ArrayList<TreeItem>();
		List<TItemtemplate> child=getChild(note);
		for (TItemtemplate temp : child) 
		{
			TreeItem treeItem=new TreeItem();
			treeItem.setId(temp.getId().toString());
			treeItem.setText(temp.getFilename());
			treeItem.setValue(temp.getFilepath());
			treeItem.setCheckstate(checkstate);
			treeItem.setComplete(complete);
			if(temp.getFilepath().equals("kV"))
			{
				treeItem.setIsexpand(false);
			}
			else {
				treeItem.setIsexpand(isexpand);
			}
			treeItem.setHasChildren(haveChild(temp));
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
	private boolean haveChild(TItemtemplate note)
	{
		HashMap<Integer,Object> hashMap=new HashMap<Integer,Object>();
		hashMap.put(1, note.getId());
		List<TItemlibrarytree> list=OperateDao.getList("from TItemtemplate T where T.parentid=?", hashMap);
		if(list.size()>0)
		{
			return true;
		}
		return false;
	}
	private List<TItemtemplate> getChild(TItemtemplate note)
	{
		HashMap<Integer,Object> hashMap=new HashMap<Integer,Object>();
		if(note!=null)
		{
			hashMap.put(1, note.getId());
		}
		else {
			hashMap.put(1, 1);
		}
		List<TItemtemplate> list=OperateDao.getList("from TItemtemplate T where T.parentid=? order by T.orderid", hashMap);
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


			HashMap<Integer,Object> hashMap=new HashMap<Integer,Object>();
			hashMap.put(1, 1);
			TItemtemplate topNote=(TItemtemplate) OperateDao.getObject("from TItemtemplate T where T.id=?", hashMap);
			List<TreeItem> list=getTreeData(topNote, true,0,true,true);
			
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
