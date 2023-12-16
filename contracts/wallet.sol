// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;
 pragma experimental ABIEncoderV2;

contract wallet {
    address[] public approvers;
    uint quorum;
    struct Transfer{
        uint id;
        uint amount;
        bool iscompleted;
        address payable to;
        uint approvals;
        bool sent;
        
    }
    Transfer[] public transfers;
    
        // mapping(uint => Transfer ) public transfers;
        // uint public nextId;
    
    
    constructor(address[] memory _approvers , uint _quorum ) public {
        approvers = _approvers;
        quorum = _quorum;
    }
    
    function getApprovers() public view returns(Transfer[] memory){
        return approvers;
    }
    
    function getTransfers() public view returns(Transfer[] memory){
        return transfers;
    }
    
    
    // fn to create tx in u=multisig wellet;
    
    function createTransfer( uint amount,address payable to ) external{
            transfers.push (Transfer(
            transfers.length,
            amount,
            to,
            0,
            false
            ));
            
            
    }
}

  