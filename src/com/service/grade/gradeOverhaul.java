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

import entity.TGradeOverhaul;


import entity.TReviewtree;

public class gradeOverhaul {
	private List<TGradeOverhaul> gradeOverhaulList;
	private TGradeOverhaul item;
	private Integer treeid;
	private Integer id;
	private String opinion;
	private String fileName;
	private InputStream fileStream;
	public List<TGradeOverhaul> getGradeOverhaulList() {
		return gradeOverhaulList;
	}

	public void setGradeOverhaulList(List<TGradeOverhaul> gradeOverhaulList) {
		this.gradeOverhaulList = gradeOverhaulList;
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
	public TGradeOverhaul getItem() {
		return item;
	}
	public void setItem(TGradeOverhaul item) {
		this.item = item;
	}
	public String returnList() throws Exception {
		gradeOverhaulList=(OperateDao.getList("from TGradeOverhaul T where T.treeid=" +getTreeid(), null));
		double sum=0.0000;
		for(TGradeOverhaul i:gradeOverhaulList)
		{
			sum+=i.getGradesum();
		}
		TGradeOverhaul sumGradeOverhaul=new TGradeOverhaul();
		sumGradeOverhaul.setReviewexpert("平均分");
		DecimalFormat df=new DecimalFormat("#.#");
		
		sumGradeOverhaul.setGradesum(Double.parseDouble(df.format(sum/gradeOverhaulList.size())));
		gradeOverhaulList.add(sumGradeOverhaul);
		return "list";
	}
	public String AddOverhaul(){
		item=new TGradeOverhaul();
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
	public String SaveOverhaul() throws Exception 
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
		item.setGradesum(sum);
		OperateDao.merge(item);
		return "ok";
	}
	public String OverhaulAction() throws Exception {
		return "ok";
	}
    public String EditOverhaul()
    {
    	setItem((TGradeOverhaul) OperateDao.getObject("from TGradeOverhaul T where T.id=" +getId(), null));
    	return "ok";
    }	
    public String EditOpinion()
    {
    	TGradeOverhaul i=(TGradeOverhaul) OperateDao.getObject("from TGradeOverhaul T where T.id=" +getId(), null);
    	setOpinion(i.getOpinion());
    	return "ok";
    }
	public String SaveOpinion() throws Exception 
	{
		TGradeOverhaul i=(TGradeOverhaul) OperateDao.getObject("from TGradeOverhaul T where T.id=" +getId(), null);
    	i.setOpinion(getOpinion());
    	OperateDao.saveOrUpdate(i);
		return "ok";
	}
	public String downOpinion() throws IOException
	{
		fileName="项目汇总评审意见.xls";
		String root = ServletActionContext.getServletContext().getRealPath(File.separator);
		Poi poi = new Poi();
		File file=poi.ExpotOpinion(root+"upload"+File.separator +fileName, "from TGradeOverhaul T where T.treeid=" +getTreeid(),"TGradeOverhaul");
		fileName=java.net.URLEncoder.encode(fileName, "UTF-8");
        try {  
        	fileStream=new FileInputStream(file);  
        }catch(Exception e){
        	e.printStackTrace();
        }
		return "download";
	}
    public String DeleteOverhaul()
    {
    	OperateDao.ExecuteBySql("delete TGradeOverhaul T where T.id=" +getId());
    	return "ok";
    }
}
