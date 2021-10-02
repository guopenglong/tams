package com.gpl.tams.module.classroom.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.gpl.tams.module.classroom.model.dto.ClassroomPageQuery;
import com.gpl.tams.module.classroom.model.dto.ClassroomSaveDTO;
import com.gpl.tams.module.classroom.model.vo.ClassroomListVO;

import java.util.List;

public interface ClassroomService {

    IPage<ClassroomListVO> pageCourse(ClassroomPageQuery pageQuery);

    List<ClassroomListVO> refList();

    ClassroomListVO getCourseById(Long id);

    boolean saveCourse(ClassroomSaveDTO saveDTO);

    boolean updateCourseById(Long id, ClassroomSaveDTO saveDTO);

    boolean updateCourseEnableStateById(Long id, Integer enableState);
}
