package model.dto;

public class ProductDTO {

	int pdID;
	int pdPrice;
	String pdName;
	int pdGPA5;
	int pdGPA4;
	int pdGPA3;
	int pdGPA2;
	int pdGPA1;

	ColorSetDTO colorSet;
	ImagePathDTO imagePath;
	CategoryDTO category;
	SizeSetDTO sizeSet;

	public ColorSetDTO getColorSet() {
		return colorSet;
	}

	public ProductDTO setColorSet(ColorSetDTO colorSet) {
		this.colorSet = colorSet;
		return this;
	}

	public ImagePathDTO getImagePath() {
		return imagePath;
	}

	public ProductDTO setImagePath(ImagePathDTO imagePath) {
		this.imagePath = imagePath;
		return this;
	}

	public CategoryDTO getCategory() {
		return category;
	}

	public ProductDTO setCategory(CategoryDTO category) {
		this.category = category;
		return this;
	}

	public SizeSetDTO getSizeSet() {
		return sizeSet;
	}

	public ProductDTO setSizeSet(SizeSetDTO sizeSet) {
		this.sizeSet = sizeSet;
		return this;
	}

	public int getPdID() {
		return pdID;
	}

	public ProductDTO setPdID(int pdID) {
		this.pdID = pdID;
		return this;
	}

	public int getPdPrice() {
		return pdPrice;
	}

	public ProductDTO setPdPrice(int pdPrice) {
		this.pdPrice = pdPrice;
		return this;
	}

	public String getPdName() {
		return pdName;
	}

	public ProductDTO setPdName(String pdName) {
		this.pdName = pdName;
		return this;
	}

	public int getPdGPA5() {
		return pdGPA5;
	}

	public ProductDTO setPdGPA5(int pdGPA5) {
		this.pdGPA5 = pdGPA5;
		return this;
	}

	public int getPdGPA4() {
		return pdGPA4;
	}

	public ProductDTO setPdGPA4(int pdGPA4) {
		this.pdGPA4 = pdGPA4;
		return this;
	}

	public int getPdGPA3() {
		return pdGPA3;
	}

	public ProductDTO setPdGPA3(int pdGPA3) {
		this.pdGPA3 = pdGPA3;
		return this;
	}

	public int getPdGPA2() {
		return pdGPA2;
	}

	public ProductDTO setPdGPA2(int pdGPA2) {
		this.pdGPA2 = pdGPA2;
		return this;
	}

	public int getPdGPA1() {
		return pdGPA1;
	}

	public ProductDTO setPdGPA1(int pdGPA1) {
		this.pdGPA1 = pdGPA1;
		return this;
	}
}
