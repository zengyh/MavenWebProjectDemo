CREATE OR REPLACE TRIGGER TR_U_T_STUDY_VIDEO    
before update ON t_study_viedo
FOR EACH ROW
BEGIN
 
 :new.update_date := sysdate;
 if updating('VIDEO_CONTENT') then
    raise_application_error(-20000,'不能更新T_STUDY_VIEDO.VIDEO_CONTENT字段');
 end if;
 if updating('VIDEO_FILE_TYPE') then
    raise_application_error(-20000,'不能更新T_STUDY_VIEDO.VIDEO_FILE_TYPE字段');
 end if;
 if updating('CREATE_BY') then
    raise_application_error(-20000,'不能更新T_STUDY_VIEDO.CREATE_BY字段');
 end if;
 if updating('CREATE_DATE') then
     raise_application_error(-20000,'不能更新T_STUDY_VIEDO.CREATE_DATE字段');
 end if;
 if updating('ID') then
    raise_application_error(-20000,'不能更新T_STUDY_VIEDO.ID字段');
 end if;
END;
