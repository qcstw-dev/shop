<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Db
 *
 * @author QCS18
 */
class Database {

    public static function getInstance() {
        $bdd = new MysqliDb (_DB_SERVER_, _DB_USER_, _DB_PASSWD_, _DB_NAME_);
        return $bdd;
    }

}
