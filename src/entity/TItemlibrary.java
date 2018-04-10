package entity;

/**
 * TItemlibrary entity. @author MyEclipse Persistence Tools
 */

public class TItemlibrary implements java.io.Serializable {
	private static final long serialVersionUID = 8234129018933353902L;
	private Integer id;
	private String filename;
	private String filetype;
	private String htmlword;
	private String filepath;

	// Constructors

	/** default constructor */
	public TItemlibrary() {
	}
	public TItemlibrary(Integer id) {
		this.id=id;
	}
	/** full constructor */
	public TItemlibrary(String filename, String filetype, String htmlword,String filepath) {
		this.filename = filename;
		this.filetype = filetype;
		this.htmlword = htmlword;
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

	public String getFiletype() {
		return this.filetype;
	}

	public void setFiletype(String filetype) {
		this.filetype = filetype;
	}

	public String getHtmlword() {
		return this.htmlword;
	}

	public void setHtmlword(String htmlword) {
		this.htmlword = htmlword;
	}
	public String getFilepath() {
		return filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
}