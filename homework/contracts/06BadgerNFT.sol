// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BadgerNFT is ERC721 {
    constructor() ERC721("Badger NFT", "BADGER") {}

    function mint(address to, uint256 tokenId) public {
        _mint(to, tokenId);
    }

    function transfer(address from, address to, uint256 tokenId) public {
        safeTransferFrom(from, to, tokenId);
    }
}
