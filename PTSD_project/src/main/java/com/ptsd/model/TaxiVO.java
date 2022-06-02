package com.ptsd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class TaxiVO {
	private int Taxi_seq;
	@NonNull
	private String Taxi_num;
	@NonNull
	private String Car_kinds;
	@NonNull
	private String Office_name;
	@NonNull
	private String Personal_tel;
	@NonNull
	private String Approve_check;
	@NonNull
	private String Pw;
}
