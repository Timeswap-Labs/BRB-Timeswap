// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {IERC1155Receiver} from "@openzeppelin/contracts/token/ERC1155/IERC1155Receiver.sol";

import {ITimeswapV2TokenBurnCallback} from "@timeswap-labs/v2-token/contracts/interfaces/callbacks/ITimeswapV2TokenBurnCallback.sol";
import {ITimeswapV2OptionCollectCallback} from "@timeswap-labs/v2-option/contracts/interfaces/callbacks/ITimeswapV2OptionCollectCallback.sol";

/// @title An interface for TS-V2 Periphery Collect
interface ITimeswapV2PeripheryQuoterCollect is
  IERC1155Receiver,
  ITimeswapV2TokenBurnCallback,
  ITimeswapV2OptionCollectCallback
{
  error PassTokenBurnCallbackInfo(uint256 shortAmount);
  error PassOptionCollectCallbackInfo(uint256 token0Amount, uint256 token1Amount);

  /// @dev Returns the option factory address.
  function optionFactory() external returns (address);

  /// @dev Return the tokens address
  function tokens() external returns (address);

  /// @dev Return the liquidity tokens address
  function liquidityTokens() external returns (address);
}
