package entity;

/**
 * TItemlibrarytree entity. @author MyEclipse Persistence Tools
 */

public class TReviewtree implements java.io.Serializable {
	
	private static final long serialVersionUID = -571360013080837599L;
	private Integer id;
	private String notetext;
	private Integer noteparentid;
	private Integer noteorderby;
	private String noteaction;
	private String reviewname;
	private String reviewunit;
	private String reviewtime;
	private String reviewontime;
	// Constructors

	public String getReviewontime() {
		return reviewontime;
	}

	public void setReviewontime(String reviewontime) {
		this.reviewontime = reviewontime;
	}

	public String getReviewtime() {
		return reviewtime;
	}

	public void setReviewtime(String reviewtime) {
		this.reviewtime = reviewtime;
	}

	public String getReviewunit() {
		return reviewunit;
	}

	public void setReviewunit(String reviewunit) {
		this.reviewunit = reviewunit;
	}

	public String getReviewname() {
		return reviewname;
	}

	public void setReviewname(String reviewname) {
		this.reviewname = reviewname;
	}

	/** default constructor */
	public TReviewtree() {
	}

	/** full constructor */
	public TReviewtree(String notetext, Integer noteparentid, Integer noteorderby, String noteaction) 
	{
		this.notetext = notetext;
		this.noteparentid = noteparentid;
		this.noteorderby = noteorderby;
		this.noteaction=noteaction;
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