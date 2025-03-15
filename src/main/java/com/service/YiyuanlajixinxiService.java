package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YiyuanlajixinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YiyuanlajixinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YiyuanlajixinxiView;


/**
 * 医院垃圾信息
 *
 * @author 
 * @email 
 * @date 2021-03-16 11:49:58
 */
public interface YiyuanlajixinxiService extends IService<YiyuanlajixinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YiyuanlajixinxiVO> selectListVO(Wrapper<YiyuanlajixinxiEntity> wrapper);
   	
   	YiyuanlajixinxiVO selectVO(@Param("ew") Wrapper<YiyuanlajixinxiEntity> wrapper);
   	
   	List<YiyuanlajixinxiView> selectListView(Wrapper<YiyuanlajixinxiEntity> wrapper);
   	
   	YiyuanlajixinxiView selectView(@Param("ew") Wrapper<YiyuanlajixinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YiyuanlajixinxiEntity> wrapper);
   	
}

