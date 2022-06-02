package com.ptsd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RequestVO {
	private int History_seq;
	private int Lan_trun;
	private String Date_time;
	private int Taxi_num;
}
