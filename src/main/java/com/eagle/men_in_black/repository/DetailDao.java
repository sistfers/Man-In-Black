package com.eagle.men_in_black.repository;

import java.util.HashMap;
import java.util.List;

import com.eagle.men_in_black.model.DetailDto;

public interface DetailDao {
	//상품 상세정보
	public List<DetailDto> do_selectProductDetail(int PRO_SEQ);
	//상품 칼라 종류
	public List<DetailDto> do_selectProductColor(int PRO_SEQ);
	//상품 사이즈 종류
	public List<DetailDto> do_selectProductSize(int PRO_SEQ);
	//상품 리뷰 리스트
	public List<DetailDto> do_selectProductReviewList(HashMap<String, Object> map);
	//클릭한 리뷰 디테일
	public DetailDto do_selectReviewDetail(int REV_SEQ);
	//리뷰 step 수정
	public int do_updateReviewFlag(int REV_REF);
	//구매팝업 정보
	public List<DetailDto> do_buyProductPop(int PRO_SEQ);
	//구매팝업칼라셀렉트리스트
	public List<DetailDto> do_buyProductColorPop(int PRO_SEQ);
	//구매팝업칼라로인한사이즈셀렉트리스트
	public List<DetailDto> do_buyProductSizePop(HashMap<String, Object> map);
	//구매팝업칼라로인한 사이즈로 인한 재고
	public String do_buyProductStockPop(HashMap<String, Object> map);
	//장바구니 추가
	public int do_addBasket(HashMap<String, Object> map);
	//관리자 리뷰 답글 달기
	public int do_insertReviewAdmReply(HashMap<String, Object> map);
	//QnA 리스트 
	public List<DetailDto> do_selectProductQnAList(HashMap<String, Object> map);
	/*//클릭한 QnA 디테일
	public DetailDto do_selectQnADetail(int QNA_SEQ);*/
	//최종 구매페이지 장바구니리스트
	public List<DetailDto> do_selectFinalBuy(HashMap<String, Object> map);
	//쿠폰리스트
	public List<DetailDto> do_selectCouponList(HashMap<String, Object> map);
	//사용가능한적립금
	public int do_selectPointsList(String USER_ID);
}
