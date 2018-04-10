package entity;

import java.math.BigDecimal;

public class TGradeTeach implements java.io.Serializable {

	private static final long serialVersionUID = -3374052861460560602L;

	private Integer id;
	private Integer treeid;
	private String reviewname;
	private String reviewunit;
	private String reviewtime;
	private String reviewontime;
	private String reviewclass;
	private String reviewexpert;
	private Double grade1;
	private Double grade2;
	private Double grade3;
	private Double grade4;
	private Double grade5;
	private Double grade6;
	private String reason1;
	private String reason2;
	private String reason3;
	private String reason4;
	private String reason5;
	private String reason6;
	private String remark1;
	private String remark2;
	private String remark3;
	private String remark4;
	private String remark5;
	private String remark6;
	private Double gradesum;
	private String opinion;

	// Constructors

	/** default constructor */
	public TGradeTeach() {
	}

	/** full constructor */
	public TGradeTeach(Integer treeid, String reviewname, String reviewunit,
			String reviewtime, String reviewontime, String reviewclass,
			String reviewexpert, Double grade1, Double grade2, Double grade3,
			Double grade4, Double grade5, Double grade6, String reason1,
			String reason2, String reason3, String reason4, String reason5,
			String reason6, String remark1, String remark2, String remark3,
			String remark4, String remark5, String remark6, Double gradesum,
			String opinion) {
		this.treeid = treeid;
		this.reviewname = reviewname;
		this.reviewunit = reviewunit;
		this.reviewtime = reviewtime;
		this.reviewontime = reviewontime;
		this.reviewclass = reviewclass;
		this.reviewexpert = reviewexpert;
		this.grade1 = grade1;
		this.grade2 = grade2;
		this.grade3 = grade3;
		this.grade4 = grade4;
		this.grade5 = grade5;
		this.grade6 = grade6;
		this.reason1 = reason1;
		this.reason2 = reason2;
		this.reason3 = reason3;
		this.reason4 = reason4;
		this.reason5 = reason5;
		this.reason6 = reason6;
		this.remark1 = remark1;
		this.remark2 = remark2;
		this.remark3 = remark3;
		this.remark4 = remark4;
		this.remark5 = remark5;
		this.remark6 = remark6;
		this.gradesum = gradesum;
		this.opinion = opinion;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getTreeid() {
		return this.treeid;
	}

	public void setTreeid(Integer treeid) {
		this.treeid = treeid;
	}

	public String getReviewname() {
		return this.reviewname;
	}

	public void setReviewname(String reviewname) {
		this.reviewname = reviewname;
	}

	public String getReviewunit() {
		return this.reviewunit;
	}

	public void setReviewunit(String reviewunit) {
		this.reviewunit = reviewunit;
	}

	public String getReviewtime() {
		return this.reviewtime;
	}

	public void setReviewtime(String reviewtime) {
		this.reviewtime = reviewtime;
	}

	public String getReviewontime() {
		return this.reviewontime;
	}

	public void setReviewontime(String reviewontime) {
		this.reviewontime = reviewontime;
	}

	public String getReviewclass() {
		return this.reviewclass;
	}

	public void setReviewclass(String reviewclass) {
		this.reviewclass = reviewclass;
	}

	public String getReviewexpert() {
		return this.reviewexpert;
	}

	public void setReviewexpert(String reviewexpert) {
		this.reviewexpert = reviewexpert;
	}

	public Double getGrade1() {
		return this.grade1;
	}

	public void setGrade1(Double grade1) {
		this.grade1 = grade1;
	}

	public Double getGrade2() {
		return this.grade2;
	}

	public void setGrade2(Double grade2) {
		this.grade2 = grade2;
	}

	public Double getGrade3() {
		return this.grade3;
	}

	public void setGrade3(Double grade3) {
		this.grade3 = grade3;
	}

	public Double getGrade4() {
		return this.grade4;
	}

	public void setGrade4(Double grade4) {
		this.grade4 = grade4;
	}

	public Double getGrade5() {
		return this.grade5;
	}

	public void setGrade5(Double grade5) {
		this.grade5 = grade5;
	}

	public Double getGrade6() {
		return this.grade6;
	}

	public void setGrade6(Double grade6) {
		this.grade6 = grade6;
	}

	public String getReason1() {
		return this.reason1;
	}

	public void setReason1(String reason1) {
		this.reason1 = reason1;
	}

	public String getReason2() {
		return this.reason2;
	}

	public void setReason2(String reason2) {
		this.reason2 = reason2;
	}

	public String getReason3() {
		return this.reason3;
	}

	public void setReason3(String reason3) {
		this.reason3 = reason3;
	}

	public String getReason4() {
		return this.reason4;
	}

	public void setReason4(String reason4) {
		this.reason4 = reason4;
	}

	public String getReason5() {
		return this.reason5;
	}

	public void setReason5(String reason5) {
		this.reason5 = reason5;
	}

	public String getReason6() {
		return this.reason6;
	}

	public void setReason6(String reason6) {
		this.reason6 = reason6;
	}

	public String getRemark1() {
		return this.remark1;
	}

	public void setRemark1(String remark1) {
		this.remark1 = remark1;
	}

	public String getRemark2() {
		return this.remark2;
	}

	public void setRemark2(String remark2) {
		this.remark2 = remark2;
	}

	public String getRemark3() {
		return this.remark3;
	}

	public void setRemark3(String remark3) {
		this.remark3 = remark3;
	}

	public String getRemark4() {
		return this.remark4;
	}

	public void setRemark4(String remark4) {
		this.remark4 = remark4;
	}

	public String getRemark5() {
		return this.remark5;
	}

	public void setRemark5(String remark5) {
		this.remark5 = remark5;
	}

	public String getRemark6() {
		return this.remark6;
	}

	public void setRemark6(String remark6) {
		this.remark6 = remark6;
	}

	public Double getGradesum() {
		return this.gradesum;
	}

	public void setGradesum(Double gradesum) {
		this.gradesum = gradesum;
	}

	public String getOpinion() {
		return this.opinion;
	}

	public void setOpinion(String opinion) {
		this.opinion = opinion;
	}

}