package com.dao;

import com.entity.YiyuanlajifenleiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YiyuanlajifenleiVO;
import com.entity.view.YiyuanlajifenleiView;


/**
 * 医院垃圾分类
 * 
 * @author 
 * @email 
 * @date 2021-03-16 11:49:58
 */
public interface YiyuanlajifenleiDao extends BaseMapper<YiyuanlajifenleiEntity> {
	
	List<YiyuanlajifenleiVO> selectListVO(@Param("ew") Wrapper<YiyuanlajifenleiEntity> wrapper);
	
	YiyuanlajifenleiVO selectVO(@Param("ew") Wrapper<YiyuanlajifenleiEntity> wrapper);
	
	List<YiyuanlajifenleiView> selectListView(@Param("ew") Wrapper<YiyuanlajifenleiEntity> wrapper);

	List<YiyuanlajifenleiView> selectListView(Pagination page,@Param("ew") Wrapper<YiyuanlajifenleiEntity> wrapper);
	
	YiyuanlajifenleiView selectView(@Param("ew") Wrapper<YiyuanlajifenleiEntity> wrapper);
	
}
