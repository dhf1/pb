package com.hades.pojo;

import java.util.ArrayList;
import java.util.List;

public class PbSettingExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PbSettingExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andPbSwitchIsNull() {
            addCriterion("pb_switch is null");
            return (Criteria) this;
        }

        public Criteria andPbSwitchIsNotNull() {
            addCriterion("pb_switch is not null");
            return (Criteria) this;
        }

        public Criteria andPbSwitchEqualTo(Boolean value) {
            addCriterion("pb_switch =", value, "pbSwitch");
            return (Criteria) this;
        }

        public Criteria andPbSwitchNotEqualTo(Boolean value) {
            addCriterion("pb_switch <>", value, "pbSwitch");
            return (Criteria) this;
        }

        public Criteria andPbSwitchGreaterThan(Boolean value) {
            addCriterion("pb_switch >", value, "pbSwitch");
            return (Criteria) this;
        }

        public Criteria andPbSwitchGreaterThanOrEqualTo(Boolean value) {
            addCriterion("pb_switch >=", value, "pbSwitch");
            return (Criteria) this;
        }

        public Criteria andPbSwitchLessThan(Boolean value) {
            addCriterion("pb_switch <", value, "pbSwitch");
            return (Criteria) this;
        }

        public Criteria andPbSwitchLessThanOrEqualTo(Boolean value) {
            addCriterion("pb_switch <=", value, "pbSwitch");
            return (Criteria) this;
        }

        public Criteria andPbSwitchIn(List<Boolean> values) {
            addCriterion("pb_switch in", values, "pbSwitch");
            return (Criteria) this;
        }

        public Criteria andPbSwitchNotIn(List<Boolean> values) {
            addCriterion("pb_switch not in", values, "pbSwitch");
            return (Criteria) this;
        }

        public Criteria andPbSwitchBetween(Boolean value1, Boolean value2) {
            addCriterion("pb_switch between", value1, value2, "pbSwitch");
            return (Criteria) this;
        }

        public Criteria andPbSwitchNotBetween(Boolean value1, Boolean value2) {
            addCriterion("pb_switch not between", value1, value2, "pbSwitch");
            return (Criteria) this;
        }

        public Criteria andPbCloseDisplayIsNull() {
            addCriterion("pb_close_display is null");
            return (Criteria) this;
        }

        public Criteria andPbCloseDisplayIsNotNull() {
            addCriterion("pb_close_display is not null");
            return (Criteria) this;
        }

        public Criteria andPbCloseDisplayEqualTo(String value) {
            addCriterion("pb_close_display =", value, "pbCloseDisplay");
            return (Criteria) this;
        }

        public Criteria andPbCloseDisplayNotEqualTo(String value) {
            addCriterion("pb_close_display <>", value, "pbCloseDisplay");
            return (Criteria) this;
        }

        public Criteria andPbCloseDisplayGreaterThan(String value) {
            addCriterion("pb_close_display >", value, "pbCloseDisplay");
            return (Criteria) this;
        }

        public Criteria andPbCloseDisplayGreaterThanOrEqualTo(String value) {
            addCriterion("pb_close_display >=", value, "pbCloseDisplay");
            return (Criteria) this;
        }

        public Criteria andPbCloseDisplayLessThan(String value) {
            addCriterion("pb_close_display <", value, "pbCloseDisplay");
            return (Criteria) this;
        }

        public Criteria andPbCloseDisplayLessThanOrEqualTo(String value) {
            addCriterion("pb_close_display <=", value, "pbCloseDisplay");
            return (Criteria) this;
        }

        public Criteria andPbCloseDisplayLike(String value) {
            addCriterion("pb_close_display like", value, "pbCloseDisplay");
            return (Criteria) this;
        }

        public Criteria andPbCloseDisplayNotLike(String value) {
            addCriterion("pb_close_display not like", value, "pbCloseDisplay");
            return (Criteria) this;
        }

        public Criteria andPbCloseDisplayIn(List<String> values) {
            addCriterion("pb_close_display in", values, "pbCloseDisplay");
            return (Criteria) this;
        }

        public Criteria andPbCloseDisplayNotIn(List<String> values) {
            addCriterion("pb_close_display not in", values, "pbCloseDisplay");
            return (Criteria) this;
        }

        public Criteria andPbCloseDisplayBetween(String value1, String value2) {
            addCriterion("pb_close_display between", value1, value2, "pbCloseDisplay");
            return (Criteria) this;
        }

        public Criteria andPbCloseDisplayNotBetween(String value1, String value2) {
            addCriterion("pb_close_display not between", value1, value2, "pbCloseDisplay");
            return (Criteria) this;
        }

        public Criteria andPbTitleIsNull() {
            addCriterion("pb_title is null");
            return (Criteria) this;
        }

        public Criteria andPbTitleIsNotNull() {
            addCriterion("pb_title is not null");
            return (Criteria) this;
        }

        public Criteria andPbTitleEqualTo(String value) {
            addCriterion("pb_title =", value, "pbTitle");
            return (Criteria) this;
        }

        public Criteria andPbTitleNotEqualTo(String value) {
            addCriterion("pb_title <>", value, "pbTitle");
            return (Criteria) this;
        }

        public Criteria andPbTitleGreaterThan(String value) {
            addCriterion("pb_title >", value, "pbTitle");
            return (Criteria) this;
        }

        public Criteria andPbTitleGreaterThanOrEqualTo(String value) {
            addCriterion("pb_title >=", value, "pbTitle");
            return (Criteria) this;
        }

        public Criteria andPbTitleLessThan(String value) {
            addCriterion("pb_title <", value, "pbTitle");
            return (Criteria) this;
        }

        public Criteria andPbTitleLessThanOrEqualTo(String value) {
            addCriterion("pb_title <=", value, "pbTitle");
            return (Criteria) this;
        }

        public Criteria andPbTitleLike(String value) {
            addCriterion("pb_title like", value, "pbTitle");
            return (Criteria) this;
        }

        public Criteria andPbTitleNotLike(String value) {
            addCriterion("pb_title not like", value, "pbTitle");
            return (Criteria) this;
        }

        public Criteria andPbTitleIn(List<String> values) {
            addCriterion("pb_title in", values, "pbTitle");
            return (Criteria) this;
        }

        public Criteria andPbTitleNotIn(List<String> values) {
            addCriterion("pb_title not in", values, "pbTitle");
            return (Criteria) this;
        }

        public Criteria andPbTitleBetween(String value1, String value2) {
            addCriterion("pb_title between", value1, value2, "pbTitle");
            return (Criteria) this;
        }

        public Criteria andPbTitleNotBetween(String value1, String value2) {
            addCriterion("pb_title not between", value1, value2, "pbTitle");
            return (Criteria) this;
        }

        public Criteria andPbKeywordIsNull() {
            addCriterion("pb_keyword is null");
            return (Criteria) this;
        }

        public Criteria andPbKeywordIsNotNull() {
            addCriterion("pb_keyword is not null");
            return (Criteria) this;
        }

        public Criteria andPbKeywordEqualTo(String value) {
            addCriterion("pb_keyword =", value, "pbKeyword");
            return (Criteria) this;
        }

        public Criteria andPbKeywordNotEqualTo(String value) {
            addCriterion("pb_keyword <>", value, "pbKeyword");
            return (Criteria) this;
        }

        public Criteria andPbKeywordGreaterThan(String value) {
            addCriterion("pb_keyword >", value, "pbKeyword");
            return (Criteria) this;
        }

        public Criteria andPbKeywordGreaterThanOrEqualTo(String value) {
            addCriterion("pb_keyword >=", value, "pbKeyword");
            return (Criteria) this;
        }

        public Criteria andPbKeywordLessThan(String value) {
            addCriterion("pb_keyword <", value, "pbKeyword");
            return (Criteria) this;
        }

        public Criteria andPbKeywordLessThanOrEqualTo(String value) {
            addCriterion("pb_keyword <=", value, "pbKeyword");
            return (Criteria) this;
        }

        public Criteria andPbKeywordLike(String value) {
            addCriterion("pb_keyword like", value, "pbKeyword");
            return (Criteria) this;
        }

        public Criteria andPbKeywordNotLike(String value) {
            addCriterion("pb_keyword not like", value, "pbKeyword");
            return (Criteria) this;
        }

        public Criteria andPbKeywordIn(List<String> values) {
            addCriterion("pb_keyword in", values, "pbKeyword");
            return (Criteria) this;
        }

        public Criteria andPbKeywordNotIn(List<String> values) {
            addCriterion("pb_keyword not in", values, "pbKeyword");
            return (Criteria) this;
        }

        public Criteria andPbKeywordBetween(String value1, String value2) {
            addCriterion("pb_keyword between", value1, value2, "pbKeyword");
            return (Criteria) this;
        }

        public Criteria andPbKeywordNotBetween(String value1, String value2) {
            addCriterion("pb_keyword not between", value1, value2, "pbKeyword");
            return (Criteria) this;
        }

        public Criteria andPbDescribeIsNull() {
            addCriterion("pb_describe is null");
            return (Criteria) this;
        }

        public Criteria andPbDescribeIsNotNull() {
            addCriterion("pb_describe is not null");
            return (Criteria) this;
        }

        public Criteria andPbDescribeEqualTo(String value) {
            addCriterion("pb_describe =", value, "pbDescribe");
            return (Criteria) this;
        }

        public Criteria andPbDescribeNotEqualTo(String value) {
            addCriterion("pb_describe <>", value, "pbDescribe");
            return (Criteria) this;
        }

        public Criteria andPbDescribeGreaterThan(String value) {
            addCriterion("pb_describe >", value, "pbDescribe");
            return (Criteria) this;
        }

        public Criteria andPbDescribeGreaterThanOrEqualTo(String value) {
            addCriterion("pb_describe >=", value, "pbDescribe");
            return (Criteria) this;
        }

        public Criteria andPbDescribeLessThan(String value) {
            addCriterion("pb_describe <", value, "pbDescribe");
            return (Criteria) this;
        }

        public Criteria andPbDescribeLessThanOrEqualTo(String value) {
            addCriterion("pb_describe <=", value, "pbDescribe");
            return (Criteria) this;
        }

        public Criteria andPbDescribeLike(String value) {
            addCriterion("pb_describe like", value, "pbDescribe");
            return (Criteria) this;
        }

        public Criteria andPbDescribeNotLike(String value) {
            addCriterion("pb_describe not like", value, "pbDescribe");
            return (Criteria) this;
        }

        public Criteria andPbDescribeIn(List<String> values) {
            addCriterion("pb_describe in", values, "pbDescribe");
            return (Criteria) this;
        }

        public Criteria andPbDescribeNotIn(List<String> values) {
            addCriterion("pb_describe not in", values, "pbDescribe");
            return (Criteria) this;
        }

        public Criteria andPbDescribeBetween(String value1, String value2) {
            addCriterion("pb_describe between", value1, value2, "pbDescribe");
            return (Criteria) this;
        }

        public Criteria andPbDescribeNotBetween(String value1, String value2) {
            addCriterion("pb_describe not between", value1, value2, "pbDescribe");
            return (Criteria) this;
        }

        public Criteria andPbBottomIsNull() {
            addCriterion("pb_bottom is null");
            return (Criteria) this;
        }

        public Criteria andPbBottomIsNotNull() {
            addCriterion("pb_bottom is not null");
            return (Criteria) this;
        }

        public Criteria andPbBottomEqualTo(String value) {
            addCriterion("pb_bottom =", value, "pbBottom");
            return (Criteria) this;
        }

        public Criteria andPbBottomNotEqualTo(String value) {
            addCriterion("pb_bottom <>", value, "pbBottom");
            return (Criteria) this;
        }

        public Criteria andPbBottomGreaterThan(String value) {
            addCriterion("pb_bottom >", value, "pbBottom");
            return (Criteria) this;
        }

        public Criteria andPbBottomGreaterThanOrEqualTo(String value) {
            addCriterion("pb_bottom >=", value, "pbBottom");
            return (Criteria) this;
        }

        public Criteria andPbBottomLessThan(String value) {
            addCriterion("pb_bottom <", value, "pbBottom");
            return (Criteria) this;
        }

        public Criteria andPbBottomLessThanOrEqualTo(String value) {
            addCriterion("pb_bottom <=", value, "pbBottom");
            return (Criteria) this;
        }

        public Criteria andPbBottomLike(String value) {
            addCriterion("pb_bottom like", value, "pbBottom");
            return (Criteria) this;
        }

        public Criteria andPbBottomNotLike(String value) {
            addCriterion("pb_bottom not like", value, "pbBottom");
            return (Criteria) this;
        }

        public Criteria andPbBottomIn(List<String> values) {
            addCriterion("pb_bottom in", values, "pbBottom");
            return (Criteria) this;
        }

        public Criteria andPbBottomNotIn(List<String> values) {
            addCriterion("pb_bottom not in", values, "pbBottom");
            return (Criteria) this;
        }

        public Criteria andPbBottomBetween(String value1, String value2) {
            addCriterion("pb_bottom between", value1, value2, "pbBottom");
            return (Criteria) this;
        }

        public Criteria andPbBottomNotBetween(String value1, String value2) {
            addCriterion("pb_bottom not between", value1, value2, "pbBottom");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}