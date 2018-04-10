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

import entity.TGradeIndustry;


import entity.TReviewtree;

public class gradeIndustry {
	private List<TGradeIndustry> gradeIndustryList;
	private TGradeIndustry item;
	private Integer treeid;
	private Integer id;
	private String opinion;
	private String fileName;
	private InputStream fileStream;
	public List<TGradeIndustry> getGradeIndustryList() {
		return gradeIndustryList;
	}

	public void setGradeIndustryList(List<TGradeIndustry> gradeIndustryList) {
		this.gradeIndustryList = gradeIndustryList;
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
	public TGradeIndustry getItem() {
		return item;
	}
	public void setItem(TGradeIndustry item) {
		this.item = item;
	}
	public String returnList() throws Exception {
		gradeIndustryList=(OperateDao.getList("from TGradeIndustry T where T.treeid=" +getTreeid(), null));
		double sum=0.0000;
		for(TGradeIndustry i:gradeIndustryList)
		{
			sum+=i.getGradesum();
		}
		TGradeIndustry sumGradeIndustry=new TGradeIndustry();
		sumGradeIndustry.setReviewexpert("平均分");
		DecimalFormat df=new DecimalFormat("#.#");
		
		sumGradeIndustry.setGradesum(Double.parseDouble(df.format(sum/gradeIndustryList.size())));
		gradeIndustryList.add(sumGradeIndustry);
		return "list";
	}
	public String AddIndustry(){
		item=new TGradeIndustry();
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
	public String SaveIndustry() throws Exception 
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
		if(item.getGrade20()!=null)
		{
			sum+=item.getGrade20();
		}
		if(item.getGrade21()!=null)
		{
			sum+=item.getGrade21();
		}
		if(item.getGrade22()!=null)
		{
			sum+=item.getGrade22();
		}
		if(item.getGrade23()!=null)
		{
			sum+=item.getGrade23();
		}
		if(item.getGrade24()!=null)
		{
			sum+=item.getGrade24();
		}
		if(item.getGrade25()!=null)
		{
			sum+=item.getGrade25();
		}
		if(item.getGrade26()!=null)
		{
			sum+=item.getGrade26();
		}
		item.setGradesum(sum);
		OperateDao.merge(item);
		return "ok";
	}
	public String IndustryAction() throws Exception {
		return "ok";
	}
    public String EditIndustry()
    {
    	setItem((TGradeIndustry) OperateDao.getObject("from TGradeIndustry T where T.id=" +getId(), null));
    	return "ok";
    }	
    public String EditOpinion()
    {
    	TGradeIndustry i=(TGradeIndustry) OperateDao.getObject("from TGradeIndustry T where T.id=" +getId(), null);
    	setOpinion(i.getOpinion());
    	return "ok";
    }
	public String SaveOpinion() throws Exception 
	{
		TGradeIndustry i=(TGradeIndustry) OperateDao.getObject("from TGradeIndustry T where T.id=" +getId(), null);
    	i.setOpinion(getOpinion());
    	OperateDao.saveOrUpdate(i);
		return "ok";
	}
	public String downOpinion() throws IOException
	{
		fileName="项目汇总评审意见.xls";
		String root = ServletActionContext.getServletContext().getRealPath(File.separator);
		Poi poi = new Poi();
		File file=poi.ExpotOpinion(root+"upload"+File.separator +fileName, "from TGradeIndustry T where T.treeid=" +getTreeid(),"TGradeIndustry");
		fileName=java.net.URLEncoder.encode(fileName, "UTF-8");
        try {  
        	fileStream=new FileInputStream(file);  
        }catch(Exception e){
        	e.printStackTrace();
        }
		return "download";
	}
    public String DeleteIndustry()
    {
    	OperateDao.ExecuteBySql("delete TGradeIndustry T where T.id=" +getId());
    	return "ok";
    }
}
