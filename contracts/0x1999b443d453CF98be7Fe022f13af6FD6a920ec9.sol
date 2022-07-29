contract main {




// =====================  Runtime code  =====================


address owner;
address operatorAddress;
uint256 period;
uint256 startTime;
uint256 lastEpochTime;
uint256 currentEpoch;
address token0Address;
address token1Address;
uint32 blockTimestampLast; offset 160
address pairAddress;
uint256 price0CumulativeLast;
uint256 price1CumulativeLast;
uint256 price0Average;
uint256 price1Average;

function token0() payable {
    return token0Address
}

function getPeriod() payable {
    return period
}

function operator() payable {
    return operatorAddress
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

function getCurrentEpoch() payable {
    return currentEpoch
}

function getLastEpochTime() payable {
    return lastEpochTime
}

function blockTimestampLast() payable {
    return blockTimestampLast
}

function getStartTime() payable {
    return startTime
}

function token1() payable {
    return token1Address
}

function _fallback() payable {
    revert
}

function isOperator() payable {
    return (msg.sender == operatorAddress)
}

function nextEpochPoint() payable {
    if lastEpochTime > !period:
        revert with 0, 17
    return (lastEpochTime + period)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setEpoch(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    currentEpoch = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    if arg1 < 3600:
        revert with 0, '_period: out of range'
    if arg1 > 48 * 24 * 3600:
        revert with 0, '_period: out of range'
    period = arg1
}

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: zero address given for new operator'
    emit OperatorTransferred(0, arg1);
    operatorAddress = arg1
}

function consult(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if token0Address == arg1:
        if not arg2:
            return 0
        if price0Average and arg2 > -1 / price0Average:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if price0Average * arg2 / arg2 != price0Average:
            revert with 0, 'FixedPoint: MULTIPLICATION_OVERFLOW'
        return (Mask(32, 112, price0Average * arg2) >> 112)
    if token1Address != arg1:
        revert with 0, 'Oracle: INVALID_TOKEN'
    if not arg2:
        return 0
    if price1Average and arg2 > -1 / price1Average:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if price1Average * arg2 / arg2 != price1Average:
        revert with 0, 'FixedPoint: MULTIPLICATION_OVERFLOW'
    return (Mask(32, 112, price1Average * arg2) >> 112)
}

function twap(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x5909c0d5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x5a3d5493 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
        if uint32(block.timestamp) < blockTimestampLast:
            revert with 0, 17
        if token0Address == arg1:
            if ext_call.return_data[0] < price0CumulativeLast:
                revert with 0, 17
            if not uint32(uint32(block.timestamp) - blockTimestampLast):
                revert with 0, 18
            if not arg2:
                return 0
            if Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) and arg2 > -1 / Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
                revert with 0, 'FixedPoint: MULTIPLICATION_OVERFLOW'
            return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112)
        if token1Address != arg1:
            return 0
        if ext_call.return_data[0] < price1CumulativeLast:
            revert with 0, 17
        if not uint32(uint32(block.timestamp) - blockTimestampLast):
            revert with 0, 18
        if not arg2:
            return 0
        if Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) and arg2 > -1 / Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
            revert with 0, 'FixedPoint: MULTIPLICATION_OVERFLOW'
        return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112)
    if uint32(block.timestamp) < ext_call.return_data[92 len 4]:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'FixedPoint: DIV_BY_ZERO'
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 18
    if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
        revert with 0, 17
    if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        revert with 0, 'FixedPoint: DIV_BY_ZERO'
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 18
    if Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])):
        revert with 0, 17
    if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
        revert with 0, 17
    if uint32(block.timestamp) < blockTimestampLast:
        revert with 0, 17
    if token0Address == arg1:
        if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) < price0CumulativeLast:
            revert with 0, 17
        if not uint32(uint32(block.timestamp) - blockTimestampLast):
            revert with 0, 18
        if not arg2:
            return 0
        if Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) and arg2 > -1 / Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
            revert with 0, 'FixedPoint: MULTIPLICATION_OVERFLOW'
        return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112)
    if token1Address != arg1:
        return 0
    if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) < price1CumulativeLast:
        revert with 0, 17
    if not uint32(uint32(block.timestamp) - blockTimestampLast):
        revert with 0, 18
    if not arg2:
        return 0
    if Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) and arg2 > -1 / Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2 / arg2 != Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)):
        revert with 0, 'FixedPoint: MULTIPLICATION_OVERFLOW'
    return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast)) * arg2) >> 112)
}

function update() payable {
    if lastEpochTime > !period:
        revert with 0, 17
    if block.timestamp < lastEpochTime + period:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Epoch: only operator allowed for pre-epoch'
        require ext_code.size(pairAddress)
        staticcall pairAddress.0x5909c0d5 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(pairAddress)
        staticcall pairAddress.0x5a3d5493 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[92 len 4] == uint32(block.timestamp):
            if uint32(block.timestamp) < blockTimestampLast:
                revert with 0, 17
            if uint32(uint32(block.timestamp) - blockTimestampLast):
                if ext_call.return_data[0] < price0CumulativeLast:
                    revert with 0, 17
                if not uint32(uint32(block.timestamp) - blockTimestampLast):
                    revert with 0, 18
                price0Average = Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
                if ext_call.return_data[0] < price1CumulativeLast:
                    revert with 0, 17
                if not uint32(uint32(block.timestamp) - blockTimestampLast):
                    revert with 0, 18
                price1Average = Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
                price0CumulativeLast = ext_call.return_data[0]
                price1CumulativeLast = ext_call.return_data[0]
                blockTimestampLast = uint32(block.timestamp)
                emit Updated(ext_call.return_data[0], ext_call.return_data[0]);
        else:
            if uint32(block.timestamp) < ext_call.return_data[92 len 4]:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 17
            if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 17
            if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
                revert with 0, 17
            if uint32(block.timestamp) < blockTimestampLast:
                revert with 0, 17
            if uint32(uint32(block.timestamp) - blockTimestampLast):
                if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) < price0CumulativeLast:
                    revert with 0, 17
                if not uint32(uint32(block.timestamp) - blockTimestampLast):
                    revert with 0, 18
                price0Average = Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
                if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) < price1CumulativeLast:
                    revert with 0, 17
                if not uint32(uint32(block.timestamp) - blockTimestampLast):
                    revert with 0, 18
                price1Average = Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
                price0CumulativeLast = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
                price1CumulativeLast = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
                blockTimestampLast = uint32(block.timestamp)
                emit Updated(ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))), ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))));
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x5909c0d5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x5a3d5493 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
        if uint32(block.timestamp) < blockTimestampLast:
            revert with 0, 17
        if not uint32(uint32(block.timestamp) - blockTimestampLast):
            lastEpochTime += period
            if currentEpoch == -1:
                revert with 0, 17
            currentEpoch++
            if lastEpochTime > !period:
                revert with 0, 17
            if block.timestamp >= lastEpochTime + period:
                # nil
            else:
        else:
            if ext_call.return_data[0] < price0CumulativeLast:
                revert with 0, 17
            if not uint32(uint32(block.timestamp) - blockTimestampLast):
                revert with 0, 18
            price0Average = Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
            if ext_call.return_data[0] < price1CumulativeLast:
                revert with 0, 17
            if not uint32(uint32(block.timestamp) - blockTimestampLast):
                revert with 0, 18
            price1Average = Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
            price0CumulativeLast = ext_call.return_data[0]
            price1CumulativeLast = ext_call.return_data[0]
            blockTimestampLast = uint32(block.timestamp)
            emit Updated(ext_call.return_data[0], ext_call.return_data[0]);
            lastEpochTime += period
            if currentEpoch == -1:
                revert with 0, 17
            currentEpoch++
            if lastEpochTime > !period:
                revert with 0, 17
            if block.timestamp >= lastEpochTime + period:
                # nil
            else:
    else:
        if uint32(block.timestamp) < ext_call.return_data[92 len 4]:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 17
        if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
            revert with 0, 17
        if uint32(block.timestamp) < blockTimestampLast:
            revert with 0, 17
        if not uint32(uint32(block.timestamp) - blockTimestampLast):
            lastEpochTime += period
            if currentEpoch == -1:
                revert with 0, 17
            currentEpoch++
            if lastEpochTime > !period:
                revert with 0, 17
            if block.timestamp >= lastEpochTime + period:
                # nil
            else:
        else:
            if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) < price0CumulativeLast:
                revert with 0, 17
            if not uint32(uint32(block.timestamp) - blockTimestampLast):
                revert with 0, 18
            price0Average = Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
            if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) < price1CumulativeLast:
                revert with 0, 17
            if not uint32(uint32(block.timestamp) - blockTimestampLast):
                revert with 0, 18
            price1Average = Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
            price0CumulativeLast = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
            price1CumulativeLast = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
            blockTimestampLast = uint32(block.timestamp)
            emit Updated(ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))), ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))));
            lastEpochTime += period
            if currentEpoch == -1:
                revert with 0, 17
            currentEpoch++
            if lastEpochTime > !period:
                revert with 0, 17
            if block.timestamp >= lastEpochTime + period:
                # nil
            else:
}



}
