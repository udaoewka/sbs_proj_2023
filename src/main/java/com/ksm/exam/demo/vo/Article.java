package com.ksm.exam.demo.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Article {
	
	private int id;
	private Date regDate;
	private Date updateDate;
	private int memberId;
	private String title;
	private String body;
	
}
