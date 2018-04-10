package com.service.ItemLibrary;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import com.dao.OperateDao;

import entity.TItemlibraryRemake10;
import entity.TItemlibrarytree;

public class Remake10 extends ActionBase{

	private static final long serialVersionUID = 4727301277602742581L;
	private List<TItemlibraryRemake10> TItemlibraryRemake10List;
	private TItemlibraryRemake10  item;
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
	public List<TItemlibraryRemake10> getTItemlibraryRemake10List() {
		return TItemlibraryRemake10List;
	}

	public void setTItemlibraryRemake10List(List<TItemlibraryRemake10> tItemlibraryRemake10List) {
		TItemlibraryRemake10List = tItemlibraryRemake10List;
	}

	public TItemlibraryRemake10 getItem() {
		return item;
	}

	public void setItem(TItemlibraryRemake10 item) {
		this.item = item;
	}
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	public String returnList() throws Exception {
		if(getStage()!=null && getStage()>0)
		{
			TItemlibrarytree note=(TItemlibrarytree) OperateDao.getObject("from TItemlibrarytree T where T.id="+getTreeid(), null);
			TItemlibraryRemake10List = OperateDao.getList("from TItemlibraryRemake10 T where T.treeid=" +note.getNoteparentid()+" and T.Stage="+getStage(), null);
		}
		else 
		{
			TItemlibraryRemake10List = OperateDao.getList("from TItemlibraryRemake10 T where T.treeid=" +getTreeid()+"", null);
		}
		return "list";
	}
    public String DeleteRemake10()
    {
    	TItemlibraryRemake10 i=  (TItemlibraryRemake10) OperateDao.getObject("from TItemlibraryRemake10 T where T.id=" +getId(),null);
    	DeleteNew10ByObject(i);
    	return "ok";
    }
    public String EditRemake10()
    {
    	setItem((TItemlibraryRemake10) OperateDao.getObject("from TItemlibraryRemake10 T where  T.id=" +id+"", null));
    	return "ok";
    }
	public String SaveRemake10() throws Exception {
		OperateDao.merge(item);
		return "ok";
	}
	public String Remake10Action() throws Exception {
		return "ok";
	}
	private void DeleteNew10ByObject(TItemlibraryRemake10 i)
	{
		if(i.getFBj()!=null)
		{
			DeleteAttachByID(i.getFBj());
		}
		if(i.getFBk()!=null)
		{
			DeleteAttachByID(i.getFBk());
		}
		if(i.getFBl()!=null)
		{
			DeleteAttachByID(i.getFBl());
		}	
		if(i.getFBm()!=null)
		{
			DeleteAttachByID(i.getFBm());
		}
		if(i.getFBn()!=null)
		{
			DeleteAttachByID(i.getFBn());
		}
		if(i.getFBo()!=null)
		{
			DeleteAttachByID(i.getFBo());
		}	
		if(i.getFBp()!=null)
		{
			DeleteAttachByID(i.getFBp());
		}
		if(i.getFBq()!=null)
		{
			DeleteAttachByID(i.getFBq());
		}
		if(i.getFBr()!=null)
		{
			DeleteAttachByID(i.getFBr());
		}
		if(i.getFBs()!=null)
		{
			DeleteAttachByID(i.getFBs());
		}
		if(i.getFBt()!=null)
		{
			DeleteAttachByID(i.getFBt());
		}	
		if(i.getFBu()!=null)
		{
			DeleteAttachByID(i.getFBu());
		}
		if(i.getFBv()!=null)
		{
			DeleteAttachByID(i.getFBv());
		}
		if(i.getFBw()!=null)
		{
			DeleteAttachByID(i.getFBw());
		}
		if(i.getFBx()!=null)
		{
			DeleteAttachByID(i.getFBx());
		}
		if(i.getFBy()!=null)
		{
			DeleteAttachByID(i.getFBy());
		}
		if(i.getFBz()!=null)
		{
			DeleteAttachByID(i.getFBz());
		}
		if(i.getFCa()!=null)
		{
			DeleteAttachByID(i.getFCa());
		}
		OperateDao.deleteByKey(i);
	}
	public void DeleteRemake10ByTreeID(Integer id)
	{
		List<TItemlibraryRemake10> list=OperateDao.getList("from TItemlibraryRemake10 T where  T.treeid=" +id+"", null);
		for(TItemlibraryRemake10 i:list )
		{
			DeleteNew10ByObject(i);
		}
	}
	public void InsertRemake10(String excelFile,Integer treeID) throws IOException {
		Poi poi = new Poi();
		LinkedList[] result = poi.GetLinkedList(excelFile);
		DeleteRemake10ByTreeID(treeID);
		for(int i=0;i<result.length;i++)
		{
			TItemlibraryRemake10 item=new TItemlibraryRemake10();
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
			item.setFAn(result[i].get(39).toString());
			item.setFAo(result[i].get(40).toString());
			item.setFAp(result[i].get(41).toString());
			item.setFAq(result[i].get(42).toString());
			item.setFAr(result[i].get(43).toString());
			item.setFAs(result[i].get(44).toString());
			item.setFAt(result[i].get(45).toString());
			item.setFAu(result[i].get(46).toString());
			item.setFAv(result[i].get(47).toString());
			item.setFAw(result[i].get(48).toString());
			item.setFAx(result[i].get(49).toString());
			item.setFAy(result[i].get(50).toString());
			item.setFAz(result[i].get(51).toString());
			
			item.setFBa(result[i].get(52).toString());
			item.setFBb(result[i].get(53).toString());
			item.setFBc(result[i].get(54).toString());
			item.setFBd(result[i].get(55).toString());
			item.setFBe(result[i].get(56).toString());
			item.setFBf(result[i].get(57).toString());
			item.setFBg(result[i].get(58).toString());
			item.setFBh(result[i].get(59).toString());
			item.setFBi(result[i].get(60).toString());
			
			if(item.getFBd().equals("是"))
			{
				item.setStage(1);
			}
			else if(item.getFBe().equals("是"))
			{
				item.setStage(2);
			}
			else if(item.getFBf().equals("是"))
			{
				item.setStage(3);
			}
			else if(item.getFBg().equals("是"))
			{
				item.setStage(4);
			}
			else if(item.getFBh().equals("是"))
			{
				item.setStage(5);
			}
			else if(item.getFBi().equals("是"))
			{
				item.setStage(6);
			}
			OperateDao.saveOrUpdate(item);
		}
	}
}
