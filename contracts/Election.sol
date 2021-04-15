pragma solidity ^0.5.16;

contract Election {
  
  struct Candidate{
    uint id;
    string name;
    uint voteCount;
  }

  mapping(uint => Candidate) public candidates;

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
}