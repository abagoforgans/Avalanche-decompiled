contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_3dce8603(?)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
array of struct stor0;
array of struct stor1;
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
uint256 maxSellTransactionAmount;
uint256 sub_89375abf;
uint256 nextRebase;
uint256 sub_eb459dba;
uint256 sub_7b3cd40d;
uint256 sub_345e25c5;
uint256 releaseBlock;
mapping of uint8 stor12;
array of address sub_e1d5584c;
mapping of uint8 stor14;
mapping of uint256 initialBalanceOf;
uint256 stor16;
address stor17;
address stor18;
address liquidityReceiverAddress;
address sub_08b1fd8fAddress;
address sub_7d4b5017Address;
address sub_8979e968Address;
address sub_b7c8e9f6Address;
address sub_7e93507aAddress;
address sub_da1a7be9Address;
address routerAddress;
address pairAddress;
address usdcAddress;
array of uint256 sub_cea74edf;
array of uint256 sub_a046bc78;
array of uint256 sub_368128d1;
array of uint256 sub_8158feec;
array of uint256 sub_6508654f;
array of uint256 sub_a3e6c6f8;
array of uint256 sub_54e5e79a;
array of uint256 burnFee;
uint256 feeDenominator;
uint256 sub_90a9a971;
uint256 whaleSellLimit;
uint256 purchasePeriod;
uint256 stor65;
uint256 stor66;
array of address sub_b6d45b90;
array of uint256 airdropAmount;
uint8 stor69;
uint8 stor69; offset 8
uint256 totalSupply;
uint256 stor71;
uint256 stor72;
mapping of uint256 stor73;
mapping of uint256 allowance;
mapping of uint8 stor76;
mapping of uint256 sub_d617e0cf;

function maxSellTransactionAmount() {
    return maxSellTransactionAmount
}

function usdcAddress() {
    return usdcAddress
}

function sub_08b1fd8f(?) {
    return sub_08b1fd8fAddress
}

function sub_0af08314(?) {
    return sub_0af08314
}

function whaleSellLimit() {
    return whaleSellLimit
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

function sub_345e25c5(?) {
    return sub_345e25c5
}

function sub_368128d1(?) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return sub_368128d1[arg1]
}

function burnFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return burnFee[arg1]
}

function releaseBlock() {
    return releaseBlock
}

function sub_54e5e79a(?) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return sub_54e5e79a[arg1]
}

function feesOnNormalTransfers() {
    return bool(uint8(stor2.field_192))
}

function sub_6508654f(?) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return sub_6508654f[arg1]
}

function swapEnabled() {
    return bool(uint8(stor2.field_176))
}

function sub_7b3cd40d(?) {
    return sub_7b3cd40d
}

function sub_7d4b5017(?) {
    return sub_7d4b5017Address
}

function sub_7e93507a(?) {
    return sub_7e93507aAddress
}

function sub_8158feec(?) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return sub_8158feec[arg1]
}

function sub_89375abf(?) {
    return sub_89375abf
}

function getOwner() {
    return owner
}

function sub_8979e968(?) {
    return sub_8979e968Address
}

function initialBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return initialBalanceOf[address(arg1)]
}

function autoRebase() {
    return bool(uint8(stor2.field_184))
}

function sub_90a9a971(?) {
    return sub_90a9a971
}

function sub_952b0831(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor76[arg1])
}

function sub_a046bc78(?) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return sub_a046bc78[arg1]
}

function sub_a3e6c6f8(?) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return sub_a3e6c6f8[arg1]
}

function airdropAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < airdropAmount.length
    return airdropAmount[arg1]
}

function pair() {
    return pairAddress
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[arg1])
}

function sub_b6d45b90(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_b6d45b90.length
    return address(sub_b6d45b90[arg1])
}

function sub_b7c8e9f6(?) {
    return sub_b7c8e9f6Address
}

function nextRebase() {
    return nextRebase
}

function sub_cea74edf(?) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return sub_cea74edf[arg1]
}

function initialDistributionFinished() {
    return bool(uint8(stor2.field_168))
}

function checkFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[address(arg1)])
}

function sub_d617e0cf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d617e0cf[arg1]
}

function sub_d7832b11(?) {
    return sub_d7832b11
}

function sub_da1a7be9(?) {
    return sub_da1a7be9Address
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function purchasePeriod() {
    return purchasePeriod
}

function sub_e1d5584c(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e1d5584c.length
    return sub_e1d5584c[arg1]
}

function sub_eb459dba(?) {
    return sub_eb459dba
}

function router() {
    return routerAddress
}

function checkSwapThreshold() {
    if not stor71:
        revert with 0, 18
    return (stor72 / stor71)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_370b96dd(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    sub_90a9a971 = arg1
}

function sub_2fbb85e5(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    whaleSellLimit = arg1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor14[address(arg1)]:
        return stor73[address(arg1)]
    if not stor71:
        revert with 0, 18
    return (stor73[address(arg1)] / stor71)
}

function setNextRebase(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    nextRebase = arg1
}

function setPurchasePeriod(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    purchasePeriod = arg1
}

function sub_01b16827(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    sub_0af08314 = arg1
    sub_d7832b11 = arg2
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    owner = arg1
}

function getCirculatingSupply() {
    if stor16 < stor73[stor17]:
        revert with 0, 17
    if stor16 - stor73[stor17] < stor73[stor18]:
        revert with 0, 17
    if not stor71:
        revert with 0, 18
    return (stor16 - stor73[stor17] - stor73[stor18] / stor71)
}

function setMaxSellTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    maxSellTransactionAmount = arg1
}

function setRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    routerAddress = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    stor65 = arg1
    stor66 = arg2
}

function sub_4cd9ddf2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if arg1 > 1800:
        revert with 0, 'Too high'
    sub_89375abf = arg1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function pauseTrading(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if arg1 == bool(uint8(stor69.field_0)):
        revert with 0, 'No change.'
    uint8(stor69.field_0) = uint8(arg1)
}

function sub_72c8c4d1(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if arg1 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
        revert with 0, 17
    sub_7b3cd40d = 24 * 3600 * arg1
    sub_345e25c5 = arg2
}

function setAutoRebase(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if arg1 == bool(uint8(stor2.field_184)):
        revert with 0, 'Not changed'
    Mask(72, 0, stor2.field_184) = Mask(72, 0, arg1)
}

function setFeesOnNormalTransfers(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if arg1 == bool(uint8(stor2.field_192)):
        revert with 0, 'Not changed'
    uint64(stor2.field_192) = uint64(arg1)
}

function sub_1276089b(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if bool(arg1) == bool(uint8(stor2.field_168)):
        revert with 0, 'Not changed'
    Mask(88, 0, stor2.field_168) = Mask(88, 0, bool(arg1))
}

function setFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if arg2 == bool(stor12[address(arg1)]):
        revert with 0, 'Not changed'
    stor12[address(arg1)] = uint8(arg2)
}

function setBlacklisted(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if arg2 == bool(stor76[address(arg1)]):
        revert with 0, 'Not changed'
    stor76[address(arg1)] = uint8(arg2)
}

function sub_a97e3ff2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if nextRebase < sub_eb459dba:
        revert with 0, 17
    if nextRebase - sub_eb459dba > !arg1:
        revert with 0, 17
    nextRebase = nextRebase - sub_eb459dba + arg1
    sub_eb459dba = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        if allowance[msg.sender][address(arg1)] < arg2:
            revert with 0, 17
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function clearStuckBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    Mask(80, 0, stor2.field_176) = Mask(80, 0, arg1)
    if not arg3:
        revert with 0, 18
    if stor16 / arg3 and arg2 > -1 / stor16 / arg3:
        revert with 0, 17
    stor72 = stor16 / arg3 * arg2
}

function manualSync() {
    idx = 0
    while idx < sub_e1d5584c.length:
        mem[0] = 13
        mem[96] = 0xfff6cae900000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_e1d5584c[idx])
        call sub_e1d5584c[idx].0xfff6cae9 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_3f000d43(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    liquidityReceiverAddress = address(arg1)
    sub_08b1fd8fAddress = address(arg2)
    sub_7d4b5017Address = address(arg3)
    sub_8979e968Address = address(arg5)
    sub_b7c8e9f6Address = address(arg6)
    sub_7e93507aAddress = address(arg4)
    sub_da1a7be9Address = address(arg7)
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_e1d5584c.length:
        mem[0] = sub_e1d5584c[idx]
        mem[32] = 73
        if stor14[stor13[idx]]:
            if 0 > !(stor73[stor13[idx]] / 10^9):
                revert with 0, 17
        else:
            if not stor71:
                revert with 0, 18
            if 0 > !(stor73[stor13[idx]] / stor71 / 10^9):
                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if stor16 < stor73[stor17]:
        revert with 0, 17
    if stor16 - stor73[stor17] < stor73[stor18]:
        revert with 0, 17
    if not stor71:
        revert with 0, 18
    if arg1 and 0 > -1 / arg1:
        revert with 0, 17
    if not stor16 - stor73[stor17] - stor73[stor18] / stor71 / 10^9:
        revert with 0, 18
    return (0 / stor16 - stor73[stor17] - stor73[stor18] / stor71 / 10^9)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    idx = 0
    while idx < sub_e1d5584c.length:
        mem[0] = sub_e1d5584c[idx]
        mem[32] = 73
        if stor14[stor13[idx]]:
            if 0 > !(stor73[stor13[idx]] / 10^9):
                revert with 0, 17
        else:
            if not stor71:
                revert with 0, 18
            if 0 > !(stor73[stor13[idx]] / stor71 / 10^9):
                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if stor16 < stor73[stor17]:
        revert with 0, 17
    if stor16 - stor73[stor17] < stor73[stor18]:
        revert with 0, 17
    if not stor71:
        revert with 0, 18
    if arg2 and 0 > -1 / arg2:
        revert with 0, 17
    if not stor16 - stor73[stor17] - stor73[stor18] / stor71 / 10^9:
        revert with 0, 18
    return (0 / stor16 - stor73[stor17] - stor73[stor18] / stor71 / 10^9 > arg1)
}

function airdrop(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    idx = 0
    while idx < sub_b6d45b90.length:
        if idx >= airdropAmount.length:
            revert with 0, 50
        mem[0] = 68
        mem[mem[64] + 4] = address(sub_b6d45b90[idx])
        mem[mem[64] + 36] = airdropAmount[idx]
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(sub_b6d45b90[idx]), airdropAmount[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_13] == bool(mem[_13])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_78e3f3f2(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'AstroToken: Caller is not owner the contract.'
    airdropAmount.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while airdropAmount.length > idx:
            airdropAmount[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            airdropAmount[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while airdropAmount.length > idx:
            airdropAmount[idx] = 0
            idx = idx + 1
            continue 
}

function sub_668ba8c3(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'AstroToken: Caller is not owner the contract.'
    sub_b6d45b90.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_b6d45b90.length > idx:
            uint256(sub_b6d45b90[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            address(sub_b6d45b90[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_b6d45b90.length > idx:
            uint256(sub_b6d45b90[idx]) = 0
            idx = idx + 1
            continue 
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if arg2 == bool(stor14[address(arg1)]):
        revert with 0, 'Value already set'
    stor14[address(arg1)] = uint8(arg2)
    if not arg2:
        if 1 >= sub_e1d5584c.length:
            revert with 0, 'Required 1 pair'
        idx = 0
        while idx < sub_e1d5584c.length:
            mem[0] = 13
            if sub_e1d5584c[idx] != arg1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if sub_e1d5584c.length < 1:
                revert with 0, 17
            if sub_e1d5584c.length - 1 >= sub_e1d5584c.length:
                revert with 0, 50
            if idx >= sub_e1d5584c.length:
                revert with 0, 50
            sub_e1d5584c[idx] = sub_e1d5584c[sub_e1d5584c.length]
            if not sub_e1d5584c.length:
                revert with 0, 49
            sub_e1d5584c[sub_e1d5584c.length] = 0
            sub_e1d5584c.length--
            emit SetAutomatedMarketMakerPair(arg1, arg2);
    else:
        sub_e1d5584c.length++
        sub_e1d5584c[sub_e1d5584c.length] = arg1
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function sub_069e5b7e(?) {
    require calldata.size - 4 >= 288
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if arg3 > !arg4:
        revert with 0, 17
    if arg3 + arg4 > !arg5:
        revert with 0, 17
    if arg3 + arg4 + arg5 > !arg6:
        revert with 0, 17
    if arg3 + arg4 + arg5 + arg6 > !arg7:
        revert with 0, 17
    if arg3 + arg4 + arg5 + arg6 + arg7 > !arg8:
        revert with 0, 17
    if arg3 + arg4 + arg5 + arg6 + arg7 + arg8 > !arg9:
        revert with 0, 17
    if arg3 + arg4 + arg5 + arg6 + arg7 + arg8 + arg9 != 100:
        revert with 0, 'subFee is not allowed'
    if arg2 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if uint8(arg1) >= 4:
        revert with 0, 50
    sub_cea74edf[uint8(arg1)] = 100 * arg2
    if arg2 and arg3 > -1 / arg2:
        revert with 0, 17
    if uint8(arg1) >= 4:
        revert with 0, 50
    sub_a046bc78[uint8(arg1)] = arg2 * arg3
    if arg2 and arg5 > -1 / arg2:
        revert with 0, 17
    if uint8(arg1) >= 4:
        revert with 0, 50
    sub_368128d1[uint8(arg1)] = arg2 * arg5
    if arg2 and arg4 > -1 / arg2:
        revert with 0, 17
    if uint8(arg1) >= 4:
        revert with 0, 50
    sub_8158feec[uint8(arg1)] = arg2 * arg4
    if arg2 and arg6 > -1 / arg2:
        revert with 0, 17
    if uint8(arg1) >= 4:
        revert with 0, 50
    sub_6508654f[uint8(arg1)] = arg2 * arg6
    if arg2 and arg7 > -1 / arg2:
        revert with 0, 17
    if uint8(arg1) >= 4:
        revert with 0, 50
    sub_a3e6c6f8[uint8(arg1)] = arg2 * arg7
    if arg2 and arg8 > -1 / arg2:
        revert with 0, 17
    if uint8(arg1) >= 4:
        revert with 0, 50
    sub_54e5e79a[uint8(arg1)] = arg2 * arg8
    if arg2 and arg9 > -1 / arg2:
        revert with 0, 17
    if uint8(arg1) >= 4:
        revert with 0, 50
    burnFee[uint8(arg1)] = arg2 * arg9
}

function sub_61a9d1b1(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if uint8(stor69.field_8):
        revert with 0, 'Try again'
    if nextRebase > block.timestamp:
        revert with 0, 'Not in time'
    if stor16 < stor73[stor17]:
        revert with 0, 17
    if stor16 - stor73[stor17] < stor73[stor18]:
        revert with 0, 17
    if not stor71:
        revert with 0, 18
    if stor16 - stor73[stor17] - stor73[stor18] / stor71 and sub_0af08314 > -1 / stor16 - stor73[stor17] - stor73[stor18] / stor71:
        revert with 0, 17
    if not sub_d7832b11:
        revert with 0, 18
    if stor16 - stor73[stor17] - stor73[stor18] / stor71 * sub_0af08314 / sub_d7832b11:
        if stor16 - stor73[stor17] - stor73[stor18] / stor71 * sub_0af08314 / sub_d7832b11 >= 0:
            if totalSupply > !(stor16 - stor73[stor17] - stor73[stor18] / stor71 * sub_0af08314 / sub_d7832b11):
                revert with 0, 17
        else:
            if stor16 - stor73[stor17] - stor73[stor18] / stor71 * sub_0af08314 / sub_d7832b11 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if totalSupply < -stor16 - stor73[stor17] - stor73[stor18] / stor71 * sub_0af08314 / sub_d7832b11:
                revert with 0, 17
        totalSupply += stor16 - stor73[stor17] - stor73[stor18] / stor71 * sub_0af08314 / sub_d7832b11
        if not totalSupply:
            revert with 0, 18
        stor71 = stor16 / totalSupply
        if block.timestamp > !sub_89375abf:
            revert with 0, 17
        nextRebase = block.timestamp + sub_89375abf
    emit LogRebase(totalSupply, block.timestamp);
    idx = 0
    while idx < sub_e1d5584c.length:
        mem[0] = 13
        mem[96] = 0xfff6cae900000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_e1d5584c[idx])
        call sub_e1d5584c[idx].0xfff6cae9 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_6731daa9(?) {
    require calldata.size - 4 >= 32
    mem[96] = 3
    mem[128] = this.address
    require ext_code.size(routerAddress)
    staticcall routerAddress.WAVAX() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[192] = usdcAddress
    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = arg1
    mem[ceil32(return_data.size) + 260] = 64
    mem[ceil32(return_data.size) + 292] = 3
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 324
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _25 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 224 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 255
    _26 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
    mem[(2 * ceil32(return_data.size)) + 224] = _26
    require _25 + (32 * _26) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 256 len ceil32(32 * _26)] = mem[ceil32(return_data.size) + _25 + 256 len ceil32(32 * _26)]
    if 2 >= _26:
        revert with 0, 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 320]
    return memory
      from mem[64]
       len 32
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[ceil32(uint255(stor0.length) * 0.5) + (uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}



}
