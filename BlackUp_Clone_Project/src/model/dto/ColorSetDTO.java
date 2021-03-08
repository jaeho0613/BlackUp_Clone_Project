package model.dto;

public class ColorSetDTO {

	int pdID;
	String color;
	String colorCode;

	public int getPdID() {
		return pdID;
	}

	public ColorSetDTO setPdID(int pdID) {
		this.pdID = pdID;
		return this;
	}

	public String getColor() {
		return color;
	}

	public ColorSetDTO setColor(String color) {
		this.color = color;
		return this;
	}
}
