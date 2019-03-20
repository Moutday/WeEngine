<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */

defined('IN_IA') or exit('Access Denied');
class WorkTable extends We7Table {

	protected $tableName ='work';

    public function getLists($order,$column='id',$pid=0) {
        return $this->query->from($this->tableName)->select('id','pid','name')->where($column,$pid)->orderby($order, 'DESC')->getall();
    }
}