package model.dao;

import javax.sql.DataSource;

import model.standard.Productable;

public class ProductDAO implements Productable {

	DataSource ds;

	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}

}
