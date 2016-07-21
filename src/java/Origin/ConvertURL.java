/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Origin;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Wataru
 */
public class ConvertURL {
    public static final Pattern convertURLpattern = Pattern.compile("(http://|https://){1}[\\w\\.\\-/:\\#\\?\\=\\&\\;\\%\\~\\+]+",Pattern.CASE_INSENSITIVE);

/**
 * 指定された文字列内のURLを、正規表現を使用し、
 * リンク（a href=...）に変換する。
 * @param str 指定の文字列。
 * @return リンクに変換された文字列。
 */
public static String convertURL(String str) {
    Matcher matcher = convertURLpattern.matcher(str);
    return matcher.replaceAll("<a href=\"$0\">$0</a>");
}
}
