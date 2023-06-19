package com.project.db;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

import org.apache.commons.io.FileUtils;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.project.db.constant.SheetNameConstant;
import com.project.db.dto.SubjectGroupDto;

public class GenerateSubjectGroup {

	private static final String DIR_ORIGINAL_DATA = "./original_data.xlsx";
	private static final String DIR_DATA_SUBJECT_GROUP = "./postgresql/sql_script/import_data_subject_group.sql";

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		List<SubjectGroupDto> subjectGroupDtos = importSubjectGroupData(DIR_ORIGINAL_DATA);
		gennerateSQLScript(subjectGroupDtos);
	}

	private static List<SubjectGroupDto> importSubjectGroupData(String dir) {
		List<SubjectGroupDto> subjectGroupDtos = new LinkedList<>();

		try (
				// Get file
				InputStream inputStream = new FileInputStream(new File(dir));
				// Get workbook
				Workbook workbook = new XSSFWorkbook(inputStream)) {
			// Get sheet
			org.apache.poi.ss.usermodel.Sheet sheet = workbook.getSheet(SheetNameConstant.SUBJECT_GROUP);

			// Get all rows
			Iterator<Row> iterator = sheet.iterator();
			while (iterator.hasNext()) {
				SubjectGroupDto subjectGroupDto = new SubjectGroupDto();
				Row nextRow = iterator.next();
				if (nextRow.getRowNum() == 0 || nextRow.getRowNum() == 1) {
					continue;
				}

				Cell idCell = nextRow.getCell(0);
				if (idCell != null) {
					String id = idCell.getStringCellValue();
					subjectGroupDto.setId(id);
				}

				Cell shortNameCell = nextRow.getCell(1);
				if (shortNameCell != null) {
					String shortName = shortNameCell.getStringCellValue();
					subjectGroupDto.setShortName(shortName);
				}

				Cell nameCell = nextRow.getCell(2);
				if (nameCell != null) {
					String name = nameCell.getStringCellValue();
					subjectGroupDto.setName(name);
				}

				subjectGroupDtos.add(subjectGroupDto);

			}

			workbook.close();
			inputStream.close();
		} catch (IOException e) {

			e.printStackTrace();
		}

		return subjectGroupDtos.stream().filter(area -> area.getId() != null).collect(Collectors.toList());
	}

	private static void gennerateSQLScript(List<SubjectGroupDto> dtos) {
		StringBuilder queries = new StringBuilder();
		queries.append("\n");
		for (SubjectGroupDto dto : dtos) {
			queries.append("WITH subject_group_values AS ( \n");
			queries.append("SELECT \n");
			queries.append("\'");
			queries.append(dto.getId());
			queries.append("\' ");
			queries.append("AS id,\n");
			queries.append("\' ");
			queries.append(dto.getShortName());
			queries.append("\' ");
			queries.append("AS short_name,\n");
			queries.append("\'");
			queries.append(dto.getName());
			queries.append("\' ");
			queries.append("AS name)\n");
			queries.append(
					"DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);\n");
			queries.append("WITH subject_group_values AS ( \n");
			queries.append("SELECT \n");
			queries.append("\'");
			queries.append(dto.getId());
			queries.append("\' ");
			queries.append("AS id,\n");
			queries.append("\' ");
			queries.append(dto.getShortName());
			queries.append("\' ");
			queries.append("AS short_name,\n");
			queries.append("\'");
			queries.append(dto.getName());
			queries.append("\' ");
			queries.append("AS name)\n");
			queries.append("INSERT INTO subject_group (id, short_name, name) \n");
			queries.append("SELECT id, short_name, name \n");
			queries.append("FROM subject_group_values; \n");
//			queries.append("SELECT * FROM area; \n");
			queries.append("\n");
		}
		String data = queries.toString();
		System.out.println("query: ");
		System.out.println(data);
		try {
			File file = new File(DIR_DATA_SUBJECT_GROUP);
			FileUtils.writeStringToFile(file, data, Charset.forName("UTF-8"));
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

}
