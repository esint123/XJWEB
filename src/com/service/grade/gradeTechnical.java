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

import entity.TGradeTechnical;


import entity.TReviewtree;

public class gradeTechnical {
	private List<TGradeTechnical> gradeTechnicalList;
	private TGradeTechnical item;
	private Integer treeid;
	private Integer id;
	private String opinion;
	private String fileName;
	private InputStream fileStream;

	public List<TGradeTechnical> getGradeTechnicalList() {
		return gradeTechnicalList;
	}

	public void setGradeTechnicalList(List<TGradeTechnical> gradeTechnicalList) {
		this.gradeTechnicalList = gradeTechnicalList;
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
	public TGradeTechnical getItem() {
		return item;
	}
	public void setItem(TGradeTechnical item) {
		this.item = item;
	}
	public String returnList() throws Exception {
		gradeTechnicalList=(OperateDao.getList("from TGradeTechnical T where T.treeid=" +getTreeid(), null));
		double sum=0.0000;
		for(TGradeTechnical i:gradeTechnicalList)
		{
			sum+=i.getGradesum();
		}
		TGradeTechnical sumGradeTechnical=new TGradeTechnical();
		sumGradeTechnical.setReviewexpert("平均分");
		DecimalFormat df=new DecimalFormat("#.#");
		
		sumGradeTechnical.setGradesum(Double.parseDouble(df.format(sum/gradeTechnicalList.size())));
		gradeTechnicalList.add(sumGradeTechnical);
		return "list";
	}
	public String AddTechnical(){
		item=new TGradeTechnical();
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
	public String SaveTechnical() throws Exception 
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
		item.setGradesum(sum);
		OperateDao.merge(item);
		return "ok";
	}
	public String TechnicalAction() throws Exception {
		return "ok";
	}
    public String EditTechnical()
    {
    	setItem((TGradeTechnical) OperateDao.getObject("from TGradeTechnical T where T.id=" +getId(), null));
    	return "ok";
    }	
    public String EditOpinion()
    {
    	TGradeTechnical i=(TGradeTechnical) OperateDao.getObject("from TGradeTechnical T where T.id=" +getId(), null);
    	setOpinion(i.getOpinion());
    	return "ok";
    }
	public String SaveOpinion() throws Exception 
	{
		TGradeTechnical i=(TGradeTechnical) OperateDao.getObject("from TGradeTechnical T where T.id=" +getId(), null);
    	i.setOpinion(getOpinion());
    	OperateDao.saveOrUpdate(i);
		return "ok";
	}
	public String downOpinion() throws IOException
	{
		fileName="项目汇总评审意见.xls";
		String root = ServletActionContext.getServletContext().getRealPath(File.separator);
		Poi poi = new Poi();
		File file=poi.ExpotOpinion(root+"upload"+File.separator +fileName, "from TGradeTechnical T where T.treeid=" +getTreeid(),"TGradeTechnical");
		fileName=java.net.URLEncoder.encode(fileName, "UTF-8");
        try {  
        	fileStream=new FileInputStream(file);  
        }catch(Exception e){
        	e.printStackTrace();
        }
		return "download";
	}
    public String DeleteTechnical()
    {
    	OperateDao.ExecuteBySql("delete TGradeTechnical T where T.id=" +getId());
    	return "ok";
    }
}
