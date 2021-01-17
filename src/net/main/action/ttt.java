package net.main.action;

public class ttt {

	public static void main(String[] args) {
		String str="서울시 노원구 어딘가 (현대아파트)";
		String[] strArr = str.split("\\(");
		System.out.println(strArr[0]);
	}

}
