// SPDX-License-Identifier: MIT

pragma solidity ^0.8.25;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol"; 


contract ValueStorage is Ownable {

  uint256 private s_number;

  event NumberChanged(uint256 number);

  constructor(address initialOwner) 
  Ownable(initialOwner)
  {
    
  }

  function store(uint256 _number) public onlyOwner{
    s_number = _number;
    emit NumberChanged(_number);
  }
  
  function getNumber() public view returns (uint256) {
    return s_number;
  }

}
