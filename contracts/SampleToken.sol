// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

/**
 * @title SampleERC20
 * @dev Create a sample ERC20 standard token
 */
contract SampleToken is ERC20, AccessControl {
    bytes32 public constant MINTERROLE = keccak256("MITTERROLE");
    bytes32 public constant BURNERROLE = keccak256("BURNERROLE");

    constructor(string memory tokenName, string memory tokenSymbol, uint totalSupply) ERC20(tokenName, tokenSymbol) {
        _mint(msg.sender, totalSupply);
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function mint(address _to, uint _amount) public {
        require(hasRole(MINTERROLE, msg.sender), "SampleToken: You do not have the minter role");
        _mint(_to, _amount);
    }

    function burn(address _to, uint _amount) public {
        require(hasRole(BURNERROLE, msg.sender), "SampleToken: You do not have the burner role");
        _burn(_to, _amount);
    }

}