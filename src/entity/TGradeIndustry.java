package entity;


public class TGradeIndustry implements java.io.Serializable {
	private static final long serialVersionUID = -7240175503192159518L;
	// Fields

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
	private Double grade7;
	private Double grade8;
	private Double grade9;
	private Double grade10;
	private Double grade11;
	private Double grade12;
	private Double grade13;
	private Double grade14;
	private Double grade15;
	private Double grade16;
	private Double grade17;
	private Double grade18;
	private Double grade19;
	private Double grade20;
	private Double grade21;
	private Double grade22;
	private Double grade23;
	private Double grade24;
	private Double grade25;
	private Double grade26;
	private String reason1;
	private String reason2;
	private String reason3;
	private String reason4;
	private String reason5;
	private String reason6;
	private String reason7;
	private String reason8;
	private String reason9;
	private String reason10;
	private String reason11;
	private String reason12;
	private String reason13;
	private String reason14;
	private String reason15;
	private String reason16;
	private String reason17;
	private String reason18;
	private String reason19;
	private String reason20;
	private String reason21;
	private String reason22;
	private String reason23;
	private String reason24;
	private String reason25;
	private String reason26;
	private String remark1;
	private String remark2;
	private String remark3;
	private String remark4;
	private String remark5;
	private String remark6;
	private String remark7;
	private String remark8;
	private String remark9;
	private String remark10;
	private String remark11;
	private String remark12;
	private String remark13;
	private String remark14;
	private String remark15;
	private String remark16;
	private String remark17;
	private String remark18;
	private String remark19;
	private String remark20;
	private String remark21;
	private String remark22;
	private String remark23;
	private String remark24;
	private String remark25;
	private String remark26;
	private Double gradesum;
	private String opinion;

	// Constructors

	/** default constructor */
	public TGradeIndustry() {
	}

	/** full constructor */
	public TGradeIndustry(Integer treeid, String reviewname,
			String reviewunit, String reviewtime, String reviewontime,
			String reviewclass, String reviewexpert, Double grade1,
			Double grade2, Double grade3, Double grade4, Double grade5,
			Double grade6, Double grade7, Double grade8, Double grade9,
			Double grade10, Double grade11, Double grade12, Double grade13,
			Double grade14, Double grade15, Double grade16, Double grade17,
			Double grade18, Double grade19, Double grade20, Double grade21,
			Double grade22, Double grade23, Double grade24, Double grade25,
			Double grade26, String reason1, String reason2, String reason3,
			String reason4, String reason5, String reason6, String reason7,
			String reason8, String reason9, String reason10, String reason11,
			String reason12, String reason13, String reason14, String reason15,
			String reason16, String reason17, String reason18, String reason19,
			String reason20, String reason21, String reason22, String reason23,
			String reason24, String reason25, String reason26, String remark1,
			String remark2, String remark3, String remark4, String remark5,
			String remark6, String remark7, String remark8, String remark9,
			String remark10, String remark11, String remark12, String remark13,
			String remark14, String remark15, String remark16, String remark17,
			String remark18, String remark19, String remark20, String remark21,
			String remark22, String remark23, String remark24, String remark25,
			String remark26, Double gradesum, String opinion) {
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
		this.grade7 = grade7;
		this.grade8 = grade8;
		this.grade9 = grade9;
		this.grade10 = grade10;
		this.grade11 = grade11;
		this.grade12 = grade12;
		this.grade13 = grade13;
		this.grade14 = grade14;
		this.grade15 = grade15;
		this.grade16 = grade16;
		this.grade17 = grade17;
		this.grade18 = grade18;
		this.grade19 = grade19;
		this.grade20 = grade20;
		this.grade21 = grade21;
		this.grade22 = grade22;
		this.grade23 = grade23;
		this.grade24 = grade24;
		this.grade25 = grade25;
		this.grade26 = grade26;
		this.reason1 = reason1;
		this.reason2 = reason2;
		this.reason3 = reason3;
		this.reason4 = reason4;
		this.reason5 = reason5;
		this.reason6 = reason6;
		this.reason7 = reason7;
		this.reason8 = reason8;
		this.reason9 = reason9;
		this.reason10 = reason10;
		this.reason11 = reason11;
		this.reason12 = reason12;
		this.reason13 = reason13;
		this.reason14 = reason14;
		this.reason15 = reason15;
		this.reason16 = reason16;
		this.reason17 = reason17;
		this.reason18 = reason18;
		this.reason19 = reason19;
		this.reason20 = reason20;
		this.reason21 = reason21;
		this.reason22 = reason22;
		this.reason23 = reason23;
		this.reason24 = reason24;
		this.reason25 = reason25;
		this.reason26 = reason26;
		this.remark1 = remark1;
		this.remark2 = remark2;
		this.remark3 = remark3;
		this.remark4 = remark4;
		this.remark5 = remark5;
		this.remark6 = remark6;
		this.remark7 = remark7;
		this.remark8 = remark8;
		this.remark9 = remark9;
		this.remark10 = remark10;
		this.remark11 = remark11;
		this.remark12 = remark12;
		this.remark13 = remark13;
		this.remark14 = remark14;
		this.remark15 = remark15;
		this.remark16 = remark16;
		this.remark17 = remark17;
		this.remark18 = remark18;
		this.remark19 = remark19;
		this.remark20 = remark20;
		this.remark21 = remark21;
		this.remark22 = remark22;
		this.remark23 = remark23;
		this.remark24 = remark24;
		this.remark25 = remark25;
		this.remark26 = remark26;
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

	public Double getGrade7() {
		return this.grade7;
	}

	public void setGrade7(Double grade7) {
		this.grade7 = grade7;
	}

	public Double getGrade8() {
		return this.grade8;
	}

	public void setGrade8(Double grade8) {
		this.grade8 = grade8;
	}

	public Double getGrade9() {
		return this.grade9;
	}

	public void setGrade9(Double grade9) {
		this.grade9 = grade9;
	}

	public Double getGrade10() {
		return this.grade10;
	}

	public void setGrade10(Double grade10) {
		this.grade10 = grade10;
	}

	public Double getGrade11() {
		return this.grade11;
	}

	public void setGrade11(Double grade11) {
		this.grade11 = grade11;
	}

	public Double getGrade12() {
		return this.grade12;
	}

	public void setGrade12(Double grade12) {
		this.grade12 = grade12;
	}

	public Double getGrade13() {
		return this.grade13;
	}

	public void setGrade13(Double grade13) {
		this.grade13 = grade13;
	}

	public Double getGrade14() {
		return this.grade14;
	}

	public void setGrade14(Double grade14) {
		this.grade14 = grade14;
	}

	public Double getGrade15() {
		return this.grade15;
	}

	public void setGrade15(Double grade15) {
		this.grade15 = grade15;
	}

	public Double getGrade16() {
		return this.grade16;
	}

	public void setGrade16(Double grade16) {
		this.grade16 = grade16;
	}

	public Double getGrade17() {
		return this.grade17;
	}

	public void setGrade17(Double grade17) {
		this.grade17 = grade17;
	}

	public Double getGrade18() {
		return this.grade18;
	}

	public void setGrade18(Double grade18) {
		this.grade18 = grade18;
	}

	public Double getGrade19() {
		return this.grade19;
	}

	public void setGrade19(Double grade19) {
		this.grade19 = grade19;
	}

	public Double getGrade20() {
		return this.grade20;
	}

	public void setGrade20(Double grade20) {
		this.grade20 = grade20;
	}

	public Double getGrade21() {
		return this.grade21;
	}

	public void setGrade21(Double grade21) {
		this.grade21 = grade21;
	}

	public Double getGrade22() {
		return this.grade22;
	}

	public void setGrade22(Double grade22) {
		this.grade22 = grade22;
	}

	public Double getGrade23() {
		return this.grade23;
	}

	public void setGrade23(Double grade23) {
		this.grade23 = grade23;
	}

	public Double getGrade24() {
		return this.grade24;
	}

	public void setGrade24(Double grade24) {
		this.grade24 = grade24;
	}

	public Double getGrade25() {
		return this.grade25;
	}

	public void setGrade25(Double grade25) {
		this.grade25 = grade25;
	}

	public Double getGrade26() {
		return this.grade26;
	}

	public void setGrade26(Double grade26) {
		this.grade26 = grade26;
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

	public String getReason7() {
		return this.reason7;
	}

	public void setReason7(String reason7) {
		this.reason7 = reason7;
	}

	public String getReason8() {
		return this.reason8;
	}

	public void setReason8(String reason8) {
		this.reason8 = reason8;
	}

	public String getReason9() {
		return this.reason9;
	}

	public void setReason9(String reason9) {
		this.reason9 = reason9;
	}

	public String getReason10() {
		return this.reason10;
	}

	public void setReason10(String reason10) {
		this.reason10 = reason10;
	}

	public String getReason11() {
		return this.reason11;
	}

	public void setReason11(String reason11) {
		this.reason11 = reason11;
	}

	public String getReason12() {
		return this.reason12;
	}

	public void setReason12(String reason12) {
		this.reason12 = reason12;
	}

	public String getReason13() {
		return this.reason13;
	}

	public void setReason13(String reason13) {
		this.reason13 = reason13;
	}

	public String getReason14() {
		return this.reason14;
	}

	public void setReason14(String reason14) {
		this.reason14 = reason14;
	}

	public String getReason15() {
		return this.reason15;
	}

	public void setReason15(String reason15) {
		this.reason15 = reason15;
	}

	public String getReason16() {
		return this.reason16;
	}

	public void setReason16(String reason16) {
		this.reason16 = reason16;
	}

	public String getReason17() {
		return this.reason17;
	}

	public void setReason17(String reason17) {
		this.reason17 = reason17;
	}

	public String getReason18() {
		return this.reason18;
	}

	public void setReason18(String reason18) {
		this.reason18 = reason18;
	}

	public String getReason19() {
		return this.reason19;
	}

	public void setReason19(String reason19) {
		this.reason19 = reason19;
	}

	public String getReason20() {
		return this.reason20;
	}

	public void setReason20(String reason20) {
		this.reason20 = reason20;
	}

	public String getReason21() {
		return this.reason21;
	}

	public void setReason21(String reason21) {
		this.reason21 = reason21;
	}

	public String getReason22() {
		return this.reason22;
	}

	public void setReason22(String reason22) {
		this.reason22 = reason22;
	}

	public String getReason23() {
		return this.reason23;
	}

	public void setReason23(String reason23) {
		this.reason23 = reason23;
	}

	public String getReason24() {
		return this.reason24;
	}

	public void setReason24(String reason24) {
		this.reason24 = reason24;
	}

	public String getReason25() {
		return this.reason25;
	}

	public void setReason25(String reason25) {
		this.reason25 = reason25;
	}

	public String getReason26() {
		return this.reason26;
	}

	public void setReason26(String reason26) {
		this.reason26 = reason26;
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

	public String getRemark7() {
		return this.remark7;
	}

	public void setRemark7(String remark7) {
		this.remark7 = remark7;
	}

	public String getRemark8() {
		return this.remark8;
	}

	public void setRemark8(String remark8) {
		this.remark8 = remark8;
	}

	public String getRemark9() {
		return this.remark9;
	}

	public void setRemark9(String remark9) {
		this.remark9 = remark9;
	}

	public String getRemark10() {
		return this.remark10;
	}

	public void setRemark10(String remark10) {
		this.remark10 = remark10;
	}

	public String getRemark11() {
		return this.remark11;
	}

	public void setRemark11(String remark11) {
		this.remark11 = remark11;
	}

	public String getRemark12() {
		return this.remark12;
	}

	public void setRemark12(String remark12) {
		this.remark12 = remark12;
	}

	public String getRemark13() {
		return this.remark13;
	}

	public void setRemark13(String remark13) {
		this.remark13 = remark13;
	}

	public String getRemark14() {
		return this.remark14;
	}

	public void setRemark14(String remark14) {
		this.remark14 = remark14;
	}

	public String getRemark15() {
		return this.remark15;
	}

	public void setRemark15(String remark15) {
		this.remark15 = remark15;
	}

	public String getRemark16() {
		return this.remark16;
	}

	public void setRemark16(String remark16) {
		this.remark16 = remark16;
	}

	public String getRemark17() {
		return this.remark17;
	}

	public void setRemark17(String remark17) {
		this.remark17 = remark17;
	}

	public String getRemark18() {
		return this.remark18;
	}

	public void setRemark18(String remark18) {
		this.remark18 = remark18;
	}

	public String getRemark19() {
		return this.remark19;
	}

	public void setRemark19(String remark19) {
		this.remark19 = remark19;
	}

	public String getRemark20() {
		return this.remark20;
	}

	public void setRemark20(String remark20) {
		this.remark20 = remark20;
	}

	public String getRemark21() {
		return this.remark21;
	}

	public void setRemark21(String remark21) {
		this.remark21 = remark21;
	}

	public String getRemark22() {
		return this.remark22;
	}

	public void setRemark22(String remark22) {
		this.remark22 = remark22;
	}

	public String getRemark23() {
		return this.remark23;
	}

	public void setRemark23(String remark23) {
		this.remark23 = remark23;
	}

	public String getRemark24() {
		return this.remark24;
	}

	public void setRemark24(String remark24) {
		this.remark24 = remark24;
	}

	public String getRemark25() {
		return this.remark25;
	}

	public void setRemark25(String remark25) {
		this.remark25 = remark25;
	}

	public String getRemark26() {
		return this.remark26;
	}

	public void setRemark26(String remark26) {
		this.remark26 = remark26;
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