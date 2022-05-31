package service;

import java.util.List;

import vo.MemberVO;
import vo.YtubeVO;

public interface YtubeService {
	
	public int insert(YtubeVO vo);
	List<YtubeVO> selectList();
}
