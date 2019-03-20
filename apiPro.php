<?php
define('IN_API', true);
require_once './framework/bootstrap.inc.php';
load()->app('common');
load()->classs('wesession');
$hash = $_GPC['hash'];
if(!empty($hash)) {
	$id = pdo_fetchcolumn("SELECT acid FROM " . tablename('account') . " WHERE hash = :hash", array(':hash' => $hash));
}
if(!empty($_GPC['appid'])) {
	$appid = ltrim($_GPC['appid'], '/');
	if ($appid == 'wx570bc396a51b8ff8') {
		$_W['account'] = array(
			'type' => '3',
			'key' => 'wx570bc396a51b8ff8',
			'level' => 4,
			'token' => 'platformtestaccount'
		);
	} else {
		$id = pdo_fetchcolumn("SELECT acid FROM " . tablename('account_wechats') . " WHERE `key` = :appid", array(':appid' => $appid));
	}
}

if($_GPC['__input']['interId'] == 80002){
    setJson(0, 'success', []);
}

//活动列表
if($_GPC['__input']['method'] == 'h-hp'){
    $pindex = max(1, intval($_GPC['page']));
    $psize = 10;
    $activity_table = table('activity');
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
    $order = !empty($_W['id']) ?$_W['id'] : 'create_time';
    $activity_table->searchWithPage($pindex, $psize);
    $activitys = $activity_table->getLists($order);
    setJson(0, 'success', $activitys);
}

//活动详情
if($_GPC['__input']['method'] == 'a-get'){
    load()->model('activity');
    load()->model('activitydate');
    $id = intval($_GPC['__input']['id']);
    $activitys = activity_info($id);
    if(is_error($activitys)) {
        setJson(10001, 'error', '');
    }
    $activitysDate = activity_date_info($activitys['id']);
    foreach ($activitysDate as $k=>$v){
        if($v['type'] == 1){
            $data['yc'] = $v['date'];
        }else{
            $data['pl'] = $v['date'];
        }
    }
    $activitys['min_stature'] = intval($activitys['min_stature']);
    $activitys['max_stature'] = intval($activitys['max_stature']);
    $data['confirms'] = 0;
    $data['joinState'] = 0;
    $data['dances'] = array();//todo:关联工种 work
    $data['data'] = $activitys;

    setJson(0, 'success', $data);
}

//发布活动
if($_GPC['__input']['method'] == 'a-add'){
//act
//
//gender "1"
//latitude:23.08331
//longitude:113.3172
//mark:"24"
//minStature:160
//minWeight:45
//name:"412"
//platitude:23.08331
//plongitude:113.3172
//population:111
//raddr:"广东省广州市海珠区广州大道南999号"
//remark:"24"
//reward:21
//saddr:"广东省广州市海珠区同福东路640号"
//sex:1
//danceIds: ["5", "2"]
//pl:["2019-03-21", "2019-03-28"]
//yc: ["2019-03-27", "2019-03-22", "2019-03-29"]

}


//获取个人信息
if($_GPC['__input']['method'] == 'r-info'){
    setJson(0, 'success', []);
}

//工作种类
if($_GPC['__input']['method'] == 'a-dances'){
    $work_table = table('work');
    $createtime = intval($_GPC['createtime']);


    $order = !empty($_W['id']) ?$_W['id'] : 'sort_weight';
    $works = $work_table->getLists($order,'pid',0);
    foreach ($works as $k=>$v){
        $works[$k]['children'] = $work_table->getLists($order,'pid',$v['id']);
    }
    setJson(0, 'success', $works);
}

//城市
if($_GPC['__input']['method'] == 'p-cities'){
    $citys = array('广州市','深圳市');
    setJson(0, 'success', $citys);

}

if ($do == 'login') {

}

/**
 * API接口调用返回JSON格式内容
 * @param {Number} code
 * @param {String} message
 * @param {Objext} data
 */
function setJson($status=0, $message='', $data='') {
    $json = array(
         'status' => $status, 'message' => $message,'data'=>$data
    );
    exit( json_encode($json,true));
}
