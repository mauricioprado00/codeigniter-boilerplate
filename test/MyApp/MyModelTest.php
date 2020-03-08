<?php

namespace MyApp;

class MyModelTest extends \PHPUnit_Framework_TestCase
{
    /**
     * @return MyModel
     */
    public function getModel()
    {
        return new MyModel();
    }

    /**
     * @test
     */
    public function isOneWillReturnOne()
    {
        $expected = 1;
        $instance = $this->getModel();
        $actual = $instance->getOne();
        $this->assertEquals($expected, $actual, 'getOne should return 1');
    }
}