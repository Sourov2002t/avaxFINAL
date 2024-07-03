// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenGamingToken is ERC20, Ownable {
    uint8 private customDecimals;

    // Define the mapping to store the prices of in-game items
    mapping(string => uint256) private _itemPrices;


    event ItemRedeemed(address indexed player, string item);

    constructor(uint8 _decimals) ERC20("DegenGamingToken", "DGT") Ownable(msg.sender){
        customDecimals=_decimals;
        // Mint initial supply to the contract deployer
        _mint(msg.sender, 1000 * 10 ** uint8(_decimals)); 
    }
    function decimals() public view virtual override returns (uint8){
        return customDecimals;
    }

    /**
     * Mint new tokens, can only be called by the owner.
     * The amount of tokens to mint.
     */
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    /**
     * Redeem (burn) tokens for in-game items.
     * The amount of tokens to redeem.
     */
    function redeem(string memory item) external {
        require(balanceOf(msg.sender) >= _itemPrices[item], "Insufficient balance");
        _transfer(msg.sender, owner(), _itemPrices[item]);
         emit ItemRedeemed(msg.sender, item);
        // Additional logic for in-game item redemption can be added here
    }

    /**
     * Burn tokens, can be called by anyone.
     * The amount of tokens to burn.
     */
    function burn(uint256 amount) external {
         require(amount > 0, "Amount must be greater than zero");
        _burn(msg.sender, amount);
    }

    /**
     * Transfer tokens to another address.
     * The amount of tokens to transfer.
     */
    function transferTokens(address recipient, uint256 amount) external {
        _transfer(msg.sender, recipient, amount);
    }
}
