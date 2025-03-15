package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.YiyuanlajifenleiDao;
import com.entity.YiyuanlajifenleiEntity;
import com.service.YiyuanlajifenleiService;
import com.entity.vo.YiyuanlajifenleiVO;
import com.entity.view.YiyuanlajifenleiView;

@Service("yiyuanlajifenleiService")
public class YiyuanlajifenleiServiceImpl extends ServiceImpl<YiyuanlajifenleiDao, YiyuanlajifenleiEntity> implements YiyuanlajifenleiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YiyuanlajifenleiEntity> page = this.selectPage(
                new Query<YiyuanlajifenleiEntity>(params).getPage(),
                new EntityWrapper<YiyuanlajifenleiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YiyuanlajifenleiEntity> wrapper) {
		  Page<YiyuanlajifenleiView> page =new Query<YiyuanlajifenleiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YiyuanlajifenleiVO> selectListVO(Wrapper<YiyuanlajifenleiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YiyuanlajifenleiVO selectVO(Wrapper<YiyuanlajifenleiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YiyuanlajifenleiView> selectListView(Wrapper<YiyuanlajifenleiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YiyuanlajifenleiView selectView(Wrapper<YiyuanlajifenleiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
