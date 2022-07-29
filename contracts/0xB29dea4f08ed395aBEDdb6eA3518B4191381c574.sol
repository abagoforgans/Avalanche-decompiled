contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5)
#  - sub_0f91f06f(?)
#  - swapToETH(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5)
#  - swapFromETH(address arg1, uint256 arg2, address arg3, uint256 arg4)
#  - depositETH(address arg1, uint256 arg2)
#  - quotePotentialSwap(address arg1, address arg2, uint256 arg3)
#  - deposit(address arg1, uint256 arg2, address arg3, uint256 arg4)
#  - swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 stor101;
uint8 stor151;
address wethAddress;
uint256 slippageParamK;
bool stor267;
uint256 stor267; offset 1
uint256 slippageParamN;
uint256 C1;
uint256 xThreshold;
uint256 haircutRate;
uint256 retentionRatio;
uint256 maxPriceDeviation;
address devAddress;
uint256 stor273;
address sub_03b2f7aaAddress;
address priceOracleAddress;
array of struct stor276;
mapping of address assetOf;
mapping of uint256 stor278;
mapping of uint8 stor279;
array of address stor55996564654908158253998044367658055984048037022260098169496931198457274445573;

function sub_03b2f7aa(?) {
    return sub_03b2f7aaAddress
}

function getDev() {
    return address(devAddress)
}

function weth() {
    return wethAddress
}

function getSlippageParamK() {
    return slippageParamK
}

function paused() {
    return bool(stor151)
}

function assetOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor279[address(arg1)]:
        revert with 0, 'ASSET_NOT_EXIST'
    return assetOf[address(arg1)]
}

function getSlippageParamN() {
    return slippageParamN
}

function getXThreshold() {
    return xThreshold
}

function getHaircutRate() {
    return haircutRate
}

function owner() {
    return owner
}

function getC1() {
    return C1
}

function getRetentionRatio() {
    return retentionRatio
}

function getMaxPriceDeviation() {
    return maxPriceDeviation
}

function getPriceOracle() {
    return priceOracleAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() {
    if address(devAddress) != msg.sender:
        revert with 0, 'FORBIDDEN'
    if stor151:
        revert with 0, 'Pausable: paused'
    stor151 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if address(devAddress) != msg.sender:
        revert with 0, 'FORBIDDEN'
    if not stor151:
        revert with 0, 'Pausable: not paused'
    stor151 = 0
    emit Unpaused(msg.sender);
}

function setWETHForwarder(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_03b2f7aaAddress = arg1
}

function setHaircutRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 10^18
    emit 0xbb593633: haircutRate, arg1
    haircutRate = arg1
}

function setRetentionRatio(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 10^18
    emit 0xbc341359: retentionRatio, arg1
    retentionRatio = arg1
}

function setMaxPriceDeviation(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 10^18
    emit 0x193a6231: maxPriceDeviation, arg1
    maxPriceDeviation = arg1
}

function setDev(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ZERO'
    emit DevUpdated(address(devAddress), arg1);
    address(devAddress) = arg1
}

function setPriceOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ZERO'
    emit OracleUpdated(priceOracleAddress, arg1);
    priceOracleAddress = arg1
}

function sub_df220181(?) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 10^18
    require arg2 > 0
    emit 0x4f79edc1: slippageParamK, arg1, slippageParamN, arg2, C1, arg3, xThreshold, arg4
    slippageParamK = arg1
    slippageParamN = arg2
    C1 = arg3
    xThreshold = arg4
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function addAsset(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ZERO'
    if not arg2:
        revert with 0, 'ZERO'
    if stor279[address(arg1)]:
        revert with 0, 'ASSET_EXISTS'
    if stor279[address(arg1)]:
        assetOf[address(arg1)] = arg2
    else:
        stor279[address(arg1)] = 1
        assetOf[address(arg1)] = arg2
        stor278[address(arg1)] = stor276.length
        stor276.length++
        stor7BCC[stor276.length] = arg1
    emit AssetAdded(arg1, arg2);
}

function removeAsset(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor279[address(arg1)]:
        stor279[address(arg1)] = 0
        assetOf[address(arg1)] = 0
        if stor276.length < 1:
            revert with 0, 17
        if stor276.length - 1 >= stor276.length:
            revert with 0, 50
        stor278[stor276[stor276.length].field_0] = stor278[address(arg1)]
        stor278[arg1] = 0
        if stor278[address(arg1)] >= stor276.length:
            revert with 0, 50
        stor276[stor278[address(arg1)]].field_0 = stor276[stor276.length].field_0
        if not stor276.length:
            revert with 0, 49
        stor276[stor276.length].field_0 = 0
        stor276.length--
}

function getTokenAddresses() {
    mem[64] = (32 * stor276.length) + 128
    mem[96] = stor276.length
    if not stor276.length:
        mem[(32 * stor276.length) + 128] = 32
        mem[(32 * stor276.length) + 160] = stor276.length
        idx = 0
        s = (32 * stor276.length) + 192
        t = 128
        while idx < stor276.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor276.length) + 128
           len (96 * stor276.length) + 64
    mem[128] = address(stor276.field_0)
    idx = 128
    s = 0
    while (32 * stor276.length) + 96 > idx:
        mem[idx + 32] = stor276[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor276.length) + 128] = 32
    mem[(32 * stor276.length) + 160] = stor276.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor276.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor276.length) + -mem[64] + 192
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not arg1:
        revert with 0, 'PTL:WETH address cannot be zero'
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stor101 = 1
        stor151 = 0
        slippageParamK = 2 * 10^13
        slippageParamN = 7
        C1 = 376927610599998308
        xThreshold = 329811659274998519
        haircutRate = 4 * 10^14
        retentionRatio = 10^18
        maxPriceDeviation = 2 * 10^16
        wethAddress = arg1
        uint256(stor273) = msg.sender or Mask(96, 160, uint256(stor273))
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            stor101 = 1
            stor151 = 0
            slippageParamK = 2 * 10^13
            slippageParamN = 7
            C1 = 376927610599998308
            xThreshold = 329811659274998519
            haircutRate = 4 * 10^14
            retentionRatio = 10^18
            maxPriceDeviation = 2 * 10^16
            wethAddress = arg1
            uint256(stor273) = msg.sender or Mask(96, 160, uint256(stor273))
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                stor101 = 1
                stor151 = 0
                slippageParamK = 2 * 10^13
                slippageParamN = 7
                C1 = 376927610599998308
                xThreshold = 329811659274998519
                haircutRate = 4 * 10^14
                retentionRatio = 10^18
                maxPriceDeviation = 2 * 10^16
                wethAddress = arg1
                uint256(stor273) = msg.sender or Mask(96, 160, uint256(stor273))
            else:
                uint16(stor0.field_0) = 257
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    stor101 = 1
                    stor151 = 0
                    slippageParamK = 2 * 10^13
                    slippageParamN = 7
                    C1 = 376927610599998308
                    xThreshold = 329811659274998519
                    haircutRate = 4 * 10^14
                    retentionRatio = 10^18
                    maxPriceDeviation = 2 * 10^16
                    wethAddress = arg1
                    uint256(stor273) = msg.sender or Mask(96, 160, uint256(stor273))
                else:
                    uint16(stor0.field_0) = 257
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        stor101 = 1
                        stor151 = 0
                        slippageParamK = 2 * 10^13
                        slippageParamN = 7
                        C1 = 376927610599998308
                        xThreshold = 329811659274998519
                        haircutRate = 4 * 10^14
                        retentionRatio = 10^18
                        maxPriceDeviation = 2 * 10^16
                        wethAddress = arg1
                        uint256(stor273) = msg.sender or Mask(96, 160, uint256(stor273))
                    else:
                        uint16(stor0.field_0) = 257
                        stor101 = 1
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            stor151 = 0
                            slippageParamK = 2 * 10^13
                            slippageParamN = 7
                            C1 = 376927610599998308
                            xThreshold = 329811659274998519
                            haircutRate = 4 * 10^14
                            retentionRatio = 10^18
                            maxPriceDeviation = 2 * 10^16
                            wethAddress = arg1
                            uint256(stor273) = msg.sender or Mask(96, 160, uint256(stor273))
                        else:
                            uint16(stor0.field_0) = 257
                            stor151 = 0
                            uint8(stor0.field_8) = 0
                            slippageParamK = 2 * 10^13
                            slippageParamN = 7
                            C1 = 376927610599998308
                            xThreshold = 329811659274998519
                            haircutRate = 4 * 10^14
                            retentionRatio = 10^18
                            maxPriceDeviation = 2 * 10^16
                            wethAddress = arg1
                            uint256(stor273) = msg.sender or Mask(96, 160, uint256(stor273))
                            uint8(stor0.field_8) = 0
}

function sub_2a803b5e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor151:
        revert with 0, 'Pausable: paused'
    if not stor279[address(arg1)]:
        revert with 0, 'ASSET_NOT_EXIST'
    if not stor279[address(arg2)]:
        revert with 0, 'ASSET_NOT_EXIST'
    require ext_code.size(assetOf[address(arg2)])
    staticcall assetOf[address(arg2)].liability() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(assetOf[address(arg2)])
    staticcall assetOf[address(arg2)].cash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if 10^18 * ext_call.return_data[0] > !(ext_call.return_data[0] / 2):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] <= 10^18:
        return 0
    require ext_code.size(assetOf[address(arg2)])
    staticcall assetOf[address(arg2)].0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(assetOf[address(arg1)])
        staticcall assetOf[address(arg1)].0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(assetOf[address(arg2)])
            staticcall assetOf[address(arg2)].0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 10^18 and ext_call.return_data[0] > -1 / ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 10^18:
                revert with 0, 17
            if (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                revert with 0, 17
            if (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18 and 1 > -1 / (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                revert with 0, 17
            return ((-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            require ext_code.size(assetOf[address(arg2)])
            staticcall assetOf[address(arg2)].0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 10^18 and ext_call.return_data[0] > -1 / ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 10^18:
                revert with 0, 17
            if (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                revert with 0, 17
            if (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18 and 10^uint8(ext_call.return_data[0]) > -1 / (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                revert with 0, 17
            return ((-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18 * 10^uint8(ext_call.return_data[0]))
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        require ext_code.size(assetOf[address(arg2)])
        staticcall assetOf[address(arg2)].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
            revert with 0, 17
        if ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 10^18 and ext_call.return_data[0] > -1 / ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 10^18:
            revert with 0, 17
        if (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
            revert with 0, 17
        if (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18 and s * t > -1 / (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
            revert with 0, 17
        return ((-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18 * s * t)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        require ext_code.size(assetOf[address(arg1)])
        staticcall assetOf[address(arg1)].0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(assetOf[address(arg2)])
            staticcall assetOf[address(arg2)].0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 10^18 and ext_call.return_data[0] > -1 / ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 10^18:
                revert with 0, 17
            if (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                revert with 0, 17
            if (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18 and 1 > -1 / (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return ((-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 10^uint8(ext_call.return_data[0]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            require ext_code.size(assetOf[address(arg2)])
            staticcall assetOf[address(arg2)].0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 10^18 and ext_call.return_data[0] > -1 / ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 10^18:
                revert with 0, 17
            if (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                revert with 0, 17
            if (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18 and 10^uint8(ext_call.return_data[0]) > -1 / (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return ((-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]))
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        require ext_code.size(assetOf[address(arg2)])
        staticcall assetOf[address(arg2)].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
            revert with 0, 17
        if ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 10^18 and ext_call.return_data[0] > -1 / ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 10^18:
            revert with 0, 17
        if (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
            revert with 0, 17
        if (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18 and s * t > -1 / (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
            revert with 0, 17
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        return ((-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18 * s * t / 10^uint8(ext_call.return_data[0]))
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    require ext_code.size(assetOf[address(arg1)])
    staticcall assetOf[address(arg1)].0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(assetOf[address(arg2)])
        staticcall assetOf[address(arg2)].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
            revert with 0, 17
        if ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 10^18 and ext_call.return_data[0] > -1 / ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 10^18:
            revert with 0, 17
        if (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
            revert with 0, 17
        if (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18 and 1 > -1 / (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return ((-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18 / s * t)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        require ext_code.size(assetOf[address(arg2)])
        staticcall assetOf[address(arg2)].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
            revert with 0, 17
        if ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 10^18 and ext_call.return_data[0] > -1 / ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 10^18:
            revert with 0, 17
        if (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
            revert with 0, 17
        if (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18 and 10^uint8(ext_call.return_data[0]) > -1 / (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return ((-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18 * 10^uint8(ext_call.return_data[0]) / s * t)
    u = 10
    v = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    require ext_code.size(assetOf[address(arg2)])
    staticcall assetOf[address(arg2)].0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
        revert with 0, 17
    if ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 10^18 and ext_call.return_data[0] > -1 / ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 10^18:
        revert with 0, 17
    if (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
        revert with 0, 17
    if (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18 and u * v > -1 / (-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return ((-1 * 10^18 * ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18 * u * v / s * t)
}

function sub_907448ed(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor151:
        revert with 0, 'Pausable: paused'
    if not address(arg1):
        revert with 0, 'ZERO'
    if arg2 <= 0:
        revert with 0, 'LIQ=0'
    if not stor279[address(arg1)]:
        revert with 0, 'ASSET_NOT_EXIST'
    require ext_code.size(assetOf[address(arg1)])
    staticcall assetOf[address(arg1)].0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(assetOf[address(arg1)])
    staticcall assetOf[address(arg1)].liability() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
        revert with 0, 'INSUFFICIENT_LIQ_BURN'
    require ext_code.size(assetOf[address(arg1)])
    staticcall assetOf[address(arg1)].cash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(assetOf[address(arg1)])
    staticcall assetOf[address(arg1)].liability() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if 10^18 * ext_call.return_data[0] > !(ext_call.return_data[0] / 2):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] >= 10^18:
        if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
            return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
        if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < 0:
            revert with 0, 17
        require ext_code.size(assetOf[address(arg1)])
        staticcall assetOf[address(arg1)].cash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
            return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0, 1
    else:
        if ext_call.return_data[0] <= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
            if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
                return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
            if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < 0:
                revert with 0, 17
            require ext_code.size(assetOf[address(arg1)])
            staticcall assetOf[address(arg1)].cash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0, 1
        else:
            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] <= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                if 0 > !(ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2):
                    revert with 0, 17
                if not ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                    revert with 0, 18
                if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < xThreshold:
                    if C1 < (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) < xThreshold:
                        if C1 < ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                            revert with 0, 17
                        if 10^18 < xThreshold:
                            if C1 < 10^18:
                                revert with 0, 17
                            if C1 - 10^18 and ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -1 / C1 - 10^18:
                                revert with 0, 17
                            if (-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and C1 - (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                    return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0, 1
                            else:
                                if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), 
                                           ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18),
                                           1
                        else:
                            idx = uint255(stor267.field_1)
                            while idx:
                                idx = idx / 2
                                continue 
                            if slippageParamK and 10^18 > -1 / slippageParamK:
                                revert with 0, 17
                            if 10^18 * slippageParamK > -500000000000000001:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and C1 - (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                    return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0, 1
                            else:
                                if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), 
                                           ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18),
                                           1
                    else:
                        if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                            revert with 0, 17
                        if bool(stor267.field_0):
                            s = 1000000000 * 10^18 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 10^18
                            idx = uint255(stor267.field_1)
                            t = 1000000000 * 10^18 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 10^18
                            while idx:
                                if t and t > -1 / t:
                                    revert with 0, 17
                                if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s
                                    idx = idx / 2
                                    t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                    continue 
                                if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                                    revert with 0, 17
                                if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                                idx = idx / 2
                                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                        else:
                            s = 1000000000 * 10^18
                            idx = uint255(stor267.field_1)
                            t = 1000000000 * 10^18 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 10^18
                            while idx:
                                if t and t > -1 / t:
                                    revert with 0, 17
                                if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s
                                    idx = idx / 2
                                    t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                    continue 
                                if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                                    revert with 0, 17
                                if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                                idx = idx / 2
                                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                        if s and 10^18 > -1 / s:
                            revert with 0, 17
                        if slippageParamK and 10^18 > -1 / slippageParamK:
                            revert with 0, 17
                        if 10^18 * slippageParamK > !(10^18 * s / 1000000000 * 10^18 / 2):
                            revert with 0, 17
                        if not 10^18 * s / 1000000000 * 10^18:
                            revert with 0, 18
                        if 10^18 < xThreshold:
                            if C1 < 10^18:
                                revert with 0, 17
                            if C1 - 10^18 and ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -1 / C1 - 10^18:
                                revert with 0, 17
                            if (-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) - (ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) > -500000000000000001:
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                    return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0, 1
                            else:
                                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), 
                                           ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18),
                                           1
                        else:
                            idx = uint255(stor267.field_1)
                            while idx:
                                idx = idx / 2
                                continue 
                            if slippageParamK and 10^18 > -1 / slippageParamK:
                                revert with 0, 17
                            if 10^18 * slippageParamK > -500000000000000001:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) - (ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) > -500000000000000001:
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                    return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0, 1
                            else:
                                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), 
                                           ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18),
                                           1
                else:
                    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] and 1000000000 * 10^18 > -1 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                        revert with 0, 17
                    if bool(stor267.field_0):
                        s = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 10^18
                        idx = uint255(stor267.field_1)
                        t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 10^18
                        while idx:
                            if t and t > -1 / t:
                                revert with 0, 17
                            if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                revert with 0, 17
                            if not bool(idx):
                                s = s
                                idx = idx / 2
                                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                            if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                                revert with 0, 17
                            if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                revert with 0, 17
                            s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                            idx = idx / 2
                            t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                            continue 
                    else:
                        s = 1000000000 * 10^18
                        idx = uint255(stor267.field_1)
                        t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 10^18
                        while idx:
                            if t and t > -1 / t:
                                revert with 0, 17
                            if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                revert with 0, 17
                            if not bool(idx):
                                s = s
                                idx = idx / 2
                                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                            if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                                revert with 0, 17
                            if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                revert with 0, 17
                            s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                            idx = idx / 2
                            t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                            continue 
                    if s and 10^18 > -1 / s:
                        revert with 0, 17
                    if slippageParamK and 10^18 > -1 / slippageParamK:
                        revert with 0, 17
                    if 10^18 * slippageParamK > !(10^18 * s / 1000000000 * 10^18 / 2):
                        revert with 0, 17
                    if not 10^18 * s / 1000000000 * 10^18:
                        revert with 0, 18
                    if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) < xThreshold:
                        if C1 < ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                            revert with 0, 17
                        if 10^18 < xThreshold:
                            if C1 < 10^18:
                                revert with 0, 17
                            if C1 - 10^18 and ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -1 / C1 - 10^18:
                                revert with 0, 17
                            if (-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and C1 - (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                                revert with 0, 17
                            if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                    return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0, 1
                            else:
                                if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), 
                                           ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18),
                                           1
                        else:
                            idx = uint255(stor267.field_1)
                            while idx:
                                idx = idx / 2
                                continue 
                            if slippageParamK and 10^18 > -1 / slippageParamK:
                                revert with 0, 17
                            if 10^18 * slippageParamK > -500000000000000001:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and C1 - (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                                revert with 0, 17
                            if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                    return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0, 1
                            else:
                                if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), 
                                           ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18),
                                           1
                    else:
                        if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                            revert with 0, 17
                        if bool(stor267.field_0):
                            t = 1000000000 * 10^18 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 10^18
                            idx = uint255(stor267.field_1)
                            u = 1000000000 * 10^18 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 10^18
                            while idx:
                                if u and u > -1 / u:
                                    revert with 0, 17
                                if u * u > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                if not bool(idx):
                                    t = t
                                    idx = idx / 2
                                    u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                                    continue 
                                if t and (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / t:
                                    revert with 0, 17
                                if t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                t = (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                                idx = idx / 2
                                u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                        else:
                            t = 1000000000 * 10^18
                            idx = uint255(stor267.field_1)
                            u = 1000000000 * 10^18 * ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 10^18
                            while idx:
                                if u and u > -1 / u:
                                    revert with 0, 17
                                if u * u > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                if not bool(idx):
                                    t = t
                                    idx = idx / 2
                                    u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                                    continue 
                                if t and (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / t:
                                    revert with 0, 17
                                if t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                t = (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                                idx = idx / 2
                                u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                        if t and 10^18 > -1 / t:
                            revert with 0, 17
                        if slippageParamK and 10^18 > -1 / slippageParamK:
                            revert with 0, 17
                        if 10^18 * slippageParamK > !(10^18 * t / 1000000000 * 10^18 / 2):
                            revert with 0, 17
                        if not 10^18 * t / 1000000000 * 10^18:
                            revert with 0, 18
                        if 10^18 < xThreshold:
                            if C1 < 10^18:
                                revert with 0, 17
                            if C1 - 10^18 and ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -1 / C1 - 10^18:
                                revert with 0, 17
                            if (-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) - (ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) > -500000000000000001:
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                                revert with 0, 17
                            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                    return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0, 1
                            else:
                                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), 
                                           ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18),
                                           1
                        else:
                            idx = uint255(stor267.field_1)
                            while idx:
                                idx = idx / 2
                                continue 
                            if slippageParamK and 10^18 > -1 / slippageParamK:
                                revert with 0, 17
                            if 10^18 * slippageParamK > -500000000000000001:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) - (ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) > -500000000000000001:
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                                revert with 0, 17
                            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                    return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0, 1
                            else:
                                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), 
                                           ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18),
                                           1
            else:
                if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) > !(ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2):
                    revert with 0, 17
                if not ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                    revert with 0, 18
                if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < xThreshold:
                    if C1 < (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) < xThreshold:
                        if C1 < (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                            revert with 0, 17
                        if 10^18 < xThreshold:
                            if C1 < 10^18:
                                revert with 0, 17
                            if C1 - 10^18 and ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -1 / C1 - 10^18:
                                revert with 0, 17
                            if (-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and C1 - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                    return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0, 1
                            else:
                                if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), 
                                           ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18),
                                           1
                        else:
                            idx = uint255(stor267.field_1)
                            while idx:
                                idx = idx / 2
                                continue 
                            if slippageParamK and 10^18 > -1 / slippageParamK:
                                revert with 0, 17
                            if 10^18 * slippageParamK > -500000000000000001:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and C1 - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                    return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0, 1
                            else:
                                if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), 
                                           ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18),
                                           1
                    else:
                        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and 1000000000 * 10^18 > -1 / (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                            revert with 0, 17
                        if bool(stor267.field_0):
                            s = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 10^18
                            idx = uint255(stor267.field_1)
                            t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 10^18
                            while idx:
                                if t and t > -1 / t:
                                    revert with 0, 17
                                if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s
                                    idx = idx / 2
                                    t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                    continue 
                                if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                                    revert with 0, 17
                                if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                                idx = idx / 2
                                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                        else:
                            s = 1000000000 * 10^18
                            idx = uint255(stor267.field_1)
                            t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 10^18
                            while idx:
                                if t and t > -1 / t:
                                    revert with 0, 17
                                if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s
                                    idx = idx / 2
                                    t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                    continue 
                                if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                                    revert with 0, 17
                                if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                                idx = idx / 2
                                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                        if s and 10^18 > -1 / s:
                            revert with 0, 17
                        if slippageParamK and 10^18 > -1 / slippageParamK:
                            revert with 0, 17
                        if 10^18 * slippageParamK > !(10^18 * s / 1000000000 * 10^18 / 2):
                            revert with 0, 17
                        if not 10^18 * s / 1000000000 * 10^18:
                            revert with 0, 18
                        if 10^18 < xThreshold:
                            if C1 < 10^18:
                                revert with 0, 17
                            if C1 - 10^18 and ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -1 / C1 - 10^18:
                                revert with 0, 17
                            if (-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) - (ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) > -500000000000000001:
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                    return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0, 1
                            else:
                                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), 
                                           ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18),
                                           1
                        else:
                            idx = uint255(stor267.field_1)
                            while idx:
                                idx = idx / 2
                                continue 
                            if slippageParamK and 10^18 > -1 / slippageParamK:
                                revert with 0, 17
                            if 10^18 * slippageParamK > -500000000000000001:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) - (ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) > -500000000000000001:
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                    return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0, 1
                            else:
                                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), 
                                           ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18),
                                           1
                else:
                    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] and 1000000000 * 10^18 > -1 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                        revert with 0, 17
                    if bool(stor267.field_0):
                        s = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 10^18
                        idx = uint255(stor267.field_1)
                        t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 10^18
                        while idx:
                            if t and t > -1 / t:
                                revert with 0, 17
                            if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                revert with 0, 17
                            if not bool(idx):
                                s = s
                                idx = idx / 2
                                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                            if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                                revert with 0, 17
                            if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                revert with 0, 17
                            s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                            idx = idx / 2
                            t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                            continue 
                    else:
                        s = 1000000000 * 10^18
                        idx = uint255(stor267.field_1)
                        t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 10^18
                        while idx:
                            if t and t > -1 / t:
                                revert with 0, 17
                            if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                revert with 0, 17
                            if not bool(idx):
                                s = s
                                idx = idx / 2
                                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                            if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                                revert with 0, 17
                            if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                revert with 0, 17
                            s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                            idx = idx / 2
                            t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                            continue 
                    if s and 10^18 > -1 / s:
                        revert with 0, 17
                    if slippageParamK and 10^18 > -1 / slippageParamK:
                        revert with 0, 17
                    if 10^18 * slippageParamK > !(10^18 * s / 1000000000 * 10^18 / 2):
                        revert with 0, 17
                    if not 10^18 * s / 1000000000 * 10^18:
                        revert with 0, 18
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) < xThreshold:
                        if C1 < (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                            revert with 0, 17
                        if 10^18 < xThreshold:
                            if C1 < 10^18:
                                revert with 0, 17
                            if C1 - 10^18 and ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -1 / C1 - 10^18:
                                revert with 0, 17
                            if (-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and C1 - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                                revert with 0, 17
                            if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                    return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0, 1
                            else:
                                if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), 
                                           ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18),
                                           1
                        else:
                            idx = uint255(stor267.field_1)
                            while idx:
                                idx = idx / 2
                                continue 
                            if slippageParamK and 10^18 > -1 / slippageParamK:
                                revert with 0, 17
                            if 10^18 * slippageParamK > -500000000000000001:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and C1 - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                                revert with 0, 17
                            if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                    return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0, 1
                            else:
                                if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), 
                                           ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18),
                                           1
                    else:
                        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and 1000000000 * 10^18 > -1 / (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                            revert with 0, 17
                        if bool(stor267.field_0):
                            t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 10^18
                            idx = uint255(stor267.field_1)
                            u = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 10^18
                            while idx:
                                if u and u > -1 / u:
                                    revert with 0, 17
                                if u * u > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                if not bool(idx):
                                    t = t
                                    idx = idx / 2
                                    u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                                    continue 
                                if t and (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / t:
                                    revert with 0, 17
                                if t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                t = (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                                idx = idx / 2
                                u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                        else:
                            t = 1000000000 * 10^18
                            idx = uint255(stor267.field_1)
                            u = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) / 10^18
                            while idx:
                                if u and u > -1 / u:
                                    revert with 0, 17
                                if u * u > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                if not bool(idx):
                                    t = t
                                    idx = idx / 2
                                    u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                                    continue 
                                if t and (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / t:
                                    revert with 0, 17
                                if t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                t = (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                                idx = idx / 2
                                u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                        if t and 10^18 > -1 / t:
                            revert with 0, 17
                        if slippageParamK and 10^18 > -1 / slippageParamK:
                            revert with 0, 17
                        if 10^18 * slippageParamK > !(10^18 * t / 1000000000 * 10^18 / 2):
                            revert with 0, 17
                        if not 10^18 * t / 1000000000 * 10^18:
                            revert with 0, 18
                        if 10^18 < xThreshold:
                            if C1 < 10^18:
                                revert with 0, 17
                            if C1 - 10^18 and ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -1 / C1 - 10^18:
                                revert with 0, 17
                            if (-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) - (ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) > -500000000000000001:
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                                revert with 0, 17
                            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                    return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0, 1
                            else:
                                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), 
                                           ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18),
                                           1
                        else:
                            idx = uint255(stor267.field_1)
                            while idx:
                                idx = idx / 2
                                continue 
                            if slippageParamK and 10^18 > -1 / slippageParamK:
                                revert with 0, 17
                            if 10^18 * slippageParamK > -500000000000000001:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) - (ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) > -500000000000000001:
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                                revert with 0, 17
                            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= 0:
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg2 / ext_call.return_data[0]:
                                    return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0, 1
                            else:
                                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    return 0, ext_call.return_data[0] * arg2 / ext_call.return_data[0], 0
                                if ext_call.return_data[0] * arg2 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[address(arg1)])
                                staticcall assetOf[address(arg1)].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), 
                                           ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg2 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18),
                                           1
    require ext_code.size(assetOf[address(arg1)])
    staticcall assetOf[address(arg1)].cash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 0, 0
}

function sub_a4275ceb(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor151:
        revert with 0, 'Pausable: paused'
    if not address(arg1):
        revert with 0, 'ZERO'
    if not address(arg2):
        revert with 0, 'ZERO'
    if arg3 <= 0:
        revert with 0, 'LIQ=0'
    if not stor279[address(arg1)]:
        revert with 0, 'ASSET_NOT_EXIST'
    if not stor279[address(arg2)]:
        revert with 0, 'ASSET_NOT_EXIST'
    require ext_code.size(assetOf[address(arg1)])
    staticcall assetOf[address(arg1)].0x7e1317fa with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(assetOf[address(arg2)])
    staticcall assetOf[address(arg2)].0x7e1317fa with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        revert with 0, 'DIFF_AGG_ACC'
    require ext_code.size(assetOf[address(arg2)])
    staticcall assetOf[address(arg2)].0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(assetOf[address(arg2)])
    staticcall assetOf[address(arg2)].liability() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg3 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= 0:
        revert with 0, 'INSUFFICIENT_LIQ_BURN'
    require ext_code.size(assetOf[address(arg2)])
    staticcall assetOf[address(arg2)].cash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(assetOf[address(arg2)])
    staticcall assetOf[address(arg2)].liability() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if 10^18 * ext_call.return_data[0] > !(ext_call.return_data[0] / 2):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] >= 10^18:
        if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= 0:
            revert with 0, 'NOT_ENOUGH_CASH'
        if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < 0:
            revert with 0, 17
        require ext_code.size(assetOf[address(arg2)])
        staticcall assetOf[address(arg2)].cash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(assetOf[address(arg2)])
        if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
            staticcall assetOf[address(arg2)].cash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            revert with 0, 'NOT_ENOUGH_CASH'
        staticcall assetOf[address(arg2)].liability() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(assetOf[address(arg2)])
        staticcall assetOf[address(arg2)].cash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
            revert with 0, 17
        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
            revert with 0, 'COV_RATIO_LOW'
        return ext_call.return_data[0] * arg3 / ext_call.return_data[0], 0
    if ext_call.return_data[0] <= ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
        if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= 0:
            revert with 0, 'NOT_ENOUGH_CASH'
        if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < 0:
            revert with 0, 17
        require ext_code.size(assetOf[address(arg2)])
        staticcall assetOf[address(arg2)].cash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(assetOf[address(arg2)])
        if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
            staticcall assetOf[address(arg2)].cash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            revert with 0, 'NOT_ENOUGH_CASH'
        staticcall assetOf[address(arg2)].liability() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(assetOf[address(arg2)])
        staticcall assetOf[address(arg2)].cash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
            revert with 0, 17
        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
            revert with 0, 'COV_RATIO_LOW'
        return ext_call.return_data[0] * arg3 / ext_call.return_data[0], 0
    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] <= ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
        if 0 > !(ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2):
            revert with 0, 17
        if not ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
            revert with 0, 18
        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < xThreshold:
            if C1 < (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) < xThreshold:
                if C1 < ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                    revert with 0, 17
                if 10^18 < xThreshold:
                    if C1 < 10^18:
                        revert with 0, 17
                    if C1 - 10^18 and ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -1 / C1 - 10^18:
                        revert with 0, 17
                    if (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > -500000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and C1 - (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                        revert with 0, 17
                    if (C1 * ext_call.return_data[0]) - (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > -500000000000000001:
                        revert with 0, 17
                    if (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                        revert with 0, 17
                    if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                        revert with 0, 17
                    if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                        if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= 0:
                            revert with 0, 'NOT_ENOUGH_CASH'
                        if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < 0:
                            revert with 0, 17
                        require ext_code.size(assetOf[address(arg2)])
                        staticcall assetOf[address(arg2)].cash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(assetOf[address(arg2)])
                        if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                            staticcall assetOf[address(arg2)].cash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            revert with 0, 'NOT_ENOUGH_CASH'
                        staticcall assetOf[address(arg2)].liability() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(assetOf[address(arg2)])
                        staticcall assetOf[address(arg2)].cash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                            revert with 0, 17
                        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                            revert with 0, 'COV_RATIO_LOW'
                        return ext_call.return_data[0] * arg3 / ext_call.return_data[0], 0
                    if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                        revert with 0, 'NOT_ENOUGH_CASH'
                    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                        revert with 0, 17
                    require ext_code.size(assetOf[address(arg2)])
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(assetOf[address(arg2)])
                    if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                        staticcall assetOf[address(arg2)].cash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        revert with 0, 'NOT_ENOUGH_CASH'
                    staticcall assetOf[address(arg2)].liability() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(assetOf[address(arg2)])
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                        revert with 0, 17
                    if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (10^18 * (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) > !(ext_call.return_data[0] / 2):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (10^18 * (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                        revert with 0, 'COV_RATIO_LOW'
                    return (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), 
                           ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                idx = uint255(stor267.field_1)
                while idx:
                    idx = idx / 2
                    continue 
                if slippageParamK and 10^18 > -1 / slippageParamK:
                    revert with 0, 17
                if 10^18 * slippageParamK > -500000000000000001:
                    revert with 0, 17
                if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                    revert with 0, 17
                if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -500000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and C1 - (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                    revert with 0, 17
                if (C1 * ext_call.return_data[0]) - (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > -500000000000000001:
                    revert with 0, 17
                if (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                    revert with 0, 17
                if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= 0:
                        revert with 0, 'NOT_ENOUGH_CASH'
                    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < 0:
                        revert with 0, 17
                    require ext_code.size(assetOf[address(arg2)])
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(assetOf[address(arg2)])
                    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                        staticcall assetOf[address(arg2)].cash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        revert with 0, 'NOT_ENOUGH_CASH'
                    staticcall assetOf[address(arg2)].liability() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(assetOf[address(arg2)])
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                        revert with 0, 'COV_RATIO_LOW'
                    return ext_call.return_data[0] * arg3 / ext_call.return_data[0], 0
                if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 'NOT_ENOUGH_CASH'
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    revert with 0, 'NOT_ENOUGH_CASH'
                staticcall assetOf[address(arg2)].liability() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (10^18 * ((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) > !(ext_call.return_data[0] / 2):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (10^18 * ((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                    revert with 0, 'COV_RATIO_LOW'
                return (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), 
                       ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
            if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                revert with 0, 17
            if bool(stor267.field_0):
                s = 1000000000 * 10^18 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 10^18
                idx = uint255(stor267.field_1)
                t = 1000000000 * 10^18 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 10^18
                while idx:
                    if t and t > -1 / t:
                        revert with 0, 17
                    if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                        revert with 0, 17
                    if not bool(idx):
                        s = s
                        idx = idx / 2
                        t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                        continue 
                    if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                        revert with 0, 17
                    if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                        revert with 0, 17
                    s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                    idx = idx / 2
                    t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
            else:
                s = 1000000000 * 10^18
                idx = uint255(stor267.field_1)
                t = 1000000000 * 10^18 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 10^18
                while idx:
                    if t and t > -1 / t:
                        revert with 0, 17
                    if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                        revert with 0, 17
                    if not bool(idx):
                        s = s
                        idx = idx / 2
                        t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                        continue 
                    if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                        revert with 0, 17
                    if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                        revert with 0, 17
                    s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                    idx = idx / 2
                    t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
            if s and 10^18 > -1 / s:
                revert with 0, 17
            if slippageParamK and 10^18 > -1 / slippageParamK:
                revert with 0, 17
            if 10^18 * slippageParamK > !(10^18 * s / 1000000000 * 10^18 / 2):
                revert with 0, 17
            if not 10^18 * s / 1000000000 * 10^18:
                revert with 0, 18
            if 10^18 < xThreshold:
                if C1 < 10^18:
                    revert with 0, 17
                if C1 - 10^18 and ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -1 / C1 - 10^18:
                    revert with 0, 17
                if (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > -500000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) - (ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) > -500000000000000001:
                    revert with 0, 17
                if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                    revert with 0, 17
                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= 0:
                        revert with 0, 'NOT_ENOUGH_CASH'
                    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < 0:
                        revert with 0, 17
                    require ext_code.size(assetOf[address(arg2)])
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(assetOf[address(arg2)])
                    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                        staticcall assetOf[address(arg2)].cash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        revert with 0, 'NOT_ENOUGH_CASH'
                    staticcall assetOf[address(arg2)].liability() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(assetOf[address(arg2)])
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                        revert with 0, 'COV_RATIO_LOW'
                    return ext_call.return_data[0] * arg3 / ext_call.return_data[0], 0
                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 'NOT_ENOUGH_CASH'
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    revert with 0, 'NOT_ENOUGH_CASH'
                staticcall assetOf[address(arg2)].liability() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (10^18 * (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) > !(ext_call.return_data[0] / 2):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (10^18 * (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                    revert with 0, 'COV_RATIO_LOW'
                return (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), 
                       ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
            idx = uint255(stor267.field_1)
            while idx:
                idx = idx / 2
                continue 
            if slippageParamK and 10^18 > -1 / slippageParamK:
                revert with 0, 17
            if 10^18 * slippageParamK > -500000000000000001:
                revert with 0, 17
            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                revert with 0, 17
            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -500000000000000001:
                revert with 0, 17
            if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) - (ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) > -500000000000000001:
                revert with 0, 17
            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                revert with 0, 17
            if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                revert with 0, 17
            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= 0:
                    revert with 0, 'NOT_ENOUGH_CASH'
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < 0:
                    revert with 0, 17
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    revert with 0, 'NOT_ENOUGH_CASH'
                staticcall assetOf[address(arg2)].liability() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                    revert with 0, 'COV_RATIO_LOW'
                return ext_call.return_data[0] * arg3 / ext_call.return_data[0], 0
            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                revert with 0, 17
            if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                revert with 0, 'NOT_ENOUGH_CASH'
            if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                revert with 0, 17
            require ext_code.size(assetOf[address(arg2)])
            staticcall assetOf[address(arg2)].cash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(assetOf[address(arg2)])
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                revert with 0, 'NOT_ENOUGH_CASH'
            staticcall assetOf[address(arg2)].liability() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(assetOf[address(arg2)])
            staticcall assetOf[address(arg2)].cash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                revert with 0, 17
            if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                revert with 0, 17
            if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (10^18 * ((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) > !(ext_call.return_data[0] / 2):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (10^18 * ((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                revert with 0, 'COV_RATIO_LOW'
            return (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), 
                   ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] and 1000000000 * 10^18 > -1 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            revert with 0, 17
        if bool(stor267.field_0):
            s = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 10^18
            idx = uint255(stor267.field_1)
            t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 10^18
            while idx:
                if t and t > -1 / t:
                    revert with 0, 17
                if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                    revert with 0, 17
                if not bool(idx):
                    s = s
                    idx = idx / 2
                    t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                    revert with 0, 17
                if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                    revert with 0, 17
                s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                idx = idx / 2
                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
        else:
            s = 1000000000 * 10^18
            idx = uint255(stor267.field_1)
            t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 10^18
            while idx:
                if t and t > -1 / t:
                    revert with 0, 17
                if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                    revert with 0, 17
                if not bool(idx):
                    s = s
                    idx = idx / 2
                    t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                    revert with 0, 17
                if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                    revert with 0, 17
                s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                idx = idx / 2
                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
        if s and 10^18 > -1 / s:
            revert with 0, 17
        if slippageParamK and 10^18 > -1 / slippageParamK:
            revert with 0, 17
        if 10^18 * slippageParamK > !(10^18 * s / 1000000000 * 10^18 / 2):
            revert with 0, 17
        if not 10^18 * s / 1000000000 * 10^18:
            revert with 0, 18
        if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) < xThreshold:
            if C1 < ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                revert with 0, 17
            if 10^18 < xThreshold:
                if C1 < 10^18:
                    revert with 0, 17
                if C1 - 10^18 and ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -1 / C1 - 10^18:
                    revert with 0, 17
                if (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > -500000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and C1 - (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                    revert with 0, 17
                if (C1 * ext_call.return_data[0]) - (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > -500000000000000001:
                    revert with 0, 17
                if (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                    revert with 0, 17
                if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= 0:
                        revert with 0, 'NOT_ENOUGH_CASH'
                    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < 0:
                        revert with 0, 17
                    require ext_code.size(assetOf[address(arg2)])
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(assetOf[address(arg2)])
                    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                        staticcall assetOf[address(arg2)].cash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        revert with 0, 'NOT_ENOUGH_CASH'
                    staticcall assetOf[address(arg2)].liability() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(assetOf[address(arg2)])
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                        revert with 0, 'COV_RATIO_LOW'
                    return ext_call.return_data[0] * arg3 / ext_call.return_data[0], 0
                if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                    revert with 0, 'NOT_ENOUGH_CASH'
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    revert with 0, 'NOT_ENOUGH_CASH'
                staticcall assetOf[address(arg2)].liability() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (10^18 * (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) > !(ext_call.return_data[0] / 2):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (10^18 * (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                    revert with 0, 'COV_RATIO_LOW'
                return (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), 
                       ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
            idx = uint255(stor267.field_1)
            while idx:
                idx = idx / 2
                continue 
            if slippageParamK and 10^18 > -1 / slippageParamK:
                revert with 0, 17
            if 10^18 * slippageParamK > -500000000000000001:
                revert with 0, 17
            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                revert with 0, 17
            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -500000000000000001:
                revert with 0, 17
            if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and C1 - (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                revert with 0, 17
            if (C1 * ext_call.return_data[0]) - (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > -500000000000000001:
                revert with 0, 17
            if (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                revert with 0, 17
            if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                revert with 0, 17
            if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= 0:
                    revert with 0, 'NOT_ENOUGH_CASH'
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < 0:
                    revert with 0, 17
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    revert with 0, 'NOT_ENOUGH_CASH'
                staticcall assetOf[address(arg2)].liability() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                    revert with 0, 'COV_RATIO_LOW'
                return ext_call.return_data[0] * arg3 / ext_call.return_data[0], 0
            if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                revert with 0, 17
            if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                revert with 0, 'NOT_ENOUGH_CASH'
            if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                revert with 0, 17
            require ext_code.size(assetOf[address(arg2)])
            staticcall assetOf[address(arg2)].cash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(assetOf[address(arg2)])
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                revert with 0, 'NOT_ENOUGH_CASH'
            staticcall assetOf[address(arg2)].liability() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(assetOf[address(arg2)])
            staticcall assetOf[address(arg2)].cash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                revert with 0, 17
            if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                revert with 0, 17
            if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (10^18 * ((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) > !(ext_call.return_data[0] / 2):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (10^18 * ((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                revert with 0, 'COV_RATIO_LOW'
            return (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), 
                   ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
        if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
            revert with 0, 17
        if bool(stor267.field_0):
            t = 1000000000 * 10^18 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 10^18
            idx = uint255(stor267.field_1)
            u = 1000000000 * 10^18 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 10^18
            while idx:
                if u and u > -1 / u:
                    revert with 0, 17
                if u * u > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                    revert with 0, 17
                if not bool(idx):
                    t = t
                    idx = idx / 2
                    u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                if t and (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / t:
                    revert with 0, 17
                if t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                    revert with 0, 17
                t = (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                idx = idx / 2
                u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
        else:
            t = 1000000000 * 10^18
            idx = uint255(stor267.field_1)
            u = 1000000000 * 10^18 * ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 10^18
            while idx:
                if u and u > -1 / u:
                    revert with 0, 17
                if u * u > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                    revert with 0, 17
                if not bool(idx):
                    t = t
                    idx = idx / 2
                    u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                if t and (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / t:
                    revert with 0, 17
                if t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                    revert with 0, 17
                t = (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                idx = idx / 2
                u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
    else:
        if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
            revert with 0, 17
        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > !(ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2):
            revert with 0, 17
        if not ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
            revert with 0, 18
        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < xThreshold:
            if C1 < (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                revert with 0, 17
            if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) < xThreshold:
                if C1 < (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                    revert with 0, 17
                if 10^18 < xThreshold:
                    if C1 < 10^18:
                        revert with 0, 17
                    if C1 - 10^18 and ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -1 / C1 - 10^18:
                        revert with 0, 17
                    if (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > -500000000000000001:
                        revert with 0, 17
                    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and C1 - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                        revert with 0, 17
                    if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > -500000000000000001:
                        revert with 0, 17
                    if (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                        revert with 0, 17
                    if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                        revert with 0, 17
                    if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                        if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= 0:
                            revert with 0, 'NOT_ENOUGH_CASH'
                        if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < 0:
                            revert with 0, 17
                        require ext_code.size(assetOf[address(arg2)])
                        staticcall assetOf[address(arg2)].cash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(assetOf[address(arg2)])
                        if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                            staticcall assetOf[address(arg2)].cash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            revert with 0, 'NOT_ENOUGH_CASH'
                        staticcall assetOf[address(arg2)].liability() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(assetOf[address(arg2)])
                        staticcall assetOf[address(arg2)].cash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                            revert with 0, 17
                        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                            revert with 0, 'COV_RATIO_LOW'
                        return ext_call.return_data[0] * arg3 / ext_call.return_data[0], 0
                    if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                        revert with 0, 17
                    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                        revert with 0, 'NOT_ENOUGH_CASH'
                    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                        revert with 0, 17
                    require ext_code.size(assetOf[address(arg2)])
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(assetOf[address(arg2)])
                    if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                        staticcall assetOf[address(arg2)].cash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        revert with 0, 'NOT_ENOUGH_CASH'
                    staticcall assetOf[address(arg2)].liability() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(assetOf[address(arg2)])
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                        revert with 0, 17
                    if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (10^18 * (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) > !(ext_call.return_data[0] / 2):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (10^18 * (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                        revert with 0, 'COV_RATIO_LOW'
                    return (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), 
                           ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                idx = uint255(stor267.field_1)
                while idx:
                    idx = idx / 2
                    continue 
                if slippageParamK and 10^18 > -1 / slippageParamK:
                    revert with 0, 17
                if 10^18 * slippageParamK > -500000000000000001:
                    revert with 0, 17
                if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                    revert with 0, 17
                if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -500000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and C1 - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                    revert with 0, 17
                if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > -500000000000000001:
                    revert with 0, 17
                if (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                    revert with 0, 17
                if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= 0:
                        revert with 0, 'NOT_ENOUGH_CASH'
                    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < 0:
                        revert with 0, 17
                    require ext_code.size(assetOf[address(arg2)])
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(assetOf[address(arg2)])
                    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                        staticcall assetOf[address(arg2)].cash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        revert with 0, 'NOT_ENOUGH_CASH'
                    staticcall assetOf[address(arg2)].liability() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(assetOf[address(arg2)])
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                        revert with 0, 'COV_RATIO_LOW'
                    return ext_call.return_data[0] * arg3 / ext_call.return_data[0], 0
                if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 'NOT_ENOUGH_CASH'
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    revert with 0, 'NOT_ENOUGH_CASH'
                staticcall assetOf[address(arg2)].liability() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (10^18 * ((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) > !(ext_call.return_data[0] / 2):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (10^18 * ((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                    revert with 0, 'COV_RATIO_LOW'
                return (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), 
                       ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
            if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 1000000000 * 10^18 > -1 / (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                revert with 0, 17
            if bool(stor267.field_0):
                s = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 10^18
                idx = uint255(stor267.field_1)
                t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 10^18
                while idx:
                    if t and t > -1 / t:
                        revert with 0, 17
                    if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                        revert with 0, 17
                    if not bool(idx):
                        s = s
                        idx = idx / 2
                        t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                        continue 
                    if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                        revert with 0, 17
                    if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                        revert with 0, 17
                    s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                    idx = idx / 2
                    t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
            else:
                s = 1000000000 * 10^18
                idx = uint255(stor267.field_1)
                t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 10^18
                while idx:
                    if t and t > -1 / t:
                        revert with 0, 17
                    if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                        revert with 0, 17
                    if not bool(idx):
                        s = s
                        idx = idx / 2
                        t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                        continue 
                    if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                        revert with 0, 17
                    if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                        revert with 0, 17
                    s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                    idx = idx / 2
                    t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
            if s and 10^18 > -1 / s:
                revert with 0, 17
            if slippageParamK and 10^18 > -1 / slippageParamK:
                revert with 0, 17
            if 10^18 * slippageParamK > !(10^18 * s / 1000000000 * 10^18 / 2):
                revert with 0, 17
            if not 10^18 * s / 1000000000 * 10^18:
                revert with 0, 18
            if 10^18 < xThreshold:
                if C1 < 10^18:
                    revert with 0, 17
                if C1 - 10^18 and ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -1 / C1 - 10^18:
                    revert with 0, 17
                if (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > -500000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) - (ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) > -500000000000000001:
                    revert with 0, 17
                if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                    revert with 0, 17
                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= 0:
                        revert with 0, 'NOT_ENOUGH_CASH'
                    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < 0:
                        revert with 0, 17
                    require ext_code.size(assetOf[address(arg2)])
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(assetOf[address(arg2)])
                    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                        staticcall assetOf[address(arg2)].cash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        revert with 0, 'NOT_ENOUGH_CASH'
                    staticcall assetOf[address(arg2)].liability() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(assetOf[address(arg2)])
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                        revert with 0, 'COV_RATIO_LOW'
                    return ext_call.return_data[0] * arg3 / ext_call.return_data[0], 0
                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 'NOT_ENOUGH_CASH'
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    revert with 0, 'NOT_ENOUGH_CASH'
                staticcall assetOf[address(arg2)].liability() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (10^18 * (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) > !(ext_call.return_data[0] / 2):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (10^18 * (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                    revert with 0, 'COV_RATIO_LOW'
                return (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), 
                       ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
            idx = uint255(stor267.field_1)
            while idx:
                idx = idx / 2
                continue 
            if slippageParamK and 10^18 > -1 / slippageParamK:
                revert with 0, 17
            if 10^18 * slippageParamK > -500000000000000001:
                revert with 0, 17
            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                revert with 0, 17
            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -500000000000000001:
                revert with 0, 17
            if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) - (ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) > -500000000000000001:
                revert with 0, 17
            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                revert with 0, 17
            if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                revert with 0, 17
            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= 0:
                    revert with 0, 'NOT_ENOUGH_CASH'
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < 0:
                    revert with 0, 17
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    revert with 0, 'NOT_ENOUGH_CASH'
                staticcall assetOf[address(arg2)].liability() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                    revert with 0, 'COV_RATIO_LOW'
                return ext_call.return_data[0] * arg3 / ext_call.return_data[0], 0
            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                revert with 0, 17
            if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                revert with 0, 'NOT_ENOUGH_CASH'
            if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                revert with 0, 17
            require ext_code.size(assetOf[address(arg2)])
            staticcall assetOf[address(arg2)].cash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(assetOf[address(arg2)])
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                revert with 0, 'NOT_ENOUGH_CASH'
            staticcall assetOf[address(arg2)].liability() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(assetOf[address(arg2)])
            staticcall assetOf[address(arg2)].cash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                revert with 0, 17
            if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                revert with 0, 17
            if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (10^18 * ((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) > !(ext_call.return_data[0] / 2):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (10^18 * ((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                revert with 0, 'COV_RATIO_LOW'
            return (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), 
                   ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] and 1000000000 * 10^18 > -1 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            revert with 0, 17
        if bool(stor267.field_0):
            s = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 10^18
            idx = uint255(stor267.field_1)
            t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 10^18
            while idx:
                if t and t > -1 / t:
                    revert with 0, 17
                if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                    revert with 0, 17
                if not bool(idx):
                    s = s
                    idx = idx / 2
                    t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                    revert with 0, 17
                if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                    revert with 0, 17
                s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                idx = idx / 2
                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
        else:
            s = 1000000000 * 10^18
            idx = uint255(stor267.field_1)
            t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 10^18
            while idx:
                if t and t > -1 / t:
                    revert with 0, 17
                if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                    revert with 0, 17
                if not bool(idx):
                    s = s
                    idx = idx / 2
                    t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                    revert with 0, 17
                if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                    revert with 0, 17
                s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                idx = idx / 2
                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
        if s and 10^18 > -1 / s:
            revert with 0, 17
        if slippageParamK and 10^18 > -1 / slippageParamK:
            revert with 0, 17
        if 10^18 * slippageParamK > !(10^18 * s / 1000000000 * 10^18 / 2):
            revert with 0, 17
        if not 10^18 * s / 1000000000 * 10^18:
            revert with 0, 18
        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) < xThreshold:
            if C1 < (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                revert with 0, 17
            if 10^18 < xThreshold:
                if C1 < 10^18:
                    revert with 0, 17
                if C1 - 10^18 and ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -1 / C1 - 10^18:
                    revert with 0, 17
                if (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > -500000000000000001:
                    revert with 0, 17
                if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and C1 - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                    revert with 0, 17
                if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > -500000000000000001:
                    revert with 0, 17
                if (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                    revert with 0, 17
                if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= 0:
                        revert with 0, 'NOT_ENOUGH_CASH'
                    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < 0:
                        revert with 0, 17
                    require ext_code.size(assetOf[address(arg2)])
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(assetOf[address(arg2)])
                    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                        staticcall assetOf[address(arg2)].cash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        revert with 0, 'NOT_ENOUGH_CASH'
                    staticcall assetOf[address(arg2)].liability() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(assetOf[address(arg2)])
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                        revert with 0, 'COV_RATIO_LOW'
                    return ext_call.return_data[0] * arg3 / ext_call.return_data[0], 0
                if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                    revert with 0, 17
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                    revert with 0, 'NOT_ENOUGH_CASH'
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    revert with 0, 'NOT_ENOUGH_CASH'
                staticcall assetOf[address(arg2)].liability() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (10^18 * (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) > !(ext_call.return_data[0] / 2):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (10^18 * (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                    revert with 0, 'COV_RATIO_LOW'
                return (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), 
                       ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
            idx = uint255(stor267.field_1)
            while idx:
                idx = idx / 2
                continue 
            if slippageParamK and 10^18 > -1 / slippageParamK:
                revert with 0, 17
            if 10^18 * slippageParamK > -500000000000000001:
                revert with 0, 17
            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                revert with 0, 17
            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -500000000000000001:
                revert with 0, 17
            if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and C1 - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                revert with 0, 17
            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > -500000000000000001:
                revert with 0, 17
            if (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                revert with 0, 17
            if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                revert with 0, 17
            if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= 0:
                    revert with 0, 'NOT_ENOUGH_CASH'
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < 0:
                    revert with 0, 17
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                    staticcall assetOf[address(arg2)].cash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    revert with 0, 'NOT_ENOUGH_CASH'
                staticcall assetOf[address(arg2)].liability() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(assetOf[address(arg2)])
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                    revert with 0, 'COV_RATIO_LOW'
                return ext_call.return_data[0] * arg3 / ext_call.return_data[0], 0
            if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                revert with 0, 17
            if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                revert with 0, 'NOT_ENOUGH_CASH'
            if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                revert with 0, 17
            require ext_code.size(assetOf[address(arg2)])
            staticcall assetOf[address(arg2)].cash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(assetOf[address(arg2)])
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                revert with 0, 'NOT_ENOUGH_CASH'
            staticcall assetOf[address(arg2)].liability() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(assetOf[address(arg2)])
            staticcall assetOf[address(arg2)].cash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                revert with 0, 17
            if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                revert with 0, 17
            if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (10^18 * ((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) > !(ext_call.return_data[0] / 2):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (10^18 * ((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                revert with 0, 'COV_RATIO_LOW'
            return (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), 
                   ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 1000000000 * 10^18 > -1 / (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
            revert with 0, 17
        if bool(stor267.field_0):
            t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 10^18
            idx = uint255(stor267.field_1)
            u = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 10^18
            while idx:
                if u and u > -1 / u:
                    revert with 0, 17
                if u * u > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                    revert with 0, 17
                if not bool(idx):
                    t = t
                    idx = idx / 2
                    u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                if t and (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / t:
                    revert with 0, 17
                if t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                    revert with 0, 17
                t = (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                idx = idx / 2
                u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
        else:
            t = 1000000000 * 10^18
            idx = uint255(stor267.field_1)
            u = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) / 10^18
            while idx:
                if u and u > -1 / u:
                    revert with 0, 17
                if u * u > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                    revert with 0, 17
                if not bool(idx):
                    t = t
                    idx = idx / 2
                    u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
                if t and (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / t:
                    revert with 0, 17
                if t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                    revert with 0, 17
                t = (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                idx = idx / 2
                u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
    if t and 10^18 > -1 / t:
        revert with 0, 17
    if slippageParamK and 10^18 > -1 / slippageParamK:
        revert with 0, 17
    if 10^18 * slippageParamK > !(10^18 * t / 1000000000 * 10^18 / 2):
        revert with 0, 17
    if not 10^18 * t / 1000000000 * 10^18:
        revert with 0, 18
    if 10^18 < xThreshold:
        if C1 < 10^18:
            revert with 0, 17
        if C1 - 10^18 and ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -1 / C1 - 10^18:
            revert with 0, 17
        if (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > -500000000000000001:
            revert with 0, 17
        if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
            revert with 0, 17
        if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) - (ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) > -500000000000000001:
            revert with 0, 17
        if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
            revert with 0, 17
        if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
            revert with 0, 17
        if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
            if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= 0:
                revert with 0, 'NOT_ENOUGH_CASH'
            if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < 0:
                revert with 0, 17
            require ext_code.size(assetOf[address(arg2)])
            staticcall assetOf[address(arg2)].cash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(assetOf[address(arg2)])
            if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                staticcall assetOf[address(arg2)].cash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                revert with 0, 'NOT_ENOUGH_CASH'
            staticcall assetOf[address(arg2)].liability() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(assetOf[address(arg2)])
            staticcall assetOf[address(arg2)].cash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
                revert with 0, 17
            if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
                revert with 0, 'COV_RATIO_LOW'
            return ext_call.return_data[0] * arg3 / ext_call.return_data[0], 0
        if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
            revert with 0, 17
        if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
            revert with 0, 'NOT_ENOUGH_CASH'
        if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
            revert with 0, 17
        require ext_code.size(assetOf[address(arg2)])
        staticcall assetOf[address(arg2)].cash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(assetOf[address(arg2)])
        if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
            staticcall assetOf[address(arg2)].cash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            revert with 0, 'NOT_ENOUGH_CASH'
        staticcall assetOf[address(arg2)].liability() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(assetOf[address(arg2)])
        staticcall assetOf[address(arg2)].cash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
            revert with 0, 17
        if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
            revert with 0, 17
        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (10^18 * (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) > !(ext_call.return_data[0] / 2):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (10^18 * (-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
            revert with 0, 'COV_RATIO_LOW'
        return (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), 
               ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
    idx = uint255(stor267.field_1)
    while idx:
        idx = idx / 2
        continue 
    if slippageParamK and 10^18 > -1 / slippageParamK:
        revert with 0, 17
    if 10^18 * slippageParamK > -500000000000000001:
        revert with 0, 17
    if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
        revert with 0, 17
    if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] > -500000000000000001:
        revert with 0, 17
    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
        revert with 0, 17
    if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) - (ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) > -500000000000000001:
        revert with 0, 17
    if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
        revert with 0, 17
    if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
        revert with 0, 17
    if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
        if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= 0:
            revert with 0, 'NOT_ENOUGH_CASH'
        if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < 0:
            revert with 0, 17
        require ext_code.size(assetOf[address(arg2)])
        staticcall assetOf[address(arg2)].cash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(assetOf[address(arg2)])
        if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
            staticcall assetOf[address(arg2)].cash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            revert with 0, 'NOT_ENOUGH_CASH'
        staticcall assetOf[address(arg2)].liability() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(assetOf[address(arg2)])
        staticcall assetOf[address(arg2)].cash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]):
            revert with 0, 17
        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
            revert with 0, 'COV_RATIO_LOW'
        return ext_call.return_data[0] * arg3 / ext_call.return_data[0], 0
    if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
        revert with 0, 17
    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
        revert with 0, 'NOT_ENOUGH_CASH'
    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
        revert with 0, 17
    require ext_code.size(assetOf[address(arg2)])
    staticcall assetOf[address(arg2)].cash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(assetOf[address(arg2)])
    if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
        staticcall assetOf[address(arg2)].cash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        revert with 0, 'NOT_ENOUGH_CASH'
    staticcall assetOf[address(arg2)].liability() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(assetOf[address(arg2)])
    staticcall assetOf[address(arg2)].cash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
        revert with 0, 17
    if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
        revert with 0, 17
    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (10^18 * ((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) > !(ext_call.return_data[0] / 2):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (10^18 * ((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (10^18 * (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < 10^18:
        revert with 0, 'COV_RATIO_LOW'
    return (ext_call.return_data[0] * arg3 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), 
           ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg3 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
}

function withdrawETH(uint256 arg1, uint256 arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg3 == arg3
    if arg4 < block.timestamp:
        revert with 0, 'EXPIRED'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if stor151:
        revert with 0, 'Pausable: paused'
    if not stor279[stor265]:
        revert with 0, 'ASSET_NOT_EXIST'
    require ext_code.size(assetOf[stor265])
    staticcall assetOf[stor265].0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(assetOf[stor265])
    staticcall assetOf[stor265].liability() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg1 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
        revert with 0, 'INSUFFICIENT_LIQ_BURN'
    require ext_code.size(assetOf[stor265])
    staticcall assetOf[stor265].cash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(assetOf[stor265])
    staticcall assetOf[stor265].liability() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if 10^18 * ext_call.return_data[0] > !(ext_call.return_data[0] / 2):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] >= 10^18:
        if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
            if arg2 > 0:
                revert with 0, 'AMOUNT_TOO_LOW'
            require ext_code.size(assetOf[stor265])
            call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(assetOf[stor265])
            call assetOf[stor265].removeCash(uint256 arg1) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(assetOf[stor265])
            call assetOf[stor265].removeLiability(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(assetOf[stor265])
            call assetOf[stor265].0x9e79eaa5 with:
                 gas gas_remaining wei
                args sub_03b2f7aaAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_03b2f7aaAddress)
            call sub_03b2f7aaAddress.0x8ce43367 with:
                 gas gas_remaining wei
                args address(arg3), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
            stor101 = 1
            return 0
        if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0:
            revert with 0, 17
        require ext_code.size(assetOf[stor265])
        staticcall assetOf[stor265].cash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
            if arg2 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                revert with 0, 'AMOUNT_TOO_LOW'
            require ext_code.size(assetOf[stor265])
            call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(assetOf[stor265])
            call assetOf[stor265].removeCash(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(assetOf[stor265])
            call assetOf[stor265].removeLiability(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(assetOf[stor265])
            call assetOf[stor265].0x9e79eaa5 with:
                 gas gas_remaining wei
                args sub_03b2f7aaAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_03b2f7aaAddress)
            call sub_03b2f7aaAddress.0x8ce43367 with:
                 gas gas_remaining wei
                args address(arg3), ext_call.return_data[0] * arg1 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdraw(wethAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, msg.sender, arg3);
            stor101 = 1
            return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
    else:
        if ext_call.return_data[0] <= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
            if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
                if arg2 > 0:
                    revert with 0, 'AMOUNT_TOO_LOW'
                require ext_code.size(assetOf[stor265])
                call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(assetOf[stor265])
                call assetOf[stor265].removeCash(uint256 arg1) with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(assetOf[stor265])
                call assetOf[stor265].removeLiability(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(assetOf[stor265])
                call assetOf[stor265].0x9e79eaa5 with:
                     gas gas_remaining wei
                    args sub_03b2f7aaAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_03b2f7aaAddress)
                call sub_03b2f7aaAddress.0x8ce43367 with:
                     gas gas_remaining wei
                    args address(arg3), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                stor101 = 1
                return 0
            if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0:
                revert with 0, 17
            require ext_code.size(assetOf[stor265])
            staticcall assetOf[stor265].cash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                if arg2 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                    revert with 0, 'AMOUNT_TOO_LOW'
                require ext_code.size(assetOf[stor265])
                call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(assetOf[stor265])
                call assetOf[stor265].removeCash(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(assetOf[stor265])
                call assetOf[stor265].removeLiability(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(assetOf[stor265])
                call assetOf[stor265].0x9e79eaa5 with:
                     gas gas_remaining wei
                    args sub_03b2f7aaAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_03b2f7aaAddress)
                call sub_03b2f7aaAddress.0x8ce43367 with:
                     gas gas_remaining wei
                    args address(arg3), ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Withdraw(wethAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, msg.sender, arg3);
                stor101 = 1
                return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
        else:
            if ext_call.return_data[0] < ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] <= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                if 0 > !(ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2):
                    revert with 0, 17
                if not ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                    revert with 0, 18
                if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < xThreshold:
                    if C1 < (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) < xThreshold:
                        if C1 < ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                            revert with 0, 17
                        if 10^18 < xThreshold:
                            if C1 < 10^18:
                                revert with 0, 17
                            if C1 - 10^18 and ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -1 / C1 - 10^18:
                                revert with 0, 17
                            if (-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and C1 - (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                    if arg2 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                            else:
                                if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    if arg2 > (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18))
                        else:
                            idx = uint255(stor267.field_1)
                            while idx:
                                idx = idx / 2
                                continue 
                            if slippageParamK and 10^18 > -1 / slippageParamK:
                                revert with 0, 17
                            if 10^18 * slippageParamK > -500000000000000001:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and C1 - (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                    if arg2 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                            else:
                                if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    if arg2 > (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18))
                    else:
                        if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                            revert with 0, 17
                        if bool(stor267.field_0):
                            s = 1000000000 * 10^18 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18
                            idx = uint255(stor267.field_1)
                            t = 1000000000 * 10^18 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18
                            while idx:
                                if t and t > -1 / t:
                                    revert with 0, 17
                                if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s
                                    idx = idx / 2
                                    t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                    continue 
                                if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                                    revert with 0, 17
                                if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                                idx = idx / 2
                                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                        else:
                            s = 1000000000 * 10^18
                            idx = uint255(stor267.field_1)
                            t = 1000000000 * 10^18 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18
                            while idx:
                                if t and t > -1 / t:
                                    revert with 0, 17
                                if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s
                                    idx = idx / 2
                                    t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                    continue 
                                if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                                    revert with 0, 17
                                if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                                idx = idx / 2
                                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                        if s and 10^18 > -1 / s:
                            revert with 0, 17
                        if slippageParamK and 10^18 > -1 / slippageParamK:
                            revert with 0, 17
                        if 10^18 * slippageParamK > !(10^18 * s / 1000000000 * 10^18 / 2):
                            revert with 0, 17
                        if not 10^18 * s / 1000000000 * 10^18:
                            revert with 0, 18
                        if 10^18 < xThreshold:
                            if C1 < 10^18:
                                revert with 0, 17
                            if C1 - 10^18 and ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -1 / C1 - 10^18:
                                revert with 0, 17
                            if (-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) - (ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) > -500000000000000001:
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                    if arg2 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                            else:
                                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    if arg2 > (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18))
                        else:
                            idx = uint255(stor267.field_1)
                            while idx:
                                idx = idx / 2
                                continue 
                            if slippageParamK and 10^18 > -1 / slippageParamK:
                                revert with 0, 17
                            if 10^18 * slippageParamK > -500000000000000001:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) - (ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) > -500000000000000001:
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                    if arg2 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                            else:
                                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    if arg2 > (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18))
                else:
                    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] and 1000000000 * 10^18 > -1 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                        revert with 0, 17
                    if bool(stor267.field_0):
                        s = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 10^18
                        idx = uint255(stor267.field_1)
                        t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 10^18
                        while idx:
                            if t and t > -1 / t:
                                revert with 0, 17
                            if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                revert with 0, 17
                            if not bool(idx):
                                s = s
                                idx = idx / 2
                                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                            if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                                revert with 0, 17
                            if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                revert with 0, 17
                            s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                            idx = idx / 2
                            t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                            continue 
                    else:
                        s = 1000000000 * 10^18
                        idx = uint255(stor267.field_1)
                        t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 10^18
                        while idx:
                            if t and t > -1 / t:
                                revert with 0, 17
                            if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                revert with 0, 17
                            if not bool(idx):
                                s = s
                                idx = idx / 2
                                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                            if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                                revert with 0, 17
                            if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                revert with 0, 17
                            s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                            idx = idx / 2
                            t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                            continue 
                    if s and 10^18 > -1 / s:
                        revert with 0, 17
                    if slippageParamK and 10^18 > -1 / slippageParamK:
                        revert with 0, 17
                    if 10^18 * slippageParamK > !(10^18 * s / 1000000000 * 10^18 / 2):
                        revert with 0, 17
                    if not 10^18 * s / 1000000000 * 10^18:
                        revert with 0, 18
                    if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) < xThreshold:
                        if C1 < ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                            revert with 0, 17
                        if 10^18 < xThreshold:
                            if C1 < 10^18:
                                revert with 0, 17
                            if C1 - 10^18 and ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -1 / C1 - 10^18:
                                revert with 0, 17
                            if (-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and C1 - (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                                revert with 0, 17
                            if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                    if arg2 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                            else:
                                if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    if arg2 > (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18))
                        else:
                            idx = uint255(stor267.field_1)
                            while idx:
                                idx = idx / 2
                                continue 
                            if slippageParamK and 10^18 > -1 / slippageParamK:
                                revert with 0, 17
                            if 10^18 * slippageParamK > -500000000000000001:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and C1 - (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                                revert with 0, 17
                            if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                    if arg2 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                            else:
                                if ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    if arg2 > (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18))
                    else:
                        if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                            revert with 0, 17
                        if bool(stor267.field_0):
                            t = 1000000000 * 10^18 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18
                            idx = uint255(stor267.field_1)
                            u = 1000000000 * 10^18 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18
                            while idx:
                                if u and u > -1 / u:
                                    revert with 0, 17
                                if u * u > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                if not bool(idx):
                                    t = t
                                    idx = idx / 2
                                    u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                                    continue 
                                if t and (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / t:
                                    revert with 0, 17
                                if t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                t = (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                                idx = idx / 2
                                u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                        else:
                            t = 1000000000 * 10^18
                            idx = uint255(stor267.field_1)
                            u = 1000000000 * 10^18 * ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18
                            while idx:
                                if u and u > -1 / u:
                                    revert with 0, 17
                                if u * u > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                if not bool(idx):
                                    t = t
                                    idx = idx / 2
                                    u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                                    continue 
                                if t and (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / t:
                                    revert with 0, 17
                                if t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                t = (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                                idx = idx / 2
                                u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                        if t and 10^18 > -1 / t:
                            revert with 0, 17
                        if slippageParamK and 10^18 > -1 / slippageParamK:
                            revert with 0, 17
                        if 10^18 * slippageParamK > !(10^18 * t / 1000000000 * 10^18 / 2):
                            revert with 0, 17
                        if not 10^18 * t / 1000000000 * 10^18:
                            revert with 0, 18
                        if 10^18 < xThreshold:
                            if C1 < 10^18:
                                revert with 0, 17
                            if C1 - 10^18 and ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -1 / C1 - 10^18:
                                revert with 0, 17
                            if (-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) - (ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) > -500000000000000001:
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                                revert with 0, 17
                            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                    if arg2 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                            else:
                                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    if arg2 > (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18))
                        else:
                            idx = uint255(stor267.field_1)
                            while idx:
                                idx = idx / 2
                                continue 
                            if slippageParamK and 10^18 > -1 / slippageParamK:
                                revert with 0, 17
                            if 10^18 * slippageParamK > -500000000000000001:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) - (ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) > -500000000000000001:
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                                revert with 0, 17
                            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                    if arg2 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                            else:
                                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    if arg2 > (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18))
            else:
                if ext_call.return_data[0] < ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                    revert with 0, 17
                if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) > !(ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2):
                    revert with 0, 17
                if not ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                    revert with 0, 18
                if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] < xThreshold:
                    if C1 < (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                        revert with 0, 17
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) < xThreshold:
                        if C1 < (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                            revert with 0, 17
                        if 10^18 < xThreshold:
                            if C1 < 10^18:
                                revert with 0, 17
                            if C1 - 10^18 and ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -1 / C1 - 10^18:
                                revert with 0, 17
                            if (-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and C1 - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                    if arg2 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                            else:
                                if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    if arg2 > (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18))
                        else:
                            idx = uint255(stor267.field_1)
                            while idx:
                                idx = idx / 2
                                continue 
                            if slippageParamK and 10^18 > -1 / slippageParamK:
                                revert with 0, 17
                            if 10^18 * slippageParamK > -500000000000000001:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and C1 - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                    if arg2 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                            else:
                                if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    if arg2 > (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18))
                    else:
                        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and 1000000000 * 10^18 > -1 / (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                            revert with 0, 17
                        if bool(stor267.field_0):
                            s = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18
                            idx = uint255(stor267.field_1)
                            t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18
                            while idx:
                                if t and t > -1 / t:
                                    revert with 0, 17
                                if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s
                                    idx = idx / 2
                                    t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                    continue 
                                if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                                    revert with 0, 17
                                if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                                idx = idx / 2
                                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                        else:
                            s = 1000000000 * 10^18
                            idx = uint255(stor267.field_1)
                            t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18
                            while idx:
                                if t and t > -1 / t:
                                    revert with 0, 17
                                if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s
                                    idx = idx / 2
                                    t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                    continue 
                                if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                                    revert with 0, 17
                                if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                                idx = idx / 2
                                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                        if s and 10^18 > -1 / s:
                            revert with 0, 17
                        if slippageParamK and 10^18 > -1 / slippageParamK:
                            revert with 0, 17
                        if 10^18 * slippageParamK > !(10^18 * s / 1000000000 * 10^18 / 2):
                            revert with 0, 17
                        if not 10^18 * s / 1000000000 * 10^18:
                            revert with 0, 18
                        if 10^18 < xThreshold:
                            if C1 < 10^18:
                                revert with 0, 17
                            if C1 - 10^18 and ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -1 / C1 - 10^18:
                                revert with 0, 17
                            if (-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) - (ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) > -500000000000000001:
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                    if arg2 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                            else:
                                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    if arg2 > (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18))
                        else:
                            idx = uint255(stor267.field_1)
                            while idx:
                                idx = idx / 2
                                continue 
                            if slippageParamK and 10^18 > -1 / slippageParamK:
                                revert with 0, 17
                            if 10^18 * slippageParamK > -500000000000000001:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) - (ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) > -500000000000000001:
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and C1 - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                    if arg2 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                            else:
                                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    if arg2 > (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18), arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18))
                else:
                    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] and 1000000000 * 10^18 > -1 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                        revert with 0, 17
                    if bool(stor267.field_0):
                        s = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 10^18
                        idx = uint255(stor267.field_1)
                        t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 10^18
                        while idx:
                            if t and t > -1 / t:
                                revert with 0, 17
                            if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                revert with 0, 17
                            if not bool(idx):
                                s = s
                                idx = idx / 2
                                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                            if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                                revert with 0, 17
                            if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                revert with 0, 17
                            s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                            idx = idx / 2
                            t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                            continue 
                    else:
                        s = 1000000000 * 10^18
                        idx = uint255(stor267.field_1)
                        t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 10^18
                        while idx:
                            if t and t > -1 / t:
                                revert with 0, 17
                            if t * t > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                revert with 0, 17
                            if not bool(idx):
                                s = s
                                idx = idx / 2
                                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                            if s and (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / s:
                                revert with 0, 17
                            if s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                revert with 0, 17
                            s = (s * (t * t) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                            idx = idx / 2
                            t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                            continue 
                    if s and 10^18 > -1 / s:
                        revert with 0, 17
                    if slippageParamK and 10^18 > -1 / slippageParamK:
                        revert with 0, 17
                    if 10^18 * slippageParamK > !(10^18 * s / 1000000000 * 10^18 / 2):
                        revert with 0, 17
                    if not 10^18 * s / 1000000000 * 10^18:
                        revert with 0, 18
                    if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) < xThreshold:
                        if C1 < (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                            revert with 0, 17
                        if 10^18 < xThreshold:
                            if C1 < 10^18:
                                revert with 0, 17
                            if C1 - 10^18 and ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -1 / C1 - 10^18:
                                revert with 0, 17
                            if (-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and C1 - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                                revert with 0, 17
                            if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                    if arg2 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                            else:
                                if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    if arg2 > (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18))
                        else:
                            idx = uint255(stor267.field_1)
                            while idx:
                                idx = idx / 2
                                continue 
                            if slippageParamK and 10^18 > -1 / slippageParamK:
                                revert with 0, 17
                            if 10^18 * slippageParamK > -500000000000000001:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and C1 - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0])) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) - (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if (C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                                revert with 0, 17
                            if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                    if arg2 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                            else:
                                if ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    if arg2 > (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((C1 * ext_call.return_data[0]) + (-1 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0]) + (-1 * C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18))
                    else:
                        if (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and 1000000000 * 10^18 > -1 / (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                            revert with 0, 17
                        if bool(stor267.field_0):
                            t = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18
                            idx = uint255(stor267.field_1)
                            u = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18
                            while idx:
                                if u and u > -1 / u:
                                    revert with 0, 17
                                if u * u > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                if not bool(idx):
                                    t = t
                                    idx = idx / 2
                                    u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                                    continue 
                                if t and (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / t:
                                    revert with 0, 17
                                if t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                t = (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                                idx = idx / 2
                                u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                        else:
                            t = 1000000000 * 10^18
                            idx = uint255(stor267.field_1)
                            u = 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 2) / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18
                            while idx:
                                if u and u > -1 / u:
                                    revert with 0, 17
                                if u * u > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                if not bool(idx):
                                    t = t
                                    idx = idx / 2
                                    u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                                    continue 
                                if t and (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > -1 / t:
                                    revert with 0, 17
                                if t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                t = (t * (u * u) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18
                                idx = idx / 2
                                u = (u * u) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                        if t and 10^18 > -1 / t:
                            revert with 0, 17
                        if slippageParamK and 10^18 > -1 / slippageParamK:
                            revert with 0, 17
                        if 10^18 * slippageParamK > !(10^18 * t / 1000000000 * 10^18 / 2):
                            revert with 0, 17
                        if not 10^18 * t / 1000000000 * 10^18:
                            revert with 0, 18
                        if 10^18 < xThreshold:
                            if C1 < 10^18:
                                revert with 0, 17
                            if C1 - 10^18 and ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -1 / C1 - 10^18:
                                revert with 0, 17
                            if (-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) - (ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) > -500000000000000001:
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                                revert with 0, 17
                            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                    if arg2 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                            else:
                                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    if arg2 > (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - ((-1 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (C1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18))
                        else:
                            idx = uint255(stor267.field_1)
                            while idx:
                                idx = idx / 2
                                continue 
                            if slippageParamK and 10^18 > -1 / slippageParamK:
                                revert with 0, 17
                            if 10^18 * slippageParamK > -500000000000000001:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 and ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -1 / (10^18 * slippageParamK) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            if (10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] > -500000000000000001:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) and (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) - (ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) > -500000000000000001:
                                revert with 0, 17
                            if (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18 > !(((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                revert with 0, 17
                            if ext_call.return_data[0] and (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18 > -500000000000000001:
                                revert with 0, 17
                            if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) <= (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= 0:
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                    if arg2 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                            else:
                                if ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) < (ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    if arg2 > 0:
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, 0, arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return 0
                                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] < ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) + (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                require ext_code.size(assetOf[stor265])
                                staticcall assetOf[stor265].cash() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                    if arg2 > (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18):
                                        revert with 0, 'AMOUNT_TOO_LOW'
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeCash(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].removeLiability(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(assetOf[stor265])
                                    call assetOf[stor265].0x9e79eaa5 with:
                                         gas gas_remaining wei
                                        args sub_03b2f7aaAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_03b2f7aaAddress)
                                    call sub_03b2f7aaAddress.0x8ce43367 with:
                                         gas gas_remaining wei
                                        args address(arg3), (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdraw(wethAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18), arg1, msg.sender, arg3);
                                    stor101 = 1
                                    return ((ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + (-1 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * t / 1000000000 * 10^18 / 2) / 10^18 * t / 1000000000 * 10^18) + 5 * 10^17 / 10^18) - (((10^18 * slippageParamK) + 5 * 10^17 / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * slippageParamK) + (10^18 * s / 1000000000 * 10^18 / 2) / 10^18 * s / 1000000000 * 10^18) + 5 * 10^17 / 10^18))
    require ext_code.size(assetOf[stor265])
    staticcall assetOf[stor265].cash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'AMOUNT_TOO_LOW'
    require ext_code.size(assetOf[stor265])
    call assetOf[stor265].burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(assetOf[stor265])
    call assetOf[stor265].removeCash(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(assetOf[stor265])
    call assetOf[stor265].removeLiability(uint256 arg1) with:
         gas gas_remaining wei
        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(assetOf[stor265])
    call assetOf[stor265].0x9e79eaa5 with:
         gas gas_remaining wei
        args sub_03b2f7aaAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_03b2f7aaAddress)
    call sub_03b2f7aaAddress.0x8ce43367 with:
         gas gas_remaining wei
        args address(arg3), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(wethAddress, ext_call.return_data[0], arg1, msg.sender, arg3);
    stor101 = 1
    return ext_call.return_data[0]
}



}
