package service;

import java.util.HashMap;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapperInterface.MylistMapper;
import vo.MageCriVO;
import vo.MemberVO;
import vo.MylistVO;
import vo.YtubeVO;

@Service
public class MylistServiceimpl implements MylistService {
	@Autowired
	MylistMapper mapper;
	
	@Override
	public List<MylistVO> selectList(String id) {
		return mapper.selectList(id);
	}
	@Override
	public int myinsert(HashMap<String,String> map) {
		return mapper.myinsert(map);
	}
	@Override
	public int mydelete(HashMap<String, String> map) {
		return mapper.mydelete(map);
	}
	@Override
	public List<MageCriVO> poplevel() {
		return mapper.poplevel();
	}
	@Override
	public List<MageCriVO> allcount() {
		// TODO Auto-generated method stub
		return mapper.allcount();
	}
	
}

