package com.yueshimall.error;

public enum ErrorBuiness implements CommonError{
    //00001开头为通用错误类型
    COMMON_ERROR(00001,"一个不太清楚的错误？可能是参数出了问题吧"),
    //10000开头为用户信息错误码
    USER_NOT_EXIST(10001,"该用户不存在"),
    PASSWORD_ERROR(10002,"输入的密码错误！")
    ;
    private ErrorBuiness(int errCode,String errMessage)
    {
        this.errCode=errCode;
        this.errMessage=errMessage;
    }

    public int errCode;
    public String errMessage;

    @Override
    public int getErrorcode() {
        return this.errCode;
    }

    @Override
    public String getErrorMessage() {
        return this.errMessage;
    }

    @Override
    public CommonError setErrorMessage(String Message) {
        this.errMessage=errMessage;
        return this;
    }
}
