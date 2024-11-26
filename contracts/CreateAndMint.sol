// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CreateAndMint is ERC20 {
    address private _owner;

    constructor() ERC20("JohnGabrielPagtalunan", "JGP") {
        _owner = msg.sender;
        _mint(msg.sender, 100 * 10**uint(decimals()));
    }

    error OwnableUnauthorizedAccount(address account);

    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    function _checkOwner() internal view {
        if (_owner != msg.sender) {
            revert OwnableUnauthorizedAccount(msg.sender);
        }
    }

    function owner() public view returns (address) {
        return _owner;
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
