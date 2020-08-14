package com.cl.core.service;

import com.cl.core.bean.BaseDict;

import java.util.List;

/**
 * @author chen
 * @create 2020-06-20 10:36
 */
public interface BaseDictService {

    /**
     *  使用数据字典类别代码来查询数据字典
     * @param dictTypeCode
     * @return
     */
    public List<BaseDict> selectByDictId(String dictTypeCode);
}
