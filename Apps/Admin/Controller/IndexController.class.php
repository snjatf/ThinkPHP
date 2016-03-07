<?php
namespace Admin\Controller;
use Think\Controller;
class IndexController extends Controller {
    private $pageInfo=array(
        'title'=>'后台管理',
        'theme'=>'default',
    );
    public function index(){

        $this->assign('page',$this->pageInfo);
        $this->display('index');
    }

    public function  show()
    {
        $this->assign('page',$this->pageInfo);
        $this->display('show');
    }
}