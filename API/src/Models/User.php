<?php
/**
 * Created by PhpStorm.
 * User: theds
 * Date: 12/6/2016
 * Time: 10:25 AM
 */

namespace CS4450\Models;


class User implements \JsonSerializable
{
    private $UserID;
    private $UserFirstName;
    private $UserLastName;
    private $UserEmail;
    private $UserUsername;
    private $UserPassword;
    private $UserPrivilegeLevel;

    function jsonSerialize()
    {
        return
            array(
                'user_id' => $this->UserID,
                'first_name' => $this->UserFirstName,
                'last_name' => $this->UserLastName,
                'email' => $this->UserEmail,
                'username' => $this->UserUsername,
                'password' => $this->UserPassword,
                'privilege_level' => $this->UserPrivilegeLevel
            );

    }

    function __construct($UserID, $UserFirstName, $UserLastName, $UserEmail, $UserUsername, $UserPassword, $UserPrivilegeLevel)
    {
        $this->UserID = $UserID;
        $this->UserFirstName = $UserFirstName;
        $this->UserLastName = $UserLastName;
        $this->UserEmail = $UserEmail;
        $this->UserUsername = $UserUsername;
        $this->UserPassword = $UserPassword;
        $this->UserPrivilegeLevel = $UserPrivilegeLevel;
    }

    public function getID():int{
        return $this->UserID;
    }

    public function getUsername():string{
        return $this->UserUsername;
    }
}