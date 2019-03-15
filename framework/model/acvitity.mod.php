<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */
defined('IN_IA') or exit('Access Denied');

function article_categorys($type = 'news') {
	$categorys = pdo_fetchall('SELECT * FROM ' . tablename('article_category') . ' WHERE type = :type ORDER BY displayorder DESC', array(':type' => $type), 'id');
	return $categorys;
}


function article_notice_info($id) {
	$id = intval($id);
	$news = pdo_fetch('SELECT * FROM ' . tablename('activity') . ' WHERE id = :id', array(':id' => $id));
	if(empty($news)) {
		return error(-1, '不存在或已经删除');
	}
	return $news;
}

function article_news_home($limit = 5) {
	$limit = intval($limit);
	$news = pdo_fetchall('SELECT * FROM ' . tablename('article_news') . ' WHERE is_display = 1 AND is_show_home = 1 ORDER BY displayorder DESC,id DESC LIMIT ' . $limit, array(), 'id');
	return $news;
}

function article_notice_home($limit = 5) {
	$limit = intval($limit);

	$notice = pdo_fetchall("SELECT * FROM " . tablename('article_notice') . " WHERE is_display = 1 AND is_show_home = 1 ORDER BY displayorder DESC,id DESC LIMIT " . $limit, array(), 'id');
	foreach ($notice as $key => $notice_val) {
		$notice[$key]['style'] = iunserializer($notice_val['style']);
	}
	return $notice;
}

function activity_all($filter = array(), $pindex = 1, $psize = 10) {
	global $_W;
	$condition = ' WHERE is_display = 1';
	$params = array();
	if(!empty($filter['name'])) {
		$condition .= ' AND name LIKE :name';
		$params[':name'] = "%{$filter['name']}%";
	}
	$order = !empty($_W['setting']['news_display']) ? $_W['setting']['news_display'] : 'create_time';
	$limit = ' LIMIT ' . ($pindex - 1) * $psize . ',' . $psize;
	$total = pdo_fetchcolumn('SELECT COUNT(*) FROM ' . tablename('activity') . $condition, $params);
    $activity = pdo_fetchall("SELECT * FROM " . tablename('activity') . $condition . " ORDER BY " . $order . " DESC " . $limit, $params, 'id');
	return array('total' => $total, 'activity' => $activity);
}


