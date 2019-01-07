package com.Int;

import com.bean.Bdatacard;
import com.bean.Bdth;
import com.bean.Bean;
import com.bean.Blandline;
import com.bean.Bmobile;
import com.bean.Bpayment;
import com.bean.Pdatacard;
import com.bean.Pdth;
import com.bean.Plandline;
import com.bean.Pmobile;
import com.bean.Rdatacard;
import com.bean.Rdth;
import com.bean.Rlandline;
import com.bean.Rmobile;


public interface Inter {
	public int regis(Bean reg);
	public boolean num(Bean nu);
	
	public int mobile(Bmobile mobi);
	public int dth(Bdth th);
	public int datacard(Bdatacard dc);
	public int landline(Blandline ll);
	public int payment(Bpayment pay);
	
	public int mob(Pmobile me);
	public int tdh(Pdth dt);
	public int dad(Pdatacard dd);
	public int lali(Plandline lli);
	
	
	public int rmob(Rmobile rm);
	public int rdth(Rdth rd);
	public int rdaca(Rdatacard rdc);
	public int blali(Rlandline rll);
	
}
