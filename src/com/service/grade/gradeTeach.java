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

import entity.TGradeTeach;


import entity.TReviewtree;

public class gradeTeach {
	private List<TGradeTeach> gradeTeachList;
	private TGradeTeach item;
	private Integer treeid;
	private Integer id;
	private String opinion;
	private String fileName;
	private InputStream fileStream;

	public List<TGradeTeach> getGradeTeachList() {
		return gradeTeachList;
	}

	public void setGradeTeachList(List<TGradeTeach> gradeTeachList) {
		this.gradeTeachList = gradeTeachList;
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
	public TGradeTeach getItem() {
		return item;
	}
	public void setItem(TGradeTeach item) {
		this.item = item;
	}
	public String returnList() throws Exception {
		gradeTeachList=(OperateDao.getList("from TGradeTeach T where T.treeid=" +getTreeid(), null));
		double sum=0.0000;
		for(TGradeTeach i:gradeTeachList)
		{
			sum+=i.getGradesum();
		}
		TGradeTeach sumTGradeTeach=new TGradeTeach();
		sumTGradeTeach.setReviewexpert("平均分");
		DecimalFormat df=new DecimalFormat("#.#");
		
		sumTGradeTeach.setGradesum(Double.parseDouble(df.format(sum/gradeTeachList.size())));
		gradeTeachList.add(sumTGradeTeach);
		return "list";
	}
	public String AddTeach(){
		item=new TGradeTeach();
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
	public String SaveTeach() throws Exception 
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
		item.setGradesum(sum);
		OperateDao.merge(item);
		return "ok";
	}
	public String TeachAction() throws Exception {
		return "ok";
	}
    public String EditTeach()
    {
    	setItem((TGradeTeach) OperateDao.getObject("from TGradeTeach T where T.id=" +getId(), null));
    	return "ok";
    }	
    public String EditOpinion()
    {
    	TGradeTeach i=(TGradeTeach) OperateDao.getObject("from TGradeTeach T where T.id=" +getId(), null);
    	setOpinion(i.getOpinion());
    	return "ok";
    }
	public String SaveOpinion() throws Exception 
	{
		TGradeTeach i=(TGradeTeach) OperateDao.getObject("from TGradeTeach T where T.id=" +getId(), null);
    	i.setOpinion(getOpinion());
    	OperateDao.saveOrUpdate(i);
		return "ok";
	}
	public String downOpinion() throws IOException
	{
		fileName="项目汇总评审意见.xls";
		String root = ServletActionContext.getServletContext().getRealPath(File.separator);
		Poi poi = new Poi();
		File file=poi.ExpotOpinion(root+"upload"+File.separator +fileName, "from TGradeTeach T where T.treeid=" +getTreeid(),"TGradeTeach");
		fileName=java.net.URLEncoder.encode(fileName, "UTF-8");
        try {  
        	fileStream=new FileInputStream(file);  
        }catch(Exception e){
        	e.printStackTrace();
        }
		return "download";
	}
    public String DeleteTeach()
    {
    	OperateDao.ExecuteBySql("delete TGradeTeach T where T.id=" +getId());
    	return "ok";
    }
}
