<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */

defined('IN_IA') or exit('Access Denied');
class WechatUserTable extends We7Table {

	protected $tableName = 'user_info'; //Î¢ÐÅÓÃ»§

    public function getLists($order) {
        return $this->query->from('user_info', 'a')
            ->leftjoin('user_resume', 'w')
            ->on(array('a.id' => 'w.user_id'))
            ->orderby('a.'.$order, 'DESC')
            ->getall();
    }
}