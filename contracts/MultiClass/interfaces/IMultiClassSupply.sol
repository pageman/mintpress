// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

//IMultiClass interface
import "./IMultiClass.sol";

/**
 * @dev Required interface of an MultiClassSupply compliant contract.
 */
interface IMultiClassSupply is IMultiClass {
  /**
   * @dev Returns the total possible supply size of `classId`
   */
  function classSize(uint256 classId) external view returns(uint256);

  /**
   * @dev Returns true if `classId` supply and size are equal
   */
  function classFilled(uint256 classId) external view returns(bool);

  /**
   * @dev Returns the current supply size of `classId`
   */
  function classSupply(uint256 classId) external view returns(uint256);
}
