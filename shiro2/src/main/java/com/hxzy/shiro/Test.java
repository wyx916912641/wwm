package com.hxzy.shiro;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

public class Test {
	public static void main(String[] args) {
	
		ByteSource b = new Md5Hash("gz");
		SimpleHash hash = new SimpleHash("md5", "123", b, 2);
		System.out.println(hash);

	}
}
