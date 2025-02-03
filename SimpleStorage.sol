//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract BlindRevise{
uint256 myFavoriteNumber;
function store(uint256 _myFavoriteNumber) public{
myFavoriteNumber=_myFavoriteNumber;


}
function retrieve() public view returns(uint256){
return myFavoriteNumber;


}
struct Persion{
string Name;
uint256 FavoriteNumber;

}
Persion[] public listOfPeople;
mapping(string=>uint256) public nameToFavoriteNumber;
function addPersionWithfavoriteNumber(string memory _name,uint256 _number) public{
listOfPeople.push(Persion(_name,_number));
nameToFavoriteNumber[_name]=_number;



}



}
