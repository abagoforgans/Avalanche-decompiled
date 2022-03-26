contract main {




// =====================  Runtime code  =====================


uint8 paused;
address coreAddress; offset 8
address stor1;
uint8 isPrice0; offset 160
uint128 stor2; offset 160
address pairAddress;
uint256 priorCumulative;
uint32 priorTimestamp;
uint128 stor5; offset 144
address stor5;
uint256 stor5;
uint256 duration;

function duration() payable {
    return duration
}

function isPrice0() payable {
    return bool(isPrice0)
}

function priorCumulative() payable {
    return priorCumulative
}

function paused() payable {
    return bool(paused)
}

function priorTimestamp() payable {
    return priorTimestamp
}

function pair() payable {
    return pairAddress
}

function core() payable {
    return coreAddress
}

function _fallback() payable {
    revert
}

function read() payable {
    if paused:
        return uint256(stor5.field_0), not bool(paused)
    return uint256(stor5.field_0), not not uint256(stor5.field_0)
}

function sub_5ade6e8e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the dao'
    stor2 = Mask(96, 0, bool(arg1))
}

function fei() payable {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x9a9ba4da with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function tribe() payable {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xb86677fe with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function setCore(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(coreAddress)
    staticcall coreAddress.isGovernor(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef: Caller is not a governor'
    coreAddress = arg1
    emit CoreUpdate(arg1);
}

function setDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(coreAddress)
    staticcall coreAddress.isGovernor(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef: Caller is not a governor'
    duration = arg1
    emit DurationUpdate(arg1);
}

function feiBalance() payable {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x9a9ba4da with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function tribeBalance() payable {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xb86677fe with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function pause() payable {
    require ext_code.size(coreAddress)
    staticcall coreAddress.isGovernor(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(coreAddress)
        staticcall coreAddress.isGuardian(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'CoreRef: Caller is not a guardian or governor'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    require ext_code.size(coreAddress)
    staticcall coreAddress.isGovernor(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(coreAddress)
        staticcall coreAddress.isGuardian(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'CoreRef: Caller is not a guardian or governor'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function isOutdated() payable {
    require ext_code.size(pairAddress)
    staticcall pairAddress.price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(pairAddress)
    staticcall pairAddress.price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
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
        return uint32(uint32(block.timestamp) - priorTimestamp) >= duration
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'FixedPoint: DIV_BY_ZERO'
    require Mask(112, 0, ext_call.return_data[0])
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        revert with 0, 'FixedPoint: DIV_BY_ZERO'
    require Mask(112, 0, ext_call.return_data[32])
    return uint32(uint32(block.timestamp) - priorTimestamp) >= duration
}

function update() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(pairAddress)
    staticcall pairAddress.price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(pairAddress)
    staticcall pairAddress.price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
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
        if uint32(uint32(block.timestamp) - priorTimestamp) < duration:
            return 0
        if not ext_call.return_data[0] - priorCumulative:
            require uint32(uint32(block.timestamp) - priorTimestamp)
            if not 0 / uint32(uint32(block.timestamp) - priorTimestamp):
                uint256(stor5.field_0) = 0
                priorTimestamp = uint32(block.timestamp)
                priorCumulative = ext_call.return_data[0]
                emit Update(0);
            else:
                require 0 / uint32(uint32(block.timestamp) - priorTimestamp)
                if 10^18 * 0 / uint32(uint32(block.timestamp) - priorTimestamp) / 0 / uint32(uint32(block.timestamp) - priorTimestamp) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                Mask(144, 0, stor5.field_0) = Mask(144, 112, 10^18 * 0 / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112
                Mask(112, 0, stor5.field_144) = 0
                priorTimestamp = uint32(block.timestamp)
                priorCumulative = ext_call.return_data[0]
                emit Update((Mask(144, 112, 10^18 * 0 / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112 / 10^18));
        else:
            require ext_call.return_data[0] - priorCumulative
            if ext_call.return_data[0] - priorCumulative / ext_call.return_data[0] - priorCumulative != 1:
                revert with 0, 'SafeMath: multiplication overflow'
            require uint32(uint32(block.timestamp) - priorTimestamp)
            if not ext_call.return_data[0] - priorCumulative / uint32(uint32(block.timestamp) - priorTimestamp):
                uint256(stor5.field_0) = 0
                priorTimestamp = uint32(block.timestamp)
                priorCumulative = ext_call.return_data[0]
                emit Update(0);
            else:
                require ext_call.return_data[0] - priorCumulative / uint32(uint32(block.timestamp) - priorTimestamp)
                if 10^18 * ext_call.return_data[0] - priorCumulative / uint32(uint32(block.timestamp) - priorTimestamp) / ext_call.return_data[0] - priorCumulative / uint32(uint32(block.timestamp) - priorTimestamp) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                Mask(144, 0, stor5.field_0) = Mask(144, 112, 10^18 * ext_call.return_data[0] - priorCumulative / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112
                Mask(112, 0, stor5.field_144) = 0
                priorTimestamp = uint32(block.timestamp)
                priorCumulative = ext_call.return_data[0]
                emit Update((Mask(144, 112, 10^18 * ext_call.return_data[0] - priorCumulative / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112 / 10^18));
    else:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        require Mask(112, 0, ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        require Mask(112, 0, ext_call.return_data[32])
        if uint32(uint32(block.timestamp) - priorTimestamp) < duration:
            return 0
        if isPrice0:
            if not ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative:
                require uint32(uint32(block.timestamp) - priorTimestamp)
                if not 0 / uint32(uint32(block.timestamp) - priorTimestamp):
                    uint256(stor5.field_0) = 0
                    priorTimestamp = uint32(block.timestamp)
                    priorCumulative = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
                    emit Update(0);
                else:
                    require 0 / uint32(uint32(block.timestamp) - priorTimestamp)
                    if 10^18 * 0 / uint32(uint32(block.timestamp) - priorTimestamp) / 0 / uint32(uint32(block.timestamp) - priorTimestamp) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    Mask(144, 0, stor5.field_0) = Mask(144, 112, 10^18 * 0 / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112
                    Mask(112, 0, stor5.field_144) = 0
                    priorTimestamp = uint32(block.timestamp)
                    priorCumulative = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
                    emit Update((Mask(144, 112, 10^18 * 0 / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112 / 10^18));
            else:
                require ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative
                if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative / ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative != 1:
                    revert with 0, 'SafeMath: multiplication overflow'
                require uint32(uint32(block.timestamp) - priorTimestamp)
                if not ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative / uint32(uint32(block.timestamp) - priorTimestamp):
                    uint256(stor5.field_0) = 0
                    priorTimestamp = uint32(block.timestamp)
                    priorCumulative = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
                    emit Update(0);
                else:
                    require ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative / uint32(uint32(block.timestamp) - priorTimestamp)
                    if 10^18 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative / uint32(uint32(block.timestamp) - priorTimestamp) / ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative / uint32(uint32(block.timestamp) - priorTimestamp) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    Mask(144, 0, stor5.field_0) = Mask(144, 112, 10^18 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112
                    Mask(112, 0, stor5.field_144) = 0
                    priorTimestamp = uint32(block.timestamp)
                    priorCumulative = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
                    emit Update((Mask(144, 112, 10^18 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112 / 10^18));
        else:
            if not ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative:
                require uint32(uint32(block.timestamp) - priorTimestamp)
                if not 0 / uint32(uint32(block.timestamp) - priorTimestamp):
                    uint256(stor5.field_0) = 0
                    priorTimestamp = uint32(block.timestamp)
                    priorCumulative = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
                    emit Update(0);
                else:
                    require 0 / uint32(uint32(block.timestamp) - priorTimestamp)
                    if 10^18 * 0 / uint32(uint32(block.timestamp) - priorTimestamp) / 0 / uint32(uint32(block.timestamp) - priorTimestamp) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    Mask(144, 0, stor5.field_0) = Mask(144, 112, 10^18 * 0 / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112
                    Mask(112, 0, stor5.field_144) = 0
                    priorTimestamp = uint32(block.timestamp)
                    priorCumulative = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
                    emit Update((Mask(144, 112, 10^18 * 0 / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112 / 10^18));
            else:
                require ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative
                if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative / ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative != 1:
                    revert with 0, 'SafeMath: multiplication overflow'
                require uint32(uint32(block.timestamp) - priorTimestamp)
                if not ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative / uint32(uint32(block.timestamp) - priorTimestamp):
                    uint256(stor5.field_0) = 0
                    priorTimestamp = uint32(block.timestamp)
                    priorCumulative = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
                    emit Update(0);
                else:
                    require ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative / uint32(uint32(block.timestamp) - priorTimestamp)
                    if 10^18 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative / uint32(uint32(block.timestamp) - priorTimestamp) / ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative / uint32(uint32(block.timestamp) - priorTimestamp) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    Mask(144, 0, stor5.field_0) = Mask(144, 112, 10^18 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112
                    Mask(112, 0, stor5.field_144) = 0
                    priorTimestamp = uint32(block.timestamp)
                    priorCumulative = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
                    emit Update((Mask(144, 112, 10^18 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - priorCumulative / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112 / 10^18));
    return 1
}



}
