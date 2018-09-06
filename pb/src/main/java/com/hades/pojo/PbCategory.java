package com.hades.pojo;

public class PbCategory {
    private Integer id;

    private String categoryname;

    private Integer sort;

    private Integer property;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCategoryname() {
        return categoryname;
    }

    public void setCategoryname(String categoryname) {
        this.categoryname = categoryname == null ? null : categoryname.trim();
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public Integer getProperty() {
        return property;
    }

    public void setProperty(Integer property) {
        this.property = property;
    }

	@Override
	public String toString() {
		return "PbCategory [id=" + id + ", categoryname=" + categoryname
				+ ", sort=" + sort + ", property=" + property + "]";
	}
    
}