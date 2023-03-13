// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library ERC721TokenStorage {
    struct Layout {
        /// @notice The only address that can burn tokens on this contract.
        address burnAddress;
    }

    bytes32 internal constant STORAGE_SLOT = keccak256("footage.contracts.storage.ERC721Token");
    function layout() internal pure returns (Layout storage l) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            l.slot := slot
        }
    }
}