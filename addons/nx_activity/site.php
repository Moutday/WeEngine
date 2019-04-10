<?php
 require_once IA_ROOT . '/addons/nx_activity/functions.php';
 defined('IN_IA') or exit('Access Denied');
global $_GPC;

class Nx_activityModuleSite  extends WeModuleSite {

    public  function doWebNews(){
        global $_W, $_GPC;
        require 'inc/web/activity.ctrl.php';
    }

    public  function doWebUser(){
        global $_W, $_GPC;
        require 'inc/web/user.ctrl.php';
    }

    public  function doWebWork(){
        global $_W, $_GPC;
        require 'inc/web/work.ctrl.php';
    }


    public function doWebSetting() {  }
}
?>
