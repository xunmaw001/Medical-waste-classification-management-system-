package com.entity.view;

import com.entity.YiyuanlajifenleiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 医院垃圾分类
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-16 11:49:58
 */
@TableName("yiyuanlajifenlei")
public class YiyuanlajifenleiView  extends YiyuanlajifenleiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YiyuanlajifenleiView(){
	}
 
 	public YiyuanlajifenleiView(YiyuanlajifenleiEntity yiyuanlajifenleiEntity){
 	try {
			BeanUtils.copyProperties(this, yiyuanlajifenleiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
