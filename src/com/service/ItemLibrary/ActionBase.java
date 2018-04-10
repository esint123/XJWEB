package com.service.ItemLibrary;

import java.io.File;

import org.apache.struts2.ServletActionContext;

import util.OperateFile;

import com.dao.OperateDao;
import com.opensymphony.xwork2.ActionSupport;

import entity.TItemlibrary;

public class ActionBase extends ActionSupport{

	private static final long serialVersionUID = -5456107922615246428L;
	private String root = ServletActionContext.getServletContext().getRealPath("/");
	
	public void DeleteAttachByID(String id)
	{
		for (String s : id.split("@"))
		{
			if(!s.equals(""))
			{
				TItemlibrary itemlibrary=(TItemlibrary) OperateDao.getObject("from TItemlibrary where id="+Integer.parseInt(s), null);
				if(itemlibrary!=null)
				{
					OperateFile.deleteAllFilesOfDir(new File(root+itemlibrary.getFilepath()));
					OperateDao.deleteByKey(itemlibrary);
				}
			}
		}

	}
}
