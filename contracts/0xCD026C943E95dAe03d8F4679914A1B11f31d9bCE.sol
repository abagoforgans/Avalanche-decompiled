contract main {




// =====================  Runtime code  =====================


#
#  - process()
#  - _fallback()
#
const decimals = 9


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address routerAddress;
address rewardTokenAddress;
uint256 stor8;
mapping of struct stor9;
mapping of uint256 withdrawnDividendOf;
uint256 totalDividendsDistributed;
uint256 numberOfTokenHolders;
uint256 lastProcessedIndex;
mapping of uint8 stor17;
mapping of uint256 lastClaimTimes;
uint256 claimWait;
uint256 gasForProcessing;
uint256 minimumTokenBalanceForDividends;

function getNumberOfTokenHolders() {
    return numberOfTokenHolders
}

function totalSupply() {
    return totalSupply
}

function lastClaimTimes(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastClaimTimes[arg1]
}

function lastProcessedIndex() {
    return lastProcessedIndex
}

function excludedFromDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor17[arg1])
}

function claimWait() {
    return claimWait
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function totalDividendsDistributed() {
    return totalDividendsDistributed
}

function owner() {
    return owner
}

function gasForProcessing() {
    return gasForProcessing
}

function withdrawnDividendOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return withdrawnDividendOf[address(arg1)]
}

function minimumTokenBalanceForDividends() {
    return minimumTokenBalanceForDividends
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function getLastProcessedIndex() {
    return lastProcessedIndex
}

function rewardToken() {
    return rewardTokenAddress
}

function router() {
    return routerAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRewardToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardTokenAddress = arg1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LayerFort_Dividend_Tracker: No transfers allowed'
}

function sub_9d7ceafb(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    minimumTokenBalanceForDividends = 10^9 * arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LayerFort_Dividend_Tracker: No transfers allowed'
}

function accumulativeDividendOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8 and balanceOf[address(arg1)] > -1 / stor8:
        revert with 0, 17
    if stor8 * balanceOf[address(arg1)] > !stor9[address(arg1)].field_128:
        revert with 0, 17
    return ((stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function dividendOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8 and balanceOf[address(arg1)] > -1 / stor8:
        revert with 0, 17
    if stor8 * balanceOf[address(arg1)] > !stor9[address(arg1)].field_128:
        revert with 0, 17
    if (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)]:
        revert with 0, 17
    return ((stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)])
}

function withdrawableDividendOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8 and balanceOf[address(arg1)] > -1 / stor8:
        revert with 0, 17
    if stor8 * balanceOf[address(arg1)] > !stor9[address(arg1)].field_128:
        revert with 0, 17
    if (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)]:
        revert with 0, 17
    return ((stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)])
}

function distributeDividends() payable {
    require totalSupply > 0
    if msg.value:
        if msg.value and 0x100000000000000000000000000000000 > -1 / msg.value:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if stor8 > !(msg.value << 128 / totalSupply):
            revert with 0, 17
        stor8 += msg.value << 128 / totalSupply
        emit DividendsDistributed(msg.value, msg.sender);
        if totalDividendsDistributed > !msg.value:
            revert with 0, 17
        totalDividendsDistributed += msg.value
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function setGasForProcessing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 200000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LayerFort: gasForProcessing must be between 200,000 and 500,000'
    if arg1 > 500000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LayerFort: gasForProcessing must be between 200,000 and 500,000'
    if arg1 == gasForProcessing:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LayerFort: Cannot update gasForProcessing to same value'
    emit GasForProcessingUpdated(arg1, gasForProcessing);
    gasForProcessing = arg1
}

function updateClaimWait(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LayerFort_Dividend_Tracker: claimWait must be updated to between 1 and 24 hours'
    if arg1 > 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LayerFort_Dividend_Tracker: claimWait must be updated to between 1 and 24 hours'
    if arg1 == claimWait:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LayerFort_Dividend_Tracker: Cannot update claimWait to same value'
    emit ClaimWaitUpdated(arg1, claimWait);
    claimWait = arg1
}

function sub_854c84dc(?) {
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[_5 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _19 + -mem[64] + 64
    mem[_5 + ceil32(return_data.size) + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[_5 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_5) + _20 + -mem[64] + 64
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function excludeFromDividends(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 != bool(stor17[address(arg1)])
    stor17[address(arg1)] = uint8(arg2)
    if arg2 != 1:
        if balanceOf[address(arg1)] > balanceOf[address(arg1)]:
            if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                revert with 0, 17
            if not arg1:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !0:
                revert with 0, 17
            if balanceOf[address(arg1)] > !0:
                revert with 0, 17
            emit Transfer(0, 0, arg1);
            if stor8 and 0 > -1 / stor8:
                revert with 0, 17
            if stor9[address(arg1)].field_0 < (balanceOf[address(arg1)] * stor8) + (-1 * balanceOf[address(arg1)] * stor8) - 0x8000000000000000000000000000000000000000000000000000000000000000 and (balanceOf[address(arg1)] * stor8) - (balanceOf[address(arg1)] * stor8) >= 0:
                revert with 0, 17
            if (balanceOf[address(arg1)] * stor8) - (balanceOf[address(arg1)] * stor8) < 0 and stor9[address(arg1)].field_0 > (balanceOf[address(arg1)] * stor8) + (-1 * balanceOf[address(arg1)] * stor8) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            stor9[address(arg1)].field_0 = stor9[address(arg1)].field_0 - (balanceOf[address(arg1)] * stor8) + (balanceOf[address(arg1)] * stor8)
        else:
            if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                if balanceOf[address(arg1)] < 0:
                    revert with 0, 17
                if totalSupply < 0:
                    revert with 0, 17
                emit Transfer(0, arg1, 0);
                if stor8 and 0 > -1 / stor8:
                    revert with 0, 17
                if (balanceOf[address(arg1)] * stor8) - (balanceOf[address(arg1)] * stor8) > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                    revert with 0, 17
                if stor9[address(arg1)].field_0 < 0 and (balanceOf[address(arg1)] * stor8) - (balanceOf[address(arg1)] * stor8) < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor9[address(arg1)].field_0 = stor9[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor8) - (balanceOf[address(arg1)] * stor8)
        require ext_code.size(0xb58f51386948d566d8e124c6cd86a10a9caf5d88)
        delegate 0xb58f51386948d566d8e124c6cd86a10a9caf5d88.0xbc2b405c with:
             gas gas_remaining wei
            args 12, address(arg1), balanceOf[address(arg1)]
    else:
        if 0 > balanceOf[address(arg1)]:
            if 0 < balanceOf[address(arg1)]:
                revert with 0, 17
            if not arg1:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !-balanceOf[address(arg1)]:
                revert with 0, 17
            totalSupply -= balanceOf[address(arg1)]
            if balanceOf[address(arg1)] > !-balanceOf[address(arg1)]:
                revert with 0, 17
            balanceOf[address(arg1)] = 0
            emit Transfer(-balanceOf[address(arg1)], 0, arg1);
            if stor8 and -balanceOf[address(arg1)] > -1 / stor8:
                revert with 0, 17
            if stor9[address(arg1)].field_0 < (-1 * stor8 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000 and -1 * stor8 * balanceOf[address(arg1)] >= 0:
                revert with 0, 17
            if -1 * stor8 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 > (-1 * stor8 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            stor9[address(arg1)].field_0 += stor8 * balanceOf[address(arg1)]
        else:
            if 0 < balanceOf[address(arg1)]:
                if balanceOf[address(arg1)] < 0:
                    revert with 0, 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 17
                balanceOf[address(arg1)] = 0
                if totalSupply < balanceOf[address(arg1)]:
                    revert with 0, 17
                totalSupply -= balanceOf[address(arg1)]
                emit Transfer(balanceOf[address(arg1)], arg1, 0);
                if stor8 and balanceOf[address(arg1)] > -1 / stor8:
                    revert with 0, 17
                if stor8 * balanceOf[address(arg1)] > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                    revert with 0, 17
                if stor9[address(arg1)].field_0 < 0 and stor8 * balanceOf[address(arg1)] < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor9[address(arg1)].field_0 += stor8 * balanceOf[address(arg1)]
        require ext_code.size(0xb58f51386948d566d8e124c6cd86a10a9caf5d88)
        delegate 0xb58f51386948d566d8e124c6cd86a10a9caf5d88.0x4c60db9c with:
             gas gas_remaining wei
            args 12, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit ExcludeFromDividends(arg2, arg1);
}

function processAccount(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor8 and balanceOf[address(arg1)] > -1 / stor8:
        revert with 0, 17
    if stor8 * balanceOf[address(arg1)] > !stor9[address(arg1)].field_128:
        revert with 0, 17
    if (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)]:
        revert with 0, 17
    if not (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)]:
        return 0
    if withdrawnDividendOf[address(arg1)] > !((stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)]):
        revert with 0, 17
    mem[0] = arg1
    mem[32] = 10
    withdrawnDividendOf[address(arg1)] = (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128
    emit DividendWithdrawn(((stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)]), arg1);
    require ext_code.size(routerAddress)
    staticcall routerAddress.0x73b295c2 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == rewardTokenAddress:
        call arg1 with:
           value (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)] wei
             gas 3000 wei
        if not ext_call.success:
            if withdrawnDividendOf[address(arg1)] < (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)]:
                revert with 0, 17
            withdrawnDividendOf[address(arg1)] = (2 * withdrawnDividendOf[address(arg1)]) - (stor8 * balanceOf[address(arg1)]) - stor9[address(arg1)].field_128
            return 0
    else:
        mem[ceil32(return_data.size) + 96] = 2
        require ext_code.size(routerAddress)
        staticcall routerAddress.0x73b295c2 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 160] = rewardTokenAddress
        if 2 > !block.timestamp:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = 0
        mem[(2 * ceil32(return_data.size)) + 228] = 128
        mem[(2 * ceil32(return_data.size)) + 324] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 356
        t = ceil32(return_data.size) + 128
        while idx < mem[ceil32(return_data.size) + 96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 260] = arg1
        mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp + 2
        require ext_code.size(routerAddress)
        call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)] wei
             gas gas_remaining wei
            args 0, 128, address(arg1), block.timestamp + 2, mem[(2 * ceil32(return_data.size)) + 324 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if not ext_call.success:
            call arg1 with:
               value (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)] wei
                 gas 3000 wei
            if not ext_call.success:
                if withdrawnDividendOf[address(arg1)] < (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)]:
                    revert with 0, 17
                withdrawnDividendOf[address(arg1)] = (2 * withdrawnDividendOf[address(arg1)]) - (stor8 * balanceOf[address(arg1)]) - stor9[address(arg1)].field_128
                return 0
        else:
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
                revert with 0, 65
            require return_data.size >= mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 32
    if not (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)]:
        return 0
    lastClaimTimes[address(arg1)] = block.timestamp
    emit Claim(((stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)]), arg1, arg2);
    return 1
}

function getAccount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xb58f51386948d566d8e124c6cd86a10a9caf5d88)
    delegate 0xb58f51386948d566d8e124c6cd86a10a9caf5d88.0x17e142d1 with:
         gas gas_remaining wei
        args 12, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] < 0:
        if stor8 and balanceOf[address(arg1)] > -1 / stor8:
            revert with 0, 17
        if stor8 * balanceOf[address(arg1)] > !stor9[address(arg1)].field_128:
            revert with 0, 17
        if (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)]:
            revert with 0, 17
        if stor8 and balanceOf[address(arg1)] > -1 / stor8:
            revert with 0, 17
        if stor8 * balanceOf[address(arg1)] > !stor9[address(arg1)].field_128:
            revert with 0, 17
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       -1,
                       (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)],
                       (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128,
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if 0 < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   delegate.return_data[0],
                   -1,
                   (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)],
                   (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128,
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(arg1)] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   -1,
                   (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)],
                   (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128,
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   0
        if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               delegate.return_data[0],
               -1,
               (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)],
               (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128,
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               lastClaimTimes[address(arg1)] + claimWait - block.timestamp
    if delegate.return_data[0] > lastProcessedIndex:
        if delegate.return_data[0] < lastProcessedIndex - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastProcessedIndex >= 0:
            revert with 0, 17
        if lastProcessedIndex < 0 and delegate.return_data[0] > lastProcessedIndex + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if stor8 and balanceOf[address(arg1)] > -1 / stor8:
            revert with 0, 17
        if stor8 * balanceOf[address(arg1)] > !stor9[address(arg1)].field_128:
            revert with 0, 17
        if (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)]:
            revert with 0, 17
        if stor8 and balanceOf[address(arg1)] > -1 / stor8:
            revert with 0, 17
        if stor8 * balanceOf[address(arg1)] > !stor9[address(arg1)].field_128:
            revert with 0, 17
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)],
                       (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128,
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if 0 < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)],
                   (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128,
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(arg1)] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)],
                   (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128,
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   0
        if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               delegate.return_data[0],
               delegate.return_data[0] - lastProcessedIndex,
               (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)],
               (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128,
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               lastClaimTimes[address(arg1)] + claimWait - block.timestamp
    if lastProcessedIndex >= numberOfTokenHolders:
        if 0 > -delegate.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and delegate.return_data[0] >= 0:
            revert with 0, 17
        if delegate.return_data[0] < 0 and 0 < -delegate.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor8 and balanceOf[address(arg1)] > -1 / stor8:
            revert with 0, 17
        if stor8 * balanceOf[address(arg1)] > !stor9[address(arg1)].field_128:
            revert with 0, 17
        if (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)]:
            revert with 0, 17
        if stor8 and balanceOf[address(arg1)] > -1 / stor8:
            revert with 0, 17
        if stor8 * balanceOf[address(arg1)] > !stor9[address(arg1)].field_128:
            revert with 0, 17
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)],
                       (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128,
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if 0 < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0],
                   (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)],
                   (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128,
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(arg1)] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0],
                   (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)],
                   (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128,
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   0
        if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               delegate.return_data[0],
               delegate.return_data[0],
               (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)],
               (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128,
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               lastClaimTimes[address(arg1)] + claimWait - block.timestamp
    if numberOfTokenHolders < lastProcessedIndex:
        revert with 0, 17
    if numberOfTokenHolders - lastProcessedIndex > -delegate.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and delegate.return_data[0] >= 0:
        revert with 0, 17
    if delegate.return_data[0] < 0 and numberOfTokenHolders - lastProcessedIndex < -delegate.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor8 and balanceOf[address(arg1)] > -1 / stor8:
        revert with 0, 17
    if stor8 * balanceOf[address(arg1)] > !stor9[address(arg1)].field_128:
        revert with 0, 17
    if (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)]:
        revert with 0, 17
    if stor8 and balanceOf[address(arg1)] > -1 / stor8:
        revert with 0, 17
    if stor8 * balanceOf[address(arg1)] > !stor9[address(arg1)].field_128:
        revert with 0, 17
    if not lastClaimTimes[address(arg1)]:
        if 0 <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                   (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)],
                   (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128,
                   lastClaimTimes[address(arg1)],
                   0,
                   0
        if 0 < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               delegate.return_data[0],
               delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
               (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)],
               (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128,
               lastClaimTimes[address(arg1)],
               0,
               -block.timestamp
    if lastClaimTimes[address(arg1)] > !claimWait:
        revert with 0, 17
    if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
        return address(arg1), 
               delegate.return_data[0],
               delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
               (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)],
               (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128,
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               0
    if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
        revert with 0, 17
    return address(arg1), 
           delegate.return_data[0],
           delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
           (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)],
           (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128,
           lastClaimTimes[address(arg1)],
           lastClaimTimes[address(arg1)] + claimWait,
           lastClaimTimes[address(arg1)] + claimWait - block.timestamp
}

function setBalance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor17[address(arg1)]:
        if arg2 < minimumTokenBalanceForDividends:
            if 0 > balanceOf[address(arg1)]:
                if 0 < balanceOf[address(arg1)]:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !-balanceOf[address(arg1)]:
                    revert with 0, 17
                totalSupply -= balanceOf[address(arg1)]
                if balanceOf[address(arg1)] > !-balanceOf[address(arg1)]:
                    revert with 0, 17
                balanceOf[address(arg1)] = 0
                emit Transfer(-balanceOf[address(arg1)], 0, arg1);
                if stor8 and -balanceOf[address(arg1)] > -1 / stor8:
                    revert with 0, 17
                if stor9[address(arg1)].field_0 < (-1 * stor8 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000 and -1 * stor8 * balanceOf[address(arg1)] >= 0:
                    revert with 0, 17
                if -1 * stor8 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 > (-1 * stor8 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                stor9[address(arg1)].field_0 += stor8 * balanceOf[address(arg1)]
            else:
                if 0 < balanceOf[address(arg1)]:
                    if balanceOf[address(arg1)] < 0:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                    if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 17
                    balanceOf[address(arg1)] = 0
                    if totalSupply < balanceOf[address(arg1)]:
                        revert with 0, 17
                    totalSupply -= balanceOf[address(arg1)]
                    emit Transfer(balanceOf[address(arg1)], arg1, 0);
                    if stor8 and balanceOf[address(arg1)] > -1 / stor8:
                        revert with 0, 17
                    if stor8 * balanceOf[address(arg1)] > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                        revert with 0, 17
                    if stor9[address(arg1)].field_0 < 0 and stor8 * balanceOf[address(arg1)] < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    stor9[address(arg1)].field_0 += stor8 * balanceOf[address(arg1)]
            mem[100] = 12
            mem[132] = arg1
            require ext_code.size(0xb58f51386948d566d8e124c6cd86a10a9caf5d88)
            delegate 0xb58f51386948d566d8e124c6cd86a10a9caf5d88.0x4c60db9c with:
                 gas gas_remaining wei
                args 12, arg1
        else:
            if arg2 > balanceOf[address(arg1)]:
                if arg2 < balanceOf[address(arg1)]:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !(arg2 - balanceOf[address(arg1)]):
                    revert with 0, 17
                totalSupply = totalSupply + arg2 - balanceOf[address(arg1)]
                if balanceOf[address(arg1)] > !(arg2 - balanceOf[address(arg1)]):
                    revert with 0, 17
                balanceOf[address(arg1)] = arg2
                emit Transfer((arg2 - balanceOf[address(arg1)]), 0, arg1);
                if stor8 and arg2 - balanceOf[address(arg1)] > -1 / stor8:
                    revert with 0, 17
                if stor9[address(arg1)].field_0 < (arg2 * stor8) + (-1 * balanceOf[address(arg1)] * stor8) - 0x8000000000000000000000000000000000000000000000000000000000000000 and (arg2 * stor8) - (balanceOf[address(arg1)] * stor8) >= 0:
                    revert with 0, 17
                if (arg2 * stor8) - (balanceOf[address(arg1)] * stor8) < 0 and stor9[address(arg1)].field_0 > (arg2 * stor8) + (-1 * balanceOf[address(arg1)] * stor8) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                stor9[address(arg1)].field_0 = stor9[address(arg1)].field_0 - (arg2 * stor8) + (balanceOf[address(arg1)] * stor8)
            else:
                if arg2 < balanceOf[address(arg1)]:
                    if balanceOf[address(arg1)] < arg2:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                    if balanceOf[address(arg1)] < balanceOf[address(arg1)] - arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] = arg2
                    if totalSupply < balanceOf[address(arg1)] - arg2:
                        revert with 0, 17
                    totalSupply = totalSupply - balanceOf[address(arg1)] + arg2
                    emit Transfer((balanceOf[address(arg1)] - arg2), arg1, 0);
                    if stor8 and balanceOf[address(arg1)] - arg2 > -1 / stor8:
                        revert with 0, 17
                    if (balanceOf[address(arg1)] * stor8) - (arg2 * stor8) > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                        revert with 0, 17
                    if stor9[address(arg1)].field_0 < 0 and (balanceOf[address(arg1)] * stor8) - (arg2 * stor8) < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    stor9[address(arg1)].field_0 = stor9[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor8) - (arg2 * stor8)
            mem[100] = 12
            mem[132] = arg1
            mem[164] = arg2
            require ext_code.size(0xb58f51386948d566d8e124c6cd86a10a9caf5d88)
            delegate 0xb58f51386948d566d8e124c6cd86a10a9caf5d88.0xbc2b405c with:
                 gas gas_remaining wei
                args 12, address(arg1), arg2
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if stor8 and balanceOf[address(arg1)] > -1 / stor8:
            revert with 0, 17
        if stor8 * balanceOf[address(arg1)] > !stor9[address(arg1)].field_128:
            revert with 0, 17
        if (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)]:
            revert with 0, 17
        if (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)]:
            if withdrawnDividendOf[address(arg1)] > !((stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)]):
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 10
            withdrawnDividendOf[address(arg1)] = (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128
            emit DividendWithdrawn(((stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)]), arg1);
            require ext_code.size(routerAddress)
            staticcall routerAddress.0x73b295c2 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == rewardTokenAddress:
                call arg1 with:
                   value (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)] wei
                     gas 3000 wei
                if not ext_call.success:
                    if withdrawnDividendOf[address(arg1)] < (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)]:
                        revert with 0, 17
                    withdrawnDividendOf[address(arg1)] = (2 * withdrawnDividendOf[address(arg1)]) - (stor8 * balanceOf[address(arg1)]) - stor9[address(arg1)].field_128
                else:
                    if (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)]:
                        lastClaimTimes[address(arg1)] = block.timestamp
                        emit Claim(((stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)]), arg1, 1);
            else:
                mem[ceil32(return_data.size) + 96] = 2
                require ext_code.size(routerAddress)
                staticcall routerAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 160] = rewardTokenAddress
                if 2 > !block.timestamp:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 0
                mem[(2 * ceil32(return_data.size)) + 228] = 128
                mem[(2 * ceil32(return_data.size)) + 324] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 356
                t = ceil32(return_data.size) + 128
                while idx < mem[ceil32(return_data.size) + 96]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 260] = arg1
                mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp + 2
                require ext_code.size(routerAddress)
                call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)] wei
                     gas gas_remaining wei
                    args 0, 128, address(arg1), block.timestamp + 2, mem[(2 * ceil32(return_data.size)) + 324 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                if not ext_call.success:
                    call arg1 with:
                       value (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)] wei
                         gas 3000 wei
                    if not ext_call.success:
                        if withdrawnDividendOf[address(arg1)] < (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)]:
                            revert with 0, 17
                        withdrawnDividendOf[address(arg1)] = (2 * withdrawnDividendOf[address(arg1)]) - (stor8 * balanceOf[address(arg1)]) - stor9[address(arg1)].field_128
                    else:
                        if (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)]:
                            lastClaimTimes[address(arg1)] = block.timestamp
                            emit Claim(((stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)]), arg1, 1);
                else:
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    require return_data.size >= mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 32
                    if (stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)]:
                        lastClaimTimes[address(arg1)] = block.timestamp
                        emit Claim(((stor8 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)]), arg1, 1);
}

function getAccountAtIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xb58f51386948d566d8e124c6cd86a10a9caf5d88)
    delegate 0xb58f51386948d566d8e124c6cd86a10a9caf5d88.0xdeb3d896 with:
         gas gas_remaining wei
        args 12
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= delegate.return_data[0]:
        return 0, -1, -1, 0, 0, 0, 0, 0
    require ext_code.size(0xb58f51386948d566d8e124c6cd86a10a9caf5d88)
    delegate 0xb58f51386948d566d8e124c6cd86a10a9caf5d88.0xd1aa9e7e with:
         gas gas_remaining wei
        args 12, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    require ext_code.size(0xb58f51386948d566d8e124c6cd86a10a9caf5d88)
    delegate 0xb58f51386948d566d8e124c6cd86a10a9caf5d88.0x17e142d1 with:
         gas gas_remaining wei
        args 12, address(delegate.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] < 0:
        if stor8 and balanceOf[address(delegate.return_data[0])] > -1 / stor8:
            revert with 0, 17
        if stor8 * balanceOf[address(delegate.return_data[0])] > !stor9[address(delegate.return_data[0])].field_128:
            revert with 0, 17
        if (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 < withdrawnDividendOf[address(delegate.return_data[0])]:
            revert with 0, 17
        if stor8 and balanceOf[address(delegate.return_data[0])] > -1 / stor8:
            revert with 0, 17
        if stor8 * balanceOf[address(delegate.return_data[0])] > !stor9[address(delegate.return_data[0])].field_128:
            revert with 0, 17
        if not lastClaimTimes[address(delegate.return_data[0])]:
            if 0 <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       -1,
                       (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])],
                       (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       0
            if 0 < block.timestamp:
                revert with 0, 17
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   -1,
                   (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])],
                   (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   -1,
                   (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])],
                   (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                   0
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
            revert with 0, 17
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               -1,
               (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])],
               (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128,
               lastClaimTimes[address(delegate.return_data[0])],
               lastClaimTimes[address(delegate.return_data[0])] + claimWait,
               lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
    if delegate.return_data[0] > lastProcessedIndex:
        if delegate.return_data[0] < lastProcessedIndex - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastProcessedIndex >= 0:
            revert with 0, 17
        if lastProcessedIndex < 0 and delegate.return_data[0] > lastProcessedIndex + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if stor8 and balanceOf[address(delegate.return_data[0])] > -1 / stor8:
            revert with 0, 17
        if stor8 * balanceOf[address(delegate.return_data[0])] > !stor9[address(delegate.return_data[0])].field_128:
            revert with 0, 17
        if (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 < withdrawnDividendOf[address(delegate.return_data[0])]:
            revert with 0, 17
        if stor8 and balanceOf[address(delegate.return_data[0])] > -1 / stor8:
            revert with 0, 17
        if stor8 * balanceOf[address(delegate.return_data[0])] > !stor9[address(delegate.return_data[0])].field_128:
            revert with 0, 17
        if not lastClaimTimes[address(delegate.return_data[0])]:
            if 0 <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])],
                       (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       0
            if 0 < block.timestamp:
                revert with 0, 17
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])],
                   (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])],
                   (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                   0
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
            revert with 0, 17
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               delegate.return_data[0] - lastProcessedIndex,
               (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])],
               (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128,
               lastClaimTimes[address(delegate.return_data[0])],
               lastClaimTimes[address(delegate.return_data[0])] + claimWait,
               lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
    if lastProcessedIndex >= numberOfTokenHolders:
        if 0 > -delegate.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and delegate.return_data[0] >= 0:
            revert with 0, 17
        if delegate.return_data[0] < 0 and 0 < -delegate.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor8 and balanceOf[address(delegate.return_data[0])] > -1 / stor8:
            revert with 0, 17
        if stor8 * balanceOf[address(delegate.return_data[0])] > !stor9[address(delegate.return_data[0])].field_128:
            revert with 0, 17
        if (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 < withdrawnDividendOf[address(delegate.return_data[0])]:
            revert with 0, 17
        if stor8 and balanceOf[address(delegate.return_data[0])] > -1 / stor8:
            revert with 0, 17
        if stor8 * balanceOf[address(delegate.return_data[0])] > !stor9[address(delegate.return_data[0])].field_128:
            revert with 0, 17
        if not lastClaimTimes[address(delegate.return_data[0])]:
            if 0 <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])],
                       (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       0
            if 0 < block.timestamp:
                revert with 0, 17
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0],
                   (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])],
                   (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0],
                   (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])],
                   (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                   0
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
            revert with 0, 17
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               delegate.return_data[0],
               (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])],
               (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128,
               lastClaimTimes[address(delegate.return_data[0])],
               lastClaimTimes[address(delegate.return_data[0])] + claimWait,
               lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
    if numberOfTokenHolders < lastProcessedIndex:
        revert with 0, 17
    if numberOfTokenHolders - lastProcessedIndex > -delegate.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and delegate.return_data[0] >= 0:
        revert with 0, 17
    if delegate.return_data[0] < 0 and numberOfTokenHolders - lastProcessedIndex < -delegate.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor8 and balanceOf[address(delegate.return_data[0])] > -1 / stor8:
        revert with 0, 17
    if stor8 * balanceOf[address(delegate.return_data[0])] > !stor9[address(delegate.return_data[0])].field_128:
        revert with 0, 17
    if (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 < withdrawnDividendOf[address(delegate.return_data[0])]:
        revert with 0, 17
    if stor8 and balanceOf[address(delegate.return_data[0])] > -1 / stor8:
        revert with 0, 17
    if stor8 * balanceOf[address(delegate.return_data[0])] > !stor9[address(delegate.return_data[0])].field_128:
        revert with 0, 17
    if not lastClaimTimes[address(delegate.return_data[0])]:
        if 0 <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                   (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])],
                   (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128,
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   0
        if 0 < block.timestamp:
            revert with 0, 17
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
               (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])],
               (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128,
               lastClaimTimes[address(delegate.return_data[0])],
               0,
               -block.timestamp
    if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
        revert with 0, 17
    if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
               (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])],
               (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128,
               lastClaimTimes[address(delegate.return_data[0])],
               lastClaimTimes[address(delegate.return_data[0])] + claimWait,
               0
    if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
        revert with 0, 17
    return address(delegate.return_data[0]), 
           delegate.return_data[0],
           delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
           (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])],
           (stor8 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_128,
           lastClaimTimes[address(delegate.return_data[0])],
           lastClaimTimes[address(delegate.return_data[0])] + claimWait,
           lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
}



}
