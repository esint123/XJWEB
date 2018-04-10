package entity;

import java.util.ArrayList;
import java.util.List;


public class TreeItem {

	public TreeItem(String id, String text, String value, boolean showcheck,
			boolean isexpand, int checkstate, boolean hasChildren,
			boolean complete) {
		super();
		this.id = id;
		this.text = text;
		this.value = value;
		this.showcheck = showcheck;
		this.isexpand = isexpand;
		this.checkstate = checkstate;
		this.hasChildren = hasChildren;
		this.complete = complete;
	}

	public TreeItem(String id, String text, String value, boolean showcheck,
			boolean isexpand, int checkstate, boolean hasChildren,
			boolean complete, List<TreeItem> childNodes) {
		super();
		this.id = id;
		this.text = text;
		this.value = value;
		this.showcheck = showcheck;
		this.isexpand = isexpand;
		this.checkstate = checkstate;
		this.hasChildren = hasChildren;
		this.complete = complete;
		ChildNodes = childNodes;
	}

	public TreeItem() {
		showcheck=true;
		checkstate=0;
		complete=true;
		isexpand=false;
		
	}

	// 项目的id
	private String id;
	// 文本
	private String text;
	// 项的值
	private String value;
	// 能不能显示选择框
	private boolean showcheck;
	// 子节点能不能展开
	private boolean isexpand;
	// 子节点的选择状态
	private int checkstate;
	// 能不能有子节点
	private boolean hasChildren;
	// 能不能完成（用于区分能不能要异步load数据）
	private boolean complete;
	// 子节点列表
	private List<TreeItem> ChildNodes;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public boolean isShowcheck() {
		return showcheck;
	}

	public void setShowcheck(boolean showcheck) {
		this.showcheck = showcheck;
	}

	public boolean isIsexpand() {
		return isexpand;
	}

	public void setIsexpand(boolean isexpand) {
		this.isexpand = isexpand;
	}

	public int getCheckstate() {
		return checkstate;
	}

	public void setCheckstate(int checkstate) {
		this.checkstate = checkstate;
	}

	public boolean isHasChildren() {
		return hasChildren;
	}

	public void setHasChildren(boolean hasChildren) {
		this.hasChildren = hasChildren;
	}

	public boolean isComplete() {
		return complete;
	}

	public void setComplete(boolean complete) {
		this.complete = complete;
	}

	public List<TreeItem> getChildNodes() {
		return ChildNodes;
	}

	public void setChildNodes(List<TreeItem> childNodes) {
		ChildNodes = childNodes;
	}

	// �����һ���ӽڵ�
	public List<TreeItem> add(TreeItem ti) {
		if (ChildNodes == null) {
			ChildNodes = new ArrayList<TreeItem>();
		}
		ChildNodes.add(ti);
		return ChildNodes;
	}

	//

}
