package com.ksm.exam.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Reply {
	
	private int id;
	private String regDate;
	private String updateDate;
	private int memberId;
	private String relTypeCode;
	private int relId;
	private String body;
	private int goodReactionPoint;
	private int badReactionPoint;
	
	private String extra__writerName;	
	private boolean extra__actorCanDelete;
	private boolean extra__actorCanModify;
	
	public String getRegDateForPrint() {
		return regDate.substring(2, 16);
	}
	
	public String getUpdateDateForPrint() {
		return regDate.substring(2, 16);
	}
	
	public String forPrintintType1RegDate() {
		return regDate.substring(2, 16).replace(" ", "<br>");
	}
	
	public String forPrintintType1UpdateDate() {
		return updateDate.substring(2, 16).replace(" ", "<br>");
	}
	
	public String getForPrintBody() {
		return body.replaceAll("\n", "<br>");
	}

}