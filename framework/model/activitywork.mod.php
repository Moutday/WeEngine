<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */
defined('IN_IA') or exit('Access Denied');

function activity_work_info($aid) {
    $aid = intval($aid);
    $act_work_info = pdo_fetchall('SELECT * FROM ' . tablename('activity_work_rel') . ' WHERE activity_id = :id', array(':id' => $aid));
    if(empty($act_work_info)) {
        return error(-1, '不存在或已经删除');
    }
    return $act_work_info;
}

