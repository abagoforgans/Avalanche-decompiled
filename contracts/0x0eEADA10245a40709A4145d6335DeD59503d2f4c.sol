contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const decimals = 9


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
uint8 stor6;
uint8 stor6; offset 8
uint8 stor6; offset 16
uint8 stor6; offset 24
uint8 stor6; offset 32
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address sub_45e05e0cAddress;
uint256 totalShares;
mapping of struct sub_7ab26a80;
uint256 maxWalletBalance;
uint256 swapThreshold;
uint256 sub_5181c90f;
address stor15;
address routerAddress;
array of address sub_9cc0e3c7;
uint8 sub_4ce2ee83; offset 160
uint8 sub_bb6c6d31; offset 168
uint128 stor18; offset 168
uint128 stor18; offset 160
address rewardTokenAddress;
uint256 dividendsPerShare;
uint256 dividendsPerShareAccuracyFactor;
uint256 totalDividends;
uint256 totalDistributed;
address stor23;
address pairTokenAddress; offset 8
address pairAddress;
address WAVAXAddress;

function swapThreshold() {
    return swapThreshold
}

function dividendsPerShareAccuracyFactor() {
    return dividendsPerShareAccuracyFactor
}

function totalSupply() {
    return totalSupply
}

function routerAddress() {
    return routerAddress
}

function totalShares() {
    return totalShares
}

function pairToken() {
    return pairTokenAddress
}

function isFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(sub_7ab26a80[address(arg1)].field_0)
}

function isDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(sub_7ab26a80[address(arg1)].field_8)
}

function sub_45e05e0c(?) {
    return sub_45e05e0cAddress
}

function sub_48e02c29(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_7ab26a80[address(arg1)].field_16)
}

function sub_4ce2ee83(?) {
    return bool(sub_4ce2ee83)
}

function sub_5181c90f(?) {
    return sub_5181c90f
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function WAVAX() {
    return WAVAXAddress
}

function sub_7ab26a80(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_7ab26a80[arg1].field_0), 
           bool(sub_7ab26a80[arg1].field_8),
           bool(sub_7ab26a80[arg1].field_16),
           sub_7ab26a80[arg1].field_256,
           sub_7ab26a80[arg1].field_512,
           sub_7ab26a80[arg1].field_768
}

function owner() {
    return owner
}

function totalDividends() {
    return totalDividends
}

function sub_9cc0e3c7(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_9cc0e3c7.length
    return address(sub_9cc0e3c7[arg1])
}

function pairAddress() {
    return pairAddress
}

function sub_bb6c6d31(?) {
    return bool(sub_bb6c6d31)
}

function maxWalletBalance() {
    return maxWalletBalance
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function dividendsPerShare() {
    return dividendsPerShare
}

function sub_e35fafe4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7ab26a80[address(arg1)].field_256
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function totalDistributed() {
    return totalDistributed
}

function rewardToken() {
    return rewardTokenAddress
}

function fees() {
    return uint8(stor6.field_0), uint8(stor6.field_0), uint8(stor6.field_0), uint8(stor6.field_0), uint8(stor6.field_32)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setSwapThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapThreshold = arg1
}

function sub_7b58891b(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor18.field_160) = Mask(96, 0, bool(arg1))
}

function setDividendsEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor18.field_168) = Mask(88, 0, arg1)
}

function setFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7ab26a80[address(arg1)].field_0 = uint8(arg2)
}

function sub_93facb2a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7ab26a80[address(arg1)].field_16 = Mask(240, 0, bool(arg2))
}

function Sweep() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fa97f677(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 99:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Target liquidity percentage can't be 100 or more'
    sub_5181c90f = arg1
}

function setMaxPerWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max balance per wallet must be > 0'
    maxWalletBalance = arg1
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

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    autoLiquidityReceiverAddress = arg1
    sub_7ab26a80[address(arg1)].field_16 = 1
    sub_7ab26a80[stor7].field_0 = 1
    marketingFeeReceiverAddress = arg2
    sub_7ab26a80[address(arg2)].field_16 = 1
    sub_7ab26a80[stor8].field_0 = 1
    sub_45e05e0cAddress = arg3
    sub_7ab26a80[address(arg3)].field_16 = 1
    sub_7ab26a80[stor9].field_0 = 1
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

function sub_35ce4c54(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function getUnpaidEarnings(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_7ab26a80[address(arg1)].field_256:
        return 0
    if sub_7ab26a80[address(arg1)].field_256 and dividendsPerShare > -1 / sub_7ab26a80[address(arg1)].field_256:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    if sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor <= sub_7ab26a80[address(arg1)].field_512:
        return 0
    if sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor < sub_7ab26a80[address(arg1)].field_512:
        revert with 0, 17
    return ((sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512)
}

function sub_666287cd(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg1) > -uint8(arg2) + 255:
        revert with 0, 17
    if uint8(uint8(arg2) + uint8(arg1)) > -uint8(arg3) + 255:
        revert with 0, 17
    if uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1))) > -uint8(arg4) + 255:
        revert with 0, 17
    if uint8(uint8(arg4) + uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1)))) >= 25:
        revert with 0, 'Fees are too high'
    uint8(stor6.field_0) = uint8(uint8(arg4) + uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1))))
    uint8(stor6.field_8) = uint8(arg1)
    uint8(stor6.field_16) = uint8(arg2)
    uint8(stor6.field_24) = uint8(arg3)
    uint8(stor6.field_32) = uint8(arg4)
}

function sub_81d09def(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9cc0e3c7.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_9cc0e3c7.length > idx:
            uint256(sub_9cc0e3c7[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            address(sub_9cc0e3c7[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_9cc0e3c7.length > idx:
            uint256(sub_9cc0e3c7[idx]) = 0
            idx = idx + 1
            continue 
    if not ('cd', 4).length:
        rewardTokenAddress = WAVAXAddress
    else:
        if ('cd', 4).length < 1:
            revert with 0, 17
        if ('cd', 4).length - 1 >= ('cd', 4).length:
            revert with 0, 50
        rewardTokenAddress = mem[(32 * ('cd', 4).length - 1) + 140 len 20]
}

function distributeDividend(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_7ab26a80[address(arg1)].field_256:
        if totalDistributed > -1:
            revert with 0, 17
        if sub_7ab26a80[address(arg1)].field_768 > -1:
            revert with 0, 17
    else:
        if sub_7ab26a80[address(arg1)].field_256 and dividendsPerShare > -1 / sub_7ab26a80[address(arg1)].field_256:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        if sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor <= sub_7ab26a80[address(arg1)].field_512:
            if totalDistributed > -1:
                revert with 0, 17
            if sub_7ab26a80[address(arg1)].field_768 > -1:
                revert with 0, 17
        else:
            if sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor < sub_7ab26a80[address(arg1)].field_512:
                revert with 0, 17
            if (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512:
                if not sub_9cc0e3c7.length:
                    call arg1 with:
                       value (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512 wei
                         gas 2300 * is_zero(value) wei
                else:
                    idx = 0
                    s = 260
                    t = 0
                    while idx < sub_9cc0e3c7.length:
                        mem[s] = address(sub_9cc0e3c7[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(stor15)
                    call stor15.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512 wei
                         gas gas_remaining wei
                        args 0, 128, address(arg1), block.timestamp, sub_9cc0e3c7.length, mem[260 len 32 * sub_9cc0e3c7.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if totalDistributed > !((sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512):
                revert with 0, 17
            totalDistributed = totalDistributed + (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512
            if sub_7ab26a80[address(arg1)].field_768 > !((sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512):
                revert with 0, 17
            sub_7ab26a80[address(arg1)].field_768 = sub_7ab26a80[address(arg1)].field_768 + (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512
    if sub_7ab26a80[address(arg1)].field_256 and dividendsPerShare > -1 / sub_7ab26a80[address(arg1)].field_256:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    sub_7ab26a80[address(arg1)].field_512 = sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor
}

function claimRewards() {
    if not sub_7ab26a80[address(msg.sender)].field_256:
        if totalDistributed > -1:
            revert with 0, 17
        if sub_7ab26a80[address(msg.sender)].field_768 > -1:
            revert with 0, 17
    else:
        if sub_7ab26a80[address(msg.sender)].field_256 and dividendsPerShare > -1 / sub_7ab26a80[address(msg.sender)].field_256:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        if sub_7ab26a80[address(msg.sender)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor <= sub_7ab26a80[address(msg.sender)].field_512:
            if totalDistributed > -1:
                revert with 0, 17
            if sub_7ab26a80[address(msg.sender)].field_768 > -1:
                revert with 0, 17
        else:
            if sub_7ab26a80[address(msg.sender)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor < sub_7ab26a80[address(msg.sender)].field_512:
                revert with 0, 17
            if (sub_7ab26a80[address(msg.sender)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(msg.sender)].field_512:
                if not sub_9cc0e3c7.length:
                    call msg.sender with:
                       value (sub_7ab26a80[address(msg.sender)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(msg.sender)].field_512 wei
                         gas 2300 * is_zero(value) wei
                else:
                    idx = 0
                    s = 260
                    t = 0
                    while idx < sub_9cc0e3c7.length:
                        mem[s] = address(sub_9cc0e3c7[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(stor15)
                    call stor15.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value (sub_7ab26a80[address(msg.sender)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(msg.sender)].field_512 wei
                         gas gas_remaining wei
                        args 0, 128, msg.sender, block.timestamp, sub_9cc0e3c7.length, mem[260 len 32 * sub_9cc0e3c7.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if totalDistributed > !((sub_7ab26a80[address(msg.sender)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(msg.sender)].field_512):
                revert with 0, 17
            totalDistributed = totalDistributed + (sub_7ab26a80[address(msg.sender)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(msg.sender)].field_512
            if sub_7ab26a80[address(msg.sender)].field_768 > !((sub_7ab26a80[address(msg.sender)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(msg.sender)].field_512):
                revert with 0, 17
            sub_7ab26a80[address(msg.sender)].field_768 = sub_7ab26a80[address(msg.sender)].field_768 + (sub_7ab26a80[address(msg.sender)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(msg.sender)].field_512
    if sub_7ab26a80[address(msg.sender)].field_256 and dividendsPerShare > -1 / sub_7ab26a80[address(msg.sender)].field_256:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    sub_7ab26a80[address(msg.sender)].field_512 = sub_7ab26a80[address(msg.sender)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor
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
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
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
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
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
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
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
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function setShare(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_7ab26a80[address(arg1)].field_256:
        if totalDistributed > -1:
            revert with 0, 17
        if sub_7ab26a80[address(arg1)].field_768 > -1:
            revert with 0, 17
    else:
        if sub_7ab26a80[address(arg1)].field_256 and dividendsPerShare > -1 / sub_7ab26a80[address(arg1)].field_256:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        if sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor <= sub_7ab26a80[address(arg1)].field_512:
            if totalDistributed > -1:
                revert with 0, 17
            if sub_7ab26a80[address(arg1)].field_768 > -1:
                revert with 0, 17
        else:
            if sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor < sub_7ab26a80[address(arg1)].field_512:
                revert with 0, 17
            if (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512:
                if not sub_9cc0e3c7.length:
                    call arg1 with:
                       value (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512 wei
                         gas 2300 * is_zero(value) wei
                else:
                    idx = 0
                    s = 260
                    t = 0
                    while idx < sub_9cc0e3c7.length:
                        mem[s] = address(sub_9cc0e3c7[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(stor15)
                    call stor15.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512 wei
                         gas gas_remaining wei
                        args 0, 128, address(arg1), block.timestamp, sub_9cc0e3c7.length, mem[260 len 32 * sub_9cc0e3c7.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if totalDistributed > !((sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512):
                revert with 0, 17
            totalDistributed = totalDistributed + (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512
            if sub_7ab26a80[address(arg1)].field_768 > !((sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512):
                revert with 0, 17
            sub_7ab26a80[address(arg1)].field_768 = sub_7ab26a80[address(arg1)].field_768 + (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512
    if sub_7ab26a80[address(arg1)].field_256 and dividendsPerShare > -1 / sub_7ab26a80[address(arg1)].field_256:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    sub_7ab26a80[address(arg1)].field_512 = sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor
    if totalShares < sub_7ab26a80[address(arg1)].field_256:
        revert with 0, 17
    if sub_7ab26a80[address(arg1)].field_8:
        if totalShares - sub_7ab26a80[address(arg1)].field_256 > -1:
            revert with 0, 17
        totalShares -= sub_7ab26a80[address(arg1)].field_256
        sub_7ab26a80[address(arg1)].field_256 = 0
        if False and dividendsPerShare > 0:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        sub_7ab26a80[address(arg1)].field_512 = 0 / dividendsPerShareAccuracyFactor
    else:
        if totalShares - sub_7ab26a80[address(arg1)].field_256 > !balanceOf[address(arg1)]:
            revert with 0, 17
        totalShares = totalShares - sub_7ab26a80[address(arg1)].field_256 + balanceOf[address(arg1)]
        sub_7ab26a80[address(arg1)].field_256 = balanceOf[address(arg1)]
        if balanceOf[address(arg1)] and dividendsPerShare > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        sub_7ab26a80[address(arg1)].field_512 = balanceOf[address(arg1)] * dividendsPerShare / dividendsPerShareAccuracyFactor
}

function sub_b572fe34(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7ab26a80[address(arg1)].field_8 = Mask(248, 0, bool(arg2))
    if not sub_7ab26a80[address(arg1)].field_256:
        if totalDistributed > -1:
            revert with 0, 17
        if sub_7ab26a80[address(arg1)].field_768 > -1:
            revert with 0, 17
    else:
        if sub_7ab26a80[address(arg1)].field_256 and dividendsPerShare > -1 / sub_7ab26a80[address(arg1)].field_256:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        if sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor <= sub_7ab26a80[address(arg1)].field_512:
            if totalDistributed > -1:
                revert with 0, 17
            if sub_7ab26a80[address(arg1)].field_768 > -1:
                revert with 0, 17
        else:
            if sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor < sub_7ab26a80[address(arg1)].field_512:
                revert with 0, 17
            if (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512:
                if not sub_9cc0e3c7.length:
                    call address(arg1) with:
                       value (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512 wei
                         gas 2300 * is_zero(value) wei
                else:
                    idx = 0
                    s = 260
                    t = 0
                    while idx < sub_9cc0e3c7.length:
                        mem[s] = address(sub_9cc0e3c7[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(stor15)
                    call stor15.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512 wei
                         gas gas_remaining wei
                        args 0, 128, address(arg1), block.timestamp, sub_9cc0e3c7.length, mem[260 len 32 * sub_9cc0e3c7.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if totalDistributed > !((sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512):
                revert with 0, 17
            totalDistributed = totalDistributed + (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512
            if sub_7ab26a80[address(arg1)].field_768 > !((sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512):
                revert with 0, 17
            sub_7ab26a80[address(arg1)].field_768 = sub_7ab26a80[address(arg1)].field_768 + (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512
    if sub_7ab26a80[address(arg1)].field_256 and dividendsPerShare > -1 / sub_7ab26a80[address(arg1)].field_256:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    sub_7ab26a80[address(arg1)].field_512 = sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor
    if totalShares < sub_7ab26a80[address(arg1)].field_256:
        revert with 0, 17
    if sub_7ab26a80[address(arg1)].field_8:
        if totalShares - sub_7ab26a80[address(arg1)].field_256 > -1:
            revert with 0, 17
        totalShares -= sub_7ab26a80[address(arg1)].field_256
        sub_7ab26a80[address(arg1)].field_256 = 0
        if False and dividendsPerShare > 0:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        sub_7ab26a80[address(arg1)].field_512 = 0 / dividendsPerShareAccuracyFactor
    else:
        if totalShares - sub_7ab26a80[address(arg1)].field_256 > !balanceOf[address(arg1)]:
            revert with 0, 17
        totalShares = totalShares - sub_7ab26a80[address(arg1)].field_256 + balanceOf[address(arg1)]
        sub_7ab26a80[address(arg1)].field_256 = balanceOf[address(arg1)]
        if balanceOf[address(arg1)] and dividendsPerShare > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        sub_7ab26a80[address(arg1)].field_512 = balanceOf[address(arg1)] * dividendsPerShare / dividendsPerShareAccuracyFactor
}

function sub_0a9e5f60(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7ab26a80[address(arg1)].field_8 = Mask(248, 0, bool(arg2))
    if not sub_7ab26a80[address(arg1)].field_256:
        if totalDistributed > -1:
            revert with 0, 17
        if sub_7ab26a80[address(arg1)].field_768 > -1:
            revert with 0, 17
    else:
        if sub_7ab26a80[address(arg1)].field_256 and dividendsPerShare > -1 / sub_7ab26a80[address(arg1)].field_256:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        if sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor <= sub_7ab26a80[address(arg1)].field_512:
            if totalDistributed > -1:
                revert with 0, 17
            if sub_7ab26a80[address(arg1)].field_768 > -1:
                revert with 0, 17
        else:
            if sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor < sub_7ab26a80[address(arg1)].field_512:
                revert with 0, 17
            if (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512:
                if not sub_9cc0e3c7.length:
                    call address(arg1) with:
                       value (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512 wei
                         gas 2300 * is_zero(value) wei
                else:
                    idx = 0
                    s = 260
                    t = 0
                    while idx < sub_9cc0e3c7.length:
                        mem[s] = address(sub_9cc0e3c7[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(stor15)
                    call stor15.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512 wei
                         gas gas_remaining wei
                        args 0, 128, address(arg1), block.timestamp, sub_9cc0e3c7.length, mem[260 len 32 * sub_9cc0e3c7.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if totalDistributed > !((sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512):
                revert with 0, 17
            totalDistributed = totalDistributed + (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512
            if sub_7ab26a80[address(arg1)].field_768 > !((sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512):
                revert with 0, 17
            sub_7ab26a80[address(arg1)].field_768 = sub_7ab26a80[address(arg1)].field_768 + (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512
    if sub_7ab26a80[address(arg1)].field_256 and dividendsPerShare > -1 / sub_7ab26a80[address(arg1)].field_256:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    sub_7ab26a80[address(arg1)].field_512 = sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor
    if totalShares < sub_7ab26a80[address(arg1)].field_256:
        revert with 0, 17
    if sub_7ab26a80[address(arg1)].field_8:
        if totalShares - sub_7ab26a80[address(arg1)].field_256 > -1:
            revert with 0, 17
        totalShares -= sub_7ab26a80[address(arg1)].field_256
        sub_7ab26a80[address(arg1)].field_256 = 0
        if False and dividendsPerShare > 0:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        sub_7ab26a80[address(arg1)].field_512 = 0 / dividendsPerShareAccuracyFactor
    else:
        if totalShares - sub_7ab26a80[address(arg1)].field_256 > !balanceOf[address(arg1)]:
            revert with 0, 17
        totalShares = totalShares - sub_7ab26a80[address(arg1)].field_256 + balanceOf[address(arg1)]
        sub_7ab26a80[address(arg1)].field_256 = balanceOf[address(arg1)]
        if balanceOf[address(arg1)] and dividendsPerShare > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        sub_7ab26a80[address(arg1)].field_512 = balanceOf[address(arg1)] * dividendsPerShare / dividendsPerShareAccuracyFactor
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7ab26a80[address(arg1)].field_16 = Mask(240, 0, bool(arg2))
    sub_7ab26a80[address(arg1)].field_0 = uint8(bool(arg2))
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15 = arg1
    routerAddress = arg1
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(this.address)][address(arg1)] = totalSupply
    emit Approval(totalSupply, this.address, arg1);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7ab26a80[address(arg1)].field_8 = 1
    if not sub_7ab26a80[address(arg1)].field_256:
        if totalDistributed > -1:
            revert with 0, 17
        if sub_7ab26a80[address(arg1)].field_768 > -1:
            revert with 0, 17
    else:
        if sub_7ab26a80[address(arg1)].field_256 and dividendsPerShare > -1 / sub_7ab26a80[address(arg1)].field_256:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        if sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor <= sub_7ab26a80[address(arg1)].field_512:
            if totalDistributed > -1:
                revert with 0, 17
            if sub_7ab26a80[address(arg1)].field_768 > -1:
                revert with 0, 17
        else:
            if sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor < sub_7ab26a80[address(arg1)].field_512:
                revert with 0, 17
            if (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512:
                if not sub_9cc0e3c7.length:
                    call arg1 with:
                       value (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512 wei
                         gas 2300 * is_zero(value) wei
                else:
                    idx = 0
                    s = 260
                    t = 0
                    while idx < sub_9cc0e3c7.length:
                        mem[s] = address(sub_9cc0e3c7[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(stor15)
                    call stor15.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512 wei
                         gas gas_remaining wei
                        args 0, 128, address(arg1), block.timestamp, sub_9cc0e3c7.length, mem[260 len 32 * sub_9cc0e3c7.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if totalDistributed > !((sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512):
                revert with 0, 17
            totalDistributed = totalDistributed + (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512
            if sub_7ab26a80[address(arg1)].field_768 > !((sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512):
                revert with 0, 17
            sub_7ab26a80[address(arg1)].field_768 = sub_7ab26a80[address(arg1)].field_768 + (sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(arg1)].field_512
    if sub_7ab26a80[address(arg1)].field_256 and dividendsPerShare > -1 / sub_7ab26a80[address(arg1)].field_256:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    sub_7ab26a80[address(arg1)].field_512 = sub_7ab26a80[address(arg1)].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor
    if totalShares < sub_7ab26a80[address(arg1)].field_256:
        revert with 0, 17
    if sub_7ab26a80[address(arg1)].field_8:
        if totalShares - sub_7ab26a80[address(arg1)].field_256 > -1:
            revert with 0, 17
        totalShares -= sub_7ab26a80[address(arg1)].field_256
        sub_7ab26a80[address(arg1)].field_256 = 0
        if False and dividendsPerShare > 0:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        sub_7ab26a80[address(arg1)].field_512 = 0 / dividendsPerShareAccuracyFactor
    else:
        if totalShares - sub_7ab26a80[address(arg1)].field_256 > !balanceOf[address(arg1)]:
            revert with 0, 17
        totalShares = totalShares - sub_7ab26a80[address(arg1)].field_256 + balanceOf[address(arg1)]
        sub_7ab26a80[address(arg1)].field_256 = balanceOf[address(arg1)]
        if balanceOf[address(arg1)] and dividendsPerShare > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        sub_7ab26a80[address(arg1)].field_512 = balanceOf[address(arg1)] * dividendsPerShare / dividendsPerShareAccuracyFactor
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7ab26a80[address(arg1)].field_16 = 1
    staticcall stor15.0x73b295c2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    WAVAXAddress = ext_call.return_data[12 len 20]
}

function setPairToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pairTokenAddress = arg1
    staticcall stor15.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args stor23, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    pairAddress = ext_call.return_data[12 len 20]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7ab26a80[ext_call.return_data[12 len 20]].field_8 = 1
    if not sub_7ab26a80[address(ext_call.return_data[0])].field_256:
        if totalDistributed > -1:
            revert with 0, 17
        if sub_7ab26a80[address(ext_call.return_data[0])].field_768 > -1:
            revert with 0, 17
    else:
        if sub_7ab26a80[address(ext_call.return_data[0])].field_256 and dividendsPerShare > -1 / sub_7ab26a80[address(ext_call.return_data[0])].field_256:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        if sub_7ab26a80[address(ext_call.return_data[0])].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor <= sub_7ab26a80[address(ext_call.return_data[0])].field_512:
            if totalDistributed > -1:
                revert with 0, 17
            if sub_7ab26a80[address(ext_call.return_data[0])].field_768 > -1:
                revert with 0, 17
        else:
            if sub_7ab26a80[address(ext_call.return_data[0])].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor < sub_7ab26a80[address(ext_call.return_data[0])].field_512:
                revert with 0, 17
            if (sub_7ab26a80[address(ext_call.return_data[0])].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(ext_call.return_data[0])].field_512:
                if not sub_9cc0e3c7.length:
                    call ext_call.return_data[12 len 20] with:
                       value (sub_7ab26a80[address(ext_call.return_data[0])].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(ext_call.return_data[0])].field_512 wei
                         gas 2300 * is_zero(value) wei
                else:
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 260
                    t = 0
                    while idx < sub_9cc0e3c7.length:
                        mem[s] = address(sub_9cc0e3c7[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(stor15)
                    call stor15.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value (sub_7ab26a80[address(ext_call.return_data[0])].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(ext_call.return_data[0])].field_512 wei
                         gas gas_remaining wei
                        args 0, 128, address(ext_call.return_data[0]), block.timestamp, sub_9cc0e3c7.length, mem[(2 * ceil32(return_data.size)) + 260 len 32 * sub_9cc0e3c7.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if totalDistributed > !((sub_7ab26a80[address(ext_call.return_data[0])].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(ext_call.return_data[0])].field_512):
                revert with 0, 17
            totalDistributed = totalDistributed + (sub_7ab26a80[address(ext_call.return_data[0])].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(ext_call.return_data[0])].field_512
            if sub_7ab26a80[address(ext_call.return_data[0])].field_768 > !((sub_7ab26a80[address(ext_call.return_data[0])].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(ext_call.return_data[0])].field_512):
                revert with 0, 17
            sub_7ab26a80[address(ext_call.return_data[0])].field_768 = sub_7ab26a80[address(ext_call.return_data[0])].field_768 + (sub_7ab26a80[address(ext_call.return_data[0])].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_7ab26a80[address(ext_call.return_data[0])].field_512
    if sub_7ab26a80[address(ext_call.return_data[0])].field_256 and dividendsPerShare > -1 / sub_7ab26a80[address(ext_call.return_data[0])].field_256:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    sub_7ab26a80[address(ext_call.return_data[0])].field_512 = sub_7ab26a80[address(ext_call.return_data[0])].field_256 * dividendsPerShare / dividendsPerShareAccuracyFactor
    if totalShares < sub_7ab26a80[address(ext_call.return_data[0])].field_256:
        revert with 0, 17
    if sub_7ab26a80[address(ext_call.return_data[0])].field_8:
        if totalShares - sub_7ab26a80[address(ext_call.return_data[0])].field_256 > -1:
            revert with 0, 17
        totalShares -= sub_7ab26a80[address(ext_call.return_data[0])].field_256
        sub_7ab26a80[address(ext_call.return_data[0])].field_256 = 0
        if False and dividendsPerShare > 0:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        sub_7ab26a80[address(ext_call.return_data[0])].field_512 = 0 / dividendsPerShareAccuracyFactor
    else:
        if totalShares - sub_7ab26a80[address(ext_call.return_data[0])].field_256 > !balanceOf[address(ext_call.return_data[0])]:
            revert with 0, 17
        totalShares = totalShares - sub_7ab26a80[address(ext_call.return_data[0])].field_256 + balanceOf[address(ext_call.return_data[0])]
        sub_7ab26a80[address(ext_call.return_data[0])].field_256 = balanceOf[address(ext_call.return_data[0])]
        if balanceOf[address(ext_call.return_data[0])] and dividendsPerShare > -1 / balanceOf[address(ext_call.return_data[0])]:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        sub_7ab26a80[address(ext_call.return_data[0])].field_512 = balanceOf[address(ext_call.return_data[0])] * dividendsPerShare / dividendsPerShareAccuracyFactor
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7ab26a80[stor24].field_16 = 1
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not pairAddress:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor24] = totalSupply
    emit Approval(totalSupply, this.address, pairAddress);
}



}
