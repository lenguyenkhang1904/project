package com.project.db;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

import org.apache.commons.io.FileUtils;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.project.db.constant.SheetNameConstant;
import com.project.db.dto.AreaDto;

public class GenerateLocationData {

	private static final String DIR_ORIGINAL_DATA = "./original_data.xlsx";
	private static final String DIR_DATA_LOCATION = "./postgresql/sql_script/update_data_location.sql";

	public static void main(String[] args) throws IOException {
		List<AreaDto> areaDto = importLocationData(DIR_ORIGINAL_DATA);
		gennerateSQLScript(areaDto);

	}

	private static List<AreaDto> importLocationData(String dir) {
		List<AreaDto> areaDtos = new LinkedList<>();

		try (
				// Get file
				InputStream inputStream = new FileInputStream(new File(dir));
				// Get workbook
				Workbook workbook = new XSSFWorkbook(inputStream)) {
			// Get sheet
			org.apache.poi.ss.usermodel.Sheet sheet = workbook.getSheet(SheetNameConstant.AREA_SHEET);

			// Get all rows
			Iterator<Row> iterator = sheet.iterator();
			while (iterator.hasNext()) {
				AreaDto areaDto = new AreaDto();
				Row nextRow = iterator.next();
				if (nextRow.getRowNum() == 0 || nextRow.getRowNum() == 1) {
					continue;
				}

				Cell idCell = nextRow.getCell(0);
				if (idCell != null) {
					String id = idCell.getStringCellValue();
					areaDto.setId(id);
				}

				Cell nationCell = nextRow.getCell(1);
				if (nationCell != null) {
					String nation = nationCell.getStringCellValue();
					areaDto.setNation(nation);
				}

				Cell provincialLevelCell = nextRow.getCell(2);
				if (provincialLevelCell != null) {
					String provincialLevel = provincialLevelCell.getStringCellValue();
					areaDto.setProvincialLevel(provincialLevel);
				}

				Cell districtCell = nextRow.getCell(3);
				if (districtCell != null) {
					districtCell.setCellType(CellType.STRING);
					String district = districtCell.getStringCellValue();
					areaDto.setDistrict(district);
				}

				Cell communeCell = nextRow.getCell(4);
				if (communeCell != null) {
					communeCell.setCellType(CellType.STRING);
					String commune = communeCell.getStringCellValue();
					areaDto.setCommune(commune);
				}

				areaDtos.add(areaDto);

			}

			workbook.close();
			inputStream.close();
		} catch (IOException e) {

			e.printStackTrace();
		}

		return areaDtos.stream().filter(area -> area.getId() != null).collect(Collectors.toList());
	}

	private static void gennerateSQLScript(List<AreaDto> dtos) {
		StringBuilder queries = new StringBuilder();
		queries.append("\n");
		for (AreaDto dto : dtos) {
			queries.append("WITH location_values AS ( \n");
			queries.append("SELECT \n");
			queries.append("\'");
			queries.append(dto.getId());
			queries.append("\' ");
			queries.append("AS id,\n");
			queries.append("\' ");
			queries.append(dto.getCommune());
			queries.append("\' ");
			queries.append("AS commune,\n");
			queries.append("\'");
			queries.append(dto.getDistrict());
			queries.append("\' ");
			queries.append("AS district,\n");
			queries.append("\'");
			queries.append(dto.getNation());
			queries.append("\' ");
			queries.append("AS nation,\n");
			queries.append("\'");
			queries.append(dto.getProvincialLevel());
			queries.append("\' ");
			queries.append("AS provincial_level,\n");
			queries.append("\'");
			queries.append(dto.getState());
			queries.append("\' ");
			queries.append("AS state,\n");
			queries.append("\'");
			queries.append(dto.getXRelCoo());
			queries.append("\' ");
			queries.append("AS x_rel_coo,\n");
			queries.append("\'");
			queries.append(dto.getYRelCoo());
			queries.append("\' ");
			queries.append("AS y_rel_coo)\n");
			queries.append("DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);\n");
			queries.append("WITH location_values AS ( \n");
			queries.append("SELECT \n");
			queries.append("\'");
			queries.append(dto.getId());
			queries.append("\' ");
			queries.append("AS id,\n");
			queries.append("\' ");
			queries.append(dto.getCommune());
			queries.append("\' ");
			queries.append("AS commune,\n");
			queries.append("\'");
			queries.append(dto.getDistrict());
			queries.append("\' ");
			queries.append("AS district,\n");
			queries.append("\'");
			queries.append(dto.getNation());
			queries.append("\' ");
			queries.append("AS nation,\n");
			queries.append("\'");
			queries.append(dto.getProvincialLevel());
			queries.append("\' ");
			queries.append("AS provincial_level,\n");
			queries.append("\'");
			queries.append(dto.getState());
			queries.append("\' ");
			queries.append("AS state,\n");
			queries.append("\'");
			queries.append(dto.getXRelCoo());
			queries.append("\' ");
			queries.append("AS x_rel_coo,\n");
			queries.append("\'");
			queries.append(dto.getYRelCoo());
			queries.append("\' ");
			queries.append("AS y_rel_coo)\n");
			queries.append(
			"INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) \n");
			queries.append("SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo \n");
			queries.append("FROM location_values; \n");
//			queries.append("SELECT * FROM area; \n");
			queries.append("\n");
		}
		String data = queries.toString();
		System.out.println("query: ");
		System.out.println(data);
		try {
			File file = new File(DIR_DATA_LOCATION);
			FileUtils.writeStringToFile(file, data,Charset.forName("UTF-8"));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

}
