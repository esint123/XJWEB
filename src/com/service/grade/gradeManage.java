package com.service.grade;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.util.List;

import org.apache.struts2.ServletActionContext;


import com.dao.OperateDao;
import com.service.ItemLibrary.Poi;

import entity.TGradeManage;


import entity.TReviewtree;

public class gradeManage {
	private List<TGradeManage> gradeManageList;
	private TGradeManage item;
	private Integer treeid;
	private Integer id;
	private String opinion;
	private String fileName;
	private InputStream fileStream;

	public List<TGradeManage> getGradeManageList() {
		return gradeManageList;
	}

	public void setGradeManageList(List<TGradeManage> gradeManageList) {
		this.gradeManageList = gradeManageList;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public InputStream getFileStream() {
		return fileStream;
	}
	public void setFileStream(InputStream fileStream) {
		this.fileStream = fileStream;
	}
	public String getOpinion() {
		return opinion;
	}
	public void setOpinion(String opinion) {
		this.opinion = opinion;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getTreeid() {
		return treeid;
	}
	public void setTreeid(Integer treeid) {
		this.treeid = treeid;
	}
	public TGradeManage getItem() {
		return item;
	}
	public void setItem(TGradeManage item) {
		this.item = item;
	}
	public String returnList() throws Exception {
		gradeManageList=OperateDao.getList("from TGradeManage T where T.treeid=" +getTreeid(), null);
		double sum=0.0000;
		for(TGradeManage i:getGradeManageList())
		{
			sum+=i.getGradesum();
		}
		TGradeManage sumTGradeManage=new TGradeManage();
		sumTGradeManage.setReviewexpert("平均分");
		DecimalFormat df=new DecimalFormat("#.#");
		
		sumTGradeManage.setGradesum(Double.parseDouble(df.format(sum/getGradeManageList().size())));
		getGradeManageList().add(sumTGradeManage);
		return "list";
	}
	public String AddManage(){
		item=new TGradeManage();
		item.setTreeid(getTreeid());
		TReviewtree note=(TReviewtree) OperateDao.getObject("from TReviewtree where id="+getTreeid(), null);
		item.setReviewname(note.getReviewname());
		item.setReviewunit(note.getReviewunit());
		item.setReviewtime(note.getReviewtime());
		item.setReviewontime(note.getReviewontime());
		TReviewtree note2=(TReviewtree) OperateDao.getObject("from TReviewtree where id="+note.getNoteparentid(), null);
		item.setReviewclass(note2.getNotetext());
		return "ok";
	}
	public String SaveManage() throws Exception 
	{
		Double sum=0.0;
		if(item.getGrade1()!=null)
		{
			sum+=item.getGrade1();
		}
		if(item.getGrade2()!=null)
		{
			sum+=item.getGrade2();
		}
		if(item.getGrade3()!=null)
		{
			sum+=item.getGrade3();
		}
		if(item.getGrade4()!=null)
		{
			sum+=item.getGrade4();
		}
		if(item.getGrade5()!=null)
		{
			sum+=item.getGrade5();
		}
		if(item.getGrade6()!=null)
		{
			sum+=item.getGrade6();
		}
		if(item.getGrade7()!=null)
		{
			sum+=item.getGrade7();
		}
		if(item.getGrade8()!=null)
		{
			sum+=item.getGrade8();
		}
		if(item.getGrade9()!=null)
		{
			sum+=item.getGrade9();
		}
		if(item.getGrade10()!=null)
		{
			sum+=item.getGrade10();
		}
		if(item.getGrade11()!=null)
		{
			sum+=item.getGrade11();
		}
		if(item.getGrade12()!=null)
		{
			sum+=item.getGrade12();
		}
		if(item.getGrade13()!=null)
		{
			sum+=item.getGrade13();
		}
		if(item.getGrade14()!=null)
		{
			sum+=item.getGrade14();
		}
		if(item.getGrade15()!=null)
		{
			sum+=item.getGrade15();
		}
		if(item.getGrade16()!=null)
		{
			sum+=item.getGrade16();
		}
		if(item.getGrade17()!=null)
		{
			sum+=item.getGrade17();
		}
		if(item.getGrade18()!=null)
		{
			sum+=item.getGrade18();
		}
		if(item.getGrade19()!=null)
		{
			sum+=item.getGrade19();
		}
		item.setGradesum(sum);
		OperateDao.merge(item);
		return "ok";
	}
	public String ManageAction() throws Exception {
		return "ok";
	}
    public String EditManage()
    {
    	setItem((TGradeManage) OperateDao.getObject("from TGradeManage T where T.id=" +getId(), null));
    	return "ok";
    }	
    public String EditOpinion()
    {
    	TGradeManage i=(TGradeManage) OperateDao.getObject("from TGradeManage T where T.id=" +getId(), null);
    	setOpinion(i.getOpinion());
    	return "ok";
    }
	public String SaveOpinion() throws Exception 
	{
		TGradeManage i=(TGradeManage) OperateDao.getObject("from TGradeManage T where T.id=" +getId(), null);
    	i.setOpinion(getOpinion());
    	OperateDao.saveOrUpdate(i);
		return "ok";
	}
	public String downOpinion() throws IOException
	{
		fileName="项目汇总评审意见.xls";
		String root = ServletActionContext.getServletContext().getRealPath(File.separator);
		Poi poi = new Poi();
		File file=poi.ExpotOpinion(root+"upload"+File.separator +fileName, "from TGradeManage T where T.treeid=" +getTreeid(),"TGradeManage");
		fileName=java.net.URLEncoder.encode(fileName, "UTF-8");
        try {  
        	fileStream=new FileInputStream(file);  
        }catch(Exception e){
        	e.printStackTrace();
        }
		return "download";
	}
    public String DeleteManage()
    {
    	OperateDao.ExecuteBySql("delete TGradeManage T where T.id=" +getId());
    	return "ok";
    }
}
