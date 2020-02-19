package com.yueshimall.response;

public class CommonReturn {
    private String status;
    private Object data;
    public static CommonReturn create (Object result)
    {

        return CommonReturn.create(result,"success");
    }
    public static CommonReturn create (Object result,String status)
    {

        CommonReturn type = new CommonReturn();
        type.setStatus(status);
        type.setData(result);
        return type;
    }


    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
