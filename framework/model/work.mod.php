<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */
defined('IN_IA') or exit('Access Denied');

function work_info($id) {
	$id = intval($id);
	$works = pdo_fetch('SELECT * FROM ' . tablename('work') . ' WHERE id = :id', array(':id' => $id));
	if(empty($works)) {
		return error(-1, '不存在或已经删除');
	}
	return $works;
}

