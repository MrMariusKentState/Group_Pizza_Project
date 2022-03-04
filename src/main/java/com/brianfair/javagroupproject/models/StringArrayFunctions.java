package com.brianfair.javagroupproject.models;

public class StringArrayFunctions {
	
	public static String strArrToStr(String[] arr)
	{
    	String str = "";
    	for(int i = 0; i< arr.length; i++)
    	{
    		if (i == 0)
    		{
        		str = arr[i];
    		}
    		else
    		{
        		str += ","+arr[i];
    		}
    	}
    	return str;
	}
	
	
	public static String[] strToStrArr(String str)
	{
		if (str != null)
		{
	    	String[] str_array = str.split(",");
	    	return str_array;
		}
		return null;
	}
	
	
	public static boolean containsEmptyStr(String str)
	{
		if (str == null) return false;
		
		String[] arr = StringArrayFunctions.strToStrArr(str);
		for(String string: arr)
		{
			if (string == "") return true;
		}
		return false;
	}
}


