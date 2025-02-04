//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {SimpleStorage} from "./SimpleStorage.sol";
contract StorageFactory{
SimpleStorage[] public listOfSimpleStorage;
function createSimpleStorage() public{
SimpleStorage SimpleStorageContarctsVariable = new SimpleStorage();
listOfSimpleStorage.push(SimpleStorageContarctsVariable);


}
function sfstore(uint256 storageIndex, uint256 number) public{
listOfSimpleStorage[storageIndex].store(number);


}

function sfGet(uint256 storageIndex) public view returns(uint256){
return listOfSimpleStorage[storageIndex].retrieve();


}





}
