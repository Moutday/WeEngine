<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */

defined('IN_IA') or exit('Access Denied');
class ActivityTable extends We7Table {

	protected $tableName = 'activity';

    public function getLists($order) {
        return $this->query->from($this->tableName)->orderby($order, 'DESC')->getall();
    }

    public function searchWithCreatetimeRange($time) {
        return $this->query->where('createtime >=', strtotime("-{$time} days"));
    }

    public function searchWithTitle($title) {
        return $this->query->where('name LIKE', "%{$title}%");
    }

    public function searchWithId($id) {
        $this->query->where('id', $id);
        return $this;
    }
}