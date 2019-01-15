package cn.lumoon.moonmall.model;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")
public class Phone {
    private String phone;
    private String verifyCode;
    private long sendTime;

    public Phone() {
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getVerifyCode() {
        return verifyCode;
    }

    public void setVerifyCode(String verifyCode) {
        this.verifyCode = verifyCode;
    }

    public long getSendTime() {
        return sendTime;
    }

    public void setSendTime(long sendTime) {
        this.sendTime = sendTime;
    }

    @Override
    public String toString() {
        return "Phone{" +
                "phone='" + phone + '\'' +
                ", verifyCode='" + verifyCode + '\'' +
                ", sendTime=" + sendTime +
                '}';
    }
}
