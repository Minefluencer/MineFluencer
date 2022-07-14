package vo;

public class MageCriVO {
	 private String name;
	 private int age;
	 private int count;
	 private int allcount;
	 
	 
	 
	public int getAllcount() {
		return allcount;
	}


	public void setAllcount(int allcount) {
		this.allcount = allcount;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public int getCount() {
		return count;
	}


	public void setCount(int count) {
		this.count = count;
	}


	@Override
	public String toString() {
		return "MageCriVO [name=" + name + ", age=" + age + ", count=" + count + ", allcount=" + allcount + "]";
	}


	


	 
	 
}
