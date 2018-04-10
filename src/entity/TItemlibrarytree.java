package entity;

/**
 * TItemlibrarytree entity. @author MyEclipse Persistence Tools
 */

public class TItemlibrarytree implements java.io.Serializable {
	private static final long serialVersionUID = 9172434718186749048L;
	private Integer id;
	private String notetext;
	private Integer noteparentid;
	private Integer noteorderby;
	private String noteaction;
	private String noteentity;
	// Constructors

	public String getNoteentity() {
		return noteentity;
	}

	public void setNoteentity(String noteentity) {
		this.noteentity = noteentity;
	}

	/** default constructor */
	public TItemlibrarytree() {
	}

	/** full constructor */
	public TItemlibrarytree(String notetext, Integer noteparentid, Integer noteorderby, String noteaction,String noteentity) 
	{
		this.notetext = notetext;
		this.noteparentid = noteparentid;
		this.noteorderby = noteorderby;
		this.noteaction=noteaction;
		this.noteentity=noteentity;
	}
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNotetext() {
		return this.notetext;
	}

	public void setNotetext(String notetext) {
		this.notetext = notetext;
	}
	public String getNoteaction() {
		return this.noteaction;
	}
	public void setNoteaction(String noteaction) {
		this.noteaction = noteaction;
	}
	public Integer getNoteparentid() {
		return this.noteparentid;
	}

	public void setNoteparentid(Integer noteparentid) {
		this.noteparentid = noteparentid;
	}

	public Integer getNoteorderby() {
		return this.noteorderby;
	}

	public void setNoteorderby(Integer noteorderby) {
		this.noteorderby = noteorderby;
	}

}