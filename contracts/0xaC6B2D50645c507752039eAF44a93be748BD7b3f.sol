contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 marketBorrowRate;
mapping of uint256 marketLiquidityRate;

function owner() payable {
    return owner
}

function getMarketBorrowRate(address arg1) payable {
    require calldata.size - 4 >= 32
    return marketBorrowRate[address(arg1)]
}

function getMarketLiquidityRate(address arg1) payable {
    require calldata.size - 4 >= 32
    return marketLiquidityRate[address(arg1)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMarketBorrowRate(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    marketBorrowRate[address(arg1)] = arg2
}

function setMarketLiquidityRate(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    marketLiquidityRate[address(arg1)] = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
