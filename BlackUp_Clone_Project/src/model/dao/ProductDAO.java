package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import model.dto.CategoryDTO;
import model.dto.ColorSetDTO;
import model.dto.ImagePathDTO;
import model.dto.ProductDTO;
import model.dto.SizeSetDTO;
import model.standard.Productable;

public class ProductDAO implements Productable {

	DataSource ds;

	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}

	@Override
	public List<ProductDTO> productList() throws Exception {

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			List<ProductDTO> productList = new ArrayList<ProductDTO>();
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from product");
			while (rs.next()) {

				CategoryDTO category = (CategoryDTO) selectOne(Set.category, rs.getInt("pdID"));
				ColorSetDTO colorSet = (ColorSetDTO) selectOne(Set.colorset, rs.getInt("pdID"));
				SizeSetDTO sizeSet = (SizeSetDTO) selectOne(Set.sizeset, rs.getInt("pdID"));
				ImagePathDTO imagePath = (ImagePathDTO) selectOne(Set.imagepath, rs.getInt("pdID"));

				productList.add(new ProductDTO().setPdID(rs.getInt("pdID")).setPdPrice(rs.getInt("pdPrice"))
						.setPdName(rs.getString("pdName")).setPdGPA5(rs.getInt("pdGPA5")).setPdGPA4(rs.getInt("pdGPA4"))
						.setPdGPA3(rs.getInt("pdGPA3")).setPdGPA2(rs.getInt("pdGPA2")).setPdGPA1(rs.getInt("pdGPA1"))
						.setCategory(category).setColorSet(colorSet).setImagePath(imagePath).setSizeSet(sizeSet));
			}

			return productList;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (Exception e2) {

			}
			try {
				if (stmt != null) {
					stmt.close();
				}
			} catch (Exception e2) {

			}
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {

			}
		}

		return null;
	}

	@Override
	public Object selectOne(Set set, int pdID) throws Exception {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			conn = ds.getConnection();
			stmt = conn.prepareStatement("select * " + "from ?" + "where pdID like(" + "select pdID" + "from product"
					+ "where pdID" + "like ?" + ")");

			stmt.setString(1, set.name());
			stmt.setInt(2, pdID);
			rs = stmt.executeQuery();

			switch (set) {
			case product:
				ProductDTO product = new ProductDTO();
				while (rs.next()) {
					product.setPdID(rs.getInt("pdID")).setPdPrice(rs.getInt("pdPrice"))
							.setPdName(rs.getString("pdName")).setPdGPA5(rs.getInt("pdGPA5"))
							.setPdGPA4(rs.getInt("pdGPA4")).setPdGPA3(rs.getInt("pdGPA3"))
							.setPdGPA2(rs.getInt("pdGPA2")).setPdGPA1(rs.getInt("pdGPA1"));
				}
				return product;
			case category:
				CategoryDTO category = new CategoryDTO();
				while (rs.next()) {
					category.setPdID(rs.getInt("pdID")).setCgName(rs.getString("cgName"))
							.setCgType(rs.getString("cgType"));

				}
				return category;
			case colorset:
				ColorSetDTO colorSet = new ColorSetDTO();
				while (rs.next()) {
					colorSet.setPdID(rs.getInt("pdID")).setColor(rs.getString("color"));
				}
				return colorSet;
			case imagepath:
				ImagePathDTO imagePath = new ImagePathDTO();
				while (rs.next()) {
					imagePath.setPdID(rs.getInt("pdID")).setImgPath(rs.getString("imgPath"))
							.setImgName(rs.getString("imgName"));
				}
				return imagePath;
			case sizeset:
				SizeSetDTO sizeSet = new SizeSetDTO();
				while (rs.next()) {
					sizeSet.setPdID(rs.getInt("pdID")).setSize(rs.getString("size"));
				}
				return sizeSet;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (Exception e2) {

			}
			try {
				if (stmt != null) {
					stmt.close();
				}
			} catch (Exception e2) {

			}
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {

			}
		}
		return null;
	}

	@Override
	public Object selectOne(Set set, String pdName) throws Exception {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			conn = ds.getConnection();
			stmt = conn.prepareStatement("select * " + "from ?" + "where pdID like(" + "select pdID" + "from product"
					+ "where pdName" + "like %?%" + ")");

			stmt.setString(1, set.name());
			stmt.setString(2, pdName);
			rs = stmt.executeQuery();

			switch (set) {
			case product:
				ProductDTO product = new ProductDTO();
				while (rs.next()) {
					product.setPdID(rs.getInt("pdID")).setPdPrice(rs.getInt("pdPrice"))
							.setPdName(rs.getString("pdName")).setPdGPA5(rs.getInt("pdGPA5"))
							.setPdGPA4(rs.getInt("pdGPA4")).setPdGPA3(rs.getInt("pdGPA3"))
							.setPdGPA2(rs.getInt("pdGPA2")).setPdGPA1(rs.getInt("pdGPA1"));
				}
				return product;
			case category:
				CategoryDTO category = new CategoryDTO();
				while (rs.next()) {
					category.setPdID(rs.getInt("pdID")).setCgName(rs.getString("cgName"))
							.setCgType(rs.getString("cgType"));

				}
				return category;
			case colorset:
				ColorSetDTO colorSet = new ColorSetDTO();
				while (rs.next()) {
					colorSet.setPdID(rs.getInt("pdID")).setColor(rs.getString("color"));
				}
				return colorSet;
			case imagepath:
				ImagePathDTO imagePath = new ImagePathDTO();
				while (rs.next()) {
					imagePath.setPdID(rs.getInt("pdID")).setImgPath(rs.getString("imgPath"))
							.setImgName(rs.getString("imgName"));
				}
				return imagePath;
			case sizeset:
				SizeSetDTO sizeSet = new SizeSetDTO();
				while (rs.next()) {
					sizeSet.setPdID(rs.getInt("pdID")).setSize(rs.getString("size"));
				}
				return sizeSet;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (Exception e2) {

			}
			try {
				if (stmt != null) {
					stmt.close();
				}
			} catch (Exception e2) {

			}
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {

			}
		}
		return null;
	}

	@Override
	public int getProductID(String pdName) throws Exception {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			conn = ds.getConnection();
			stmt = conn.prepareStatement("select pdID from product where pdName like %?%");
			stmt.setString(1, pdName);
			rs = stmt.executeQuery();

			return rs.getInt("pdID");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (Exception e2) {

			}
			try {
				if (stmt != null) {
					stmt.close();
				}
			} catch (Exception e2) {

			}
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {

			}
		}

		return -1; // 오류시 -1 반환
	}

	@Override
	public String getProductName(int pdId) throws Exception {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			conn = ds.getConnection();
			stmt = conn.prepareStatement("select pdName from product where pdID like ?");
			stmt.setInt(1, pdId);
			rs = stmt.executeQuery();

			return rs.getString("pdName");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (Exception e2) {

			}
			try {
				if (stmt != null) {
					stmt.close();
				}
			} catch (Exception e2) {

			}
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {

			}
		}

		return null; // 오류시 null 반환
	}

	@Override
	public int delete(int pdID) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
}
