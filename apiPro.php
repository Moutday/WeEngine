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

//danceIds: ["5", "2"]
//pl:["2019-03-21", "2019-03-28"]
//yc: ["2019-03-27", "2019-03-22", "2019-03-29"]
    $postData = $_GPC['__input'];
    $id = intval($postData['id']);
    $activitys = table('activity')->searchWithId($id)->get();
    $reward = intval($postData['act']['reward']) ? intval($postData['act']['reward']) :     setJson(1011, '请输入酬劳', []);
    $population = intval($postData['act']['population']) ? intval($postData['act']['population']) :     setJson(1011, '请输入人数', []);
    $minStature = intval($postData['act']['minStature']) ? intval($postData['act']['minStature']) :     setJson(1011, '请输入身高', []);
    $minWeight = intval($postData['act']['minWeight']) ? intval($postData['act']['minWeight']) :     setJson(1011, '请输入体重', []);
    $gender = intval($postData['act']['gender']) ? intval($postData['act']['gender']) :     setJson(1011, '请选择性别', []);
    $name = trim($postData['act']['name']) ? trim($postData['act']['name']) :  setJson(1011, '请输入活动名称', []);
    $remark = trim($postData['act']['remark']) ? trim($postData['act']['remark']) :  setJson(1011, '请输入活动内容', []);
    $rehearsal_detail_address = trim($postData['act']['raddr']) ? trim($postData['act']['raddr']) :  setJson(1011, '请输入活动排练地址', []);
    $show_detail_address = trim($postData['act']['saddr']) ? trim($postData['act']['saddr']) :  setJson(1011, '请输入活动演出地址', []);
    $data = array(
        'user_id' => 111111111,
        'rehearsal_detail_address' => $rehearsal_detail_address,
        'show_detail_address' => $show_detail_address,
        'minStature' => $minStature,
        'minWeight' => $minWeight,
        'reward' => $reward,
        'state' => 1,
        'remark' => $remark,
        'gender' => $gender,
        'population' => $population,
        'latitude' => $postData['act']['latitude'],
        'longitude' => $postData['act']['longitude'],
        'platitude' => $postData['act']['platitude'],
        'plongitude' => $postData['act']['plongitude'],
        'mark' => safe_gpc_html(htmlspecialchars_decode($postData['act']['mark'])),
    );

    if (!empty($activitys['id'])) {
        pdo_update('activity', $data, array('id' => $id));
    } else {
        try{
            pdo_begin();
            pdo_insert('activity', $data);
            $actId = pdo_insertid();
            $actDate[0]['date'] = array_shift($postData['pl']) ?  array_shift($postData['pl']) : '';
            $actDate[0]['type'] = 2;
            $actDate[0]['activity_id'] = $actId;
            $actDate[1]['date'] = end($postData['pl']) ?  end($postData['pl']) : '';
            $actDate[1]['type'] = 2;
            $actDate[1]['activity_id'] = $actId;
            $actDate[2]['activity_id'] = $actId;
            $actDate[2]['date'] = array_shift($postData['yc']) ?  array_shift($postData['yc']) : '';
            $actDate[2]['type'] = 1;
            $actDate[3]['activity_id'] = $actId;
            $actDate[3]['date'] = end($postData['yc']) ?  end($postData['yc']) : '';
            $actDate[3]['type'] = 1;

            foreach ($postData['danceIds'] as $k=>$v){
                $actWork[$k]['activity_id'] = $actId;
                $actWork[$k]['dance_id'] = $v['danceIds'];
            }
            pdo_insert('activity_date_rel', $data);
            pdo_insert('activity_work_rel', $actWork);
            pdo_commit();
        }catch (\Exception $e){
            pdo_rollback();
        }

    }



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
