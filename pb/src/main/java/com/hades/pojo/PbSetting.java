package com.hades.pojo;

public class PbSetting {
    private Integer id;

    private Boolean pbSwitch;

    private String pbCloseDisplay;

    private String pbTitle;

    private String pbKeyword;

    private String pbDescribe;

    private String pbBottom;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Boolean getPbSwitch() {
        return pbSwitch;
    }

    public void setPbSwitch(Boolean pbSwitch) {
        this.pbSwitch = pbSwitch;
    }

    public String getPbCloseDisplay() {
        return pbCloseDisplay;
    }

    public void setPbCloseDisplay(String pbCloseDisplay) {
        this.pbCloseDisplay = pbCloseDisplay == null ? null : pbCloseDisplay.trim();
    }

    public String getPbTitle() {
        return pbTitle;
    }

    public void setPbTitle(String pbTitle) {
        this.pbTitle = pbTitle == null ? null : pbTitle.trim();
    }

    public String getPbKeyword() {
        return pbKeyword;
    }

    public void setPbKeyword(String pbKeyword) {
        this.pbKeyword = pbKeyword == null ? null : pbKeyword.trim();
    }

    public String getPbDescribe() {
        return pbDescribe;
    }

    public void setPbDescribe(String pbDescribe) {
        this.pbDescribe = pbDescribe == null ? null : pbDescribe.trim();
    }

    public String getPbBottom() {
        return pbBottom;
    }

    public void setPbBottom(String pbBottom) {
        this.pbBottom = pbBottom == null ? null : pbBottom.trim();
    }
}