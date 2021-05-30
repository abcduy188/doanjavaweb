package vn.name.dcd.DTO;

/*DTO =model khi dung model khong biet model la dto hay entity*/
/*DTO tranfer data giua API-client hoac controller-view
entity mapping tables o database*/
public class ProductDTO extends AbstractDTO<ProductDTO> {
	private String tensp;
	private String mota;
	private String content;
	private String hinhanh;
	private String base64;
	public String getBase64() {
		return base64.split(",")[1];
	}
	public void setBase64(String base64) {
		this.base64 = base64;
	}
	private Long madanhmuc;
	private String categoryCode;
	public String getTensp() {
		return tensp;
	}
	public void setTensp(String tensp) {
		this.tensp = tensp;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public String getHinhanh() {
		return hinhanh;
	}
	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}
	public Long getMadanhmuc() {
		return madanhmuc;
	}
	public void setMadanhmuc(Long madanhmuc) {
		this.madanhmuc = madanhmuc;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
}
