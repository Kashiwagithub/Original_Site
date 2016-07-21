/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Origin;

import java.util.ArrayList;

/**
 *
 * @author Wataru
 */
public class Helper {
    public static Helper getInstance(){
        return new Helper();
    }

//入力漏れチェック
    public String checkinput(ArrayList<String> checkList){
        String output = "";
        for(String value : checkList){
            if(value.equals("name")){
                output += "ユーザー名";
            }
            if(value.equals("password")){
                output +="パスワード";
            }
            if(value.equals("departure")){
                output +="乗車駅";
            }
            if(value.equals("arrival")){
                output +="降車駅";
            }
            if(value.equals("line")){
                output +="使用路線";
            }
            output +="が未記入です<br>";
        }
        return output;
    }

    //トップへのリンクを定数として設定
    private final String homeURL = "Timeline";
    
    //トップへのリンクを返却
    public String home(){
        return "<a href=\""+homeURL+"\">トップへ戻る</a>";
    }
}