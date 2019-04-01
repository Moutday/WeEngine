<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */

defined('IN_IA') or exit('Access Denied');
class UserInfoTable extends We7Table {

	protected $tableName = 'user_info';

    public function getLists($order) {
        return $this->query->from($this->tableName)->orderby($order, 'DESC')->getall();
    }

    public function searchWithCreatetimeRange($time) {
        return $this->query->where('reg_time >=', strtotime("-{$time} days"));
    }

    public function searchWithTitle($title) {
        return $this->query->where('nick_name LIKE', "%{$title}%");
    }

    public function searchWithId($id) {
        $this->query->where('id', $id);
        return $this;
    }

    public function searchWithOpenId($id) {
        $this->query->where('open_id', $id);
        return $this;
    }
}