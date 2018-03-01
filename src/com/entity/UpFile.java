package com.entity;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

public class UpFile {
	private String name;
	private String content_type;
	private String path;
	private String crc32;
	private String size;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent_type() {
		return content_type;
	}
	public void setContent_type(String content_type) {
		this.content_type = content_type;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getCrc32() {
		return crc32;
	}
	public void setCrc32(String crc32) {
		this.crc32 = crc32;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String toString(){
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
				.append("name",this.name)
				.append("content_type", this.content_type)  
                .append("path", this.path)  
                .append("crc32", this.crc32)  
                .append("size", this.size)  
                .toString();			
	}
	
	public boolean equals(Object object) {  
        if (!(object instanceof UpFile)) {  
            return false;  
        }  
        UpFile rhs = (UpFile) object;  
        return new EqualsBuilder().appendSuper(super.equals(object)).append(  
                this.content_type, rhs.content_type)  
                .append(this.size, rhs.size).append(this.path, rhs.path)  
                .append(this.crc32, rhs.crc32).append(this.name, rhs.name)  
                .isEquals();  
    }  
  
    /** 
     * @see java.lang.Object#hashCode() 
     */  
    public int hashCode() {  
        return new HashCodeBuilder(-404694209, 2059458549).appendSuper(  
                super.hashCode()).append(this.content_type).append(this.size)  
                .append(this.path).append(this.crc32).append(this.name)  
                .toHashCode();  
    }
}
