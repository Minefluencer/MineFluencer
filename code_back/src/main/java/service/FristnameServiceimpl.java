package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapperInterface.FristnameMapper;
import vo.FristnameVO;
@Service
public class FristnameServiceimpl implements FristnameService {
	
	@Autowired
	FristnameMapper mapper;
	
	public List<FristnameVO> givenick() {
		System.out.println(mapper.givenick()+"aaaa");
		return mapper.givenick();
	}
}
