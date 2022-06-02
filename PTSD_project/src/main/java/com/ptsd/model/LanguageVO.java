package com.ptsd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LanguageVO {
	private int Lan_seq;
	private int Frequency;
	private int Lookup_order;
	private String Lan_kor;
	private String Lan_eng;
	private String Lan_cha;
	private String Lan_jap;
}
