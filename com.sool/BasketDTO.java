package com.sool;

//지금 사용하는 테이블은 동명의 테스트 테이블 이다.
//나중에 합칠때는 key값과 시퀀스가 작동하도록만 삽입해준다.
//테이블에다 갑자기 프라이머리 키 값 주는건... 까먹었다. ㅎ 찾아놔야지
//테이블 세개를 조인 해야하니, 필요한 데이터의 변수를 만들어준다.
//어우 토나와



public class BasketDTO {
	
	private int bas_no;
	private String user_id;
	private int prod_no;
	private int prod_quan;
	private int bas_vali;
	
	private int prod_price;
	private int prod_name;
	
	
	/*	public Basket(int bas_no, String user_id, prod_no, prod_quan,int bas_vali) {
		this.bas_no = bas_no;
		this.user_id = user_id;
		this.prod_no= prod_no;
		this.prod_quan= prod_quan;
		this.bas_vali= bas_vali;
	}
	*/
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getBas_no() {
		return bas_no;
	}
	public void setBas_no(int bas_no) {
		this.bas_no = bas_no;
	}
	public int getBas_vali() {
		return bas_vali;
	}
	public void setBas_vali(int bas_vali) {
		this.bas_vali = bas_vali;
	}
	public int getProd_no() {
		return prod_no;
	}
	public void setProd_no(int prod_no) {
		this.prod_no = prod_no;
	}
	public int getProd_quan() {
		return prod_quan;
	}
	public void setProd_quan(int prod_quan) {
		this.prod_quan = prod_quan;
	}
	public int getProd_price() {
		return prod_price;
	}
	public void setProd_price(int prod_price) {
		this.prod_price = prod_price;
	}
	public int getProd_name() {
		return prod_name;
	}
	public void setProd_name(int prod_name) {
		this.prod_name = prod_name;
	}
	
	

}
