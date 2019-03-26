<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */
defined('IN_IA') or exit('Access Denied');
print_r($W['m']);
print_r($do);
$dos = array('category_post', 'category', 'category_del', 'list', 'post', 'batch_post', 'del', 'displaysetting');
$do = in_array($do, $dos) ? $do : 'list';

if ($do == 'list') {
	$_W['page']['title'] = '所有用户-用户列表';

	$pindex = max(1, intval($_GPC['page']));
	$psize = 20;

	$activity_table = table('wechatuser');
	$createtime = intval($_GPC['createtime']);
	$title = safe_gpc_string($_GPC['title']);

	if (!empty($cateid)) {
        $activity_table->searchWithCateid($cateid);
	}

	if (!empty($createtime)) {
        $activity_table->searchWithCreatetimeRange($createtime);
	}

	if (!empty($title)) {
        $activity_table->searchWithTitle($title);
	}

	$order = !empty($_W['setting']['reg_time']) ? $_W['setting']['reg_time'] : 'id';

    $activity_table->searchWithPage($pindex, $psize);
	$activitys = $activity_table->getLists($order);
	$total = $activity_table->getLastQueryTotal();
	$pager = pagination($total, $pindex, $psize);

    include $this->template('web/user');
}

if ($do == 'post') {
    echo 11;die;
}