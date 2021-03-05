package model.dto;

public class ColorSetDTO {

	int pdID;
	String Color;

	public int getPdID() {
		return pdID;
	}

	public ColorSetDTO setPdID(int pdID) {
		this.pdID = pdID;
		return this;
	}

	public String getColor() {
		return Color;
	}

	public ColorSetDTO setColor(String color) {
		Color = color;
		return this;
	}
}
