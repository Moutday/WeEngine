<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */

defined('IN_IA') or exit('Access Denied');
class ActivityUserRelTable extends We7Table {

	protected $tableName = 'user_activity_rel';

    public function searchActivityId($aid) {
        return $this->query->where('activity_id =', $aid);
    }

    public function searchResumeId($rid) {
        return $this->query->where('resume_id =', $rid);
    }

}