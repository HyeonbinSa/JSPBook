package jspbook.address;

import java.util.*;

public class AddrManager {
	List<AddrBean> addrList = new ArrayList<AddrBean>();
	
	public List<AddrBean> getAddr() {
		return addrList;
	}
	
	public void add(AddrBean address) {
		addrList.add(address);
	}
}
