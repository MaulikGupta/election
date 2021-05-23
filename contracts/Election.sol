pragma solidity ^0.5.16;

contract Election {
  
  struct Candidate{
    uint id;
    string name;
    uint voteCount;
  }

  // store accounts that have voted
  mapping(address => bool) public voters;
  // store candidates
  // fetch candidates
  mapping(uint => Candidate) public candidates;
  // store candidate count
  uint public candidatesCount = 0; //no way to iterate in map
  constructor() public{
    addCandidate("Maulik Gupta");
    addCandidate("Shivansh Sharma");
    addCandidate("Aditya Raj");
    addCandidate("Adhinayak Anand");
    addCandidate("Divjot Singh Oberoi");
  }

  function addCandidate(string memory _name) private{
    candidatesCount++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
  }

  function vote(uint _candidateId) public{
    // record that voter has voted
    voters[msg.sender] = true;

    // update candidate vote count
    candidates[_candidateId].voteCount ++;
  }
}