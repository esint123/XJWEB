package entity;

/**
 * TItemtemplate entity. @author MyEclipse Persistence Tools
 */

public class TItemtemplate implements java.io.Serializable {

	private static final long serialVersionUID = -4485685497681436603L;
	private Integer id;
	private String filename;
	private Integer parentid;
	private Integer orderid;
	private String filepath;

	// Constructors

	/** default constructor */
	public TItemtemplate() {
	}

	/** minimal constructor */
	public TItemtemplate(String filename, Integer parentid,
			Integer orderid) {
		this.filename = filename;
		this.parentid = parentid;
		this.orderid = orderid;
	}

	/** full constructor */
	public TItemtemplate(String filename, Integer parentid,
			Integer orderid, String filepath) {
		this.filename = filename;
		this.parentid = parentid;
		this.orderid = orderid;
		this.filepath = filepath;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFilename() {
		return this.filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public Integer getParentid() {
		return this.parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

	public Integer getOrderid() {
		return this.orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	public String getFilepath() {
		return this.filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

}