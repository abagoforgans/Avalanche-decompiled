contract main {




// =====================  Runtime code  =====================


#
#  - update()
#
const PERIOD = 1


address owner;
address pairAddress;
address pairAddress;
address token0Address;
address token1Address;
uint256 price0CumulativeLast;
uint256 price1CumulativeLast;
uint32 blockTimestampLast;
uint256 price0Average;
uint256 price1Average;
uint256 latestPrice0;
uint256 latestPrice1;

function latestPrice0() payable {
    return latestPrice0
}

function token0() payable {
    return token0Address
}

function latestPrice1() payable {
    return latestPrice1
}

function price0CumulativeLast() payable {
    return price0CumulativeLast
}

function price1CumulativeLast() payable {
    return price1CumulativeLast
}

function price1Average() payable {
    return price1Average
}

function owner() payable {
    return owner
}

function price0Average() payable {
    return price0Average
}

function pair() payable {
    return pairAddress
}

function pairAddress() payable {
    return pairAddress
}

function blockTimestampLast() payable {
    return blockTimestampLast
}

function token1() payable {
    return token1Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function consult(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if token0Address == arg1:
        if not arg2:
            return 0
        require arg2
        if price0Average * arg2 / arg2 != price0Average:
            revert with 0, 'FixedPoint::mul: overflow'
        return (Mask(32, 112, price0Average * arg2) >> 112)
    if token1Address != arg1:
        revert with 0, 'Oracle: INVALID_TOKEN'
    if not arg2:
        return 0
    require arg2
    if price1Average * arg2 / arg2 != price1Average:
        revert with 0, 'FixedPoint::mul: overflow'
    return (Mask(32, 112, price1Average * arg2) >> 112)
}



}
