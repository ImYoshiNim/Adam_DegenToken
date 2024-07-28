// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {

    struct TaxFree {
        uint costTokens;
        string foodName;
        bool itemRedeemed;
    }

    TaxFree[] private taxItems;

    constructor()
    ERC20("Degen", "DGN")
    Ownable()
    {
        taxItems.push(TaxFree(59, "Ichiran Ramen - NFT", false));
        taxItems.push(TaxFree(30, "Matcha Kitkat - NFT", false));
        taxItems.push(TaxFree(32, "Meiji Choco - NFT", false));
        taxItems.push(TaxFree(14, "Waffer - NFT", false));
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount); 
    }

    function decimals() override public pure returns (uint8) {
        return 0;
    }

    function getBalance() external view returns (uint256) {
        return this.balanceOf(msg.sender);
    }

    function transferTokens(address _receiver, uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "Not enough DGN tokens to complete the transfer!");
        approve(msg.sender, _value);
        transferFrom(msg.sender, _receiver, _value);
    }

    function burnTokens(uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "Insufficient DGN tokens to cover the burn of the requested amount!");
        burn(_value);
    }

    function redeemTokens(uint8 input) external returns (string memory) {
        
        
        require(input >= 0 && input <= 3, "Invalid input");
        require(!taxItems[input].itemRedeemed, "This item is already redeemed!");
        require(balanceOf(msg.sender) >= taxItems[input].costTokens, "Insufficient DGN tokens to redeem!");

        // Transfer the required tokens from the sender to the contract owner
        _transfer(msg.sender, owner(), taxItems[input].costTokens);
        // Mark the item as redeemed
        taxItems[input].itemRedeemed = true;

        return string(abi.encodePacked(taxItems[input].foodName, " has been redeemed!"));
    }

    function showStoreItems() public view returns (string memory) {
        string memory itemPrintStr = "";

        for (uint i = 0; i < 4; i++) {
            itemPrintStr = string.concat(itemPrintStr, "   ", Strings.toString(i), ". ", taxItems[i].foodName);
        }

        return itemPrintStr;
    }
}