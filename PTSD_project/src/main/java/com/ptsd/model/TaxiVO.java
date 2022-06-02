package com.ptsd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TaxiVO {
	private int Taxi_seq;
	private String Taxi_num;
	private String Car_kinds;
	private String Office_name;
	private String Personal_tel;
	private String Approve_check;
	private String Pw;
}
