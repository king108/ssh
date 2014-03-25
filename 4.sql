--添加分行
--参数  id,分行组编号，分行组名称，版本号，最后修改人，最后修改时间
INSERT INTO BRANCH_GROUP_HEADER
    (Id, BRANCH_GROUP_CODE, BRANCH_GROUP_DESCRIPTION, Version, LAST_UPDATE_USER_ID, LAST_UPDATE_DATETIME)
VALUES
    ('3', 'SZPLGRP001', '深圳微贷总区', 1, 1, SYSDATE);


--添加分行明细，一个分行组，对应多个分行
--参数  id,分行组ID，分行组编码，分行ID，版本号，最后修改人，最后修改时间
INSERT INTO BRANCH_GROUP_DETAIL
    (Id, BRANCH_GROUP_ID, BRANCH_GROUP_CODE, BRANCH_ID, BRANCH_CODE, Version, LAST_UPDATE_USER_ID, LAST_UPDATE_DATETIME)
VALUES
    ('4', '3', 'SZPLGRP001', '110', '110',1, 1,SYSDATE);

--添加 一个用户对应一个分行组
--参数  id,用户ID，分行组ID，分行编码，版本号，最后修改人，最后修改时间
INSERT INTO BRANCH_USER_ASSIGNMENT
    (Id, USER_ID, Branch_Group_Id, Branch_Group_Code, Version, Last_Update_User_Id, Last_Update_Datetime)
VALUES
    (3, 1, 3, 'SZPLBRN100', 1, 1, SYSDATE);