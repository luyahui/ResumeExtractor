package com.lu.util;

public class Page {
	private int totalCount;// 总的记录数
	private int pageSize = 15;// 页面的条数
	private int pageCount; // 页面总数
	private int pageNo; // 当前页

	public Page() {
		System.out.println("分页类被初始化... ");
		this.pageNo = 0;
		this.pageSize = 15;
	}

	public Page(int pageNo, int pageSize) {
		this.pageNo = pageNo > 1 ? pageNo : 1;
		this.pageSize = pageSize;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageNo() {
		if (pageNo > pageCount)
			this.pageNo = pageCount;
		if (pageNo < 1)
			pageNo = 1;
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		if (totalCount == 0)
			this.pageCount = 0;
		else {
			this.pageCount = totalCount % this.pageSize == 0 ? totalCount / this.pageSize
					: totalCount / this.pageSize + 1;
		}
		if (pageNo > pageCount) {
			pageNo = pageCount;
		}
	}

}
