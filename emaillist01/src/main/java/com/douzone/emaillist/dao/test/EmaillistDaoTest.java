package com.douzone.emaillist.dao.test;

import java.util.List;

import com.douzone.emaillist.dao.EmaillistDao;
import com.douzone.emaillist.vo.EmaillistVo;

public class EmaillistDaoTest {

	
	public static void main(String[] args) {
		EmaillistVo vo = new EmaillistVo();
		vo.setNo((long)2);
		vo.setFirstName("둘");
		vo.setLastName("리");
		vo.setEmail("dooly@gmail.com");
		testInsert(vo);
		testFindAll();

	}
	
	private static void testDeleteByEmail(String email) {
		new EmaillistDao().deleteByEmail(email);
	}
	
	public static void testFindAll() {
		List<EmaillistVo> list = new EmaillistDao().findAll();
		for(EmaillistVo vo : list) {
			System.out.println(vo);
		}
	}

	private static void testInsert(EmaillistVo vo) {
		
		new EmaillistDao().insert(vo);
	}

}
