package com.util;

import com.sun.rowset.CachedRowSetImpl;

/**
 * Create by mysteriousTime
 * time on 2019/8/30  14:10
 */
public class showByPage {
    private Integer currPage;
    private CachedRowSetImpl rowSet=null;//存储表中全部记录的行集对象
    private int pageSize=5;//每页显示数
    private int pageAllCount=0;//分页后的总页数
    private StringBuffer presentPageResult;//显示当前内容

    public showByPage() {
    }

    public showByPage(Integer currPage, CachedRowSetImpl rowSet, int pageSize, int pageAllCount, StringBuffer presentPageResult) {
        this.currPage = currPage;
        this.rowSet = rowSet;
        this.pageSize = pageSize;
        this.pageAllCount = pageAllCount;
        this.presentPageResult = presentPageResult;
    }

    public Integer getCurrPage() {
        return currPage;
    }

    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }

    public CachedRowSetImpl getRowSet() {
        return rowSet;
    }

    public void setRowSet(CachedRowSetImpl rowSet) {
        this.rowSet = rowSet;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageAllCount() {
        return pageAllCount;
    }

    public void setPageAllCount(int pageAllCount) {
        this.pageAllCount = pageAllCount;
    }

    public StringBuffer getPresentPageResult() {
        return presentPageResult;
    }

    public void setPresentPageResult(StringBuffer presentPageResult) {
        this.presentPageResult = presentPageResult;
    }
}
