package com.brianfair.javagroupproject.models;

import java.text.DecimalFormat;
import java.util.HashMap;

public class Prices {
	
	
	private static HashMap<String, Double> pricing = Prices.setPricing();

	
	public static Order finalizeOrderEdit(Order editingOrder, Order originalOrder)
	{
    	if( (editingOrder.getToppings() == null) && ( (originalOrder.getToppings() != null)) )
        {
    		editingOrder.setToppings(originalOrder.getToppings());
        	String price = Prices.calculatePrice(editingOrder.getToppings(), editingOrder.getSize(), editingOrder.getQuantity());
        	editingOrder.setPrice(price);
        	return editingOrder;
    	}
    	if(editingOrder.getToppings() != null)
    	{
    		if (StringArrayFunctions.containsEmptyStr(editingOrder.getToppings()))
    		{
	    		editingOrder.setToppings(null);
	        	String price = Prices.calculatePrice(editingOrder.getToppings(), editingOrder.getSize(), editingOrder.getQuantity());
	        	editingOrder.setPrice(price);
	    		return editingOrder;
    		}
    	}
    	String price = Prices.calculatePrice(editingOrder.getToppings(), editingOrder.getSize(), editingOrder.getQuantity());
    	editingOrder.setPrice(price);
		return editingOrder;
	}
	
	
	public static String calculatePrice(String toppings, String size, String quantity)
	{
		Double priceDec = Prices.getPricing().get(size);
		Double quantityDec = Double.parseDouble(quantity);
		DecimalFormat decFormat = new DecimalFormat("##.00");
		Double price_unformatted;
		System.out.println("toppings: "+toppings);
		if (toppings == null)
		{
			price_unformatted = priceDec*quantityDec;
					
		}
		else
		{
			String [] these_toppings = StringArrayFunctions.strToStrArr(toppings);
			Double toppings_price = these_toppings.length*Prices.getPricing().get("toppings");
			price_unformatted = (toppings_price+priceDec)*quantityDec;
		}

		Double price_formatted =  Double.parseDouble(decFormat.format(price_unformatted));
		return price_formatted.toString();
	}

	
	private static HashMap<String, Double> getPricing() {
		return pricing;
	}

	private static HashMap<String, Double> setPricing()
	{
		HashMap<String, Double> pricing = new HashMap<String, Double>();
		pricing.put("toppings", .50);
		pricing.put("Small", 9.99);
		pricing.put("Medium", 11.99);
		pricing.put("Large", 13.99);
		pricing.put("XLarge", 15.99);
		return pricing;
	}

	

	
	
}