CREATE DATABASE Demo;
USE Demo;

show table status from Demo;




/* 'service_status':'PENDING'# INPROGRESS,DONE,CANCELED,RESTARTED

drop table tp_tutor_service_order;
drop table tp_tutor_service_list;
drop table tp_student_pending_request;
drop table tp_task_split_audit ;
*/



CREATE TABLE `tp_vlc_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_username` char(36) NOT NULL DEFAULT '',
  `start_ts` timestamp NULL DEFAULT NULL,
  `end_ts` timestamp NULL DEFAULT NULL,
  `status` char(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8mb4;


-- drop table tp_student_pending_request;
CREATE TABLE `tp_student_pending_request` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` char(36) NOT NULL DEFAULT '',
  `start_ts` timestamp NULL DEFAULT NULL,
  `end_ts` timestamp NULL DEFAULT NULL,
  `video_start_ts` timestamp NULL DEFAULT NULL,
  `video_end_ts` timestamp NULL DEFAULT NULL,
  `student_firstname` char(32) DEFAULT NULL,
  `username` char(32) DEFAULT NULL,
  `student_lastname` char(32) DEFAULT NULL,
  `current_grade` char(16) DEFAULT NULL,
  `school_grade` char(16) DEFAULT NULL,
  `current_grade_score` char(16) DEFAULT NULL,
  `student_program` int(11) DEFAULT NULL,
  `request_region` char(16) DEFAULT NULL,
  `status` char(16) DEFAULT NULL,
  `priority` char(16) DEFAULT NULL,
  `in_vlc` char(16) DEFAULT NULL,
  `grade_level` char(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8mb4;


-- drop table tp_tutor_service_list;
CREATE TABLE `tp_tutor_service_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tutor_id` char(36) NOT NULL DEFAULT '',

  `start_ts` timestamp NULL DEFAULT NULL,
  `end_ts` timestamp NULL DEFAULT NULL,


  `tutor_firstname` char(32) DEFAULT NULL,
  `tutor_lastname` char(32) DEFAULT NULL,
  `grade_level` char(20) DEFAULT NULL,
  `tutor_tag` char(20) DEFAULT NULL,
  `service_region` char(16) DEFAULT NULL,
  `learning_center_name` char(32) DEFAULT NULL,
  `student_count` int(11) unsigned DEFAULT 0,

  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8mb4;


-- drop table tp_tutor_service_order;
CREATE TABLE `tp_tutor_service_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tp_student_pending_request_id` int(11) unsigned NOT NULL,
  `vlc_link_key` char(32) DEFAULT NULL,
  `service_status` char(11) NOT NULL DEFAULT '',
  `tutor_id` char(36) NOT NULL DEFAULT '',
  `student_id` char(36) NOT NULL DEFAULT '',
  `start_ts` timestamp NULL DEFAULT NULL,
  `end_ts` timestamp NULL DEFAULT NULL,
  `student_firstname` char(32) DEFAULT NULL,
  `student_lastname` char(32) DEFAULT NULL,
  `student_username` char(32) DEFAULT NULL,
  `student_current_grade` char(16) DEFAULT NULL,
  `student_school_grade` char(16) DEFAULT NULL,
  `student_current_grade_score` char(16) DEFAULT NULL,
  `tutor_firstname` char(32) DEFAULT NULL,
  `tutor_lastname` char(32) DEFAULT NULL,
  `student_program` int(11) DEFAULT NULL,
  `tutor_tag` char(20) DEFAULT NULL,
  `schedule_ip` char(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8mb4;



CREATE TABLE `tp_task_split_audit` (
  `id` int(11) unsigned NOT NULL,/* request id*/
  `schedule_ip` char(32) NOT NULL DEFAULT '',
  `created_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ts` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;