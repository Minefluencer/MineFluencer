package vo;

public class FristnameVO {
	
	private String nick_name;
	private int counting;
	
	
	
	
	public int getCounting() {
		return counting;
	}
	public void setCounting(int counting) {
		this.counting = counting;
	}
	public String getNick_name() {
		return nick_name;
	}
	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}
	@Override
	public String toString() {
		return "FristnameVO [nick_name=" + nick_name + ", counting=" + counting + "]";
	}


	
	
}
