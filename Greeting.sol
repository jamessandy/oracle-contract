// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import {Oracle} from  "./Oracle.sol";


contract Greeting {
    
    string public status;
    uint256 public updatedate;
    

    function getOracleData() public payable returns (string memory) {
        
        bytes32 oracleId = 0xe0b3ed55241d8feffa6c3654deb863d704a87a158ebc0bba224c655c5b9b6192;
        address oracleAddress = 0x8ecEDdd1377E52d23A46E2bd3dF0aFE35B526D5F;
        Oracle oracleContract = Oracle(oracleAddress);
        (string memory value, uint256 date) = oracleContract.getString(
            oracleId
        );
        status = value;
        updatedate = date;
        return value;
    }

    function getStatus() public view returns (string memory) {
        return status;

    }
}
