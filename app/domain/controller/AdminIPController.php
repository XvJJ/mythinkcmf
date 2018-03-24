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
        $this->assign('list', $list);
        $this->assign('page', $page);
        // 渲染模板输出
        return $this->fetch();
    }

    public function ipadd()
    {

    }

    public function ipedit()
    {

    }

    public function ipdel()
    {

    }

}
