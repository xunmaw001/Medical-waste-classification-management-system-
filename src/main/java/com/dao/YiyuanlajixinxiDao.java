package com.dao;

import com.entity.YiyuanlajixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YiyuanlajixinxiVO;
import com.entity.view.YiyuanlajixinxiView;


/**
 * 医院垃圾信息
 * 
 * @author 
 * @email 
 * @date 2021-03-16 11:49:58
 */
public interface YiyuanlajixinxiDao extends BaseMapper<YiyuanlajixinxiEntity> {
	
	List<YiyuanlajixinxiVO> selectListVO(@Param("ew") Wrapper<YiyuanlajixinxiEntity> wrapper);
	
	YiyuanlajixinxiVO selectVO(@Param("ew") Wrapper<YiyuanlajixinxiEntity> wrapper);
	
	List<YiyuanlajixinxiView> selectListView(@Param("ew") Wrapper<YiyuanlajixinxiEntity> wrapper);

	List<YiyuanlajixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<YiyuanlajixinxiEntity> wrapper);
	
	YiyuanlajixinxiView selectView(@Param("ew") Wrapper<YiyuanlajixinxiEntity> wrapper);
	
}
