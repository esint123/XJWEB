package com.service.ItemLibrary;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import com.dao.OperateDao;

import entity.TItemlibraryNew10;
import entity.TItemlibrarytree;

public class New10 extends ActionBase{

	private static final long serialVersionUID = -6515644446179731331L;
	private List<TItemlibraryNew10> itemlibrarynew10List;
	private TItemlibraryNew10  item;
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

	public TItemlibraryNew10 getItem() {
		return item;
	}

	public void setItem(TItemlibraryNew10 item) {
		this.item = item;
	}
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	public List<TItemlibraryNew10> getItemlibrarynew10List() {
		return itemlibrarynew10List;
	}

	public void setItemlibrarynew10List(List<TItemlibraryNew10> itemlibrarynew10List) {
		this.itemlibrarynew10List = itemlibrarynew10List;
	}

	public String returnList() throws Exception {
		if(getStage()!=null && getStage()>0)
		{
			TItemlibrarytree note=(TItemlibrarytree) OperateDao.getObject("from TItemlibrarytree T where T.id="+getTreeid(), null);
			itemlibrarynew10List = OperateDao.getList("from TItemlibraryNew10 T where T.treeid=" +note.getNoteparentid()+" and T.Stage="+getStage(), null);
		}
		else 
		{
			itemlibrarynew10List = OperateDao.getList("from TItemlibraryNew10 T where T.treeid=" +getTreeid()+"", null);	
		}
		return "list";
	}
    public String DeleteNew10()
    {
    	TItemlibraryNew10 i=  (TItemlibraryNew10) OperateDao.getObject("from TItemlibraryNew10 T where T.id=" +getId(),null);
    	DeleteNew10ByObject(i);
    	return "ok";
    }
    public String EditNew10()
    {
    	setItem((TItemlibraryNew10) OperateDao.getObject("from TItemlibraryNew10 T where  T.id=" +id+"", null));
    	return "ok";
    }
	public String SaveNew10() throws Exception {
		OperateDao.merge(item);
		return "ok";
	}
	public String New10Action() throws Exception {
		return "ok";
	}
	private void DeleteNew10ByObject(TItemlibraryNew10 i)
	{
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
		if(i.getFCb()!=null)
		{
			DeleteAttachByID(i.getFCb());
		}
		if(i.getFCc()!=null)
		{
			DeleteAttachByID(i.getFCc());
		}
		if(i.getFCd()!=null)
		{
			DeleteAttachByID(i.getFCd());
		}
		OperateDao.deleteByKey(i);
	}
	public void DeleteNew10ByTreeID(Integer id)
	{
		List<TItemlibraryNew10> list=OperateDao.getList("from TItemlibraryNew10 T where  T.treeid=" +id+"", null);
		for(TItemlibraryNew10 i:list )
		{
			DeleteNew10ByObject(i);
		}
	}
	public void InsertNew10(String excelFile,Integer treeID) throws IOException {
		Poi poi = new Poi();
		LinkedList[] result = poi.GetLinkedList(excelFile);
		DeleteNew10ByTreeID(treeID);
		for(int i=0;i<result.length;i++)
		{
			TItemlibraryNew10 item=new TItemlibraryNew10();
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
			item.setFBj(result[i].get(61).toString());
			item.setFBk(result[i].get(62).toString());
			item.setFBl(result[i].get(63).toString());
			if(item.getFBg().equals("是"))
			{
				item.setStage(1);
			}
			else if(item.getFBh().equals("是"))
			{
				item.setStage(2);
			}
			else if(item.getFBi().equals("是"))
			{
				item.setStage(3);
			}
			else if(item.getFBj().equals("是"))
			{
				item.setStage(4);
			}
			else if(item.getFBk().equals("是"))
			{
				item.setStage(5);
			}
			else if(item.getFBl().equals("是"))
			{
				item.setStage(6);
			}
/*			item.setFBm(result[i].get(64).toString());
			item.setFBn(result[i].get(65).toString());
			item.setFBo(result[i].get(66).toString());
			item.setFBp(result[i].get(67).toString());
			item.setFBq(result[i].get(68).toString());
			item.setFBr(result[i].get(69).toString());
			item.setFBs(result[i].get(70).toString());
			item.setFBt(result[i].get(71).toString());
			item.setFBu(result[i].get(72).toString());
			item.setFBv(result[i].get(73).toString());
			item.setFBw(result[i].get(74).toString());
			item.setFBx(result[i].get(75).toString());
			item.setFBy(result[i].get(76).toString());
			item.setFBz(result[i].get(77).toString());
			
			item.setFCa(result[i].get(78).toString());
			item.setFCb(result[i].get(79).toString());
			item.setFCc(result[i].get(80).toString());
			item.setFCd(result[i].get(81).toString());*/
			OperateDao.saveOrUpdate(item);
		}

	}

}
