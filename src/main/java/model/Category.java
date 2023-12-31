package model;


public class Category {
	private long id;
	private String tenLoaiSanPham;
	private String theloai;
	private String type;

	/**
	 * 
	 */
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Category(long id, String tenLoaiSanPham, String theloai, String type) {
		super();
		this.id = id;
		this.tenLoaiSanPham = tenLoaiSanPham;
		this.theloai = theloai;
		this.type = type;
	}


	public Category(long id, String tenLoaiSanPham,String theloai) {
		super();
		this.id = id;
		this.tenLoaiSanPham = tenLoaiSanPham;
		this.theloai=theloai;
	}

	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getTheloai() {
		return theloai;
	}

	public void setTheloai(String theloai) {
		this.theloai = theloai;
	}

	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}

	/**
	 * @return the tenLoaiSanPham
	 */
	public String getTenLoaiSanPham() {
		return tenLoaiSanPham;
	}

	/**
	 * @param tenLoaiSanPham
	 *            the tenLoaiSanPham to set
	 */
	public void setTenLoaiSanPham(String tenLoaiSanPham) {
		this.tenLoaiSanPham = tenLoaiSanPham;
	}

}
