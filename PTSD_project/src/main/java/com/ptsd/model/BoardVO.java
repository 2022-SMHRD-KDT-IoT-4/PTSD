package com.ptsd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@Setter

public class BoardVO {
	
	private String TAXI_NUM;
	@NonNull
	private String TAXI_COMMENT_TITLE;
	@NonNull
	private String TAXI_COMMENT_WRITER;
	// @NonNull
	// private String taxi_comment_fileName;
	@NonNull
	private String TAXI_COMMENT_COMMENT;
	private String TAXI_COMMENT_DATE;
	private int TAXI_COMMENT_SEQ;
	
	
	
}



