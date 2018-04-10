package com.service.ItemLibrary;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;


import com.dao.OperateDao;
import entity.TItemlibraryNew35;
import entity.TItemlibrarytree;

public class New35 extends ActionBase{

	private static final long serialVersionUID = 1814594142022798091L;
	private List<TItemlibraryNew35> itemlibrarynew35List;
	private TItemlibraryNew35  item;
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
	public TItemlibraryNew35 getItem() {
		return item;
	}

	public void setItem(TItemlibraryNew35 item) {
		this.item = item;
	}
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	public List<TItemlibraryNew35> getItemlibrarynew35List() {
		return itemlibrarynew35List;
	}

	public void setItemlibrarynew35List(List<TItemlibraryNew35> itemlibrarynew35List) {
		this.itemlibrarynew35List = itemlibrarynew35List;
	}

	public String returnList() throws Exception {
		if(getStage()!=null && getStage()>0)
		{
			TItemlibrarytree note=(TItemlibrarytree) OperateDao.getObject("from TItemlibrarytree T where T.id="+getTreeid(), null);
			itemlibrarynew35List = OperateDao.getList("from TItemlibraryNew35 T where T.treeid=" +note.getNoteparentid()+" and T.Stage="+getStage(), null);
		}
		else 
		{
			itemlibrarynew35List = OperateDao.getList("from TItemlibraryNew35 T where T.treeid=" +getTreeid()+"", null);	
		}
		return "list";
	}
    public String DeleteNew35()
    {
    	TItemlibraryNew35 i=  (TItemlibraryNew35) OperateDao.getObject("from TItemlibraryNew35 T where T.id=" +getId(),null);
    	DeleteNew35ByObject(i);
    	return "ok";
    }
    public String EditNew35()
    {
    	setItem((TItemlibraryNew35) OperateDao.getObject("from TItemlibraryNew35 T where  T.id=" +id+"", null));
    	return "ok";
    }
	public String SaveNew35() throws Exception {
		OperateDao.merge(item);
		return "ok";
	}
	public String New35Action() throws Exception {
		return "ok";
	}
	private void DeleteNew35ByObject(TItemlibraryNew35 i)
	{
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
		if(i.getFAw()!=null)
		{
			DeleteAttachByID(i.getFAw());
		}
		if(i.getFAx()!=null)
		{
			DeleteAttachByID(i.getFAx());
		}
		if(i.getFAy()!=null)
		{
			DeleteAttachByID(i.getFAy());
		}
		if(i.getFAz()!=null)
		{
			DeleteAttachByID(i.getFAz());
		}
		if(i.getFBa()!=null)
		{
			DeleteAttachByID(i.getFBa());
		}
		if(i.getFBb()!=null)
		{
			DeleteAttachByID(i.getFBb());
		}
		if(i.getFBc()!=null)
		{
			DeleteAttachByID(i.getFBc());
		}
		if(i.getFBd()!=null)
		{
			DeleteAttachByID(i.getFBd());
		}
		if(i.getFBe()!=null)
		{
			DeleteAttachByID(i.getFBe());
		}
		OperateDao.deleteByKey(i);
	}
	public void DeleteNew35ByTreeID(Integer id)
	{
		List<TItemlibraryNew35> list=OperateDao.getList("from TItemlibraryNew35 T where  T.treeid=" +id+"", null);
		for(TItemlibraryNew35 i:list )
		{
			DeleteNew35ByObject(i);
		}
	}
	public void InsertNew35(String excelFile,Integer treeID) throws IOException {
		Poi poi = new Poi();
		LinkedList[] result = poi.GetLinkedList(excelFile);
		DeleteNew35ByTreeID(treeID);
		for(int i=0;i<result.length;i++)
		{
			TItemlibraryNew35 item=new TItemlibraryNew35();
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
			item.setFAe(result[i].get(30).toString());
			item.setFAf(result[i].get(31).toString());
			item.setFAg(result[i].get(32).toString());
			item.setFAh(result[i].get(33).toString());
			item.setFAi(result[i].get(34).toString());
			item.setFAj(result[i].get(35).toString());
			item.setFAk(result[i].get(36).toString());
			item.setFAl(result[i].get(37).toString());
			item.setFAm(result[i].get(38).toString());
			
			if(item.getFAh().equals("是"))
			{
				item.setStage(1);
			}
			else if(item.getFAi().equals("是"))
			{
				item.setStage(2);
			}
			else if(item.getFAj().equals("是"))
			{
				item.setStage(3);
			}
			else if(item.getFAk().equals("是"))
			{
				item.setStage(4);
			}
			else if(item.getFAl().equals("是"))
			{
				item.setStage(5);
			}
			else if(item.getFAm().equals("是"))
			{
				item.setStage(6);
			}
			OperateDao.saveOrUpdate(item);
		}
	}
}
