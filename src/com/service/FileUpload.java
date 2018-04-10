package com.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import org.apache.struts2.ServletActionContext;

import com.dao.OperateDao;
import com.opensymphony.xwork2.ActionSupport;
import com.service.ItemLibrary.New10;
import com.service.ItemLibrary.New35;
import com.service.ItemLibrary.Remake10;
import com.service.ItemLibrary.Remake35;
import com.service.ItemLibrary.Station35;

import entity.TItemlibrary;
import entity.TItemlibrarytree;

/**
 * 文件上传
 * 
 * @author Administrator
 * 
 */
public class FileUpload extends ActionSupport {

	private static final long serialVersionUID = -7735630225042303639L;
	private File file;
	private String fileFileName;
	private String fileFileContentType;
	private String message = "上传成功";
	private Integer noteparentid;
	private Integer attache_id;
	private String attache_field;
	private String attache_fileid;
	private String tableName;
	private String root = ServletActionContext.getServletContext().getRealPath(File.separator+"upload");
	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public Integer getAttache_id() {
		return attache_id;
	}

	public void setAttache_id(Integer attache_id) {
		this.attache_id = attache_id;
	}
	public String getAttache_field() {
		return attache_field;
	}

	public void setAttache_field(String attache_field) {
		this.attache_field = attache_field;
	}
	public String getAttache_fileid() {
		return attache_fileid;
	}

	public void setAttache_fileid(String attache_fileid) {
		this.attache_fileid = attache_fileid;
	}
	public Integer getNoteparentid() {
		return noteparentid;
	}

	public void setNoteparentid(Integer noteparentid) {
		this.noteparentid = noteparentid;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileFileContentType() {
		return fileFileContentType;
	}

	public void setFileFileContentType(String fileFileContentType) {
		this.fileFileContentType = fileFileContentType;
	}

	private void WriteFile(String pathString,String outFileName) throws Exception {
		InputStream is = new FileInputStream(file);
		OutputStream os = new FileOutputStream(new File(pathString, outFileName));
		byte[] buffer = new byte[1000];
		while (-1 != (is.read(buffer, 0, buffer.length))) {
			os.write(buffer);
		}
		os.close();
		is.close();
	}

	private String GetRandomString() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		return sdf.format(new Date());
	}

	public String AttachUpload() throws Exception {
		if (!this.getFileFileName().endsWith(".pdf")) {
			message = "文件格式不正确,请上传pdf文件!";
			return ERROR;
		}
		String radString=GetRandomString();
		String filePath = root +File.separator+ radString;
		try {
			File myFilePath = new File(filePath);
			if (!myFilePath.exists()) {
				myFilePath.mkdir();
			}
		} catch (Exception e) {
			System.out.println("新建文件夹操作出错");
			e.printStackTrace();
		}
		//服务器写文件
		WriteFile(filePath,getFileFileName());
		//上传文件记录
		TItemlibrary item=new TItemlibrary();
		item.setFilename(getFileFileName());
		item.setFilepath(File.separator+"upload"+File.separator+radString+File.separator);
		TItemlibrary item2=(TItemlibrary) OperateDao.merge(item);
		//上传文件ID记录到对应表字段
	    message+="@"+item2.getId().toString();
		OperateDao.ExecuteBySql("update "+tableName+" T "+" set T.F"+getAttache_field()+"='"+getAttache_fileid()+"@"+item2.getId().toString()+"' where T.id="+getAttache_id());
		return "success";
	}
	private void InsertStage(Integer noteparentid,String jsp)
	{
		OperateDao.saveOrUpdate(new TItemlibrarytree("规划",noteparentid, 1, jsp+"?stage=1",""));
		OperateDao.saveOrUpdate(new TItemlibrarytree("储备",noteparentid, 2, jsp+"?stage=2",""));
		OperateDao.saveOrUpdate(new TItemlibrarytree("可研",noteparentid, 3, jsp+"?stage=3",""));
		OperateDao.saveOrUpdate(new TItemlibrarytree("投资计划",noteparentid, 4,jsp+"?stage=4",""));
		OperateDao.saveOrUpdate(new TItemlibrarytree("初设",noteparentid, 5, jsp+"?stage=5",""));
		OperateDao.saveOrUpdate(new TItemlibrarytree("施工图",noteparentid, 6, jsp+"?stage=6",""));
	}
	public String Upload() throws Exception {
		try {
			if (!this.getFileFileName().endsWith(".xls")) {
				message = "文件格式不正确,请上传Excel(xls)文件!";
				return ERROR;
			}
			// 插入树节点
			String nameString = fileFileName.substring(0,fileFileName.indexOf("."));

			if (nameString.equals("10(20、6)kV电网新建工程表")) 
			{
				WriteFile(root,fileFileName);
				HashMap<Integer, Object> hashMap = new HashMap<Integer, Object>();
				hashMap.put(1, noteparentid);
				hashMap.put(2, nameString);
				TItemlibrarytree old = (TItemlibrarytree) OperateDao.getObject("from TItemlibrarytree T where T.noteparentid=? and T.notetext=?",hashMap);
				New10 New10 = new New10();
				if (old == null) 
				{
					String jspString = "New10/New10.jsp";
					TItemlibrarytree item = new TItemlibrarytree(nameString,noteparentid, 1, jspString,"TItemlibraryNew10");
					TItemlibrarytree item2 = (TItemlibrarytree) OperateDao.merge(item);
					InsertStage(item2.getId(),jspString);
					if(item2!=null)
					{
						New10.InsertNew10(root + File.separator  + fileFileName, item2.getId());
					}
				}
				if(old!=null)
				{
					New10.InsertNew10(root + File.separator  + fileFileName, old.getId());
				}
			}
			else if (nameString.equals("35kV新、扩建工程表") || nameString.equals("110（66）kV新、扩建工程表") || nameString.equals("220kV新、扩建工程表")) 
			{
				WriteFile(root,fileFileName);
				HashMap<Integer, Object> hashMap = new HashMap<Integer, Object>();
				hashMap.put(1, noteparentid);
				hashMap.put(2, nameString);
				TItemlibrarytree old = (TItemlibrarytree) OperateDao.getObject("from TItemlibrarytree T where T.noteparentid=? and T.notetext=?",hashMap);
				New35 New35 = new New35();
				if (old == null) 
				{
					String jspString = "New35/New35.jsp";
					TItemlibrarytree item = new TItemlibrarytree(nameString,noteparentid, 1, jspString,"TItemlibraryNew35");
					TItemlibrarytree item2 = (TItemlibrarytree) OperateDao.merge(item);
					InsertStage(item2.getId(),jspString);
					if(item2!=null)
					{
						New35.InsertNew35(root + File.separator  + fileFileName, item2.getId());
					}
				}
				if(old!=null)
				{
					New35.InsertNew35(root + File.separator  + fileFileName, old.getId());
				}
			}
			else if(nameString.equals("10(20、6)kV电网改造工程表"))
			{
				WriteFile(root,fileFileName);
				HashMap<Integer, Object> hashMap = new HashMap<Integer, Object>();
				hashMap.put(1, noteparentid);
				hashMap.put(2, nameString);
				TItemlibrarytree old = (TItemlibrarytree) OperateDao.getObject("from TItemlibrarytree T where T.noteparentid=? and T.notetext=?",hashMap);
				Remake10 remake10 = new Remake10();
				if (old == null) 
				{
					String jspString = "Remake10/Remake10.jsp";
					TItemlibrarytree item = new TItemlibrarytree(nameString,noteparentid, 2, jspString,"TItemlibraryRemake10");
					TItemlibrarytree item2 = (TItemlibrarytree) OperateDao.merge(item);
					InsertStage(item2.getId(),jspString);
					if(item2!=null)
					{
						remake10.InsertRemake10(root + File.separator  + fileFileName, item2.getId());
					}
				}
				if(old!=null)
				{
					remake10.InsertRemake10(root + File.separator  + fileFileName, old.getId());	
				}
			}
			else if(nameString.equals("35kV线路改造工程表") ||nameString.equals("110（66）kV线路改造工程表") ||nameString.equals("220kV线路改造工程表"))
			{
				WriteFile(root,fileFileName);
				HashMap<Integer, Object> hashMap = new HashMap<Integer, Object>();
				hashMap.put(1, noteparentid);
				hashMap.put(2, nameString);
				TItemlibrarytree old = (TItemlibrarytree) OperateDao.getObject("from TItemlibrarytree T where T.noteparentid=? and T.notetext=?",hashMap);
				Remake35 Remake35 = new Remake35();
				if (old == null) 
				{
					String jspString = "Remake35/Remake35.jsp";
					TItemlibrarytree item = new TItemlibrarytree(nameString,noteparentid, 2, jspString,"TItemlibraryRemake35");
					TItemlibrarytree item2 = (TItemlibrarytree) OperateDao.merge(item);
					InsertStage(item2.getId(),jspString);
					if(item2!=null)
					{
						Remake35.InsertRemake35(root + File.separator  + fileFileName, item2.getId());
					}
				}
				if(old!=null)
				{
					Remake35.InsertRemake35(root + File.separator  + fileFileName, old.getId());		
				}
			}
			else if(nameString.equals("35kV变电站改造工程表")||nameString.equals("110（66）kV变电站改造工程表")||nameString.equals("220kV变电站改造工程表"))
			{
				WriteFile(root,fileFileName);
				HashMap<Integer, Object> hashMap = new HashMap<Integer, Object>();
				hashMap.put(1, noteparentid);
				hashMap.put(2, nameString);
				TItemlibrarytree old = (TItemlibrarytree) OperateDao.getObject("from TItemlibrarytree T where T.noteparentid=? and T.notetext=?",hashMap);
				Station35 Station35 = new Station35();
				if (old == null) 
				{
					String jspString = "Station35/Station35.jsp";
					TItemlibrarytree item = new TItemlibrarytree(nameString,noteparentid, 3, jspString,"TItemlibraryStation35");
					TItemlibrarytree item2 = (TItemlibrarytree) OperateDao.merge(item);
					InsertStage(item2.getId(),jspString);
					if(item2!=null)
					{
						Station35.InsertStation35(root + File.separator  + fileFileName, item2.getId());
					}
				}
				if(old!=null)
				{
					Station35.InsertStation35(root + File.separator  + fileFileName, old.getId());		
				}
			}
			else
			{
				message = "文件名称不正确，不能导入文件!";
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			message = "对不起,文件上传失败了!";
		}
		return "success";
	}
}
