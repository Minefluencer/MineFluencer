package mapperInterface;


import java.util.HashMap;
import java.util.List;

import vo.MemberVO;

public interface MemberMapper {
	public int idCheck(String id);
	MemberVO selectOne(MemberVO vo);
	List<MemberVO> imgOne (String string);
	int insert(MemberVO vo);
	MemberVO getAll(HashMap<String,Object> map);
}
