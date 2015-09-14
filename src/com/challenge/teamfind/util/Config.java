package com.challenge.teamfind.util;

import java.util.HashMap;

public class Config {
	
	static HashMap<String, String> threeHashMap = new HashMap<String, String>();
	static HashMap<String, String> fourHashMap = new HashMap<String, String>();
	static HashMap<String, String> fiveHashMap = new HashMap<String, String>();
	static HashMap<String, String> sixHashMap = new HashMap<String, String>();
	static HashMap<String, String> sevenHashMap = new HashMap<String, String>();
	static HashMap<String, String> eightHashMap = new HashMap<String, String>();
	
	static public void init(){
		threeHashMap.put("FI","th_1");
		threeHashMap.put("CW","th_1");
		threeHashMap.put("SH","th_2");
		threeHashMap.put("TW","th_2");
		threeHashMap.put("PL","th_3");
		
		fourHashMap.put("FI","fo_1");
		fourHashMap.put("CW","fo_1");
		fourHashMap.put("SH","fo_2");
		fourHashMap.put("TW","fo_2");
		fourHashMap.put("CO","fo_3");
		fourHashMap.put("RI","fo_3");
		fourHashMap.put("PL","fo_4");
		
		fiveHashMap.put("FI","fi_1");
		fiveHashMap.put("CW","fi_1");
		fiveHashMap.put("SH","fi_2");
		fiveHashMap.put("TW","fi_2");
		fiveHashMap.put("ME","fi_3");
		fiveHashMap.put("CO","fi_4");
		fiveHashMap.put("RI","fi_4");
		fiveHashMap.put("PL","fi_5");
		
		sixHashMap.put("FI","si_1");
		sixHashMap.put("CW","si_1");
		sixHashMap.put("SH","si_2");
		sixHashMap.put("TW","si_2");
		sixHashMap.put("ME","si_3");
		sixHashMap.put("CO","si_4");
		sixHashMap.put("RI","si_5");
		sixHashMap.put("PL","si_6");
		
		sevenHashMap.put("FI","se_1");
		sevenHashMap.put("CW","se_1");
		sevenHashMap.put("SH","se_2");
		sevenHashMap.put("TW","se_3");
		sevenHashMap.put("ME","se_4");
		sevenHashMap.put("CO","se_5");
		sevenHashMap.put("RI","se_6");
		sevenHashMap.put("PL","se_7");
		
		eightHashMap.put("FI","ei_1");
		eightHashMap.put("CW","ei_2");
		eightHashMap.put("SH","ei_3");
		eightHashMap.put("TW","ei_4");
		eightHashMap.put("ME","ei_5");
		eightHashMap.put("CO","ei_6");
		eightHashMap.put("RI","ei_7");
		eightHashMap.put("PL","ei_8");
	}
	static public String getThreeCharacter(String character){
		return threeHashMap.get(character);
	}
	static public String getFourCharacter(String character){
		return fourHashMap.get(character);
	}
	static public String getFiveCharacter(String character){
		return fiveHashMap.get(character);
	}
	static public String getSixCharacter(String character){
		return sixHashMap.get(character);
	}
	static public String getSevenCharacter(String character){
		return sevenHashMap.get(character);
	}
	static public String getEightCharacter(String character){
		return eightHashMap.get(character);
	}
}
