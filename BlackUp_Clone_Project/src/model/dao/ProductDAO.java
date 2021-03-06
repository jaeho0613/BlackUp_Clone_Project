package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import model.dto.CategoryDTO;
import model.dto.ColorSetDTO;
import model.dto.ImagePathDTO;
import model.dto.ProductDTO;
import model.dto.SizeSetDTO;
import model.standard.Productable;

@SuppressWarnings("unchecked")
public class ProductDAO implements Productable {

	DataSource ds;

	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}

	@Override
	public ArrayList<ProductDTO> getProductList() throws Exception {

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			ArrayList<ProductDTO> productList = new ArrayList<ProductDTO>();
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from product");
			while (rs.next()) {

				ArrayList<CategoryDTO> categoryList = (ArrayList<CategoryDTO>) selectOne(Set.category,
						rs.getInt("pdID"));
				ArrayList<ColorSetDTO> colorSetList = (ArrayList<ColorSetDTO>) selectOne(Set.colorset,
						rs.getInt("pdID"));
				ArrayList<ImagePathDTO> imagePathList = (ArrayList<ImagePathDTO>) selectOne(Set.imagepath,
						rs.getInt("pdID"));
				ArrayList<SizeSetDTO> sizeSetList = (ArrayList<SizeSetDTO>) selectOne(Set.sizeset, rs.getInt("pdID"));

				productList.add(new ProductDTO().setPdID(rs.getInt("pdID")).setPdPrice(rs.getInt("pdPrice"))
						.setPdName(rs.getString("pdName")).setPdGPA5(rs.getInt("pdGPA5")).setPdGPA4(rs.getInt("pdGPA4"))
						.setPdGPA3(rs.getInt("pdGPA3")).setPdGPA2(rs.getInt("pdGPA2")).setPdGPA1(rs.getInt("pdGPA1"))
						.setCategoryList(categoryList).setColorSetList(colorSetList).setImagePathList(imagePathList)
						.setSizeSetList(sizeSetList));
			}

			return productList;

		} catch (Exception e) {
			System.out.println("productDAO getProductList Error!");
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
	public ArrayList<ProductDTO> getCategoryByProduct(String cgName) throws Exception {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			ArrayList<ProductDTO> productList = new ArrayList<ProductDTO>();
			conn = ds.getConnection();
			stmt = conn.prepareStatement(
					"select * from product where product.pdID in ( select pdID from category where cgName like ? )");

			stmt.setString(1, cgName);
			rs = stmt.executeQuery();

			while (rs.next()) {
				ArrayList<CategoryDTO> categoryList = (ArrayList<CategoryDTO>) selectOne(Set.category,
						rs.getInt("pdID"));
				ArrayList<ColorSetDTO> colorSetList = (ArrayList<ColorSetDTO>) selectOne(Set.colorset,
						rs.getInt("pdID"));
				ArrayList<ImagePathDTO> imagePathList = (ArrayList<ImagePathDTO>) selectOne(Set.imagepath,
						rs.getInt("pdID"));
				ArrayList<SizeSetDTO> sizeSetList = (ArrayList<SizeSetDTO>) selectOne(Set.sizeset, rs.getInt("pdID"));

				productList.add(new ProductDTO().setPdID(rs.getInt("pdID")).setPdPrice(rs.getInt("pdPrice"))
						.setPdName(rs.getString("pdName")).setPdGPA5(rs.getInt("pdGPA5")).setPdGPA4(rs.getInt("pdGPA4"))
						.setPdGPA3(rs.getInt("pdGPA3")).setPdGPA2(rs.getInt("pdGPA2")).setPdGPA1(rs.getInt("pdGPA1"))
						.setCategoryList(categoryList).setColorSetList(colorSetList).setImagePathList(imagePathList)
						.setSizeSetList(sizeSetList));
			}

			return productList;

		} catch (Exception e) {
			System.out.println("productDAO getCategoryByProduct Error!");
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
			stmt = conn.prepareStatement(
					"select * from " + set + " where pdID like ( select pdID from product where pdID like ? )");

			stmt.setInt(1, pdID);
			rs = stmt.executeQuery();

			switch (set) {
			case product:
				ArrayList<ProductDTO> productList = new ArrayList<ProductDTO>();
				while (rs.next()) {
					productList.add(new ProductDTO().setPdID(rs.getInt("pdID")).setPdPrice(rs.getInt("pdPrice"))
							.setPdName(rs.getString("pdName")).setPdGPA5(rs.getInt("pdGPA5"))
							.setPdGPA4(rs.getInt("pdGPA4")).setPdGPA3(rs.getInt("pdGPA3"))
							.setPdGPA2(rs.getInt("pdGPA2")).setPdGPA1(rs.getInt("pdGPA1")));
				}
				return productList;
			case category:
				ArrayList<CategoryDTO> categoryList = new ArrayList<CategoryDTO>();
				while (rs.next()) {
					categoryList.add(new CategoryDTO().setPdID(rs.getInt("pdID")).setCgName(rs.getString("cgName"))
							.setCgType(rs.getString("cgType")));

				}
				return categoryList;
			case colorset:
				ArrayList<ColorSetDTO> colorSetList = new ArrayList<ColorSetDTO>();
				while (rs.next()) {
					colorSetList.add(new ColorSetDTO().setPdID(rs.getInt("pdID")).setColor(rs.getString("color")));
				}
				return colorSetList;
			case imagepath:
				ArrayList<ImagePathDTO> imagePathList = new ArrayList<ImagePathDTO>();
				while (rs.next()) {
					imagePathList.add(new ImagePathDTO().setPdID(rs.getInt("pdID")).setImgPath(rs.getString("imgPath"))
							.setImgName(rs.getString("imgName")));
				}
				return imagePathList;
			case sizeset:
				ArrayList<SizeSetDTO> sizeSetList = new ArrayList<SizeSetDTO>();
				while (rs.next()) {
					sizeSetList.add(new SizeSetDTO().setPdID(rs.getInt("pdID")).setSize(rs.getString("size")));
				}
				return sizeSetList;
			}
		} catch (Exception e) {
			System.out.println("productDAO selectOne id Error!");
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
			stmt = conn.prepareStatement(
					"select * from " + set + " where pdID like( select pdID from product where pdName like %?% )");

			stmt.setString(1, pdName);
			rs = stmt.executeQuery();

			switch (set) {
			case product:
				ArrayList<ProductDTO> productList = new ArrayList<ProductDTO>();
				while (rs.next()) {
					productList.add(new ProductDTO().setPdID(rs.getInt("pdID")).setPdPrice(rs.getInt("pdPrice"))
							.setPdName(rs.getString("pdName")).setPdGPA5(rs.getInt("pdGPA5"))
							.setPdGPA4(rs.getInt("pdGPA4")).setPdGPA3(rs.getInt("pdGPA3"))
							.setPdGPA2(rs.getInt("pdGPA2")).setPdGPA1(rs.getInt("pdGPA1")));
				}
				return productList;
			case category:
				ArrayList<CategoryDTO> categoryList = new ArrayList<CategoryDTO>();
				while (rs.next()) {
					categoryList.add(new CategoryDTO().setPdID(rs.getInt("pdID")).setCgName(rs.getString("cgName"))
							.setCgType(rs.getString("cgType")));

				}
				return categoryList;
			case colorset:
				ArrayList<ColorSetDTO> colorSetList = new ArrayList<ColorSetDTO>();
				while (rs.next()) {
					colorSetList.add(new ColorSetDTO().setPdID(rs.getInt("pdID")).setColor(rs.getString("color")));
				}
				return colorSetList;
			case imagepath:
				ArrayList<ImagePathDTO> imagePathList = new ArrayList<ImagePathDTO>();
				while (rs.next()) {
					imagePathList.add(new ImagePathDTO().setPdID(rs.getInt("pdID")).setImgPath(rs.getString("imgPath"))
							.setImgName(rs.getString("imgName")));
				}
				return imagePathList;
			case sizeset:
				ArrayList<SizeSetDTO> sizeSetList = new ArrayList<SizeSetDTO>();
				while (rs.next()) {
					sizeSetList.add(new SizeSetDTO().setPdID(rs.getInt("pdID")).setSize(rs.getString("size")));
				}
				return sizeSetList;
			}
		} catch (Exception e) {
			System.out.println("productDAO selectOne name Error!");
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
			System.out.println("productDAO getProductID Error!");
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
			System.out.println("productDAO getProductName Error!");
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
