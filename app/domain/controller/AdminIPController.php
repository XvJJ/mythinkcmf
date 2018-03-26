<?php
// +----------------------------------------------------------------------
// | Author: 许君杰
// +----------------------------------------------------------------------
namespace app\domain\controller;

use cmf\controller\AdminBaseController;
use think\Db;

/**
 * Class AdminIPController
 * @package app\domain\controller
 * @adminMenuRoot(
 *     'name'   =>'IP管理',
 *     'remark' =>'IP管理'
 * )
 */
class AdminIPController extends AdminBaseController
{
    public function _initialize()
    {
        parent::_initialize();
    }

    public function index()
    {
        $keyword = $this->request->post('input_ip', '', 'trim');
        $ipmodel = Db::name('ipadmin');

        if ($keyword) {
            $ipmodel->where('ip', 'like', '%' . $keyword . '%');
        }

        $list = $ipmodel->order("id DESC")->paginate(20);
        // 获取分页显示
        $page = $list->render();
        $this->assign('keyword', $keyword);
        $this->assign('list', $list);
        $this->assign('page', $page);
        // 渲染模板输出
        return $this->fetch();
    }

    public function ipadd()
    {
        return $this->fetch();
    }

    public function ippost()
    {
        $id = $this->request->post('id');
        $ip = $this->request->post('ip', '', 'trim');
        $ipmark = $this->request->post('ipremark', '', 'trim');

        $isadd = $this->checkip($ip);
        if ($isadd == true) {
            $this->error("IP已存在！");

        }

        $data = array(
            'ip' => $ip,
            'ipremark' => $ipmark,
        );
        if (empty($id)) {
            Db::name('ipadmin')->insert($data);
            $this->success("添加成功！", url('admin_ip/index'));
        } else {
            Db::name('ipadmin')->where(array('id' => $id))->save($data);
            $this->success("修改成功！", url('admin_ip/index'));
        }

    }

    public function ipedit()
    {
        $id = $this->request->param('id');
        $res = Db::name('ipadmin')->where('id', $id)->find();
        $this->assign('res', $res);
        return $this->fetch();
    }

    public function ipdel()
    {
        $id = $this->request->param('id');
        $isdel = Db::name('ipadmin')->where(array('id' => $id))->delete();
        if ($isdel !== false) {
            $this->success("删除成功！", url('admin_ip/index'));
        } else {
            $this->error("删除失败！", url('admin_ip/index'));
        }

    }

    public function checkip($ip)
    {
        $ip_res = Db::name('ipadmin')->field('ip')->select();
        $ip_arr = array();
        foreach ($ip_res as $k => $v) {
            array_push($ip_arr, $v['ip']);
        }
        if (in_array($ip, $ip_arr)) {
            return true;
        } else {
            return false;
        }
    }

}
