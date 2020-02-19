package com.yueshimall.error;

public interface CommonError {

    public int getErrorcode();
    public String getErrorMessage();
    public CommonError setErrorMessage(String Message);
}
