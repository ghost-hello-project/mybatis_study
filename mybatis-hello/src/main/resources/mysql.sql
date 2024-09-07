CREATE TABLE `sys_dict_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL COMMENT '字典类型编码',
  `group_code` varchar(100) DEFAULT NULL COMMENT '字典分组 (system: 系统字典)',
  `label` varchar(100) DEFAULT NULL COMMENT '字典标签',
  `value` varchar(100) DEFAULT NULL COMMENT '字典键值',
  `default_value` char(1) DEFAULT NULL COMMENT '是否默认值 (Y:是 N:否)',
  `status` char(1) DEFAULT NULL COMMENT '状态 (0:正常 1:停用)',
  `create_by` varchar(150) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(150) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='系统字典值表';

INSERT INTO sys_dict_type (id, name, `type`, group_code, status, create_by, create_time, update_by, update_time, remark) VALUES(1, '用户性别', 'gender', 'system', '0', 'superAdmin', '2023-12-19 02:47:48', 'superAdmin', '2023-12-19 02:47:48', NULL);
INSERT INTO sys_dict_type (id, name, `type`, group_code, status, create_by, create_time, update_by, update_time, remark) VALUES(2, '模块', 'module', 'system', '0', 'superAdmin', '2023-12-19 02:47:48', 'superAdmin', '2023-12-19 02:47:48', NULL);

CREATE TABLE `sys_dict_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '字典名称',
  `type` varchar(100) DEFAULT NULL COMMENT '字典类型编码',
  `group_code` varchar(100) DEFAULT NULL COMMENT '字典分组 (system: 系统字典)',
  `status` char(1) DEFAULT NULL COMMENT '状态 (0:正常 1:停用)',
  `create_by` varchar(150) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(150) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统字典类型表';


INSERT INTO sys_dict_data (id, `type`, group_code, label, value, default_value, status, create_by, create_time, update_by, update_time, remark) VALUES(1, 'gender', 'system', '男', '0', 'Y', '0', 'superAdmin', '2023-12-19 02:51:34', 'superAdmin', '2023-12-19 02:51:34', NULL);
INSERT INTO sys_dict_data (id, `type`, group_code, label, value, default_value, status, create_by, create_time, update_by, update_time, remark) VALUES(2, 'gender', 'system', '女', '1', 'N', '0', 'superAdmin', '2023-12-19 02:51:34', 'superAdmin', '2023-12-19 02:51:34', NULL);
INSERT INTO sys_dict_data (id, `type`, group_code, label, value, default_value, status, create_by, create_time, update_by, update_time, remark) VALUES(3, 'module', 'system', '系统', 'system', 'N', '0', 'superAdmin', '2023-12-19 02:51:34', 'superAdmin', '2023-12-19 02:51:34', NULL);
INSERT INTO sys_dict_data (id, `type`, group_code, label, value, default_value, status, create_by, create_time, update_by, update_time, remark) VALUES(4, 'module', 'system', '授权与认证', 'auth', 'N', '0', 'superAdmin', '2023-12-19 02:51:34', 'superAdmin', '2023-12-19 02:51:34', NULL);
INSERT INTO sys_dict_data (id, `type`, group_code, label, value, default_value, status, create_by, create_time, update_by, update_time, remark) VALUES(5, 'module', 'system', '授权与认证', 'order', 'N', '0', 'superAdmin', '2023-12-19 02:51:34', 'superAdmin', '2023-12-19 02:51:34', NULL);
INSERT INTO sys_dict_data (id, `type`, group_code, label, value, default_value, status, create_by, create_time, update_by, update_time, remark) VALUES(6, 'module', 'system', '会员', 'member', 'N', '0', 'superAdmin', '2023-12-19 02:51:34', 'superAdmin', '2023-12-19 02:51:34', NULL);
INSERT INTO sys_dict_data (id, `type`, group_code, label, value, default_value, status, create_by, create_time, update_by, update_time, remark) VALUES(7, 'module', 'system', '支付', 'pay', 'N', '0', 'superAdmin', '2023-12-19 02:51:34', 'superAdmin', '2023-12-19 02:51:34', NULL);
INSERT INTO sys_dict_data (id, `type`, group_code, label, value, default_value, status, create_by, create_time, update_by, update_time, remark) VALUES(8, 'module', 'system', '库存', 'stock', 'N', '0', 'superAdmin', '2023-12-19 02:51:34', 'superAdmin', '2023-12-19 02:51:34', NULL);
INSERT INTO sys_dict_data (id, `type`, group_code, label, value, default_value, status, create_by, create_time, update_by, update_time, remark) VALUES(9, 'module', 'system', '购物车', 'cart', 'N', '0', 'superAdmin', '2023-12-19 02:51:34', 'superAdmin', '2023-12-19 02:51:34', NULL);
INSERT INTO sys_dict_data (id, `type`, group_code, label, value, default_value, status, create_by, create_time, update_by, update_time, remark) VALUES(10, 'module', 'system', '内容管理', 'cms', 'N', '0', 'superAdmin', '2023-12-19 02:51:34', 'superAdmin', '2023-12-19 02:51:34', NULL);
INSERT INTO sys_dict_data (id, `type`, group_code, label, value, default_value, status, create_by, create_time, update_by, update_time, remark) VALUES(11, 'module', 'system', '报表', 'report', 'N', '0', 'superAdmin', '2023-12-19 02:51:34', 'superAdmin', '2023-12-19 02:51:34', NULL);
INSERT INTO sys_dict_data (id, `type`, group_code, label, value, default_value, status, create_by, create_time, update_by, update_time, remark) VALUES(12, 'module', 'system', '促销', 'promotion', 'N', '0', 'superAdmin', '2023-12-19 02:51:34', 'superAdmin', '2023-12-19 02:51:34', NULL);
INSERT INTO sys_dict_data (id, `type`, group_code, label, value, default_value, status, create_by, create_time, update_by, update_time, remark) VALUES(13, 'module', 'system', '商家', 'seller', 'N', '0', 'superAdmin', '2023-12-19 02:51:34', 'superAdmin', '2023-12-19 02:51:34', NULL);
INSERT INTO sys_dict_data (id, `type`, group_code, label, value, default_value, status, create_by, create_time, update_by, update_time, remark) VALUES(14, 'module', 'system', '搜索', 'search', 'N', '0', 'superAdmin', '2023-12-19 02:51:34', 'superAdmin', '2023-12-19 02:51:34', NULL);



