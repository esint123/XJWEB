package com.service.ItemLibrary;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import com.dao.OperateDao;

import entity.TItemlibraryRemake35;
import entity.TItemlibrarytree;

public class Remake35 extends ActionBase{
	private static final long serialVersionUID = 8147156397907486350L;
	private List<TItemlibraryRemake35> itemlibraryremake35List;
	private TItemlibraryRemake35  item;
	private Integer id;
	private Integer treeid;
	private Integer stage;
	public Integer getStage() {
		return stage;
	}

	public void setStage(Integer stage) {
		this.stage = stage;
	}
	public Integer getTreeid() {
		return treeid;
	}

	public void setTreeid(Integer treeid) {
		this.treeid = treeid;
	}
	public TItemlibraryRemake35 getItem() {
		return item;
	}

	public void setItem(TItemlibraryRemake35 item) {
		this.item = item;
	}
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	public List<TItemlibraryRemake35> getItemlibraryremake35List() {
		return itemlibraryremake35List;
	}

	public void setItemlibraryremake35List(List<TItemlibraryRemake35> itemlibraryremake35List) {
		this.itemlibraryremake35List = itemlibraryremake35List;
	}

	public String returnList() throws Exception {
		if(getStage()!=null && getStage()>0)
		{
			TItemlibrarytree note=(TItemlibrarytree) OperateDao.getObject("from TItemlibrarytree T where T.id="+getTreeid(), null);
			itemlibraryremake35List = OperateDao.getList("from TItemlibraryRemake35 T where T.treeid=" +note.getNoteparentid()+" and T.Stage="+getStage(), null);
		}
		else 
		{
			itemlibraryremake35List = OperateDao.getList("from TItemlibraryRemake35 T where T.treeid=" +getTreeid()+"", null);	
		}
		return "list";
	}
    public String DeleteRemake35()
    {
    	TItemlibraryRemake35 i=  (TItemlibraryRemake35) OperateDao.getObject("from TItemlibraryRemake35 T where T.id=" +getId(),null);
    	DeleteRemake35ByObject(i);
    	return "ok";
    }
    public String EditRemake35()
    {
    	setItem((TItemlibraryRemake35) OperateDao.getObject("from TItemlibraryRemake35 T where  T.id=" +id+"", null));
    	return "ok";
    }
	public String SaveRemake35() throws Exception {
		OperateDao.merge(item);
		return "ok";
	}
	public String Remake35Action() throws Exception {
		return "ok";
	}
	private void DeleteRemake35ByObject(TItemlibraryRemake35 i)
	{
		if(i.getFAf()!=null)
		{
			DeleteAttachByID(i.getFAf());
		}
		if(i.getFAg()!=null)
		{
			DeleteAttachByID(i.getFAg());
		}
		if(i.getFAh()!=null)
		{
			DeleteAttachByID(i.getFAh());
		}
		if(i.getFAi()!=null)
		{
			DeleteAttachByID(i.getFAi());
		}
		if(i.getFAj()!=null)
		{
			DeleteAttachByID(i.getFAj());
		}
		if(i.getFAk()!=null)
		{
			DeleteAttachByID(i.getFAk());
		}
		if(i.getFAl()!=null)
		{
			DeleteAttachByID(i.getFAl());
		}
		if(i.getFAm()!=null)
		{
			DeleteAttachByID(i.getFAm());
		}
		if(i.getFAn()!=null)
		{
			DeleteAttachByID(i.getFAn());
		}
		if(i.getFAo()!=null)
		{
			DeleteAttachByID(i.getFAo());
		}	
		if(i.getFAp()!=null)
		{
			DeleteAttachByID(i.getFAp());
		}
		if(i.getFAq()!=null)
		{
			DeleteAttachByID(i.getFAq());
		}
		if(i.getFAr()!=null)
		{
			DeleteAttachByID(i.getFAr());
		}
		if(i.getFAs()!=null)
		{
			DeleteAttachByID(i.getFAs());
		}
		if(i.getFAt()!=null)
		{
			DeleteAttachByID(i.getFAt());
		}	
		if(i.getFAu()!=null)
		{
			DeleteAttachByID(i.getFAu());
		}
		if(i.getFAv()!=null)
		{
			DeleteAttachByID(i.getFAv());
		}
		OperateDao.deleteByKey(i);
	}
	public void DeleteRemake35ByTreeID(Integer id)
	{
		List<TItemlibraryRemake35> list=OperateDao.getList("from TItemlibraryRemake35 T where  T.treeid=" +id+"", null);
		for(TItemlibraryRemake35 i:list )
		{
			DeleteRemake35ByObject(i);
		}
	}
	public void InsertRemake35(String excelFile,Integer treeID) throws IOException {
		Poi poi = new Poi();
		LinkedList[] result = poi.GetLinkedList(excelFile);
		DeleteRemake35ByTreeID(treeID);
		for(int i=0;i<result.length;i++)
		{
			TItemlibraryRemake35 item=new TItemlibraryRemake35();
			item.setTreeid(treeID);
			item.setFA(result[i].get(0).toString());
			item.setFB(result[i].get(1).toString());
			item.setFC(result[i].get(2).toString());
			item.setFD(result[i].get(3).toString());
			item.setFE(result[i].get(4).toString());
			item.setFF(result[i].get(5).toString());
			item.setFG(result[i].get(6).toString());
			item.setFH(result[i].get(7).toString());
			item.setFI(result[i].get(8).toString());
			item.setFJ(result[i].get(9).toString());
			item.setFK(result[i].get(10).toString());
			item.setFL(result[i].get(11).toString());
			item.setFM(result[i].get(12).toString());
			item.setFN(result[i].get(13).toString());
			item.setFO(result[i].get(14).toString());
			item.setFP(result[i].get(15).toString());
			item.setFQ(result[i].get(16).toString());
			item.setFR(result[i].get(17).toString());
			item.setFS(result[i].get(18).toString());
			item.setFT(result[i].get(19).toString());
			item.setFU(result[i].get(20).toString());
			item.setFV(result[i].get(21).toString());
			item.setFW(result[i].get(22).toString());
			item.setFX(result[i].get(23).toString());
			item.setFY(result[i].get(24).toString());
			item.setFZ(result[i].get(25).toString());
			item.setFAa(result[i].get(26).toString());
			item.setFAb(result[i].get(27).toString());
			item.setFAc(result[i].get(28).toString());
			item.setFAd(result[i].get(29).toString());
			
			if(item.getFY().equals("是"))
			{
				item.setStage(1);
			}
			else if(item.getFZ().equals("是"))
			{
				item.setStage(2);
			}
			else if(item.getFAa().equals("是"))
			{
				item.setStage(3);
			}
			else if(item.getFAb().equals("是"))
			{
				item.setStage(4);
			}
			else if(item.getFAc().equals("是"))
			{
				item.setStage(5);
			}
			else if(item.getFAd().equals("是"))
			{
				item.setStage(6);
			}
			OperateDao.saveOrUpdate(item);
		}
	}
}
