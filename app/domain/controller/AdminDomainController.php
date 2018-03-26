<?php
// +----------------------------------------------------------------------
// | Author: 许君杰
// +----------------------------------------------------------------------
namespace app\domain\controller;

use cmf\controller\AdminBaseController;
use think\Db;

/**
 * Class AdminDomainController
 * @package app\domain\controller
 * @adminMenuRoot(
 *     'name'   =>'域名列表',
 *     'remark' =>'域名列表'
 * )
 */
class AdminDomainController extends AdminBaseController
{
    public function _initialize()
    {
        parent::_initialize();

    }

    public function index()
    {
        $where   = array();
        $ipid    = $this->request->param('ipid');
        $keyword = $this->request->param('keyword');
        if ($ipid) {
            $where['ipid'] = $ipid;
            $this->assign('ipid', $ipid);
        }
        if ($keyword) {
            $where['domain'] = array('like', "%$keyword%");
            $this->assign('keyword', $keyword);
        }

        $ipmodel     = Db::name('ipadmin');
        $domainmodel = Db::name('domain');
        $ip_res      = $ipmodel->select();
        $list        = $domainmodel->where($where)->order("id DESC")->paginate(20);
        $res         = $list->getCollection()->toArray();

        // 获取分页显示
        $page = $list->render();

        foreach ($res as $k => &$v) {
            $ip        = $ipmodel->where(array('id' => $v['ipid']))->find();
            $v['ipid'] = $ip['ip'];
            if ($v['isspeed'] == 1) {
                $v['isspeed'] = '<span style="color:red">是</span>';
            } else {
                $v['isspeed'] = '否';
            }
        }
        $this->assign("ipid", $ipid);
        $this->assign('keyword', $keyword);
        $this->assign("page", $page);
        $this->assign('ipres', $ip_res);
        $this->assign('res', $res);
        return $this->fetch();
    }

    public function domainadd()
    {
        $res = Db::name('ipadmin')->select();
        $this->assign('res', $res);
        return $this->fetch();

    }

    public function domainedit()
    {
        $domainid = $this->request->param('id');
        $ip_res   = Db::name('ipadmin')->select();
        $domain   = Db::name('domain')->where('id', $domainid)->find();
        $this->assign('ipres', $ip_res);
        $this->assign('res', $domain);
        return $this->fetch();

    }

    public function domainpost()
    {
        $id     = $this->request->param('id');
        $domain = $this->request->param('domain');
        $data   = array(
            'ipid'    => $this->request->param('ipid'),
            'domain'  => $domain,
            'isspeed' => $this->request->param('isspeed'),
            'remark'  => $this->request->param('remark'),
        );
        if (empty($id)) {
            $isadd = $this->checkdomain($domain);
            if ($isadd == false) {
                Db::name('domain')->insert($data);
                $this->success("添加成功！", url('admin_domain/index'));
            } else {
                $this->error("域名已存在！");
            }
        } else {
            Db::name('domain')->where(array('id' => $id))->save($data);
            $this->success("修改成功！", url('admin_domain/index'));
        }
    }

    public function domaindel()
    {
        $id    = $this->request->param('id');
        $isdel = Db::name('domain')->where(array('id' => $id))->delete();
        if ($isdel !== false) {
            $this->success("删除成功！", url('admin_domain/index'));
        } else {
            $this->error("删除失败！", url('admin_domain/index'));
        }
    }

    public function checkdomain($domain)
    {
        $domain_res = Db::name('domain')->field('domain')->select();
        $domain_arr = array();
        foreach ($domain_res as $k => $v) {
            array_push($domain_arr, $v['domain']);
        }
        if (in_array($domain, $domain_arr)) {
            return true;
        } else {
            return false;
        }
    }
}
