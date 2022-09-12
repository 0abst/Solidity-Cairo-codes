// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken6 is ERC721, Ownable {
    constructor() ERC721("MyToken6", "MTK") {}

    function _baseURI() internal pure override returns (string memory) {
        /*return "https://ipfs.io/ipfs/QmT3nSKpJrEUWgeqGNiQPNEWcP2cousZNfQ72qX8qnBtWk?filename=mainnet-chainlink-elf.json";*/
        return "https://ipfs.io/ipfs/QmfHYK3krZmxEwSDB5K5H8BdmkP3eUH3kchyiGoBbXpmqP?filename=solarpanel2.json";
    }

    function safeMint(address to, uint256 tokenId) public onlyOwner {
        _safeMint(to, tokenId);
    }
}