package bucket.kurly.user.goods;

public class Goods_ListDTO {

	//검색 타입
	private String select_type;
	private String select_type2;
	private String goods_sell_parent_no;
	private String goods_sell_sub_no;

	
	//페이징 처리
	private int listSize = 12; // 한 페이지 안에서 볼 게시글의 갯수 12개
	private int rangeSize = 3; // 초기값으로 페이지범위를 3으로 셋팅
	
	private int page; // 현재 페이지 번호
	private int range; // 각 페이지 범위 시작번호
	private int listCnt; // 현재 db에 있는 게시글 수
	private int pageCnt; // 계산한 전체 페이지 수

	private int startPage; // 게시판 시작페이지
	private int startList; // 게시판 시작번호
	private int endPage; // 게시판 마지막페이지

	public void pageInfo(int page, int range, int listCnt) {
		this.page = page;
		this.range = range;
		this.listCnt = listCnt;

		// 전체 페이지수 (db에 있는 게시글수/한 페이지 안에서 볼 게시글 수)
		this.pageCnt = (int) (Math.ceil((double) listCnt / (double) listSize)); // math.ceil -> 소수점 이하 올림!

		// 시작페이지
		this.startPage = (range - 1) * rangeSize + 1;

		// 게시판 시작번호
		this.startList = (page - 1) * listSize;

		// 끝 페이지
		this.endPage = range * rangeSize;

		if (this.endPage > this.pageCnt) {
			this.endPage = this.pageCnt;
		}

	}

	public String getSelect_type() {
		return select_type;
	}

	public void setSelect_type(String select_type) {
		this.select_type = select_type;
	}

	public String getSelect_type2() {
		return select_type2;
	}

	public void setSelect_type2(String select_type2) {
		this.select_type2 = select_type2;
	}

	public String getGoods_sell_parent_no() {
		return goods_sell_parent_no;
	}

	public void setGoods_sell_parent_no(String goods_sell_parent_no) {
		this.goods_sell_parent_no = goods_sell_parent_no;
	}

	public String getGoods_sell_sub_no() {
		return goods_sell_sub_no;
	}

	public void setGoods_sell_sub_no(String goods_sell_sub_no) {
		this.goods_sell_sub_no = goods_sell_sub_no;
	}
	
	@Override
	public String toString() {
		return "Goods_ListDTO [select_type=" + select_type + ", select_type2=" + select_type2
				+ ", goods_sell_parent_no=" + goods_sell_parent_no + ", goods_sell_sub_no=" + goods_sell_sub_no + "]";
	}
	
	
	public int getListSize() {
		return listSize;
	}

	public void setListSize(int listSize) {
		this.listSize = listSize;
	}

	public int getRangeSize() {
		return rangeSize;
	}

	public void setRangeSize(int rangeSize) {
		this.rangeSize = rangeSize;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRange() {
		return range;
	}

	public void setRange(int range) {
		this.range = range;
	}

	public int getListCnt() {
		return listCnt;
	}

	public void setListCnt(int listCnt) {
		this.listCnt = listCnt;
	}

	public int getPageCnt() {
		return pageCnt;
	}

	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getStartList() {
		return startList;
	}

	public void setStartList(int startList) {
		this.startList = startList;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

}
