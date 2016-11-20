package cn.itcast.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

	public static Date getDate(String strDate) {
		Date date = null;
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			date =sdf.parse(strDate.trim());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return date;

	}
}
