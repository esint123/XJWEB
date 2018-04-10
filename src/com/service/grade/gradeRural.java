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

import entity.TGradeRural;


import entity.TReviewtree;

public class gradeRural {
	private List<TGradeRural> gradeRuralList;
	private TGradeRural item;
	private Integer treeid;
	private Integer id;
	private String opinion;
	private String fileName;
	private InputStream fileStream;
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
	public List<TGradeRural> getGradeRuralList() {
		return gradeRuralList;
	}
	public void setGradeRuralList(List<TGradeRural> gradeRuralList) {
		this.gradeRuralList = gradeRuralList;
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
	public TGradeRural getItem() {
		return item;
	}
	public void setItem(TGradeRural item) {
		this.item = item;
	}
	public String returnList() throws Exception {
		gradeRuralList=(OperateDao.getList("from TGradeRural T where T.treeid=" +getTreeid(), null));
		double sum=0.0000;
		for(TGradeRural i:gradeRuralList)
		{
			sum+=i.getGradesum();
		}
		TGradeRural sumGradeRural=new TGradeRural();
		sumGradeRural.setReviewexpert("平均分");
		DecimalFormat df=new DecimalFormat("#.#");
		
		sumGradeRural.setGradesum(Double.parseDouble(df.format(sum/gradeRuralList.size())));
		gradeRuralList.add(sumGradeRural);
		return "list";
	}
	public String AddRural(){
		item=new TGradeRural();
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
	public String SaveRural() throws Exception 
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
		if(item.getGrade27()!=null)
		{
			sum+=item.getGrade27();
		}
		if(item.getGrade28()!=null)
		{
			sum+=item.getGrade28();
		}
		if(item.getGrade29()!=null)
		{
			sum+=item.getGrade29();
		}
		if(item.getGrade30()!=null)
		{
			sum+=item.getGrade30();
		}
		if(item.getGrade31()!=null)
		{
			sum+=item.getGrade31();
		}
		if(item.getGrade32()!=null)
		{
			sum+=item.getGrade32();
		}
		if(item.getGrade33()!=null)
		{
			sum+=item.getGrade33();
		}
		if(item.getGrade34()!=null)
		{
			sum+=item.getGrade34();
		}
		if(item.getGrade35()!=null)
		{
			sum+=item.getGrade35();
		}
		if(item.getGrade36()!=null)
		{
			sum+=item.getGrade36();
		}
		item.setGradesum(sum);
		OperateDao.merge(item);
		return "ok";
	}
	public String RuralAction() throws Exception {
		return "ok";
	}
    public String EditRural()
    {
    	setItem((TGradeRural) OperateDao.getObject("from TGradeRural T where T.id=" +getId(), null));
    	return "ok";
    }	
    public String EditOpinion()
    {
    	TGradeRural i=(TGradeRural) OperateDao.getObject("from TGradeRural T where T.id=" +getId(), null);
    	setOpinion(i.getOpinion());
    	return "ok";
    }
	public String SaveOpinion() throws Exception 
	{
    	TGradeRural i=(TGradeRural) OperateDao.getObject("from TGradeRural T where T.id=" +getId(), null);
    	i.setOpinion(getOpinion());
    	OperateDao.saveOrUpdate(i);
		return "ok";
	}
	public String downOpinion() throws IOException
	{
		fileName="项目汇总评审意见.xls";
		String root = ServletActionContext.getServletContext().getRealPath(File.separator);
		Poi poi = new Poi();
		File file=poi.ExpotOpinion(root+"upload"+File.separator +fileName, "from TGradeRural T where T.treeid=" +getTreeid(),"TGradeRural");
		fileName=java.net.URLEncoder.encode(fileName, "UTF-8");
        try {  
        	fileStream=new FileInputStream(file);  
        }catch(Exception e){
        	e.printStackTrace();
        }
		return "download";
	}
    public String DeleteRural()
    {
    	OperateDao.ExecuteBySql("delete TGradeRural T where T.id=" +getId());
    	return "ok";
    }
}
