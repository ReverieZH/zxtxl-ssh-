package cn.com.bean;

import cn.com.ui.Common;

public class Functions {
    public static String displayNumber(String number){
        System.out.println("display");
        if(number!=null)
            return "<a title='" + number + "'>" + Common.getFixedLengthString(number, 7) + "</a>";
        else
            return "&nbsp;";
    }



    public static String displayWorkspace(String workspace){
        if(workspace!=null)
            return "<a title='" + workspace + "'>" + Common.getFixedLengthString(workspace, 8) + "</a>";
        else
            return "&nbsp;";
    }

    public static String displayAddress(String address){
        if(address!=null)
            return "<a title='" + address + "'>" + Common.getFixedLengthString(address, 5) + "</a>";
        else
            return "&nbsp;";
    }
    public static String displayEmail(String email){
        if(email!=null)
            return "<a title='" + email + "'>" + Common.getFixedLengthString(email, 6) + "</a>";
        else
            return "&nbsp;";
    }
    public static String getNotNullString(Integer age){
        if(age==null){
            return "";
        }else{
            return String.valueOf(age);
        }
    }
}
