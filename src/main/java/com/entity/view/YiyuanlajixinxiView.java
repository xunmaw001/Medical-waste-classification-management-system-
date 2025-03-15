package com.entity.view;

import com.entity.YiyuanlajixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 医院垃圾信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-16 11:49:58
 */
@TableName("yiyuanlajixinxi")
public class YiyuanlajixinxiView  extends YiyuanlajixinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YiyuanlajixinxiView(){
	}
 
 	public YiyuanlajixinxiView(YiyuanlajixinxiEntity yiyuanlajixinxiEntity){
 	try {
			BeanUtils.copyProperties(this, yiyuanlajixinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
