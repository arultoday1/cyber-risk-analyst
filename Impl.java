package com.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Int.Inter;
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
import com.dbcon.DbCon;


public class Impl implements Inter  {
	Connection con;
	public int regis(Bean reg)
	{
		int r=0;
		try
		{
			con=DbCon.create();
			PreparedStatement ps=con.prepareStatement("INSERT INTO mobile.`user` VALUES(id,?,?,?,?)");
			ps.setString(1, reg.getName());
			ps.setString(2, reg.getEmail());
			ps.setString(3, reg.getPass());
			ps.setString(4, reg.getMobi());
			r=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
		return r;
	}
	@Override
	public boolean num(Bean nu) {
		// TODO Auto-generated method stub
		
		boolean b=false;
		try
		{
			con=DbCon.create();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM mobile.user WHERE email=? and password=?");
			ps.setString(1, nu.getEmail());
			ps.setString(2, nu.getPass());
			
			ResultSet p=ps.executeQuery();
			b=p.next();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return b;
	}
	@Override
	public int mobile(Bmobile mobi) {
		int m=0;
		try{
			con=DbCon.create();
			PreparedStatement ps=con.prepareStatement("INSERT INTO mobile.mobile VALUES(?,?,?,?,?,?,?)");
			ps.setString(1, mobi.getMuname());
			ps.setString(2, mobi.getMumail());
			ps.setString(3, mobi.getSimtype());
			ps.setString(4, mobi.getMobilenu());
			ps.setString(5, mobi.getSimename());
			ps.setString(6, mobi.getCircle());
			ps.setString(7, mobi.getProblem());
			m=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return m;
	}
	@Override
	public int dth(Bdth th) {

		int d=0;
		try
		{
			con=DbCon.create();
			PreparedStatement ps=con.prepareStatement("INSERT INTO mobile.dth VALUES(?,?,?,?,?)");
			ps.setString(1, th.getDuname());
			ps.setString(2, th.getDuemail());
			ps.setString(3, th.getDthoper());
			ps.setString(4, th.getCustmerid());
			ps.setString(5, th.getProblem());
			d=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return d;
	}
	@Override
	public int datacard(Bdatacard dc) {
		int cd=0;
		try
		{
			con=DbCon.create();
			PreparedStatement ps=con.prepareStatement("INSERT INTO mobile.datacard VALUES(?,?,?,?,?)");
			ps.setString(1, dc.getDcuname());
			ps.setString(2, dc.getDcuemail());
			ps.setString(3, dc.getDcnumber());
			ps.setString(4, dc.getDcname());
			ps.setString(5, dc.getProblem());
			cd=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return cd;
	}
	@Override
	public int landline(Blandline ll) {
		int l=0;
		try
		{
			con=DbCon.create();
			PreparedStatement ps=con.prepareStatement("INSERT INTO mobile.landline VALUES(?,?,?,?,?)");
			ps.setString(1, ll.getLuname());
			ps.setString(2, ll.getLuemail());
			ps.setString(3, ll.getLlname());
			ps.setString(4, ll.getLlnumber());
			ps.setString(5, ll.getProblem());
			l=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return l;
	}
	@Override
	public int payment(Bpayment pay) {
		int p=0;
		try
		{
			con=DbCon.create();
			PreparedStatement ps=con.prepareStatement("INSERT INTO mobile.payment VALUES(?,?,?,?)");
			ps.setString(1, pay.getNameca());
			ps.setString(2, pay.getNameca());
			ps.setString(3, pay.getCvv());
			ps.setString(4, pay.getExpidate());
			p=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return p;
	}
	@Override
	public int mob(Pmobile me) {
		int sm=0;
		try{
			con=DbCon.create();
			PreparedStatement ps=con.prepareStatement("INSERT INTO mobile.showmobile VALUES(?,?,?,?,?,?,?,?)");
			ps.setString(1, me.getMuname());
			ps.setString(2, me.getMumail());
			ps.setString(3, me.getSimtype());
			ps.setString(4, me.getMobilenu());
			ps.setString(5, me.getSimename());
			ps.setString(6, me.getCircle());
			ps.setString(7, me.getProblem());
			ps.setString(8, me.getAdmin());
			sm=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return sm;
	}
	@Override
	public int rmob(Rmobile rm) {
		int mr=0;
		try
		{
		con=DbCon.create();	
		PreparedStatement ps=con.prepareStatement("INSERT INTO mobile.rmobile VALUES(?,?,?,?,?,?,?)");
		ps.setString(1, rm.getMuname());
		ps.setString(2, rm.getMumail());
		ps.setString(3, rm.getRsimtype());
		ps.setString(4, rm.getRsimename());
		ps.setString(5, rm.getRmobilenu());		
		ps.setString(6, rm.getRcircle());
		ps.setString(7, rm.getAmount());
		mr=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return mr;
	}
	@Override
	public int rdth(Rdth rd) {
		int dr=0;
		try
		{
		con=DbCon.create();	
		PreparedStatement ps=con.prepareStatement("INSERT INTO mobile.rdth VALUES(?,?,?,?,?)");
		ps.setString(1, rd.getDuname());
		ps.setString(2, rd.getDuemail());
		ps.setString(3, rd.getRdthoper());
		ps.setString(4, rd.getRcustmerid());
		ps.setString(5, rd.getAmount());
		dr=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return dr;
	}
	@Override
	public int rdaca(Rdatacard rdc) {
		int rc=0;
		try
		{
			con=DbCon.create();
			PreparedStatement ps=con.prepareStatement("INSERT INTO mobile.rdatacard VALUES(?,?,?,?,?)");
			ps.setString(1, rdc.getRdcname());
			ps.setString(2, rdc.getDcuemail());
			ps.setString(3, rdc.getDcuname());
			ps.setString(4, rdc.getRdcnumber());
			ps.setString(5, rdc.getAmount());
			rc=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return rc;
	}
	@Override
	public int blali(Rlandline rll) {
		int llr=0;
		try
		{
			con=DbCon.create();
			PreparedStatement ps=con.prepareStatement("INSERT INTO mobile.blandline VALUES(?,?,?,?,?)");
			ps.setString(1, rll.getLuname());
			ps.setString(2, rll.getLuemail());
			ps.setString(3, rll.getBllname());
			ps.setString(4, rll.getBllnumber());
			ps.setString(5, rll.getBill());
			llr=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return llr;
	}
	@Override
	public int tdh(Pdth dt) {
		int dh=0;
		try{
			con=DbCon.create();
			PreparedStatement ps=con.prepareStatement("INSERT INTO mobile.showdth VALUES(?,?,?,?,?,?)");
			ps.setString(1, dt.getDuname());
			ps.setString(2, dt.getDuemail());
			ps.setString(3, dt.getDthoper());
			ps.setString(4, dt.getCustmerid());
			ps.setString(5, dt.getProblem());
			ps.setString(6, dt.getAdmin());
			dh=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return dh;
	}
	@Override
	public int dad(Pdatacard dd) {
		int dad=0;
		try{
			con=DbCon.create();
			PreparedStatement ps=con.prepareStatement("INSERT INTO mobile.showdatacard VALUES(?,?,?,?,?,?)");
			ps.setString(1, dd.getDcuname());
			ps.setString(2, dd.getDcuemail());
			ps.setString(3, dd.getDcnumber());
			ps.setString(4, dd.getDcname());
			ps.setString(5, dd.getProblem());
			ps.setString(6, dd.getAdmin());
			dad=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return dad;
	}
	@Override
	public int lali(Plandline lli) {
		int ill=0;
		try{
			con=DbCon.create();
			PreparedStatement ps=con.prepareStatement("INSERT INTO mobile.showlandline VALUES(?,?,?,?,?,?)");
			ps.setString(1, lli.getLuname());
			ps.setString(2, lli.getLuemail());
			ps.setString(3, lli.getLlnumber());
			ps.setString(4, lli.getLlname());
			ps.setString(5, lli.getProblem());
			ps.setString(6, lli.getAdmin());
			ill=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return ill;
	}
}