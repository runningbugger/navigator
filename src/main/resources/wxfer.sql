create table sys_user
(
    id          varchar(36) charset utf8  not null comment '主键',
    user_name   varchar(100) charset utf8 null comment '登录账号',
    real_name   varchar(100) charset utf8 null comment '真实姓名',
    password    varchar(255) charset utf8 null comment '密码',
    salt        varchar(45) charset utf8  null comment 'md5密码盐',
    avatar      varchar(255) charset utf8 null comment '头像',
    birthday    datetime                  null comment '生日',
    sex         tinyint(1)                null comment '性别(0-默认未知,1-男,2-女)',
    email       varchar(45) charset utf8  null comment '电子邮件',
    phone       varchar(45) charset utf8  null comment '电话',
    org_code    varchar(64) charset utf8  null comment '机构编码',
    status      tinyint(1)                null comment '状态',
    del_flag    tinyint(1)                null comment '删除状态(0-正常,1-已删除)',
    telephone   varchar(45) charset utf8  null comment '座机号',
    create_by   varchar(32) charset utf8  null comment '创建人',
    create_time datetime                  null comment '创建时间',
    update_by   varchar(32) charset utf8  null comment '更新人',
    update_time datetime                  null comment '更新时间',
    constraint sys_user_id__uindex
        unique (id)
)
    comment '用户表' charset = utf8mb4;

alter table sys_user
    add primary key (id);

create table nav_web_main
(
    id          varchar(36)                             not null comment '主键'
        primary key,
    sys_user_id varchar(36)                             null comment '用户外键',
    name        varchar(120) collate utf8mb4_general_ci null comment '网站名称',
    url         varchar(255) collate utf8mb4_general_ci null comment '网站地址',
    icon        varchar(50) collate utf8mb4_general_ci  null comment '网站图标',
    status      tinyint                                 null comment '状态，0正常，1停用',
    sort        int                                     null comment '排序',
    create_by   varchar(32)                             null comment '创建人',
    create_time datetime                                null comment '创建时间',
    update_by   varchar(32)                             null comment '更新人',
    update_time datetime                                null comment '更新时间',
    constraint sys_user_id
        foreign key (sys_user_id) references sys_user (id)
)
    comment '网站列表' charset = utf8;

