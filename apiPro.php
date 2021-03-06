<?php
define('IN_API', true);
require_once './framework/bootstrap.inc.php';
load()->app('common');
load()->classs('wesession');
$hash = $_GPC['hash'];
$url_arr = explode('/', $_SERVER['HTTP_REFERER']);
if($url_arr[3] != 'wxa5a1cce830046e02'){
    setJson(1001, 'fail', []);
}
$appid = 'wxa5a1cce830046e02';
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

//获取个人信息
if($_GPC['__input']['method'] == 'r-info'){
    $post_data = $_GPC['__input']['params'];
    $resume = pdo_get('user_resume',array('user_id' => $post_data['uid']));
    $data['dances'] = [];
    $data['mocs'] = [];
    $data['pros'] = [];
    $data['userInfo'] = $resume;
    setJson(0, 'success', $data);
}

//参加活动
if($_GPC['__input']['method'] == "m-apply-act"){
    $post_data = $_GPC['__input'];

    $resume = pdo_get('user_resume',array('user_id' => $post_data['uid']));
    if(!$resume){
        setJson(1001,'错误','');
    }
    $activity = pdo_get('activity',array('id' => $post_data['id']));
    if(!$activity){
        setJson(1001,'错误','');
    }
    $ua = pdo_get('user_activity_rel',array('user_id' => $post_data['uid'],'activity_id' => $post_data['id']));
    if($ua){
        setJson(1001,'已参加过活动','');
    }
    $data['activity_id'] = $post_data['id'];
    $data['activity_name'] = $activity['name'];
    $data['user_id'] = $post_data['uid'];
    $data['resume_id'] = $resume['id'];
    $data['real_name'] = $resume['real_name'];
    $data['state'] = 1;
    $data['create_time'] = date("Y-m-d H:i:s",time());
    pdo_insert('user_activity_rel', $data);
    $arId = pdo_insertid();
    if(!$arId){
        setJson(1001,'参加错误','');
    }
    setJson(00, 'success', $arId);
}


//修改个人信息 ？？
if($_GPC['__input']['interId'] == 80003){

    $post_data = $_GPC['__input']['params'];
    $user_info['app_id'] = $appid;
    $user_info['nick_name'] = $post_data['nickname'];
    $user_info['gender'] = intval($post_data['gender']);
    $user_info['headimgurl'] = $post_data['avatarUrl'];
    $user_info['reg_time'] = date("Y-m-d H:i:s",time());
    pdo_insert('user_info', $user_info);
    $uid['uid'] = pdo_insertid();
    setJson(0, 'success', $uid);
}

/*
* 从小程序登录与注册，获取用户openid和信息
* $code = '003eJ5IZ1rE6lX0RioJZ1xPcIZ1eJ5IB'; jscode
* $iv = 'xXlcTnILAjHeNdUFfNrRSg==';
* $encrypt_data 加密用户信息,含有openid
*/
if($_GPC['__input']['interId'] == 80002){
    $secret = '046b7fef5e1a6ae799cf95d539f20c06';
    $appid = 'wxa5a1cce830046e02';
    load()->func('communication');
    $post_data = $_GPC['__input']['params'];

    $code = $post_data['code'];
    $iv = $post_data ['iv'];
    $encrypt_data = $post_data ['encryptedData'];
    $url = 'https://api.weixin.qq.com/sns/jscode2session?appid=' .$appid  . '&secret=' .$secret . '&js_code=' . $code . '&grant_type=authorization_code';
        //{"session_key":"Ks3xrtbke6McnCwPm6467w==","expires_in":7200,"openid":"odM_50LGZKsWqE7xh61UjvU-dHOE"}
    $wxInfo = ihttp_get($url);
    $return_message = json_decode($wxInfo['content'],true);
    if(empty($return_message['session_key'])) {
        setJson(1001,'用户不存在','');
    }
    $user = pdo_fetch("SELECT id,nick_name as nickname,headimgurl as avatarUrl,gender  FROM ".tablename('user_info')." WHERE open_id = :open_id", array(':open_id' => $return_message['openid']));
    if(!$user){
        $user_info['app_id'] = $appid;
        $user_info['nick_name'] = $post_data['nickname'];
        $user_info['open_id'] = $return_message['openid'];
        $user_info['gender'] = intval($post_data['gender']);
        $user_info['headimgurl'] = $post_data['avatarUrl'];
        $user_info['reg_time'] = date("Y-m-d H:i:s",time());
        pdo_insert('user_info', $user_info);
        $uid = pdo_insertid();
        $user = pdo_fetch("SELECT id,nick_name as nickname,headimgurl as avatarUrl,gender  FROM ".tablename('user_info')." WHERE id = :id", array(':id' => $uid));
    }
    
    $data['userInfo'] = $user;
    $data['message'] = 'success';
    $data['status'] = 0;
    exit( json_encode($data,true));
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
    $postData = $_GPC['__input']['params'];
    if(!intval($postData['uid'])){
         setJson(1001, '参数错误', []);
    }
    $id = intval($postData['id']);
    $activitys = table('activity')->searchWithId($id)->get();
    $reward = intval($postData['act']['reward']) ? intval($postData['act']['reward']) :     setJson(1011, '请输入酬劳', []);
    $population = intval($postData['act']['population']) ? intval($postData['act']['population']) :     setJson(1011, '请输入人数', []);
    $minStature = intval($postData['act']['minStature']) ? intval($postData['act']['minStature']) :     setJson(1011, '请输入身高', []);
    $minWeight = intval($postData['act']['minWeight']) ? intval($postData['act']['minWeight']) :     setJson(1011, '请输入体重', []);
    $gender = intval($postData['act']['gender']) ? intval($postData['act']['gender']) : 0;
    $name = trim($postData['act']['name']) ? trim($postData['act']['name']) :  setJson(1011, '请输入活动名称', []);
    $remark = trim($postData['act']['remark']) ? trim($postData['act']['remark']) :  setJson(1011, '请输入活动内容', []);
    $rehearsal_detail_address = trim($postData['act']['raddr']) ? trim($postData['act']['raddr']) :  setJson(1011, '请输入活动排练地址', []);
    $show_detail_address = trim($postData['act']['saddr']) ? trim($postData['act']['saddr']) :  setJson(1011, '请输入活动演出地址', []);
    $data = array(
        'name' => $name,
        'user_id' => intval($postData['uid']),
        'rehearsal_detail_address' => $rehearsal_detail_address,
        'show_detail_address' => $show_detail_address,
        'min_stature' => $minStature,
        'max_stature' => intval($postData['act']['maxStature']),
        'max_stature' => intval($postData['act']['maxWeight']),
        'min_weight' => $minWeight,
        'reward' => $reward,
        'state' => 1,
        'remark' => $remark,
        'gender' => $gender,
        'population' => $population,
        'latitude' => sprintf("%.2f",$postData['act']['latitude']),
        'longitude' => sprintf("%.2f",$postData['act']['longitude']),
        'platitude' => sprintf("%.2f",$postData['act']['platitude']),
        'plongitude' => sprintf("%.2f",$postData['act']['plongitude']),
        'mark' => safe_gpc_html(htmlspecialchars_decode($postData['act']['mark'])),
    );
    if (!empty($activitys['id'])) {
        $data['last_update_time'] = date('Y-m-d H:i:s',time());
        pdo_update('activity', $data, array('id' => $id));
    } else {
        try{
            $data['create_time'] = date('Y-m-d H:i:s',time());
            pdo_begin();
            pdo_insert('activity', $data);
            $actId = pdo_insertid();
            $actDate['date'] = array_shift($postData['pl']) ?  array_shift($postData['pl']) : '';
            $actDate['type'] = 2;
            $actDate['activity_id'] = $actId;
            pdo_insert('activity_date_rel', $actDate);

            // $actDate['date'] = end($postData['pl']) ?  end($postData['pl']) : '';
            // $actDate['type'] = 2;
            // $actDate['activity_id'] = $actId;
            // pdo_insert('activity_date_rel', $actDate);

            $actDate['activity_id'] = $actId;
            $actDate['date'] = array_shift($postData['yc']) ?  array_shift($postData['yc']) : '';
            $actDate['type'] = 1;
            pdo_insert('activity_date_rel', $actDate);

            // $actDate['activity_id'] = $actId;
            // $actDate['date'] = end($postData['yc']) ?  end($postData['yc']) : '';
            // $actDate['type'] = 1;
            // pdo_insert('activity_date_rel', $actDate);

            foreach ($postData['danceIds'] as $k=>$v){
                $actWork['activity_id'] = $actId;
                $actWork['dance_id'] = $v;
                pdo_insert('activity_work_rel', $actWork);
            }
            pdo_commit();
            setJson(0, 'success', $works);
        }catch (\Exception $e){
            pdo_rollback();
            setJson(1001, '发布错误', []);
        }
    }
}


//修改个人信息
if($_GPC['__input']['method'] == 'r-modify'){
    $postData = $_GPC['__input']['params'];
    $uid = intval($postData['uid']) ? intval($postData['uid']):     setJson(1011, '用户id错误', []);
    $data = array(
        'birthday' => $postData['birthday'],
        'bust' => $postData['bust'],
        'city' => $postData['city'],
        'country' => $postData['country'],
        'county' => $postData['county'],
        'dance_age' => $postData['dance_age'],
        'gender' => $postData['gender'],
        'hip' => $postData['hip'],
        'province' => $postData['province'],
        'stature' => $postData['stature'],
        'real_name' => $postData['username'],
        'waist' => $postData['waist'],
        'weight' => $postData['weight'],
        'create_time' => date('Y-m-d H:i:s',time())
    );
    try{
        pdo_begin();
        $resume = pdo_get('user_resume',array('user_id' => $uid));
        if(!$resume){
            $data['user_id'] = $uid;
            pdo_insert('user_resume', $data);
            $resume_id = pdo_insertid();
        }else{
            pdo_update('user_resume', $data, array('user_id' => $uid));
        }
        $rid = $resume ? $resume['id'] : $resume_id;
        pdo_delete('resume_work_rel',array('resume_id' => $rid));
        foreach ($postData['danceIds'] as $k=>$v){
            $work['resume_id'] = $rid;
            $work['dance_id'] = $v;
            pdo_insert('resume_work_rel', $work);
        }
        pdo_commit();
        setJson(0, 'success', []);
    }catch (\Exception $e){
        pdo_rollback();
        setJson(1001, '修改错误', []);
    }

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
         'status' => $status, 'resultMsg' => $message,'data'=>$data
    );
    exit( json_encode($json,true));
}
