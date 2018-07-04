pragma solidity ^0.4.23;

contract Voting{

    bytes32[] public candidateLists;
    mapping (bytes32 => uint8) public votesReceived;
    constructor(bytes32[] candidateNames) public{
    //constructor to initialize candidates
        candidateLists = candidateNames;
    }
    function voteForCandidate (bytes32 candidate) public{
    //vote for candidates
        require(validCandidate(candidate));
        votesReceived[candidate] += 1;
    }
    function totalVotesFor (bytes32 candidate) view public returns(uint8){
    // view modifier will mark as read-only function
    //get count of vote for each candidate
        require(validCandidate(candidate));
        return votesReceived[candidate];
    }
    function validCandidate(bytes32 candidate) view public returns(bool){
        for(uint i=0; i<candidateLists.length; i++){
            if(candidateLists[i]==candidate){
                return true;
            }
        }
        return false;
    }
}