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
	
	private int num;
	@NonNull
	private String title;
	@NonNull
	private String writer;
	@NonNull
	private String fileName;
	@NonNull
	private String content;
	private String b_day;
	
	
	
}



