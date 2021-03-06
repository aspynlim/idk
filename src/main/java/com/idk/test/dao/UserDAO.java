package com.idk.test.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.idk.test.vo.UserVO;

@Repository
public class UserDAO {

	@Resource
	private SqlSessionFactory ssf;
	
	public List<UserVO> getUserList(UserVO user){
		SqlSession ss = ssf.openSession();
		try {
			return ss.selectList("com.idk.test.dao.UserInfoMapper.selectUserInfoList", user);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}
		return null;
	}
}
