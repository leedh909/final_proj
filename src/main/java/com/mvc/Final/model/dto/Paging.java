package com.mvc.Final.model.dto;

public class Paging {
	
	public static final int PAGE_SCALE = 5;	// 페이지 당 게시물 수
	public static final int BLOCK_SCALE = 5;	// 화면당 페이지 수
	
	private int curPage;	// 현재 페이지  
	private int prevPage;	// 이전 페이지 
	private int nextPage;	// 다음 페이지
	private int totPage;	// 전체 페이지 수 
	private int totBlock;	// 전체 페이지 블록 수
	private int curBlock;	// 현재페이지 블록
	private int prevBlock;	// 이전 페이지 블록
	private int nextBlock;	// 다음 페이지 블록
	//where rn between #{start} and #{end}
	private int pageBegin;	// #{start}
	private int pageEnd;	// #{end}
	private int blockBegin;	// 현재 페이지 블록의 시작번호
	private int blockEnd;	// 현재 페이지 블록의 끝번호

	//생성자
	
	//레코드 개수, 현제페이지 번호
	public Paging(int count ,int curPage) {
		curBlock = 1;	//현재 페이지 블록 번호
		this.curPage = curPage;	//현재 페이지 설정
		setTotPage(count);	//전체페이지 개수 계산
		setPageRange();	
		setTotBlock();	// 전체페이지 블록개수 계산
		setBlockRange(); // 페이지 블록의 시작, 끝 번호 계산
	}
	
	public void setBlockRange() {
		// 현제 페이지 몇번째 페이지 블록에 속하는지
		curBlock = (int)Math.ceil((curPage-1)/BLOCK_SCALE)+1;
		//현재 페이지 블록의 시작, 끝번호
		blockBegin =(curBlock-1)*BLOCK_SCALE+1;
		blockEnd = blockBegin+BLOCK_SCALE-1;
		//마지막 블록이 범위초과하지 않도록
		if(blockEnd > totPage) blockEnd = totPage;
		//< 눌렀을때 이동할 페이지
		prevPage = (curPage==1)? 1:(curBlock-1)*BLOCK_SCALE;
		//> 눌렀을대 이동할 페이지
		nextPage = curBlock > totBlock ? (curBlock*BLOCK_SCALE) : (curBlock*BLOCK_SCALE)+1;
		//마지막 페이지가 범위초가 하지 않도록 처리
		if(nextPage >= totPage) nextPage = totPage;
	}
	
	public void setPageRange() {
		//where rn  between #{start} and #{end}
		pageBegin = (curPage-1)*PAGE_SCALE+1;
		pageEnd = pageBegin + PAGE_SCALE-1;
	}
	
	
	//getter & setter
	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getTotPage() {
		return totPage;
	}

	public void setTotPage(int count) {
		totPage = (int)Math.ceil(count*1.0/ PAGE_SCALE);
	}

	public int getTotBlock() {
		return totBlock;
	}

	//페이지 블록의 개수 계산(100페이지라면 10개의 블록)
	public void setTotBlock() {
		//전체 페이지 개수 / 10
		// 91/10 => 9.2
		totBlock = (int)Math.ceil(totPage*1.0 / BLOCK_SCALE);
		System.out.println("dto에서 totBlock:"+totBlock);
		System.out.println("dto에서 totPage:"+totPage);
	}

	public int getcurBlock() {
		return curBlock;
	}

	public void setcurBlock(int curBlock) {
		this.curBlock = curBlock;
	}

	public int getPrevBlock() {
		return prevBlock;
	}

	public void setPrevBlock(int prevBlock) {
		this.prevBlock = prevBlock;
	}

	public int getNextBlock() {
		return nextBlock;
	}

	public void setNextBlock(int nextBlock) {
		this.nextBlock = nextBlock;
	}

	public int getPageBegin() {
		return pageBegin;
	}

	public void setPageBegin(int pageBegin) {
		this.pageBegin = pageBegin;
	}

	public int getPageEnd() {
		return pageEnd;
	}

	public void setPageEnd(int pageEnd) {
		this.pageEnd = pageEnd;
	}

	public int getBlockBegin() {
		return blockBegin;
	}

	public void setBlockBegin(int blockBegin) {
		this.blockBegin = blockBegin;
	}

	public int getBlockEnd() {
		return blockEnd;
	}

	public void setBlockEnd(int blockEnd) {
		this.blockEnd = blockEnd;
	}
	
	
	
}
