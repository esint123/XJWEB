package com.service.ItemLibrary;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.dao.OperateDao;

import entity.TGradeAssets;
import entity.TGradeCapital;
import entity.TGradeIndustry;
import entity.TGradeManage;
import entity.TGradeOverhaul;
import entity.TGradeRural;
import entity.TGradeTeach;
import entity.TGradeTechnical;

public class Poi {
	private static final String EXCEL_XLS = "xls";
	private static final String EXCEL_XLSX = "xlsx";
	private LinkedList[] result; // 保存每个单元格的数据 ，使用的是一种链表数组的结构
	private Sheet mysheet; // 表格类实例

	public Poi() {

	}

	public File ExpotOpinion(String filename, String hql, String type) {
		File file = new File(filename);
		if (file.exists()) {
			file.delete();
		}
		try {
			HSSFWorkbook workbook = new HSSFWorkbook();
			HSSFSheet sheet = workbook.createSheet("评审意见");
			HSSFFont font = workbook.createFont();
			font.setFontName("仿宋_GB2312");
			font.setFontHeightInPoints((short) 12);// 设置字体大小

			// 创建单元格的格式，如居中、左对齐等
			HSSFCellStyle cellStyle = workbook.createCellStyle();

			sheet.autoSizeColumn((short) 0);
			sheet.setColumnWidth(0, 20 * 256);
			sheet.autoSizeColumn((short) 1);
			sheet.setColumnWidth(1, 100 * 256);
			// 设置字体
			cellStyle.setFont(font);
			cellStyle.setWrapText(true);
			//设置背景色
			cellStyle.setFillBackgroundColor(HSSFColor.AQUA.index);// 设置背景色

			//设置边框
			cellStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN); //下边框
			cellStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN);//左边框
			cellStyle.setBorderTop(HSSFCellStyle.BORDER_THIN);//上边框
			cellStyle.setBorderRight(HSSFCellStyle.BORDER_THIN);//右边框

			HSSFRow row1 = sheet.createRow((short) 0);
			HSSFCell cell = row1.createCell((short) 0);
			cell.setCellStyle(cellStyle);
			cell.setCellValue("项目名称:");
			HSSFCell cell2 = row1.createCell((short) 1);
			cell2.setCellStyle(cellStyle);
			//cell2.setCellValue(list.get(0).getReviewname());

			HSSFRow row2 = sheet.createRow((short) 1);
			HSSFCell cell3 = row2.createCell((short) 0);
			cell3.setCellStyle(cellStyle);
			cell3.setCellValue("评审专家");
			HSSFCell cell4 = row2.createCell((short) 1);
			cell4.setCellStyle(cellStyle);
			cell4.setCellValue("评审意见");

			if (type == "TGradeRural") {
				List<TGradeRural> list = OperateDao.getList(hql, null);
				if (list.size() > 0) {
					cell2.setCellValue(list.get(0).getReviewname());
					short i = 2;
					for (TGradeRural item : list) {
						HSSFRow r = sheet.createRow((short) i);
						HSSFCell c1 = r.createCell((short) 0);
						c1.setCellStyle(cellStyle);
						c1.setCellValue(item.getReviewexpert());

						HSSFCell c2 = r.createCell((short) 1);
						c2.setCellStyle(cellStyle);
						c2.setCellValue(item.getOpinion());

						i = (short) (i + 1);
					}
				}
			}
			else if(type=="TGradeTeach")
			{
				List<TGradeTeach> list = OperateDao.getList(hql, null);
				if (list.size() > 0) {
					cell2.setCellValue(list.get(0).getReviewname());
					short i = 2;
					for (TGradeTeach item : list) {
						HSSFRow r = sheet.createRow((short) i);
						HSSFCell c1 = r.createCell((short) 0);
						c1.setCellStyle(cellStyle);
						c1.setCellValue(item.getReviewexpert());

						HSSFCell c2 = r.createCell((short) 1);
						c2.setCellStyle(cellStyle);
						c2.setCellValue(item.getOpinion());

						i = (short) (i + 1);
					}
				}
			}
			else if(type=="TGradeManage")
			{
				List<TGradeManage> list = OperateDao.getList(hql, null);
				if (list.size() > 0) {
					cell2.setCellValue(list.get(0).getReviewname());
					short i = 2;
					for (TGradeManage item : list) {
						HSSFRow r = sheet.createRow((short) i);
						HSSFCell c1 = r.createCell((short) 0);
						c1.setCellStyle(cellStyle);
						c1.setCellValue(item.getReviewexpert());

						HSSFCell c2 = r.createCell((short) 1);
						c2.setCellStyle(cellStyle);
						c2.setCellValue(item.getOpinion());

						i = (short) (i + 1);
					}
				}
			}
			else if(type=="TGradeIndustry")
			{
				List<TGradeIndustry> list = OperateDao.getList(hql, null);
				if (list.size() > 0) {
					cell2.setCellValue(list.get(0).getReviewname());
					short i = 2;
					for (TGradeIndustry item : list) {
						HSSFRow r = sheet.createRow((short) i);
						HSSFCell c1 = r.createCell((short) 0);
						c1.setCellStyle(cellStyle);
						c1.setCellValue(item.getReviewexpert());

						HSSFCell c2 = r.createCell((short) 1);
						c2.setCellStyle(cellStyle);
						c2.setCellValue(item.getOpinion());

						i = (short) (i + 1);
					}
				}
			}
			else if (type == "TGradeCapital") {
				List<TGradeCapital> list = OperateDao.getList(hql, null);
				if (list.size() > 0) {
					cell2.setCellValue(list.get(0).getReviewname());
					short i = 2;
					for (TGradeCapital item : list) {
						HSSFRow r = sheet.createRow((short) i);
						HSSFCell c1 = r.createCell((short) 0);
						c1.setCellStyle(cellStyle);
						c1.setCellValue(item.getReviewexpert());

						HSSFCell c2 = r.createCell((short) 1);
						c2.setCellStyle(cellStyle);
						c2.setCellValue(item.getOpinion());

						i = (short) (i + 1);
					}
				}
			}
			else if (type == "TGradeOverhaul") {
				List<TGradeOverhaul> list = OperateDao.getList(hql, null);
				if (list.size() > 0) {
					cell2.setCellValue(list.get(0).getReviewname());
					short i = 2;
					for (TGradeOverhaul item : list) {
						HSSFRow r = sheet.createRow((short) i);
						HSSFCell c1 = r.createCell((short) 0);
						c1.setCellStyle(cellStyle);
						c1.setCellValue(item.getReviewexpert());

						HSSFCell c2 = r.createCell((short) 1);
						c2.setCellStyle(cellStyle);
						c2.setCellValue(item.getOpinion());

						i = (short) (i + 1);
					}
				}
			}
			else if (type == "TGradeTechnical") {
				List<TGradeTechnical> list = OperateDao.getList(hql, null);
				if (list.size() > 0) {
					cell2.setCellValue(list.get(0).getReviewname());
					short i = 2;
					for (TGradeTechnical item : list) {
						HSSFRow r = sheet.createRow((short) i);
						HSSFCell c1 = r.createCell((short) 0);
						c1.setCellStyle(cellStyle);
						c1.setCellValue(item.getReviewexpert());

						HSSFCell c2 = r.createCell((short) 1);
						c2.setCellStyle(cellStyle);
						c2.setCellValue(item.getOpinion());

						i = (short) (i + 1);
					}
				}
			}
			else if (type == "TGradeAssets") {
				List<TGradeAssets> list = OperateDao.getList(hql, null);
				if (list.size() > 0) {
					cell2.setCellValue(list.get(0).getReviewname());
					short i = 2;
					for (TGradeAssets item : list) {
						HSSFRow r = sheet.createRow((short) i);
						HSSFCell c1 = r.createCell((short) 0);
						c1.setCellStyle(cellStyle);
						c1.setCellValue(item.getReviewexpert());

						HSSFCell c2 = r.createCell((short) 1);
						c2.setCellStyle(cellStyle);
						c2.setCellValue(item.getOpinion());

						i = (short) (i + 1);
					}
				}
			}
			FileOutputStream fOut = null;
			fOut = new FileOutputStream(file);
			workbook.write(fOut);
			fOut.flush();
			fOut.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return file;
	}

	public LinkedList[] GetLinkedList(String excelFile) throws IOException {
		loadExcel(excelFile);
		init();
		return result;
	}

	public void loadExcel(String excelFile) throws IOException {
		FileInputStream in = null;
		try {
			in = new FileInputStream(excelFile); // 文件流
			Workbook wb = null;
			if (excelFile.endsWith(EXCEL_XLS)) { // Excel 2003
				wb = new HSSFWorkbook(in);
			} else if (excelFile.endsWith(EXCEL_XLSX)) { // Excel 2007/2010
				wb = new XSSFWorkbook(in);
			}
			mysheet = wb.getSheetAt(0);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (in != null) {
					in.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}

		}
	}

	// 获取单元格的值
	private String getCellValue(Cell cell) {
		String cellValue = "";
		DataFormatter formatter = new DataFormatter();
		if (cell != null) {
			// 判断单元格数据的类型，不同类型调用不同的方法
			switch (cell.getCellType()) {
			// 数值类型
			case Cell.CELL_TYPE_NUMERIC:
				// 进一步判断 ，单元格格式是日期格式
				if (DateUtil.isCellDateFormatted(cell)) {
					cellValue = formatter.formatCellValue(cell);
				} else {
					// 数值
					double value = cell.getNumericCellValue();
					int intValue = (int) value;
					cellValue = value - intValue == 0 ? String
							.valueOf(intValue) : String.valueOf(value);
				}
				break;
			case Cell.CELL_TYPE_STRING:
				cellValue = cell.getStringCellValue();
				break;
			case Cell.CELL_TYPE_BOOLEAN:
				cellValue = String.valueOf(cell.getBooleanCellValue());
				break;
			// 判断单元格是公式格式，需要做一种特殊处理来得到相应的值
			case Cell.CELL_TYPE_FORMULA: {
				try {
					cellValue = String.valueOf(cell.getNumericCellValue());
				} catch (IllegalStateException e) {
					cellValue = String.valueOf(cell.getRichStringCellValue());
				}
			}
				break;
			case Cell.CELL_TYPE_BLANK:
				cellValue = "";
				break;
			case Cell.CELL_TYPE_ERROR:
				cellValue = "";
				break;
			default:
				cellValue = cell.toString().trim();
				break;
			}
		}
		return cellValue.trim();
	}

	// 初始化表格中的每一行，并得到每一个单元格的值
	public void init() {
		int rowNum = mysheet.getLastRowNum() + 1;
		result = new LinkedList[rowNum - 3];
		for (int i = 3; i < rowNum; i++) {
			Row row = mysheet.getRow(i);
			// 每有新的一行，创建一个新的LinkedList对象
			result[i - 3] = new LinkedList();
			for (int j = 0; j < row.getLastCellNum(); j++) {
				Cell cell = row.getCell(j);
				// 获取单元格的值
				String str = getCellValue(cell);
				// 将得到的值放入链表中
				result[i - 3].add(str);
			}
		}
	}
}
