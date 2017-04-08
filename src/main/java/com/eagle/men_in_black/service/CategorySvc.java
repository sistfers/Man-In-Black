package com.eagle.men_in_black.service;

import java.util.HashMap;
import java.util.List;

import com.eagle.men_in_black.model.CategoryDto;

public interface CategorySvc {
	//카테고리 페이지 리스트 뽑기
	public List<CategoryDto> do_selectCategoryProductList(HashMap<String, Object> map);
	//카테고리 페이지 버튼을 데이터로 불러와 생성
	public List<CategoryDto> do_selectSub_itemList(String ITEM);
	//카테고리페이지 베스트 리스트
	public List<CategoryDto> do_bestList(HashMap<String, Object> map);
	//NEW 카테고리 페이지 리스트
	public List<CategoryDto> do_selectNewProductList(HashMap<String, Object> map);
}
