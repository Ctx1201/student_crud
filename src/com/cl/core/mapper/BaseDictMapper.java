package com.cl.core.mapper;

import com.cl.core.bean.BaseDict;

import java.util.List;

/**
 * @author chen
 * @create 2020-06-20 9:38
 */
public interface BaseDictMapper {
    /**
     *  使用数据字典类别代码来查询数据字典
     * @param dictTypeCode
     * @return
     */
    public List<BaseDict> selectByDictId(String dictTypeCode);
}
