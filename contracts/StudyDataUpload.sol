pragma solidity ^0.4.24;

contract StudyDataUpload {
    struct StudyData {
        uint time;
        string fileHash;
    }

    mapping (uint256 => StudyData[]) public studies;
    
    function addStudy ( uint256 studyID, string fileHash) public {
        studies[studyID].push(StudyData(now, fileHash));
    }

    function getNumDataForStudy ( uint256 studyID ) public constant returns (uint) {
        return studies[studyID].length;
    }

}