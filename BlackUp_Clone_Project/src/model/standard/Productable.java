package model.standard;

import java.util.List;

import model.dto.CategoryDTO;
import model.dto.ColorSetDTO;
import model.dto.ImagePathDTO;
import model.dto.ProductDTO;
import model.dto.SizeSetDTO;

public interface Productable {
	
	// 상품 전체 가져오기
	List<ProductDTO> productList() throws Exception;
	
	// 특정 상품 가져오기
	ProductDTO selectOneProduct(int pdID) throws Exception;
	
	// 특정 상품의 사이즈셋 가져오기
	SizeSetDTO selectOneProductSizeSet(int pdID) throws Exception;
	
	// 특정 상품의 컬러셋 가져오기
	ColorSetDTO selectOneProductColorSet(int pdID) throws Exception;
	
	// 특정 상품의 이미지 경로 가져오기
	ImagePathDTO selectOneProductImagePath(int pdID) throws Exception;
	
	// 특정 상품의 카테고리 가져오기
	CategoryDTO selectOneProductCategory(int pdID) throws Exception;
	
	// 특정 상품 삭제
	int delete(int pdID) throws Exception;
	
	// 특정 상품 수정 *(상품, 컬러, 사이즈, 이미지, 카테고리의 변동 또한 생각해야함.)
	// int update(int pdID) throws Exception;
}
