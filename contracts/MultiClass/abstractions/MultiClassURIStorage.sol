// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

//MultiClassURIStorage interface
import "./../interfaces/IMultiClassURIStorage.sol";

/**
 * @dev Abstract extension of MultiClass that allows a
 * class to reference data (like a uri)
 */
abstract contract MultiClassURIStorage is IMultiClassURIStorage {
  //mapping of `classId` to `data`
  mapping(uint256 => string) private _classURIs;

  /**
   * @dev Returns the reference of `classId`
   */
  function classURI(uint256 classId)
    public view returns(string memory)
  {
    return _classURIs[classId];
  }

  /**
   * @dev References `data` to `classId`
   */
  function _setClassURI(uint256 classId, string memory data)
    internal virtual
  {
    require(
      bytes(_classURIs[classId]).length == 0,
      "MultiClass: Class is already referenced"
    );
    _classURIs[classId] = data;
  }
}
