contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const sub_92f6576e(?) = 18


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor2; offset 168
uint8 stor2; offset 176
uint8 stor2; offset 184
uint8 stor2; offset 192
uint64 stor2; offset 192
uint128 stor2; offset 184
uint128 stor2; offset 176
uint128 stor2; offset 168
address owner; offset 8
uint256 sub_0af08314;
uint256 sub_d7832b11;
uint256 sub_89375abf;
uint256 nextRebase;
mapping of uint8 stor7;
array of address sub_e1d5584c;
mapping of uint8 stor9;
address stor10;
address stor11;
address liquidityReceiverAddress;
address sub_08b1fd8fAddress;
address sub_7d4b5017Address;
address usdTokenAddress;
address routerAddress;
address pairAddress;
uint256 liquidityFee;
uint256 treasuryFee;
uint256 burnFee;
uint256 sub_9763eec4;
uint256 sub_8102c570;
uint256 sub_7ac82927;
uint256 totalBuyFee;
uint256 totalSellFee;
uint256 feeDenominator;
uint256 stor27;
uint256 stor28;
uint8 stor29;
uint256 totalSupply;
uint256 stor31;
uint256 stor32;
mapping of uint256 stor33;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function sub_08b1fd8f(?) {
    return sub_08b1fd8fAddress
}

function sub_0af08314(?) {
    return sub_0af08314
}

function feeDenominator() {
    return feeDenominator
}

function totalSupply() {
    return totalSupply
}

function liquidityReceiver() {
    return liquidityReceiverAddress
}

function decimals() {
    return decimals
}

function totalBuyFee() {
    return totalBuyFee
}

function feesOnNormalTransfers() {
    return bool(uint8(stor2.field_184))
}

function swapEnabled() {
    return bool(uint8(stor2.field_168))
}

function sub_7ac82927(?) {
    return sub_7ac82927
}

function sub_7d4b5017(?) {
    return sub_7d4b5017Address
}

function sub_8102c570(?) {
    return sub_8102c570
}

function sub_835439c7(?) {
    return bool(uint8(stor2.field_192))
}

function sub_89375abf(?) {
    return sub_89375abf
}

function owner() {
    return owner
}

function autoRebase() {
    return bool(uint8(stor2.field_176))
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9763eec4(?) {
    return sub_9763eec4
}

function liquidityFee() {
    return liquidityFee
}

function totalSellFee() {
    return totalSellFee
}

function pair() {
    return pairAddress
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function nextRebase() {
    return nextRebase
}

function treasuryFee() {
    return treasuryFee
}

function checkFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function sub_d7832b11(?) {
    return sub_d7832b11
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e1d5584c(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e1d5584c.length
    return sub_e1d5584c[arg1]
}

function router() {
    return routerAddress
}

function usdToken() {
    return usdTokenAddress
}

function burnFee() {
    return burnFee
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    emit OwnershipRenounced(owner);
    owner = 0
}

function checkSwapThreshold() {
    if stor31 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor31
    return (stor32 / stor31)
}

function setNextRebase(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    nextRebase = arg1
}

function sub_01b16827(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not owner'
    sub_0af08314 = arg1
    sub_d7832b11 = arg2
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not owner'
    stor27 = arg1
    stor28 = arg2
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_4cd9ddf2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if arg1 > 1800:
        revert with 0, 'Too high'
    sub_89375abf = arg1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if stor31 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor31
    return (stor33[address(arg1)] / stor31)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_544727bc(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if bool(uint8(stor2.field_192)) == arg1:
        revert with 0, 'Not changed'
    uint64(stor2.field_192) = uint64(arg1)
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Not owner'
    liquidityReceiverAddress = arg1
    sub_08b1fd8fAddress = arg2
    sub_7d4b5017Address = arg3
}

function setFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if bool(stor7[address(arg1)]) == arg2:
        revert with 0, 'Not changed'
    stor7[address(arg1)] = uint8(arg2)
}

function setAutoRebase(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if bool(uint8(stor2.field_176)) == arg1:
        revert with 0, 'Not changed'
    Mask(80, 0, stor2.field_176) = Mask(80, 0, arg1)
}

function setFeesOnNormalTransfers(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if bool(uint8(stor2.field_184)) == arg1:
        revert with 0, 'Not changed'
    Mask(72, 0, stor2.field_184) = Mask(72, 0, arg1)
}

function clearStuckBalance(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function manualSync() {
    idx = 0
    while idx < sub_e1d5584c.length:
        mem[0] = 8
        mem[96] = 0xfff6cae900000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_e1d5584c[idx])
        call sub_e1d5584c[idx].sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function shouldSwapBack() {
    if stor9[address(msg.sender)]:
        return not bool(stor9[address(msg.sender)])
    if stor29:
        return not bool(stor29)
    if not uint8(stor2.field_168):
        return bool(uint8(stor2.field_168))
    if totalBuyFee + totalSellFee < totalBuyFee:
        revert with 0, 'SafeMath: addition overflow'
    if totalBuyFee + totalSellFee <= 0:
        return (totalBuyFee + totalSellFee > 0)
    return stor33[address(this.address)] >= stor32
}

function getCirculatingSupply() {
    if stor33[stor10] > 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor33[stor11] > -stor33[stor10] - 564039457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor31 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor31
    return (-stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31)
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        if arg2 > allowance[address(msg.sender)][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Not owner'
    Mask(88, 0, stor2.field_168) = Mask(88, 0, arg1)
    if arg3 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require arg3
    if not 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / arg3:
        stor32 = 0
    else:
        require 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / arg3
        if 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / arg3 * arg2 / 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / arg3 != arg2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        stor32 = 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / arg3 * arg2
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if bool(stor9[address(arg1)]) == arg2:
        revert with 0, 'Value already set'
    stor9[address(arg1)] = uint8(arg2)
    if not arg2:
        if sub_e1d5584c.length <= 1:
            revert with 0, 'Required 1 pair'
        idx = 0
        while idx < sub_e1d5584c.length:
            mem[0] = 8
            if sub_e1d5584c[idx] != arg1:
                idx = idx + 1
                continue 
            require sub_e1d5584c.length - 1 < sub_e1d5584c.length
            require idx < sub_e1d5584c.length
            sub_e1d5584c[idx] = sub_e1d5584c[sub_e1d5584c.length]
            require sub_e1d5584c.length
            sub_e1d5584c[sub_e1d5584c.length] = 0
            sub_e1d5584c.length--
            emit SetAutomatedMarketMakerPair(arg1, arg2);
    else:
        sub_e1d5584c.length++
        sub_e1d5584c[sub_e1d5584c.length] = arg1
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function getLiquidityBacking(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_e1d5584c.length:
        mem[0] = sub_e1d5584c[idx]
        mem[32] = 33
        _68 = mem[64]
        mem[64] = mem[64] + 64
        mem[_68] = 26
        mem[_68 + 32] = 'SafeMath: division by zero'
        if stor31 > 0:
            require stor31
            _87 = mem[64]
            mem[64] = mem[64] + 64
            mem[_87] = 26
            mem[_87 + 32] = 'SafeMath: division by zero'
            if stor33[stor8[idx]] / stor31 / 10^9 < 0:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        _72 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_72 + idx + 68] = mem[_68 + idx + 32]
            idx = idx + 32
            continue 
        mem[_72 + 68] = mem[_72 + 74 len 26]
        revert with memory
          from mem[64]
           len _72 + -mem[64] + 100
    mem[0] = stor10
    mem[32] = 33
    _67 = mem[64]
    mem[64] = mem[64] + 64
    mem[_67] = 30
    mem[_67 + 32] = 'SafeMath: subtraction overflow'
    if stor33[stor10] > 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000:
        revert with 0, 'SafeMath: subtraction overflow'
    _77 = mem[64]
    mem[64] = mem[64] + 64
    mem[_77] = 30
    mem[_77 + 32] = 'SafeMath: subtraction overflow'
    if stor33[stor11] > -stor33[stor10] - 564039457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    _89 = mem[64]
    mem[64] = mem[64] + 64
    mem[_89] = 26
    mem[_89 + 32] = 'SafeMath: division by zero'
    if stor31 <= 0:
        revert with 0, 'SafeMath: division by zero'
    if stor31:
        _102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_102] = 26
        mem[_102 + 32] = 'SafeMath: division by zero'
        if not arg1:
            if -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 / 10^9 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 / 10^9:
                return (0 / -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 / 10^9)
        else:
            if arg1:
                if 0 / arg1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 / 10^9 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 / 10^9:
                    return (0 / -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 / 10^9)
    revert
}

function isOverLiquified(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    idx = 0
    while idx < sub_e1d5584c.length:
        mem[0] = sub_e1d5584c[idx]
        mem[32] = 33
        _68 = mem[64]
        mem[64] = mem[64] + 64
        mem[_68] = 26
        mem[_68 + 32] = 'SafeMath: division by zero'
        if stor31 > 0:
            require stor31
            _87 = mem[64]
            mem[64] = mem[64] + 64
            mem[_87] = 26
            mem[_87 + 32] = 'SafeMath: division by zero'
            if stor33[stor8[idx]] / stor31 / 10^9 < 0:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        _72 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_72 + idx + 68] = mem[_68 + idx + 32]
            idx = idx + 32
            continue 
        mem[_72 + 68] = mem[_72 + 74 len 26]
        revert with memory
          from mem[64]
           len _72 + -mem[64] + 100
    mem[0] = stor10
    mem[32] = 33
    _67 = mem[64]
    mem[64] = mem[64] + 64
    mem[_67] = 30
    mem[_67 + 32] = 'SafeMath: subtraction overflow'
    if stor33[stor10] > 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000:
        revert with 0, 'SafeMath: subtraction overflow'
    _77 = mem[64]
    mem[64] = mem[64] + 64
    mem[_77] = 30
    mem[_77 + 32] = 'SafeMath: subtraction overflow'
    if stor33[stor11] > -stor33[stor10] - 564039457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    _89 = mem[64]
    mem[64] = mem[64] + 64
    mem[_89] = 26
    mem[_89 + 32] = 'SafeMath: division by zero'
    if stor31 <= 0:
        revert with 0, 'SafeMath: division by zero'
    if stor31:
        _102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_102] = 26
        mem[_102 + 32] = 'SafeMath: division by zero'
        if not arg2:
            if -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 / 10^9 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 / 10^9:
                return (0 / -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 / 10^9 > arg1)
        else:
            if arg2:
                if 0 / arg2:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 / 10^9 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 / 10^9:
                    return (0 / -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 / 10^9 > arg1)
    revert
}

function sub_61a9d1b1(?) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if stor29:
        revert with 0, 'Try again'
    if nextRebase > block.timestamp:
        revert with 0, 'Not in time'
    if stor33[stor10] > 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor33[stor11] > -stor33[stor10] - 564039457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor31 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor31
    if not -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31:
        if sub_d7832b11 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_d7832b11
        if not 0 / sub_d7832b11:
            emit LogRebase(totalSupply, block.timestamp);
            idx = 0
            while idx < sub_e1d5584c.length:
                mem[0] = 8
                mem[352] = 0xfff6cae900000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_e1d5584c[idx])
                call sub_e1d5584c[idx].sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            if 0 / sub_d7832b11 >= 0:
                if totalSupply + (0 / sub_d7832b11) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / sub_d7832b11
                if totalSupply > test266151307():
                    totalSupply = test266151307()
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                stor31 = 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / totalSupply
                nextRebase = block.timestamp + sub_89375abf
                emit LogRebase(totalSupply, block.timestamp);
                idx = 0
                while idx < sub_e1d5584c.length:
                    mem[0] = 8
                    mem[416] = 0xfff6cae900000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_e1d5584c[idx])
                    call sub_e1d5584c[idx].sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                if -0 / sub_d7832b11 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply += 0 / sub_d7832b11
                if totalSupply > test266151307():
                    totalSupply = test266151307()
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                stor31 = 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / totalSupply
                nextRebase = block.timestamp + sub_89375abf
                emit LogRebase(totalSupply, block.timestamp);
                idx = 0
                while idx < sub_e1d5584c.length:
                    mem[0] = 8
                    mem[480] = 0xfff6cae900000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_e1d5584c[idx])
                    call sub_e1d5584c[idx].sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    else:
        require -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31
        if -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 * sub_0af08314 / -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 != sub_0af08314:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if sub_d7832b11 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_d7832b11
        if not -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 * sub_0af08314 / sub_d7832b11:
            emit LogRebase(totalSupply, block.timestamp);
            idx = 0
            while idx < sub_e1d5584c.length:
                mem[0] = 8
                mem[352] = 0xfff6cae900000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_e1d5584c[idx])
                call sub_e1d5584c[idx].sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            if -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 * sub_0af08314 / sub_d7832b11 >= 0:
                if totalSupply + (-stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 * sub_0af08314 / sub_d7832b11) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 * sub_0af08314 / sub_d7832b11
                if totalSupply > test266151307():
                    totalSupply = test266151307()
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                stor31 = 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / totalSupply
                nextRebase = block.timestamp + sub_89375abf
                emit LogRebase(totalSupply, block.timestamp);
                idx = 0
                while idx < sub_e1d5584c.length:
                    mem[0] = 8
                    mem[416] = 0xfff6cae900000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_e1d5584c[idx])
                    call sub_e1d5584c[idx].sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                if --stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 * sub_0af08314 / sub_d7832b11 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply += -stor33[stor10] + -stor33[stor11] - 564039457584007913129639936 / stor31 * sub_0af08314 / sub_d7832b11
                if totalSupply > test266151307():
                    totalSupply = test266151307()
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                stor31 = 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / totalSupply
                nextRebase = block.timestamp + sub_89375abf
                emit LogRebase(totalSupply, block.timestamp);
                idx = 0
                while idx < sub_e1d5584c.length:
                    mem[0] = 8
                    mem[480] = 0xfff6cae900000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_e1d5584c[idx])
                    call sub_e1d5584c[idx].sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
}



}
