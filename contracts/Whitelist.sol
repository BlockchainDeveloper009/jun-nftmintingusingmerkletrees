// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

contract Whitelist {

    bytes32 public merkleRoot;

    // Max number of whitelisted addresses allowed to be added to tree
    uint8 public maxWhitelistedAddresses;
    //space used so far. 
    //(space counter which tracks spaces already used out of maxWhitelistedAddresses)
    uint8 public numAddressesWhitelisted;

    constructor(bytes32 _merkleRoot,uint8 _maxWhitelistedAddresses) {
        merkleRoot = _merkleRoot;
        maxWhitelistedAddresses =  _maxWhitelistedAddresses;
    }

    function checkInWhitelist(bytes32[] calldata proof, uint64 maxAllowanceToMint) view public returns (bool) {
        bytes32 leaf = keccak256(abi.encode(msg.sender, maxAllowanceToMint));
        bool verified = MerkleProof.verify(proof, merkleRoot, leaf);
        return verified;
    }


    
}