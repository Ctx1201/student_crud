package com.cl.core.service.Impl;

import com.cl.core.bean.BaseDict;
import com.cl.core.mapper.BaseDictMapper;
import com.cl.core.service.BaseDictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author chen
 * @create 2020-06-20 10:36
 */
@Service
public class BaseDictServiceImpl implements BaseDictService {

    @Autowired
    private BaseDictMapper baseDictMapper;

    public List<BaseDict> selectByDictId(String dictTypeCode){
        return  baseDictMapper.selectByDictId(dictTypeCode);
    }

}
