// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Micomod3Token is ERC20 {
    address public micomod3Owner;
    constructor() ERC20("Micomod3", "MCM3") {
        micomod3Owner = msg.sender;
    }
    modifier onlyMicomod3Owner() {
        require(msg.sender == micomod3Owner, "Only owner can call this function");
        _;
    }
    function micomod3Mint(address micomod3To, uint256 micomod3Amount) external onlyMicomod3Owner {
        _mint(micomod3To, micomod3Amount);
    }
    function micomod3Burn(address micomod3Address, uint256 micomod3Amount) external {
        _burn(micomod3Address, micomod3Amount);
    }
    function micomod3Transfer(address micomod3Sender, address micomod3Recipient, uint256 micomod3Amount) public {
        _transfer(micomod3Sender, micomod3Recipient, micomod3Amount);
    }
}
