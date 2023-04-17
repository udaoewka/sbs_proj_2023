package com.ksm.exam.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.ksm.exam.demo.vo.Member;

@Mapper
public interface MemberRepository {
	
	@Insert("""
			INSERT INTO `member`
			SET regDate = NOW(),
			updateDate = NOW(),
			loginId = #{loginId},
			loginPw = #{loginPw},
			`name` = #{name},
			nickname = #{nickname},
			cellphoneNo = #{cellphoneNo},
			email = #{email}
			""")
	void join(@Param("loginId") String loginId, @Param("loginPw") String loginPw, @Param("name") String name, @Param("nickname") String nickname, @Param("cellphoneNo") String cellphoneNo, @Param("email") String email);
	
	@Select("""
			SELECT * FROM `member` ORDER BY id DESC
			""")
	List<Member> getMembers();
	
	@Select("SELECT LAST_INSERT_ID()")
	int getLastInsertId();
	
	@Select("SELECT * FROM `member` AS M WHERE M.id = #{id}")
	Member getMemberById(@Param("id") int id);
	
}