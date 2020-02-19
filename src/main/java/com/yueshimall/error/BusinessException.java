package com.yueshimall.error;

public class BusinessException extends Exception implements CommonError {

    private CommonError commonError;
//直接接受ErrorBusiness的传参，用于构造异常
    public BusinessException(CommonError commonError)
    {
        super();
        this.commonError=commonError;
    }
    //自定义异常
    public BusinessException(CommonError commonError,String errorMessage)
    {
         super();
         this.commonError=commonError;
         this.commonError.setErrorMessage(errorMessage);
    }


    @Override
    public int getErrorcode() {
        return this.commonError.getErrorcode();
    }

    @Override
    public String getErrorMessage() {
        return this.commonError.getErrorMessage();
    }

    @Override
    public CommonError setErrorMessage(String Message) {
        this.commonError.setErrorMessage(Message);
        return this;
    }
}
