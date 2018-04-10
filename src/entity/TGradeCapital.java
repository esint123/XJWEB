package entity;


public class TGradeCapital implements java.io.Serializable {

	private static final long serialVersionUID = -7314651978268605534L;
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
	private Double grade27;
	private Double grade28;
	private Double grade29;
	private Double grade30;
	private Double grade31;
	private Double grade32;
	private Double grade33;
	private Double grade34;
	private Double grade35;
	private Double grade36;
	private Double grade37;
	private Double grade38;
	private Double grade39;
	private Double grade40;
	private Double grade41;
	private Double grade42;
	private Double grade43;
	private Double grade44;
	private Double grade45;
	private Double grade46;
	private Double grade47;
	private Double grade48;
	private Double grade49;
	private Double grade50;
	private Double grade51;
	private Double grade52;
	private Double grade53;
	private Double grade54;
	private Double grade55;
	private Double grade56;
	private Double grade57;
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
	private String reason27;
	private String reason28;
	private String reason29;
	private String reason30;
	private String reason31;
	private String reason32;
	private String reason33;
	private String reason34;
	private String reason35;
	private String reason36;
	private String reason37;
	private String reason38;
	private String reason39;
	private String reason40;
	private String reason41;
	private String reason42;
	private String reason43;
	private String reason44;
	private String reason45;
	private String reason46;
	private String reason47;
	private String reason48;
	private String reason49;
	private String reason50;
	private String reason51;
	private String reason52;
	private String reason53;
	private String reason54;
	private String reason55;
	private String reason56;
	private String reason57;
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
	private String remark27;
	private String remark28;
	private String remark29;
	private String remark30;
	private String remark31;
	private String remark32;
	private String remark33;
	private String remark34;
	private String remark35;
	private String remark36;
	private String remark37;
	private String remark38;
	private String remark39;
	private String remark40;
	private String remark41;
	private String remark42;
	private String remark43;
	private String remark44;
	private String remark45;
	private String remark46;
	private String remark47;
	private String remark48;
	private String remark49;
	private String remark50;
	private String remark51;
	private String remark52;
	private String remark53;
	private String remark54;
	private String remark55;
	private String remark56;
	private String remark57;
	private Double gradesum;
	private String opinion;

	// Constructors

	/** default constructor */
	public TGradeCapital() {
	}


	/** full constructor */
	public TGradeCapital(Integer treeid, String reviewname,
			String reviewunit, String reviewtime, String reviewontime,
			String reviewclass, String reviewexpert, Double grade1,
			Double grade2, Double grade3, Double grade4, Double grade5,
			Double grade6, Double grade7, Double grade8, Double grade9,
			Double grade10, Double grade11, Double grade12, Double grade13,
			Double grade14, Double grade15, Double grade16, Double grade17,
			Double grade18, Double grade19, Double grade20, Double grade21,
			Double grade22, Double grade23, Double grade24, Double grade25,
			Double grade26, Double grade27, Double grade28, Double grade29,
			Double grade30, Double grade31, Double grade32, Double grade33,
			Double grade34, Double grade35, Double grade36, Double grade37,
			Double grade38, Double grade39, Double grade40, Double grade41,
			Double grade42, Double grade43, Double grade44, Double grade45,
			Double grade46, Double grade47, Double grade48, Double grade49,
			Double grade50, Double grade51, Double grade52, Double grade53,
			Double grade54, Double grade55, Double grade56, Double grade57,
			String reason1, String reason2, String reason3, String reason4,
			String reason5, String reason6, String reason7, String reason8,
			String reason9, String reason10, String reason11, String reason12,
			String reason13, String reason14, String reason15, String reason16,
			String reason17, String reason18, String reason19, String reason20,
			String reason21, String reason22, String reason23, String reason24,
			String reason25, String reason26, String reason27, String reason28,
			String reason29, String reason30, String reason31, String reason32,
			String reason33, String reason34, String reason35, String reason36,
			String reason37, String reason38, String reason39, String reason40,
			String reason41, String reason42, String reason43, String reason44,
			String reason45, String reason46, String reason47, String reason48,
			String reason49, String reason50, String reason51, String reason52,
			String reason53, String reason54, String reason55, String reason56,
			String reason57, String remark1, String remark2, String remark3,
			String remark4, String remark5, String remark6, String remark7,
			String remark8, String remark9, String remark10, String remark11,
			String remark12, String remark13, String remark14, String remark15,
			String remark16, String remark17, String remark18, String remark19,
			String remark20, String remark21, String remark22, String remark23,
			String remark24, String remark25, String remark26, String remark27,
			String remark28, String remark29, String remark30, String remark31,
			String remark32, String remark33, String remark34, String remark35,
			String remark36, String remark37, String remark38, String remark39,
			String remark40, String remark41, String remark42, String remark43,
			String remark44, String remark45, String remark46, String remark47,
			String remark48, String remark49, String remark50, String remark51,
			String remark52, String remark53, String remark54, String remark55,
			String remark56, String remark57, Double gradesum, String opinion) {
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
		this.grade27 = grade27;
		this.grade28 = grade28;
		this.grade29 = grade29;
		this.grade30 = grade30;
		this.grade31 = grade31;
		this.grade32 = grade32;
		this.grade33 = grade33;
		this.grade34 = grade34;
		this.grade35 = grade35;
		this.grade36 = grade36;
		this.grade37 = grade37;
		this.grade38 = grade38;
		this.grade39 = grade39;
		this.grade40 = grade40;
		this.grade41 = grade41;
		this.grade42 = grade42;
		this.grade43 = grade43;
		this.grade44 = grade44;
		this.grade45 = grade45;
		this.grade46 = grade46;
		this.grade47 = grade47;
		this.grade48 = grade48;
		this.grade49 = grade49;
		this.grade50 = grade50;
		this.grade51 = grade51;
		this.grade52 = grade52;
		this.grade53 = grade53;
		this.grade54 = grade54;
		this.grade55 = grade55;
		this.grade56 = grade56;
		this.grade57 = grade57;
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
		this.reason27 = reason27;
		this.reason28 = reason28;
		this.reason29 = reason29;
		this.reason30 = reason30;
		this.reason31 = reason31;
		this.reason32 = reason32;
		this.reason33 = reason33;
		this.reason34 = reason34;
		this.reason35 = reason35;
		this.reason36 = reason36;
		this.reason37 = reason37;
		this.reason38 = reason38;
		this.reason39 = reason39;
		this.reason40 = reason40;
		this.reason41 = reason41;
		this.reason42 = reason42;
		this.reason43 = reason43;
		this.reason44 = reason44;
		this.reason45 = reason45;
		this.reason46 = reason46;
		this.reason47 = reason47;
		this.reason48 = reason48;
		this.reason49 = reason49;
		this.reason50 = reason50;
		this.reason51 = reason51;
		this.reason52 = reason52;
		this.reason53 = reason53;
		this.reason54 = reason54;
		this.reason55 = reason55;
		this.reason56 = reason56;
		this.reason57 = reason57;
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
		this.remark27 = remark27;
		this.remark28 = remark28;
		this.remark29 = remark29;
		this.remark30 = remark30;
		this.remark31 = remark31;
		this.remark32 = remark32;
		this.remark33 = remark33;
		this.remark34 = remark34;
		this.remark35 = remark35;
		this.remark36 = remark36;
		this.remark37 = remark37;
		this.remark38 = remark38;
		this.remark39 = remark39;
		this.remark40 = remark40;
		this.remark41 = remark41;
		this.remark42 = remark42;
		this.remark43 = remark43;
		this.remark44 = remark44;
		this.remark45 = remark45;
		this.remark46 = remark46;
		this.remark47 = remark47;
		this.remark48 = remark48;
		this.remark49 = remark49;
		this.remark50 = remark50;
		this.remark51 = remark51;
		this.remark52 = remark52;
		this.remark53 = remark53;
		this.remark54 = remark54;
		this.remark55 = remark55;
		this.remark56 = remark56;
		this.remark57 = remark57;
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

	public Double getGrade27() {
		return this.grade27;
	}

	public void setGrade27(Double grade27) {
		this.grade27 = grade27;
	}

	public Double getGrade28() {
		return this.grade28;
	}

	public void setGrade28(Double grade28) {
		this.grade28 = grade28;
	}

	public Double getGrade29() {
		return this.grade29;
	}

	public void setGrade29(Double grade29) {
		this.grade29 = grade29;
	}

	public Double getGrade30() {
		return this.grade30;
	}

	public void setGrade30(Double grade30) {
		this.grade30 = grade30;
	}

	public Double getGrade31() {
		return this.grade31;
	}

	public void setGrade31(Double grade31) {
		this.grade31 = grade31;
	}

	public Double getGrade32() {
		return this.grade32;
	}

	public void setGrade32(Double grade32) {
		this.grade32 = grade32;
	}

	public Double getGrade33() {
		return this.grade33;
	}

	public void setGrade33(Double grade33) {
		this.grade33 = grade33;
	}

	public Double getGrade34() {
		return this.grade34;
	}

	public void setGrade34(Double grade34) {
		this.grade34 = grade34;
	}

	public Double getGrade35() {
		return this.grade35;
	}

	public void setGrade35(Double grade35) {
		this.grade35 = grade35;
	}

	public Double getGrade36() {
		return this.grade36;
	}

	public void setGrade36(Double grade36) {
		this.grade36 = grade36;
	}

	public Double getGrade37() {
		return this.grade37;
	}

	public void setGrade37(Double grade37) {
		this.grade37 = grade37;
	}

	public Double getGrade38() {
		return this.grade38;
	}

	public void setGrade38(Double grade38) {
		this.grade38 = grade38;
	}

	public Double getGrade39() {
		return this.grade39;
	}

	public void setGrade39(Double grade39) {
		this.grade39 = grade39;
	}

	public Double getGrade40() {
		return this.grade40;
	}

	public void setGrade40(Double grade40) {
		this.grade40 = grade40;
	}

	public Double getGrade41() {
		return this.grade41;
	}

	public void setGrade41(Double grade41) {
		this.grade41 = grade41;
	}

	public Double getGrade42() {
		return this.grade42;
	}

	public void setGrade42(Double grade42) {
		this.grade42 = grade42;
	}

	public Double getGrade43() {
		return this.grade43;
	}

	public void setGrade43(Double grade43) {
		this.grade43 = grade43;
	}

	public Double getGrade44() {
		return this.grade44;
	}

	public void setGrade44(Double grade44) {
		this.grade44 = grade44;
	}

	public Double getGrade45() {
		return this.grade45;
	}

	public void setGrade45(Double grade45) {
		this.grade45 = grade45;
	}

	public Double getGrade46() {
		return this.grade46;
	}

	public void setGrade46(Double grade46) {
		this.grade46 = grade46;
	}

	public Double getGrade47() {
		return this.grade47;
	}

	public void setGrade47(Double grade47) {
		this.grade47 = grade47;
	}

	public Double getGrade48() {
		return this.grade48;
	}

	public void setGrade48(Double grade48) {
		this.grade48 = grade48;
	}

	public Double getGrade49() {
		return this.grade49;
	}

	public void setGrade49(Double grade49) {
		this.grade49 = grade49;
	}

	public Double getGrade50() {
		return this.grade50;
	}

	public void setGrade50(Double grade50) {
		this.grade50 = grade50;
	}

	public Double getGrade51() {
		return this.grade51;
	}

	public void setGrade51(Double grade51) {
		this.grade51 = grade51;
	}

	public Double getGrade52() {
		return this.grade52;
	}

	public void setGrade52(Double grade52) {
		this.grade52 = grade52;
	}

	public Double getGrade53() {
		return this.grade53;
	}

	public void setGrade53(Double grade53) {
		this.grade53 = grade53;
	}

	public Double getGrade54() {
		return this.grade54;
	}

	public void setGrade54(Double grade54) {
		this.grade54 = grade54;
	}

	public Double getGrade55() {
		return this.grade55;
	}

	public void setGrade55(Double grade55) {
		this.grade55 = grade55;
	}

	public Double getGrade56() {
		return this.grade56;
	}

	public void setGrade56(Double grade56) {
		this.grade56 = grade56;
	}

	public Double getGrade57() {
		return this.grade57;
	}

	public void setGrade57(Double grade57) {
		this.grade57 = grade57;
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

	public String getReason27() {
		return this.reason27;
	}

	public void setReason27(String reason27) {
		this.reason27 = reason27;
	}

	public String getReason28() {
		return this.reason28;
	}

	public void setReason28(String reason28) {
		this.reason28 = reason28;
	}

	public String getReason29() {
		return this.reason29;
	}

	public void setReason29(String reason29) {
		this.reason29 = reason29;
	}

	public String getReason30() {
		return this.reason30;
	}

	public void setReason30(String reason30) {
		this.reason30 = reason30;
	}

	public String getReason31() {
		return this.reason31;
	}

	public void setReason31(String reason31) {
		this.reason31 = reason31;
	}

	public String getReason32() {
		return this.reason32;
	}

	public void setReason32(String reason32) {
		this.reason32 = reason32;
	}

	public String getReason33() {
		return this.reason33;
	}

	public void setReason33(String reason33) {
		this.reason33 = reason33;
	}

	public String getReason34() {
		return this.reason34;
	}

	public void setReason34(String reason34) {
		this.reason34 = reason34;
	}

	public String getReason35() {
		return this.reason35;
	}

	public void setReason35(String reason35) {
		this.reason35 = reason35;
	}

	public String getReason36() {
		return this.reason36;
	}

	public void setReason36(String reason36) {
		this.reason36 = reason36;
	}

	public String getReason37() {
		return this.reason37;
	}

	public void setReason37(String reason37) {
		this.reason37 = reason37;
	}

	public String getReason38() {
		return this.reason38;
	}

	public void setReason38(String reason38) {
		this.reason38 = reason38;
	}

	public String getReason39() {
		return this.reason39;
	}

	public void setReason39(String reason39) {
		this.reason39 = reason39;
	}

	public String getReason40() {
		return this.reason40;
	}

	public void setReason40(String reason40) {
		this.reason40 = reason40;
	}

	public String getReason41() {
		return this.reason41;
	}

	public void setReason41(String reason41) {
		this.reason41 = reason41;
	}

	public String getReason42() {
		return this.reason42;
	}

	public void setReason42(String reason42) {
		this.reason42 = reason42;
	}

	public String getReason43() {
		return this.reason43;
	}

	public void setReason43(String reason43) {
		this.reason43 = reason43;
	}

	public String getReason44() {
		return this.reason44;
	}

	public void setReason44(String reason44) {
		this.reason44 = reason44;
	}

	public String getReason45() {
		return this.reason45;
	}

	public void setReason45(String reason45) {
		this.reason45 = reason45;
	}

	public String getReason46() {
		return this.reason46;
	}

	public void setReason46(String reason46) {
		this.reason46 = reason46;
	}

	public String getReason47() {
		return this.reason47;
	}

	public void setReason47(String reason47) {
		this.reason47 = reason47;
	}

	public String getReason48() {
		return this.reason48;
	}

	public void setReason48(String reason48) {
		this.reason48 = reason48;
	}

	public String getReason49() {
		return this.reason49;
	}

	public void setReason49(String reason49) {
		this.reason49 = reason49;
	}

	public String getReason50() {
		return this.reason50;
	}

	public void setReason50(String reason50) {
		this.reason50 = reason50;
	}

	public String getReason51() {
		return this.reason51;
	}

	public void setReason51(String reason51) {
		this.reason51 = reason51;
	}

	public String getReason52() {
		return this.reason52;
	}

	public void setReason52(String reason52) {
		this.reason52 = reason52;
	}

	public String getReason53() {
		return this.reason53;
	}

	public void setReason53(String reason53) {
		this.reason53 = reason53;
	}

	public String getReason54() {
		return this.reason54;
	}

	public void setReason54(String reason54) {
		this.reason54 = reason54;
	}

	public String getReason55() {
		return this.reason55;
	}

	public void setReason55(String reason55) {
		this.reason55 = reason55;
	}

	public String getReason56() {
		return this.reason56;
	}

	public void setReason56(String reason56) {
		this.reason56 = reason56;
	}

	public String getReason57() {
		return this.reason57;
	}

	public void setReason57(String reason57) {
		this.reason57 = reason57;
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

	public String getRemark27() {
		return this.remark27;
	}

	public void setRemark27(String remark27) {
		this.remark27 = remark27;
	}

	public String getRemark28() {
		return this.remark28;
	}

	public void setRemark28(String remark28) {
		this.remark28 = remark28;
	}

	public String getRemark29() {
		return this.remark29;
	}

	public void setRemark29(String remark29) {
		this.remark29 = remark29;
	}

	public String getRemark30() {
		return this.remark30;
	}

	public void setRemark30(String remark30) {
		this.remark30 = remark30;
	}

	public String getRemark31() {
		return this.remark31;
	}

	public void setRemark31(String remark31) {
		this.remark31 = remark31;
	}

	public String getRemark32() {
		return this.remark32;
	}

	public void setRemark32(String remark32) {
		this.remark32 = remark32;
	}

	public String getRemark33() {
		return this.remark33;
	}

	public void setRemark33(String remark33) {
		this.remark33 = remark33;
	}

	public String getRemark34() {
		return this.remark34;
	}

	public void setRemark34(String remark34) {
		this.remark34 = remark34;
	}

	public String getRemark35() {
		return this.remark35;
	}

	public void setRemark35(String remark35) {
		this.remark35 = remark35;
	}

	public String getRemark36() {
		return this.remark36;
	}

	public void setRemark36(String remark36) {
		this.remark36 = remark36;
	}

	public String getRemark37() {
		return this.remark37;
	}

	public void setRemark37(String remark37) {
		this.remark37 = remark37;
	}

	public String getRemark38() {
		return this.remark38;
	}

	public void setRemark38(String remark38) {
		this.remark38 = remark38;
	}

	public String getRemark39() {
		return this.remark39;
	}

	public void setRemark39(String remark39) {
		this.remark39 = remark39;
	}

	public String getRemark40() {
		return this.remark40;
	}

	public void setRemark40(String remark40) {
		this.remark40 = remark40;
	}

	public String getRemark41() {
		return this.remark41;
	}

	public void setRemark41(String remark41) {
		this.remark41 = remark41;
	}

	public String getRemark42() {
		return this.remark42;
	}

	public void setRemark42(String remark42) {
		this.remark42 = remark42;
	}

	public String getRemark43() {
		return this.remark43;
	}

	public void setRemark43(String remark43) {
		this.remark43 = remark43;
	}

	public String getRemark44() {
		return this.remark44;
	}

	public void setRemark44(String remark44) {
		this.remark44 = remark44;
	}

	public String getRemark45() {
		return this.remark45;
	}

	public void setRemark45(String remark45) {
		this.remark45 = remark45;
	}

	public String getRemark46() {
		return this.remark46;
	}

	public void setRemark46(String remark46) {
		this.remark46 = remark46;
	}

	public String getRemark47() {
		return this.remark47;
	}

	public void setRemark47(String remark47) {
		this.remark47 = remark47;
	}

	public String getRemark48() {
		return this.remark48;
	}

	public void setRemark48(String remark48) {
		this.remark48 = remark48;
	}

	public String getRemark49() {
		return this.remark49;
	}

	public void setRemark49(String remark49) {
		this.remark49 = remark49;
	}

	public String getRemark50() {
		return this.remark50;
	}

	public void setRemark50(String remark50) {
		this.remark50 = remark50;
	}

	public String getRemark51() {
		return this.remark51;
	}

	public void setRemark51(String remark51) {
		this.remark51 = remark51;
	}

	public String getRemark52() {
		return this.remark52;
	}

	public void setRemark52(String remark52) {
		this.remark52 = remark52;
	}

	public String getRemark53() {
		return this.remark53;
	}

	public void setRemark53(String remark53) {
		this.remark53 = remark53;
	}

	public String getRemark54() {
		return this.remark54;
	}

	public void setRemark54(String remark54) {
		this.remark54 = remark54;
	}

	public String getRemark55() {
		return this.remark55;
	}

	public void setRemark55(String remark55) {
		this.remark55 = remark55;
	}

	public String getRemark56() {
		return this.remark56;
	}

	public void setRemark56(String remark56) {
		this.remark56 = remark56;
	}

	public String getRemark57() {
		return this.remark57;
	}

	public void setRemark57(String remark57) {
		this.remark57 = remark57;
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