<?php
/**
 * Created by PhpStorm.
 * User: Zhuang少东
 * Date: 2016/3/14
 * Time: 20:23
 */

namespace Admin\Common\Class4LigerUI;


/**
 * Class Data4Grid
 * @package Admin\Common\Class4LigerUI
 */
class Data4Grid
{
    private $type='grid';
    public $Rows,$Total;


    /**
     * Data4Grid constructor.
     * @param $data
     * @param $total
     * @param string $type
     */
    public function __construct($data, $total, $type='grid')
    {
        $this->type=$type;
        $this->Rows=$data;
        $this->Total=$total;
    }

    /**
     * @return string
     */
    function __toString()
    {
        return json_encode($this,JSON_UNESCAPED_UNICODE);
    }


}