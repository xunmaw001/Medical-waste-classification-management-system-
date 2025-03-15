package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YiyuanlajifenleiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YiyuanlajifenleiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YiyuanlajifenleiView;


/**
 * 医院垃圾分类
 *
 * @author 
 * @email 
 * @date 2021-03-16 11:49:58
 */
public interface YiyuanlajifenleiService extends IService<YiyuanlajifenleiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YiyuanlajifenleiVO> selectListVO(Wrapper<YiyuanlajifenleiEntity> wrapper);
   	
   	YiyuanlajifenleiVO selectVO(@Param("ew") Wrapper<YiyuanlajifenleiEntity> wrapper);
   	
   	List<YiyuanlajifenleiView> selectListView(Wrapper<YiyuanlajifenleiEntity> wrapper);
   	
   	YiyuanlajifenleiView selectView(@Param("ew") Wrapper<YiyuanlajifenleiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YiyuanlajifenleiEntity> wrapper);
   	
}

