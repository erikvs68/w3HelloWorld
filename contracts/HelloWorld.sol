// SPDX-License-Identifier: MIT
// Hello World smart contract
// What version of solidity do we need to run this smart contract file?

pragma solidity >= 0.7.3;


// 3 things go into contracts, 1 variables all things you want to keep track of like NFTs...
// 2 functions that allow you to read, write and modify
// 3 events

contract HelloWorld{
event UpdatedMessages(string oldStr, string newStr);

string public message;

constructor (string memory initMessage){
	message = initMessage;
}

function update(string memory newMessage) public {
	string memory oldMsg = message; 
	message = newMessage; 
	emit UpdatedMessages(oldMsg, newMessage);

}
}