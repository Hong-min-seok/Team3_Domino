package net.product.db;

public class StatisticBean {
	
	private int month;
	private int pizza_code;
	private String pizza_name;
	private int count;
	
	
	
	public String getPizza_name() {
		return pizza_name;
	}
	public void setPizza_name(String pizza_name) {
		this.pizza_name = pizza_name;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public int getPizza_code() {
		return pizza_code;
	}
	public void setPizza_code(int pizza_code) {
		this.pizza_code = pizza_code;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	

}
