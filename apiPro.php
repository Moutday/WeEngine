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

//获取个人信息
if($_GPC['__input']['method'] == 'r-info'){
    setJson(0, 'success', []);
}

/*
* 从小程序登录与注册，获取用户openid和信息
* $code = '003eJ5IZ1rE6lX0RioJZ1xPcIZ1eJ5IB'; jscode
* $iv = 'xXlcTnILAjHeNdUFfNrRSg==';
* $encrypt_data 加密用户信息,含有openid
*/
if($_GPC['__input']['method'] == 'r-info'){
    $secret = '046b7fef5e1a6ae799cf95d539f20c06';
    $appid = '';
    load()->func('communication');

    $post_data = json_decode($GLOBALS['HTTP_RAW_POST_DATA'],true);
        if(empty($post_data)) {
            setJson(1001,'参数错误','');
        }
        $code = $post_data['code'];
        $iv = $post_data ['iv'];
        $encrypt_data = $post_data ['encryptedData'];
        $url = 'https://api.weixin.qq.com/sns/jscode2session?appid=' .$appid  . '&secret=' .$secret . '&js_code=' . $code . '&grant_type=authorization_code';
        //{"session_key":"Ks3xrtbke6McnCwPm6467w==","expires_in":7200,"openid":"odM_50LGZKsWqE7xh61UjvU-dHOE"}
        //print_r($url);
        $return_message = json_decode(ihttp_get($url));
        if(empty($return_message['session_key'])) {
            setJson(1001,'用户不存在','');
        }
        $session_key = $return_message['session_key'];
        $pc = new \Common\Lib\wxbizdatacrypt($this->pro_info['appid'], $session_key);
        $pc->wxbizdatacrypt($this->pro_info['appid'], $session_key);
        $errCode = $pc->decryptData($encrypt_data, $iv, $user_info);
        if ($user_info === false || $errCode !== 0) {
            setJson(1001,'解密失败','');
        } else {

            $user_info = json_decode($user_info, true);
            $pro_member_info =  ProMemberService::fetch_by_pro_openid($user_info['openId']);
            if(!empty($pro_member_info)) {
                //登录成功，返回wid,api_session_key
                $api_session_key = ProMemberService::dologin($pro_member_info['id']);
                $result['wid'] = $pro_member_info['id'];
                $result['api_session_key'] = $api_session_key;
            }else{
                $result['api_session_key'] =  ProMemberService::pro_register($user_info);
            }
            $emoji = new \Common\Lib\emoji();
            $user_info = ProMemberService::fetch_by_id($pro_member_info['id']);
            $member['wid'] =  $user_info['id'];
            $member['type'] =  $user_info['type'];
            $member['pro_headimgurl'] =  $user_info['pro_headimgurl'];
            $member['pro_nickname']   =  $user_info['username'];
            $member['api_session_key'] =  $result['api_session_key'];
            setJson(0, 'ok', $member);
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
    $postData = $_GPC['__input']['params'];
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
        'name' => $name,
        'user_id' => 1111,
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

            $actDate['date'] = end($postData['pl']) ?  end($postData['pl']) : '';
            $actDate['type'] = 2;
            $actDate['activity_id'] = $actId;
            pdo_insert('activity_date_rel', $actDate);

            $actDate['activity_id'] = $actId;
            $actDate['date'] = array_shift($postData['yc']) ?  array_shift($postData['yc']) : '';
            $actDate['type'] = 1;
            pdo_insert('activity_date_rel', $actDate);

            $actDate['activity_id'] = $actId;
            $actDate['date'] = end($postData['yc']) ?  end($postData['yc']) : '';
            $actDate['type'] = 1;
            pdo_insert('activity_date_rel', $actDate);

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
if($_GPC['__input']['method'] == 'r-add'){
    $postData = $_GPC['__input']['params'];
    $postData['uid'] = 1;
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
    );
    try{
        pdo_begin();
        pdo_update('user_resume', $data, array('user_id' => $uid));
        $resume = pdo_get('user_resume',array('user_id' => $uid));
        pdo_delete('resume_work_rel',array('resume_id' => $resume['id']));
        foreach ($postData['danceIds'] as $k=>$v){
            $work['resume_id'] = $resume['id'];
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
         'status' => $status, 'message' => $message,'data'=>$data
    );
    exit( json_encode($json,true));
}
