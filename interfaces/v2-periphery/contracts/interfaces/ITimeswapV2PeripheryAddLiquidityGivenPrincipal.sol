// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {ITimeswapV2OptionMintCallback} from "../v2-option/contracts/interfaces/callbacks/ITimeswapV2OptionMintCallback.sol";

import {ITimeswapV2PoolMintCallback} from "../v2-pool/contracts/interfaces/callbacks/ITimeswapV2PoolMintCallback.sol";

import {ITimeswapV2TokenMintCallback} from "../v2-token/contracts/interfaces/callbacks/ITimeswapV2TokenMintCallback.sol";

import {ITimeswapV2LiquidityTokenMintCallback} from "../v2-token/contracts/interfaces/callbacks/ITimeswapV2LiquidityTokenMintCallback.sol";

interface ITimeswapV2PeripheryAddLiquidityGivenPrincipal is
  ITimeswapV2OptionMintCallback,
  ITimeswapV2PoolMintCallback,
  ITimeswapV2TokenMintCallback,
  ITimeswapV2LiquidityTokenMintCallback
{
  /// @dev Returns the option factory address.
  function optionFactory() external returns (address);

  /// @dev Returns the pool factory address.
  function poolFactory() external returns (address);

  /// @dev Returns the tokens address.
  function tokens() external returns (address);

  /// @dev Returns the liquidity tokens address.
  function liquidityTokens() external returns (address);
}
