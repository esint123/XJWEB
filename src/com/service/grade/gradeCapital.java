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

import entity.TGradeCapital;
import entity.TReviewtree;

public class gradeCapital {
	private List<TGradeCapital> gradeCapitalList;
	private TGradeCapital item;
	private Integer treeid;
	private Integer id;
	private String opinion;
	private String fileName;
	private InputStream fileStream;
	public List<TGradeCapital> getGradeCapitalList() {
		return gradeCapitalList;
	}
	public void setGradeCapitalList(List<TGradeCapital> gradeCapitalList) {
		this.gradeCapitalList = gradeCapitalList;
	}
	public TGradeCapital getItem() {
		return item;
	}
	public void setItem(TGradeCapital item) {
		this.item = item;
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

	public String returnList() throws Exception {
		gradeCapitalList=(OperateDao.getList("from TGradeCapital T where T.treeid=" +getTreeid(), null));
		double sum=0.0000;
		for(TGradeCapital i:gradeCapitalList)
		{
			sum+=i.getGradesum();
		}
		TGradeCapital sumGradeCapital=new TGradeCapital();
		sumGradeCapital.setReviewexpert("平均分");
		DecimalFormat df=new DecimalFormat("#.#");
		
		sumGradeCapital.setGradesum(Double.parseDouble(df.format(sum/gradeCapitalList.size())));
		gradeCapitalList.add(sumGradeCapital);
		return "list";
	}
	public String AddCapital(){
		setItem(new TGradeCapital());
		getItem().setTreeid(getTreeid());
		TReviewtree note=(TReviewtree) OperateDao.getObject("from TReviewtree where id="+getTreeid(), null);
		getItem().setReviewname(note.getReviewname());
		getItem().setReviewunit(note.getReviewunit());
		getItem().setReviewtime(note.getReviewtime());
		getItem().setReviewontime(note.getReviewontime());
		TReviewtree note2=(TReviewtree) OperateDao.getObject("from TReviewtree where id="+note.getNoteparentid(), null);
		getItem().setReviewclass(note2.getNotetext());
		return "ok";
	}
	public String SaveCapital() throws Exception 
	{
		Double sum=0.0;
		if(getItem().getGrade1()!=null)
		{
			sum+=getItem().getGrade1();
		}
		if(getItem().getGrade2()!=null)
		{
			sum+=getItem().getGrade2();
		}
		if(getItem().getGrade3()!=null)
		{
			sum+=getItem().getGrade3();
		}
		if(getItem().getGrade4()!=null)
		{
			sum+=getItem().getGrade4();
		}
		if(getItem().getGrade5()!=null)
		{
			sum+=getItem().getGrade5();
		}
		if(getItem().getGrade6()!=null)
		{
			sum+=getItem().getGrade6();
		}
		if(getItem().getGrade7()!=null)
		{
			sum+=getItem().getGrade7();
		}
		if(getItem().getGrade8()!=null)
		{
			sum+=getItem().getGrade8();
		}
		if(getItem().getGrade9()!=null)
		{
			sum+=getItem().getGrade9();
		}
		if(getItem().getGrade10()!=null)
		{
			sum+=getItem().getGrade10();
		}
		if(getItem().getGrade11()!=null)
		{
			sum+=getItem().getGrade11();
		}
		if(getItem().getGrade12()!=null)
		{
			sum+=getItem().getGrade12();
		}
		if(getItem().getGrade13()!=null)
		{
			sum+=getItem().getGrade13();
		}
		if(getItem().getGrade14()!=null)
		{
			sum+=getItem().getGrade14();
		}
		if(getItem().getGrade15()!=null)
		{
			sum+=getItem().getGrade15();
		}
		if(getItem().getGrade16()!=null)
		{
			sum+=getItem().getGrade16();
		}
		if(getItem().getGrade17()!=null)
		{
			sum+=getItem().getGrade17();
		}
		if(getItem().getGrade18()!=null)
		{
			sum+=getItem().getGrade18();
		}
		if(getItem().getGrade19()!=null)
		{
			sum+=getItem().getGrade19();
		}
		if(getItem().getGrade20()!=null)
		{
			sum+=getItem().getGrade20();
		}
		if(getItem().getGrade21()!=null)
		{
			sum+=getItem().getGrade21();
		}
		if(getItem().getGrade22()!=null)
		{
			sum+=getItem().getGrade22();
		}
		if(getItem().getGrade23()!=null)
		{
			sum+=getItem().getGrade23();
		}
		if(getItem().getGrade24()!=null)
		{
			sum+=getItem().getGrade24();
		}
		if(getItem().getGrade25()!=null)
		{
			sum+=getItem().getGrade25();
		}
		if(getItem().getGrade26()!=null)
		{
			sum+=getItem().getGrade26();
		}
		if(getItem().getGrade27()!=null)
		{
			sum+=getItem().getGrade27();
		}
		if(getItem().getGrade28()!=null)
		{
			sum+=getItem().getGrade28();
		}
		if(getItem().getGrade29()!=null)
		{
			sum+=getItem().getGrade29();
		}
		if(getItem().getGrade30()!=null)
		{
			sum+=getItem().getGrade30();
		}
		if(getItem().getGrade31()!=null)
		{
			sum+=getItem().getGrade31();
		}
		if(getItem().getGrade32()!=null)
		{
			sum+=getItem().getGrade32();
		}
		if(getItem().getGrade33()!=null)
		{
			sum+=getItem().getGrade33();
		}
		if(getItem().getGrade34()!=null)
		{
			sum+=getItem().getGrade34();
		}
		if(getItem().getGrade35()!=null)
		{
			sum+=getItem().getGrade35();
		}
		if(getItem().getGrade36()!=null)
		{
			sum+=getItem().getGrade36();
		}
		if(getItem().getGrade37()!=null)
		{
			sum+=getItem().getGrade37();
		}
		if(getItem().getGrade38()!=null)
		{
			sum+=getItem().getGrade38();
		}
		if(getItem().getGrade39()!=null)
		{
			sum+=getItem().getGrade39();
		}
		if(getItem().getGrade40()!=null)
		{
			sum+=getItem().getGrade40();
		}
		if(getItem().getGrade41()!=null)
		{
			sum+=getItem().getGrade41();
		}
		if(getItem().getGrade42()!=null)
		{
			sum+=getItem().getGrade42();
		}
		if(getItem().getGrade43()!=null)
		{
			sum+=getItem().getGrade43();
		}
		if(getItem().getGrade44()!=null)
		{
			sum+=getItem().getGrade44();
		}
		if(getItem().getGrade45()!=null)
		{
			sum+=getItem().getGrade45();
		}
		if(getItem().getGrade46()!=null)
		{
			sum+=getItem().getGrade46();
		}
		if(getItem().getGrade47()!=null)
		{
			sum+=getItem().getGrade47();
		}
		if(getItem().getGrade48()!=null)
		{
			sum+=getItem().getGrade48();
		}
		if(getItem().getGrade49()!=null)
		{
			sum+=getItem().getGrade49();
		}
		if(getItem().getGrade50()!=null)
		{
			sum+=getItem().getGrade50();
		}
		if(getItem().getGrade51()!=null)
		{
			sum+=getItem().getGrade51();
		}
		if(getItem().getGrade52()!=null)
		{
			sum+=getItem().getGrade52();
		}
		if(getItem().getGrade53()!=null)
		{
			sum+=getItem().getGrade53();
		}
		if(getItem().getGrade54()!=null)
		{
			sum+=getItem().getGrade54();
		}
		if(getItem().getGrade55()!=null)
		{
			sum+=getItem().getGrade55();
		}
		if(getItem().getGrade56()!=null)
		{
			sum+=getItem().getGrade56();
		}
		if(getItem().getGrade57()!=null)
		{
			sum+=getItem().getGrade57();
		}
		getItem().setGradesum(sum);
		OperateDao.merge(getItem());
		return "ok";
	}
	public String CapitalAction() throws Exception {
		return "ok";
	}
    public String EditCapital()
    {
    	setItem((TGradeCapital) OperateDao.getObject("from TGradeCapital T where T.id=" +getId(), null));
    	return "ok";
    }	
    public String EditOpinion()
    {
    	TGradeCapital i=(TGradeCapital) OperateDao.getObject("from TGradeCapital T where T.id=" +getId(), null);
    	setOpinion(i.getOpinion());
    	return "ok";
    }
	public String SaveOpinion() throws Exception 
	{
		TGradeCapital i=(TGradeCapital) OperateDao.getObject("from TGradeCapital T where T.id=" +getId(), null);
    	i.setOpinion(getOpinion());
    	OperateDao.saveOrUpdate(i);
		return "ok";
	}
	public String downOpinion() throws IOException
	{
		fileName="项目汇总评审意见.xls";
		String root = ServletActionContext.getServletContext().getRealPath(File.separator);
		Poi poi = new Poi();
		File file=poi.ExpotOpinion(root+"upload"+File.separator +fileName, "from TGradeCapital T where T.treeid=" +getTreeid(),"TGradeCapital");
		fileName=java.net.URLEncoder.encode(fileName, "UTF-8");
        try {  
        	fileStream=new FileInputStream(file);  
        }catch(Exception e){
        	e.printStackTrace();
        }
		return "download";
	}
    public String DeleteCapital()
    {
    	OperateDao.ExecuteBySql("delete TGradeCapital T where T.id=" +getId());
    	return "ok";
    }
}
