<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */

defined('IN_IA') or exit('Access Denied');
class ActivityDateTable extends We7Table {

	protected $tableName = 'activity_date_rel';

    public function searchActivityId($aid) {
        return $this->query->where('activity_id =', $aid);
    }

}