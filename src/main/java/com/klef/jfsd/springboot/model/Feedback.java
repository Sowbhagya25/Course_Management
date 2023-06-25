package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="feeback_table")
public class Feedback 
{
	@Id
	@GeneratedValue
	private int feid;
	@Column(nullable=false,length=200)
	private String ffname;
	@Column(nullable=false,length=200)
	private String flname;
	@Column(nullable=false,length=200)
	private String fdept;
	@Column(nullable=false,length=200)
	private String fsub;
	@Column(nullable = false,length = 200)
	private String fcoursecode;
	@Column(nullable = false,length = 200)
	private String flevelofknow;
	@Column(nullable = false,length = 200)
	private String flevelofcomm;
	@Column(nullable = false,length = 200)
    private String frecomend;
	public int getFeid() {
		return feid;
	}
	public void setFeid(int feid) {
		this.feid = feid;
	}
	public String getFfname() {
		return ffname;
	}
	public void setFfname(String ffname) {
		this.ffname = ffname;
	}
	public String getFlname() {
		return flname;
	}
	public void setFlname(String flname) {
		this.flname = flname;
	}
	public String getFdept() {
		return fdept;
	}
	public void setFdept(String fdept) {
		this.fdept = fdept;
	}
	public String getFsub() {
		return fsub;
	}
	public void setFsub(String fsub) {
		this.fsub = fsub;
	}
	public String getFcoursecode() {
		return fcoursecode;
	}
	public void setFcoursecode(String fcoursecode) {
		this.fcoursecode = fcoursecode;
	}
	public String getFlevelofknow() {
		return flevelofknow;
	}
	public void setFlevelofknow(String flevelofknow) {
		this.flevelofknow = flevelofknow;
	}
	public String getFlevelofcomm() {
		return flevelofcomm;
	}
	public void setFlevelofcomm(String flevelofcomm) {
		this.flevelofcomm = flevelofcomm;
	}
	public String getFrecomend() {
		return frecomend;
	}
	public void setFrecomend(String frecomend) {
		this.frecomend = frecomend;
	}
	@Override
	public String toString() {
		return "Feedback [feid=" + feid + ", ffname=" + ffname + ", flname=" + flname + ", fdept=" + fdept + ", fsub="
				+ fsub + ", fcoursecode=" + fcoursecode + ", flevelofknow=" + flevelofknow + ", flevelofcomm="
				+ flevelofcomm + ", frecomend=" + frecomend + "]";
	}
	
	
	
	

}
