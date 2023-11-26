// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {ITimeswapV2OptionMintCallback} from "@timeswap-labs/v2-option/contracts/interfaces/callbacks/ITimeswapV2OptionMintCallback.sol";
import {ITimeswapV2OptionSwapCallback} from "@timeswap-labs/v2-option/contracts/interfaces/callbacks/ITimeswapV2OptionSwapCallback.sol";

import {ITimeswapV2PoolMintCallback} from "@timeswap-labs/v2-pool/contracts/interfaces/callbacks/ITimeswapV2PoolMintCallback.sol";
import {ITimeswapV2PoolBurnCallback} from "@timeswap-labs/v2-pool/contracts/interfaces/callbacks/ITimeswapV2PoolBurnCallback.sol";
import {ITimeswapV2PoolDeleverageCallback} from "@timeswap-labs/v2-pool/contracts/interfaces/callbacks/ITimeswapV2PoolDeleverageCallback.sol";
import {ITimeswapV2PoolLeverageCallback} from "@timeswap-labs/v2-pool/contracts/interfaces/callbacks/ITimeswapV2PoolLeverageCallback.sol";
import {IMulticall} from "./IMulticall.sol";

/// @title An interface for TS-V2 Periphery
interface ITimeswapV2Periphery is IMulticall {
  error RequireDeploymentOfOption(address token0, address token1);

  error RequireDeploymentOfPool(address token0, address token1);

  /// @dev Returns the option factory address.
  /// @return optionFactory The option factory address.
  function optionFactory() external returns (address);

  /// @dev Returns the pool factory address.
  /// @return poolFactory The pool factory address.
  function poolFactory() external returns (address);

  /// @dev Returns the option pair address.
  /// @param token0 Address of token0
  /// @param token1 Address of token1
  /// @return optionPair The option pair address.
  function getOption(address token0, address token1) external view returns (address optionPair);

  /// @dev Returns the pool pair address.
  /// @param token0 Address of token0
  /// @param token1 Address of token1
  /// @return optionPair The option pair address.
  /// @return poolPair The pool pair address.
  function getPool(address token0, address token1) external view returns (address optionPair, address poolPair);

  /// @dev Deploys the option pair contract.
  /// @param token0 Address of token0
  /// @param token1 Address of token1
  /// @return optionPair The option pair address.
  function deployOption(address token0, address token1) external returns (address optionPair);

  /// @dev Deploys the pool pair contract.
  /// @param token0 Address of token0
  /// @param token1 Address of token1
  /// @return poolPair The pool pair address.
  function deployPool(address token0, address token1) external returns (address poolPair);
}
