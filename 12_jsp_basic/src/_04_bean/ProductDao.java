package _04_bean;

public class ProductDao {

	public void showData(ProductBean pb) {
		System.out.println("pdcd : "   + pb.getPdCd());
		System.out.println("pdNm : "   + pb.getPdNm());
		System.out.println("deptCd : " + pb.getDeptCd());
		System.out.println("deptNm : " + pb.getDeptNm());
		System.out.println("mgrCd : "  + pb.getMgrCd());
		System.out.println("mgrNm : "  + pb.getMgrNm());
		System.out.println();
	}
	
}
