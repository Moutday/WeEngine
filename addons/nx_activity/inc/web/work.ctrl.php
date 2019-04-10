<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */
defined('IN_IA') or exit('Access Denied');
$do = $_GET['do'];
$dos = array( 'list', 'post', 'del', 'displaysetting');
$do = in_array($do, $dos) ? $do : 'list';

if ($do == 'list') {
	$_W['page']['title'] = '所有工作-工作列表';

	$pindex = max(1, intval($_GPC['page']));
	$activity_table = table('work');
	$createtime = intval($_GPC['createtime']);
	$title = safe_gpc_string($_GPC['title']);

	if (!empty($createtime)) {
        $activity_table->searchWithCreatetimeRange($createtime);
	}

	if (!empty($title)) {
        $activity_table->searchWithTitle($title);
	}

	$order = !empty($_W['setting']['reg_time']) ? $_W['setting']['reg_time'] : 'id';

    $activity_table->searchWithPage($pindex, $psize);
	$activitys = $activity_table->getLists($order);
	//print_r($activitys);die;
	$total = $activity_table->getLastQueryTotal();
	$pager = pagination($total, $pindex, $psize);

    include $this->template('web/work');
}

if ($do == 'post') {
    print_r($_GPC);die;
    $_W['page']['title'] = '新增工作-工作列表';
    $id = intval($_GPC['id']);
    $new = table('articlenews')->searchWithId($id)->get();
    if (empty($new)) {
        $new = array(
            'is_display' => 1,
            'is_show_home' => 1,
        );
    }
    if (checksubmit()) {
        $title = trim($_GPC['title']) ? trim($_GPC['title']) : itoast('新闻标题不能为空', '', 'error');
        $cateid = intval($_GPC['cateid']) ? intval($_GPC['cateid']) : itoast('新闻分类不能为空', '', 'error');
        $content = trim($_GPC['content']) ? trim($_GPC['content']) : itoast('新闻内容不能为空', '', 'error');
        $data = array(
            'title' => $title,
            'cateid' => $cateid,
            'content' => safe_gpc_html(htmlspecialchars_decode($content)),
            'source' => safe_gpc_string($_GPC['source']),
            'author' => safe_gpc_string($_GPC['author']),
            'displayorder' => intval($_GPC['displayorder']),
            'click' => intval($_GPC['click']),
            'is_display' => intval($_GPC['is_display']),
            'is_show_home' => intval($_GPC['is_show_home']),
            'createtime' => TIMESTAMP,
        );


        if (!empty($new['id'])) {
            pdo_update('article_news', $data, array('id' => $id));
        } else {
            pdo_insert('article_news', $data);
        }
        itoast('编辑文章成功', url('article/news/list'), 'success');
    }
    include $this->template('web/work-post');
}


if ($do == 'del') {
    $id = intval($_GPC['id']);
    pdo_delete('article_news', array('id' => $id));
    itoast('删除文章成功', referer(), 'success');
}

if ($do == 'displaysetting') {
    $setting = safe_gpc_string($_GPC['setting']);
    $data = $setting == 'createtime' ? 'createtime' : 'displayorder';
    setting_save($data, 'news_display');
    itoast('更改成功！', referer(), 'success');
}
