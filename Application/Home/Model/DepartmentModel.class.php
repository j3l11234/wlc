<?php
namespace Home\Model;
use Think\Model;

/**
 * 部门——数据模型
 * Enter description here ...
 * @author j3l11234
 *
 */
class DepartmentModel extends Model {
	public function getAllDepartment($departmentId = ''){
		if($departmentId != '')
			$this->where(array('department_id' => $departmentId));
		return $this->select();
	}


	public function getDepartmentName($department_id){
		if($department_id != '')
			$this->where(array('department_id' => $department_id));
		return $this->select()[0]['department_name'];
	}
	
}