pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


contract HelloWorldNFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("HelloWorldNFT", "HWNFT") {}

    uint256 public constant MAX_NFT_SUPPLY = 1000;

    function awardItem(address player, string memory tokenURI)
        public
        returns (uint256)
    {
        require(_tokenIds.current() < MAX_NFT_SUPPLY, "Sale has already ended");
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(player, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}
