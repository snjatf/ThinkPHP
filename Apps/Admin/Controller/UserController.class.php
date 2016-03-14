<?php
namespace Admin\Controller;
use Admin\Common\Class4LigerUI\Data4Grid;
use Think\Controller;
use Home\Model\UserModel;

class UserController extends Controller {
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

    public function GetUsersList()
    {
        $user_list=M('Users')->select();
        $this->assign('page',$this->pageInfo);
        $this->assign('user_list',json_encode(New Data4Grid($user_list,count($user_list)),JSON_UNESCAPED_UNICODE));
        $this->display('index');
    }

    public function test()
    {
        $this->display();
    }
}