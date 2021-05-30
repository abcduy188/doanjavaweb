package vn.name.dcd.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Component;

@Component
public class CommonConstant {

	//public  final String root = "/template/assets/img";
	public final static String root = "D:/usr/var";
	
	public void writeOrUpdate(byte[] bytes, String path) {
		 File file = new File(StringUtils.substringBeforeLast(root + path, "/"));
	        if (!file.exists()) {
	            file.mkdir();
	        }
	        try(FileOutputStream fileOutputStream = new FileOutputStream(new File(root + path))) {
	            fileOutputStream.write(bytes);
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	}
}
