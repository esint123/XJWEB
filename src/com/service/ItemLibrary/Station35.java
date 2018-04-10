package com.service.ItemLibrary;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import com.dao.OperateDao;

import entity.TItemlibraryStation35;
import entity.TItemlibrarytree;

public class Station35 extends ActionBase{
	private static final long serialVersionUID = 4849066608746361500L;
	private List<TItemlibraryStation35> itemlibrarystation35List;
	private TItemlibraryStation35  item;
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
	public TItemlibraryStation35 getItem() {
		return item;
	}

	public void setItem(TItemlibraryStation35 item) {
		this.item = item;
	}
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	public List<TItemlibraryStation35> getItemlibrarystation35List() {
		return itemlibrarystation35List;
	}

	public void setItemlibrarystation35List(List<TItemlibraryStation35> itemlibrarystation35List) {
		this.itemlibrarystation35List = itemlibrarystation35List;
	}

	public String returnList() throws Exception {
		if(getStage()!=null && getStage()>0)
		{
			TItemlibrarytree note=(TItemlibrarytree) OperateDao.getObject("from TItemlibrarytree T where T.id="+getTreeid(), null);
			itemlibrarystation35List = OperateDao.getList("from TItemlibraryStation35 T where T.treeid=" +note.getNoteparentid()+" and T.Stage="+getStage(), null);
		}
		else 
		{
			itemlibrarystation35List = OperateDao.getList("from TItemlibraryStation35 T where T.treeid=" +getTreeid()+"", null);	
		}
		return "list";
	}
    public String DeleteStation35()
    {
    	TItemlibraryStation35 i=  (TItemlibraryStation35) OperateDao.getObject("from TItemlibraryStation35 T where T.id=" +getId(),null);
    	DeleteStation35ByObject(i);
    	return "ok";
    }
    public String EditStation35()
    {
    	setItem((TItemlibraryStation35) OperateDao.getObject("from TItemlibraryStation35 T where  T.id=" +id+"", null));
    	return "ok";
    }
	public String SaveStation35() throws Exception {
		OperateDao.merge(item);
		return "ok";
	}
	public String Station35Action() throws Exception {
		return "ok";
	}
	private void DeleteStation35ByObject(TItemlibraryStation35 i)
	{
		if(i.getFAe()!=null)
		{
			DeleteAttachByID(i.getFAe());
		}
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
	public void DeleteStation35ByTreeID(Integer id)
	{
		List<TItemlibraryStation35> list=OperateDao.getList("from TItemlibraryStation35 T where  T.treeid=" +id+"", null);
		for(TItemlibraryStation35 i:list )
		{
			DeleteStation35ByObject(i);
		}
	}
	public void InsertStation35(String excelFile,Integer treeID) throws IOException {
		Poi poi = new Poi();
		LinkedList[] result = poi.GetLinkedList(excelFile);
		DeleteStation35ByTreeID(treeID);
		for(int i=0;i<result.length;i++)
		{
			TItemlibraryStation35 item=new TItemlibraryStation35();
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
