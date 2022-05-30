contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - _fallback()
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of struct allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
uint256 totalShares;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;
mapping of uint256 totalReleased;
mapping of uint256 released;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
address sub_b0a58b32Address;
address distributionPoolAddress;
address sub_9f497482Address;
uint256 marketingFee;
uint256 rewardsFee;
uint256 liquidityPoolFee;
uint256 treasuryFee;
uint256 totalFees;
uint256 sub_6c0cd64e;
uint256 stor24;
uint8 stor25;
uint8 stor25; offset 8
uint8 sub_969f2c7d; offset 16
uint256 stor25; offset 8
uint256 swapTokensAmount;
uint256 antiWhale;
mapping of uint8 stor28;
mapping of uint8 stor29;
mapping of uint8 stor30;
mapping of uint256 stor31;
mapping of uint8 stor32;

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor28[arg1])
}

function rewardsFee() {
    return rewardsFee
}

function totalShares() {
    return totalShares
}

function released(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return released[address(arg1)][address(arg2)]
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function antiWhale() {
    return antiWhale
}

function liquidityPoolFee() {
    return liquidityPoolFee
}

function swapTokensAmount() {
    return swapTokensAmount
}

function marketingFee() {
    return marketingFee
}

function sub_6c0cd64e(?) {
    return sub_6c0cd64e
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function payee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= payee.length:
        revert with 0, 50
    return payee[arg1]
}

function owner() {
    return owner
}

function sub_969f2c7d(?) {
    return bool(sub_969f2c7d)
}

function released(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return released[address(arg1)]
}

function sub_9f497482(?) {
    return sub_9f497482Address
}

function sub_b0a58b32(?) {
    return sub_b0a58b32Address
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor29[arg1])
}

function distributionPool() {
    return distributionPoolAddress
}

function treasuryFee() {
    return treasuryFee
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[address(arg1)]
}

function totalReleased(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalReleased[address(arg1)]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function totalReleased() {
    return totalReleased
}

function sub_709c6b8b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    antiWhale = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_f904b57b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6c0cd64e = arg1
}

function updateSwapTokensAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapTokensAmount = arg1
}

function sub_f5c37495(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b0a58b32Address = address(arg1)
}

function updateDistributionPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    distributionPoolAddress = arg1
}

function changeSwapLiquify(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor25.field_8) = Mask(248, 0, arg1)
}

function blacklistMalicious(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor28[address(arg1)] = uint8(arg2)
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

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TKN: The PancakeSwap pair cannot be moddified'
    stor29[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function updateLiquiditFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityPoolFee = arg1
    if rewardsFee > !arg1:
        revert with 0, 17
    if rewardsFee + arg1 < rewardsFee:
        revert with 0, 'SafeMath: addition overflow'
    if rewardsFee + arg1 > !treasuryFee:
        revert with 0, 17
    if treasuryFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if rewardsFee + arg1 + treasuryFee > !marketingFee:
        revert with 0, 17
    if marketingFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = rewardsFee + arg1 + treasuryFee + marketingFee
}

function updateRewardsFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsFee = arg1
    if arg1 > !liquidityPoolFee:
        revert with 0, 17
    if arg1 + liquidityPoolFee < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + liquidityPoolFee > !treasuryFee:
        revert with 0, 17
    if treasuryFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + liquidityPoolFee + treasuryFee > !marketingFee:
        revert with 0, 17
    if marketingFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = arg1 + liquidityPoolFee + treasuryFee + marketingFee
}

function updateMarketingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingFee = arg1
    if rewardsFee > !liquidityPoolFee:
        revert with 0, 17
    if rewardsFee + liquidityPoolFee < rewardsFee:
        revert with 0, 'SafeMath: addition overflow'
    if rewardsFee + liquidityPoolFee > !treasuryFee:
        revert with 0, 17
    if treasuryFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if rewardsFee + liquidityPoolFee + treasuryFee > !arg1:
        revert with 0, 17
    if arg1 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = rewardsFee + liquidityPoolFee + treasuryFee + arg1
}

function sub_49cc7131(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryFee = arg1
    if rewardsFee > !liquidityPoolFee:
        revert with 0, 17
    if rewardsFee + liquidityPoolFee < rewardsFee:
        revert with 0, 'SafeMath: addition overflow'
    if rewardsFee + liquidityPoolFee > !treasuryFee:
        revert with 0, 17
    if treasuryFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if rewardsFee + liquidityPoolFee + treasuryFee > !marketingFee:
        revert with 0, 17
    if marketingFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = rewardsFee + liquidityPoolFee + treasuryFee + marketingFee
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)].field_0:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)].field_0 < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)].field_0 + arg2 < allowance[msg.sender][address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function updateUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit UpdateUniswapV2Router(arg1, uniswapV2RouterAddress);
    uniswapV2RouterAddress = arg1
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall uniswapV2RouterAddress.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
}

function sub_47a0ed50(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2PairAddress:
        revert with 0, 'You can only set pair once !'
    staticcall uniswapV2RouterAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall uniswapV2RouterAddress.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
    stor29[ext_call.return_data[12 len 20]] = 1
    emit SetAutomatedMarketMakerPair(ext_call.return_data[12 len 20], 1);
}

function release(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    if eth.balance(this.address) > !totalReleased:
        revert with 0, 17
    if eth.balance(this.address) + totalReleased and shares[address(arg1)] > -1 / eth.balance(this.address) + totalReleased:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
        revert with 0, 17
    if not ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)] > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 0, 17
    released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares
    if totalReleased > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 0, 17
    totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]
    if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit PaymentReleased(address(arg1), ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]);
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

function release(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not shares[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    mem[100] = this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !totalReleased[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] + totalReleased[address(arg1)] and shares[address(arg2)] > -1 / ext_call.return_data[0] + totalReleased[address(arg1)]:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares < released[address(arg1)][address(arg2)]:
        revert with 0, 17
    if not ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]:
        revert with 0, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)][address(arg2)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with 0, 17
    released[address(arg1)][address(arg2)] = (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares
    if totalReleased[address(arg1)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with 0, 17
    totalReleased[address(arg1)] = totalReleased[address(arg1)] + ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit ERC20PaymentReleased(address(arg2), ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor28[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if stor28[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if stor30[address(msg.sender)]:
        if stor31[address(arg1)] > !arg2:
            revert with 0, 17
        if stor31[address(arg1)] + arg2 < stor31[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        stor31[address(arg1)] += arg2
        if balanceOf[this.address] < swapTokensAmount:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if arg2 > 10^18 * antiWhale:
                if stor29[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'You are not permitted to transfer more than 100,000 tokens'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
        else:
            if not uint8(stor25.field_8):
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if arg2 > 10^18 * antiWhale:
                    if stor29[address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'You are not permitted to transfer more than 100,000 tokens'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
            else:
                if uint8(stor25.field_0):
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                else:
                    if owner == msg.sender:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if arg2 > 10^18 * antiWhale:
                            if stor29[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'You are not permitted to transfer more than 100,000 tokens'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    else:
                        if stor29[address(msg.sender)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if arg2 > 10^18 * antiWhale:
                                if stor29[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'You are not permitted to transfer more than 100,000 tokens'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        else:
                            uint8(stor25.field_0) = 1
                            if liquidityPoolFee > !marketingFee:
                                revert with 0, 17
                            if liquidityPoolFee + marketingFee < liquidityPoolFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if liquidityPoolFee + marketingFee > !treasuryFee:
                                revert with 0, 17
                            if treasuryFee < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not balanceOf[this.address]:
                                if not totalFees:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not 0 / totalFees:
                                    mem[384] = this.address
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[448] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[416] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor13].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[ceil32(return_data.size) + 448] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 452] = 0
                                    idx = 0
                                    s = ceil32(return_data.size) + 644
                                    t = 384
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 448] = 30
                                    mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor13].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[ceil32(return_data.size) + 580] = 0
                                    mem[ceil32(return_data.size) + 612] = 0
                                    mem[ceil32(return_data.size) + 644] = 0
                                    mem[ceil32(return_data.size) + 676] = block.timestamp
                                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args this.address, 0, 0, 0, 0, block.timestamp
                                    mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        0,
                                    if treasuryFee > !marketingFee:
                                        revert with 0, 17
                                    if treasuryFee + marketingFee < treasuryFee:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 0 / totalFees:
                                        mem[(2 * ceil32(return_data.size)) + 512] = 2
                                        mem[(2 * ceil32(return_data.size)) + 544] = this.address
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor13].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[(4 * ceil32(return_data.size)) + 608] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 612] = 0
                                        mem[(4 * ceil32(return_data.size)) + 644] = 0
                                        mem[(4 * ceil32(return_data.size)) + 676] = 160
                                        mem[(4 * ceil32(return_data.size)) + 772] = 2
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 804
                                        t = (2 * ceil32(return_data.size)) + 544
                                        while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 708] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 772 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if marketingFee > !treasuryFee:
                                            revert with 0, 17
                                        if marketingFee + treasuryFee < marketingFee:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not marketingFee + treasuryFee:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        call sub_9f497482Address with:
                                           value 0 / marketingFee + treasuryFee wei
                                             gas gas_remaining wei
                                        if marketingFee > !treasuryFee:
                                            revert with 0, 17
                                        if marketingFee + treasuryFee < marketingFee:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not marketingFee + treasuryFee:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        call sub_b0a58b32Address with:
                                           value 0 / marketingFee + treasuryFee wei
                                             gas gas_remaining wei
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                            revert with 0, 17
                                        if arg2 > 10^18 * antiWhale:
                                            if stor29[address(msg.sender)]:
                                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                        if not return_data.size:
                                            if not return_data.size:
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 870 len 26] >> 48,
                                                                0
                                            else:
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 871 len 26] >> 48,
                                                                0
                                        else:
                                            if not return_data.size:
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 871 len 26] >> 48,
                                                                0
                                            else:
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 872 len 26] >> 48,
                                                                0
                                        ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    if 0 / totalFees and treasuryFee + marketingFee > -1 / 0 / totalFees:
                                        revert with 0, 17
                                    if not 0 / totalFees:
                                        revert with 0, 18
                                    if (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees) / 0 / totalFees != treasuryFee + marketingFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[(2 * ceil32(return_data.size)) + 512] = 2
                                    mem[(2 * ceil32(return_data.size)) + 544] = this.address
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor13].field_0 = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                                    emit Approval(((treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                                    mem[(4 * ceil32(return_data.size)) + 644] = 0
                                    mem[(4 * ceil32(return_data.size)) + 676] = 160
                                    mem[(4 * ceil32(return_data.size)) + 772] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 804
                                    t = (2 * ceil32(return_data.size)) + 544
                                    while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 708] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 772 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                                else:
                                    if 0 / totalFees and liquidityPoolFee > -1 / 0 / totalFees:
                                        revert with 0, 17
                                    if not 0 / totalFees:
                                        revert with 0, 18
                                    if 0 / totalFees * liquidityPoolFee / 0 / totalFees != liquidityPoolFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 / totalFees * liquidityPoolFee / 100 / 2 > 0 / totalFees * liquidityPoolFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if 0 / totalFees * liquidityPoolFee / 100 < 0 / totalFees * liquidityPoolFee / 100 / 2:
                                        revert with 0, 17
                                    mem[384] = this.address
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[448] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[416] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor13].field_0 = 0 / totalFees * liquidityPoolFee / 100 / 2
                                    allowance[address(this.address)][stor13].field_255 = 0
                                    emit Approval((0 / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                    mem[ceil32(return_data.size) + 448] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 452] = 0 / totalFees * liquidityPoolFee / 100 / 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 644
                                    t = 384
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 448] = 30
                                    mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor13].field_0 = (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)
                                    emit Approval(((0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                    mem[ceil32(return_data.size) + 580] = 0
                                    mem[ceil32(return_data.size) + 612] = 0
                                    mem[ceil32(return_data.size) + 644] = 0
                                    mem[ceil32(return_data.size) + 676] = block.timestamp
                                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args this.address, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                    mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2));
                                    if treasuryFee > !marketingFee:
                                        revert with 0, 17
                                    if treasuryFee + marketingFee < treasuryFee:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0 / totalFees:
                                        if 0 / totalFees and treasuryFee + marketingFee > -1 / 0 / totalFees:
                                            revert with 0, 17
                                        if not 0 / totalFees:
                                            revert with 0, 18
                                        if (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees) / 0 / totalFees != treasuryFee + marketingFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        mem[(2 * ceil32(return_data.size)) + 512] = 2
                                        mem[(2 * ceil32(return_data.size)) + 544] = this.address
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor13].field_0 = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                                        emit Approval(((treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                                        mem[(4 * ceil32(return_data.size)) + 608] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 612] = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                                        mem[(4 * ceil32(return_data.size)) + 644] = 0
                                        mem[(4 * ceil32(return_data.size)) + 676] = 160
                                        mem[(4 * ceil32(return_data.size)) + 772] = 2
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 804
                                        t = (2 * ceil32(return_data.size)) + 544
                                        while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 708] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 772 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if marketingFee > !treasuryFee:
                                            revert with 0, 17
                                        if marketingFee + treasuryFee < marketingFee:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not marketingFee + treasuryFee:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        call sub_9f497482Address with:
                                           value 0 / marketingFee + treasuryFee wei
                                             gas gas_remaining wei
                                        if marketingFee > !treasuryFee:
                                            revert with 0, 17
                                        if marketingFee + treasuryFee < marketingFee:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not marketingFee + treasuryFee:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        call sub_b0a58b32Address with:
                                           value 0 / marketingFee + treasuryFee wei
                                             gas gas_remaining wei
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                            revert with 0, 17
                                        if arg2 > 10^18 * antiWhale:
                                            if stor29[address(msg.sender)]:
                                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                        if not return_data.size:
                                            if not return_data.size:
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 870 len 26] >> 48,
                                                                0
                                            else:
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 871 len 26] >> 48,
                                                                0
                                        else:
                                            if not return_data.size:
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 871 len 26] >> 48,
                                                                0
                                            else:
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 872 len 26] >> 48,
                                                                0
                                        ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    mem[(2 * ceil32(return_data.size)) + 512] = 2
                                    mem[(2 * ceil32(return_data.size)) + 544] = this.address
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor13].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 0
                                    mem[(4 * ceil32(return_data.size)) + 644] = 0
                                    mem[(4 * ceil32(return_data.size)) + 676] = 160
                                    mem[(4 * ceil32(return_data.size)) + 772] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 804
                                    t = (2 * ceil32(return_data.size)) + 544
                                    while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 708] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 772 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                                    mem[(4 * ceil32(return_data.size)) + 708] = 30
                                    mem[(4 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                    mem[(4 * ceil32(return_data.size)) + 770] = 0
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 672
                                       len (5 * ceil32(return_data.size)) + 100
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if marketingFee > !treasuryFee:
                                    revert with 0, 17
                                if marketingFee + treasuryFee < marketingFee:
                                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                                    mem[(4 * ceil32(return_data.size)) + 708] = 27
                                    mem[(4 * ceil32(return_data.size)) + 740] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 672
                                       len (5 * ceil32(return_data.size)) + 100
                                if not marketingFee + treasuryFee:
                                    mem[(4 * ceil32(return_data.size)) + 736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 740] = 32
                                    mem[(4 * ceil32(return_data.size)) + 772] = 26
                                    mem[(4 * ceil32(return_data.size)) + 804] = 'SafeMath: division by zero'
                                    mem[(4 * ceil32(return_data.size)) + 830] = 0
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 736
                                       len (5 * ceil32(return_data.size)) + 100
                                call sub_9f497482Address with:
                                   value 0 / marketingFee + treasuryFee wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if marketingFee > !treasuryFee:
                                        revert with 0, 17
                                    if marketingFee + treasuryFee < marketingFee:
                                        mem[(4 * ceil32(return_data.size)) + 736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 740] = 32
                                        mem[(4 * ceil32(return_data.size)) + 772] = 27
                                        mem[(4 * ceil32(return_data.size)) + 804] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 736
                                           len (5 * ceil32(return_data.size)) + 100
                                    if not marketingFee + treasuryFee:
                                        mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 804] = 32
                                        mem[(4 * ceil32(return_data.size)) + 836] = 26
                                        mem[(4 * ceil32(return_data.size)) + 868] = 'SafeMath: division by zero'
                                        mem[(4 * ceil32(return_data.size)) + 894] = 0
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 800
                                           len (5 * ceil32(return_data.size)) + 100
                                    call sub_b0a58b32Address with:
                                       value 0 / marketingFee + treasuryFee wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + 804] = 32
                                            mem[(4 * ceil32(return_data.size)) + 836] = 37
                                            mem[(4 * ceil32(return_data.size)) + 868] = 'ERC20: transfer from the zero ad'
                                            mem[(4 * ceil32(return_data.size)) + 900] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (4 * ceil32(return_data.size)) + 800
                                               len (5 * ceil32(return_data.size)) + 132
                                        if not arg1:
                                            mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + 804] = 32
                                            mem[(4 * ceil32(return_data.size)) + 836] = 35
                                            mem[(4 * ceil32(return_data.size)) + 868] = 'ERC20: transfer to the zero addr'
                                            mem[(4 * ceil32(return_data.size)) + 900] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (4 * ceil32(return_data.size)) + 800
                                               len (5 * ceil32(return_data.size)) + 132
                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                            revert with 0, 17
                                        if arg2 > 10^18 * antiWhale:
                                            if stor29[address(msg.sender)]:
                                                mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + 804] = 32
                                                mem[(4 * ceil32(return_data.size)) + 836] = 58
                                                mem[(4 * ceil32(return_data.size)) + 868] = 'You are not permitted to transfe'
                                                mem[(4 * ceil32(return_data.size)) + 900] = 'r more than 100,000 tokens'
                                                revert with memory
                                                  from (4 * ceil32(return_data.size)) + 800
                                                   len (5 * ceil32(return_data.size)) + 132
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            mem[(4 * ceil32(return_data.size)) + 896] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + 900] = 32
                                            mem[(4 * ceil32(return_data.size)) + 932] = 38
                                            mem[(4 * ceil32(return_data.size)) + 964 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 870 len 26]
                                            mem[(4 * ceil32(return_data.size)) + 1002] = 0
                                            revert with memory
                                              from (4 * ceil32(return_data.size)) + 896
                                               len (5 * ceil32(return_data.size)) + 132
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        mem[(4 * ceil32(return_data.size)) + 896] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 900] = 32
                                        mem[(4 * ceil32(return_data.size)) + 932] = 27
                                        mem[(4 * ceil32(return_data.size)) + 964] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 896
                                           len (5 * ceil32(return_data.size)) + 100
                                    mem[(4 * ceil32(return_data.size)) + 832 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    uint8(stor25.field_0) = 0
                                    if not msg.sender:
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 37
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'ERC20: transfer from the zero ad'
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                           len (5 * ceil32(return_data.size)) + 132
                                    if not arg1:
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 35
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'ERC20: transfer to the zero addr'
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                           len (5 * ceil32(return_data.size)) + 132
                                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if arg2 > 10^18 * antiWhale:
                                        if stor29[address(msg.sender)]:
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 58
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'You are not permitted to transfe'
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 'r more than 100,000 tokens'
                                            revert with memory
                                              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                               len (5 * ceil32(return_data.size)) + 132
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 32
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 38
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 871 len 26]
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1003] = 0
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897
                                           len (5 * ceil32(return_data.size)) + 132
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 32
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 27
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if marketingFee > !treasuryFee:
                                    revert with 0, 17
                                if marketingFee + treasuryFee < marketingFee:
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 737] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 741] = 32
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 773] = 27
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 737
                                       len (5 * ceil32(return_data.size)) + 100
                                if not marketingFee + treasuryFee:
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 26
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'SafeMath: division by zero'
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 895] = 0
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                       len (5 * ceil32(return_data.size)) + 100
                                call sub_b0a58b32Address with:
                                   value 0 / marketingFee + treasuryFee wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    uint8(stor25.field_0) = 0
                                    if not msg.sender:
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 37
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'ERC20: transfer from the zero ad'
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                           len (5 * ceil32(return_data.size)) + 132
                                    if not arg1:
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 35
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'ERC20: transfer to the zero addr'
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                           len (5 * ceil32(return_data.size)) + 132
                                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if arg2 > 10^18 * antiWhale:
                                        if stor29[address(msg.sender)]:
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 58
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'You are not permitted to transfe'
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 'r more than 100,000 tokens'
                                            revert with memory
                                              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                               len (5 * ceil32(return_data.size)) + 132
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 32
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 38
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 871 len 26]
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1003] = 0
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897
                                           len (5 * ceil32(return_data.size)) + 132
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 32
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 27
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = return_data.size
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 833 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                uint8(stor25.field_0) = 0
                                if not msg.sender:
                                    mem[(8 * ceil32(return_data.size)) + 802] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 806] = 32
                                    mem[(8 * ceil32(return_data.size)) + 838] = 37
                                    mem[(8 * ceil32(return_data.size)) + 870] = 'ERC20: transfer from the zero ad'
                                    mem[(8 * ceil32(return_data.size)) + 902] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 802
                                       len (13 * ceil32(return_data.size)) + 132
                                if not arg1:
                                    mem[(8 * ceil32(return_data.size)) + 802] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 806] = 32
                                    mem[(8 * ceil32(return_data.size)) + 838] = 35
                                    mem[(8 * ceil32(return_data.size)) + 870] = 'ERC20: transfer to the zero addr'
                                    mem[(8 * ceil32(return_data.size)) + 902] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 802
                                       len (13 * ceil32(return_data.size)) + 132
                                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if arg2 > 10^18 * antiWhale:
                                    if stor29[address(msg.sender)]:
                                        mem[(8 * ceil32(return_data.size)) + 802] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 806] = 32
                                        mem[(8 * ceil32(return_data.size)) + 838] = 58
                                        mem[(8 * ceil32(return_data.size)) + 870] = 'You are not permitted to transfe'
                                        mem[(8 * ceil32(return_data.size)) + 902] = 'r more than 100,000 tokens'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 802
                                           len (13 * ceil32(return_data.size)) + 132
                                if arg2 > balanceOf[address(msg.sender)]:
                                    mem[(8 * ceil32(return_data.size)) + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 902] = 32
                                    mem[(8 * ceil32(return_data.size)) + 934] = 38
                                    mem[(8 * ceil32(return_data.size)) + 966 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 872 len 26]
                                    mem[(8 * ceil32(return_data.size)) + 1004] = 0
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 898
                                       len (13 * ceil32(return_data.size)) + 132
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                mem[(8 * ceil32(return_data.size)) + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 902] = 32
                                mem[(8 * ceil32(return_data.size)) + 934] = 27
                                mem[(8 * ceil32(return_data.size)) + 966] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 898
                                   len (13 * ceil32(return_data.size)) + 100
                            if balanceOf[this.address] and liquidityPoolFee + marketingFee + treasuryFee > -1 / balanceOf[this.address]:
                                revert with 0, 17
                            if not balanceOf[this.address]:
                                revert with 0, 18
                            if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / balanceOf[this.address] != liquidityPoolFee + marketingFee + treasuryFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not totalFees:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                mem[384] = this.address
                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[448] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[416] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor13].field_0 = 0
                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                mem[ceil32(return_data.size) + 448] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 452] = 0
                                idx = 0
                                s = ceil32(return_data.size) + 644
                                t = 384
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 448] = 30
                                mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor13].field_0 = 0
                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                mem[ceil32(return_data.size) + 580] = 0
                                mem[ceil32(return_data.size) + 612] = 0
                                mem[ceil32(return_data.size) + 644] = 0
                                mem[ceil32(return_data.size) + 676] = block.timestamp
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, 0, 0, 0, 0, block.timestamp
                                mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                    0,
                                if treasuryFee > !marketingFee:
                                    revert with 0, 17
                                if treasuryFee + marketingFee < treasuryFee:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                    mem[(2 * ceil32(return_data.size)) + 512] = 2
                                    mem[(2 * ceil32(return_data.size)) + 544] = this.address
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor13].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 0
                                    mem[(4 * ceil32(return_data.size)) + 644] = 0
                                    mem[(4 * ceil32(return_data.size)) + 676] = 160
                                    mem[(4 * ceil32(return_data.size)) + 772] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 804
                                    t = (2 * ceil32(return_data.size)) + 544
                                    while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 708] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 772 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                                else:
                                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and treasuryFee + marketingFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                        revert with 0, 17
                                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                        revert with 0, 18
                                    if (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != treasuryFee + marketingFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[(2 * ceil32(return_data.size)) + 512] = 2
                                    mem[(2 * ceil32(return_data.size)) + 544] = this.address
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor13].field_0 = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                                    emit Approval(((treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)), this.address, uniswapV2RouterAddress);
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                                    mem[(4 * ceil32(return_data.size)) + 644] = 0
                                    mem[(4 * ceil32(return_data.size)) + 676] = 160
                                    mem[(4 * ceil32(return_data.size)) + 772] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 804
                                    t = (2 * ceil32(return_data.size)) + 544
                                    while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 708] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 772 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                                    mem[(4 * ceil32(return_data.size)) + 708] = 30
                                    mem[(4 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                    mem[(4 * ceil32(return_data.size)) + 770] = 0
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 672
                                       len (5 * ceil32(return_data.size)) + 100
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if marketingFee > !treasuryFee:
                                    revert with 0, 17
                                if marketingFee + treasuryFee < marketingFee:
                                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                                    mem[(4 * ceil32(return_data.size)) + 708] = 27
                                    mem[(4 * ceil32(return_data.size)) + 740] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 672
                                       len (5 * ceil32(return_data.size)) + 100
                                if not marketingFee + treasuryFee:
                                    mem[(4 * ceil32(return_data.size)) + 736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 740] = 32
                                    mem[(4 * ceil32(return_data.size)) + 772] = 26
                                    mem[(4 * ceil32(return_data.size)) + 804] = 'SafeMath: division by zero'
                                    mem[(4 * ceil32(return_data.size)) + 830] = 0
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 736
                                       len (5 * ceil32(return_data.size)) + 100
                                call sub_9f497482Address with:
                                   value 0 / marketingFee + treasuryFee wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if marketingFee > !treasuryFee:
                                        revert with 0, 17
                                    if marketingFee + treasuryFee < marketingFee:
                                        mem[(4 * ceil32(return_data.size)) + 736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 740] = 32
                                        mem[(4 * ceil32(return_data.size)) + 772] = 27
                                        mem[(4 * ceil32(return_data.size)) + 804] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 736
                                           len (5 * ceil32(return_data.size)) + 100
                                    if not marketingFee + treasuryFee:
                                        mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 804] = 32
                                        mem[(4 * ceil32(return_data.size)) + 836] = 26
                                        mem[(4 * ceil32(return_data.size)) + 868] = 'SafeMath: division by zero'
                                        mem[(4 * ceil32(return_data.size)) + 894] = 0
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 800
                                           len (5 * ceil32(return_data.size)) + 100
                                    call sub_b0a58b32Address with:
                                       value 0 / marketingFee + treasuryFee wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + 804] = 32
                                            mem[(4 * ceil32(return_data.size)) + 836] = 37
                                            mem[(4 * ceil32(return_data.size)) + 868] = 'ERC20: transfer from the zero ad'
                                            mem[(4 * ceil32(return_data.size)) + 900] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (4 * ceil32(return_data.size)) + 800
                                               len (5 * ceil32(return_data.size)) + 132
                                        if not arg1:
                                            mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + 804] = 32
                                            mem[(4 * ceil32(return_data.size)) + 836] = 35
                                            mem[(4 * ceil32(return_data.size)) + 868] = 'ERC20: transfer to the zero addr'
                                            mem[(4 * ceil32(return_data.size)) + 900] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (4 * ceil32(return_data.size)) + 800
                                               len (5 * ceil32(return_data.size)) + 132
                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                            revert with 0, 17
                                        if arg2 > 10^18 * antiWhale:
                                            if stor29[address(msg.sender)]:
                                                mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + 804] = 32
                                                mem[(4 * ceil32(return_data.size)) + 836] = 58
                                                mem[(4 * ceil32(return_data.size)) + 868] = 'You are not permitted to transfe'
                                                mem[(4 * ceil32(return_data.size)) + 900] = 'r more than 100,000 tokens'
                                                revert with memory
                                                  from (4 * ceil32(return_data.size)) + 800
                                                   len (5 * ceil32(return_data.size)) + 132
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            mem[(4 * ceil32(return_data.size)) + 896] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + 900] = 32
                                            mem[(4 * ceil32(return_data.size)) + 932] = 38
                                            mem[(4 * ceil32(return_data.size)) + 964 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 870 len 26]
                                            mem[(4 * ceil32(return_data.size)) + 1002] = 0
                                            revert with memory
                                              from (4 * ceil32(return_data.size)) + 896
                                               len (5 * ceil32(return_data.size)) + 132
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        mem[(4 * ceil32(return_data.size)) + 896] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 900] = 32
                                        mem[(4 * ceil32(return_data.size)) + 932] = 27
                                        mem[(4 * ceil32(return_data.size)) + 964] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 896
                                           len (5 * ceil32(return_data.size)) + 100
                                    mem[(4 * ceil32(return_data.size)) + 832 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    uint8(stor25.field_0) = 0
                                    if not msg.sender:
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 37
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'ERC20: transfer from the zero ad'
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                           len (5 * ceil32(return_data.size)) + 132
                                    if not arg1:
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 35
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'ERC20: transfer to the zero addr'
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                           len (5 * ceil32(return_data.size)) + 132
                                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if arg2 > 10^18 * antiWhale:
                                        if stor29[address(msg.sender)]:
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 58
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'You are not permitted to transfe'
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 'r more than 100,000 tokens'
                                            revert with memory
                                              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                               len (5 * ceil32(return_data.size)) + 132
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 32
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 38
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 871 len 26]
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1003] = 0
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897
                                           len (5 * ceil32(return_data.size)) + 132
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 32
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 27
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if marketingFee > !treasuryFee:
                                    revert with 0, 17
                                if marketingFee + treasuryFee < marketingFee:
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 737] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 741] = 32
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 773] = 27
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 737
                                       len (5 * ceil32(return_data.size)) + 100
                                if not marketingFee + treasuryFee:
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 26
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'SafeMath: division by zero'
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 895] = 0
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                       len (5 * ceil32(return_data.size)) + 100
                                call sub_b0a58b32Address with:
                                   value 0 / marketingFee + treasuryFee wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    uint8(stor25.field_0) = 0
                                    if not msg.sender:
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 37
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'ERC20: transfer from the zero ad'
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                           len (5 * ceil32(return_data.size)) + 132
                                    if not arg1:
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 35
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'ERC20: transfer to the zero addr'
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                           len (5 * ceil32(return_data.size)) + 132
                                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if arg2 > 10^18 * antiWhale:
                                        if stor29[address(msg.sender)]:
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 58
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'You are not permitted to transfe'
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 'r more than 100,000 tokens'
                                            revert with memory
                                              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                               len (5 * ceil32(return_data.size)) + 132
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 32
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 38
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 871 len 26]
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1003] = 0
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897
                                           len (5 * ceil32(return_data.size)) + 132
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 32
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 27
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = return_data.size
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 833 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                uint8(stor25.field_0) = 0
                                if not msg.sender:
                                    mem[(8 * ceil32(return_data.size)) + 802] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 806] = 32
                                    mem[(8 * ceil32(return_data.size)) + 838] = 37
                                    mem[(8 * ceil32(return_data.size)) + 870] = 'ERC20: transfer from the zero ad'
                                    mem[(8 * ceil32(return_data.size)) + 902] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 802
                                       len (13 * ceil32(return_data.size)) + 132
                                if not arg1:
                                    mem[(8 * ceil32(return_data.size)) + 802] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 806] = 32
                                    mem[(8 * ceil32(return_data.size)) + 838] = 35
                                    mem[(8 * ceil32(return_data.size)) + 870] = 'ERC20: transfer to the zero addr'
                                    mem[(8 * ceil32(return_data.size)) + 902] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 802
                                       len (13 * ceil32(return_data.size)) + 132
                                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if arg2 > 10^18 * antiWhale:
                                    if stor29[address(msg.sender)]:
                                        mem[(8 * ceil32(return_data.size)) + 802] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 806] = 32
                                        mem[(8 * ceil32(return_data.size)) + 838] = 58
                                        mem[(8 * ceil32(return_data.size)) + 870] = 'You are not permitted to transfe'
                                        mem[(8 * ceil32(return_data.size)) + 902] = 'r more than 100,000 tokens'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 802
                                           len (13 * ceil32(return_data.size)) + 132
                                if arg2 > balanceOf[address(msg.sender)]:
                                    mem[(8 * ceil32(return_data.size)) + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 902] = 32
                                    mem[(8 * ceil32(return_data.size)) + 934] = 38
                                    mem[(8 * ceil32(return_data.size)) + 966 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 872 len 26]
                                    mem[(8 * ceil32(return_data.size)) + 1004] = 0
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 898
                                       len (13 * ceil32(return_data.size)) + 132
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                mem[(8 * ceil32(return_data.size)) + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 902] = 32
                                mem[(8 * ceil32(return_data.size)) + 934] = 27
                                mem[(8 * ceil32(return_data.size)) + 966] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 898
                                   len (13 * ceil32(return_data.size)) + 100
                            if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and liquidityPoolFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                revert with 0, 17
                            if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                revert with 0, 18
                            if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != liquidityPoolFee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2 > (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 < (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2:
                                revert with 0, 17
                            mem[384] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[448] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[416] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                            allowance[address(this.address)][stor13].field_255 = 0
                            emit Approval(((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                            mem[ceil32(return_data.size) + 448] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 452] = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                            idx = 0
                            s = ceil32(return_data.size) + 644
                            t = 384
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 448] = 30
                            mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)
                            emit Approval((((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                            mem[ceil32(return_data.size) + 580] = 0
                            mem[ceil32(return_data.size) + 612] = 0
                            mem[ceil32(return_data.size) + 644] = 0
                            mem[ceil32(return_data.size) + 676] = block.timestamp
                            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args this.address, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                            mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit SwapAndLiquify(Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2));
                            if treasuryFee > !marketingFee:
                                revert with 0, 17
                            if treasuryFee + marketingFee < treasuryFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                mem[(2 * ceil32(return_data.size)) + 512] = 2
                                mem[(2 * ceil32(return_data.size)) + 544] = this.address
                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor13].field_0 = 0
                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                mem[(4 * ceil32(return_data.size)) + 608] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 612] = 0
                                mem[(4 * ceil32(return_data.size)) + 644] = 0
                                mem[(4 * ceil32(return_data.size)) + 676] = 160
                                mem[(4 * ceil32(return_data.size)) + 772] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 804
                                t = (2 * ceil32(return_data.size)) + 544
                                while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 708] = this.address
                                mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 772 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                            else:
                                if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and treasuryFee + marketingFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                    revert with 0, 17
                                if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                    revert with 0, 18
                                if (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != treasuryFee + marketingFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[(2 * ceil32(return_data.size)) + 512] = 2
                                mem[(2 * ceil32(return_data.size)) + 544] = this.address
                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor13].field_0 = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                                emit Approval(((treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)), this.address, uniswapV2RouterAddress);
                                mem[(4 * ceil32(return_data.size)) + 608] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 612] = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                                mem[(4 * ceil32(return_data.size)) + 644] = 0
                                mem[(4 * ceil32(return_data.size)) + 676] = 160
                                mem[(4 * ceil32(return_data.size)) + 772] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 804
                                t = (2 * ceil32(return_data.size)) + 544
                                while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 708] = this.address
                                mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 772 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if marketingFee > !treasuryFee:
                                revert with 0, 17
                            if marketingFee + treasuryFee < marketingFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if not marketingFee + treasuryFee:
                                revert with 0, 'SafeMath: division by zero', 0
                            call sub_9f497482Address with:
                               value 0 / marketingFee + treasuryFee wei
                                 gas gas_remaining wei
                            if marketingFee > !treasuryFee:
                                revert with 0, 17
                            if marketingFee + treasuryFee < marketingFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if not marketingFee + treasuryFee:
                                revert with 0, 'SafeMath: division by zero', 0
                            call sub_b0a58b32Address with:
                               value 0 / marketingFee + treasuryFee wei
                                 gas gas_remaining wei
                            uint8(stor25.field_0) = 0
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if arg2 > 10^18 * antiWhale:
                                if stor29[address(msg.sender)]:
                                    revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                            if not return_data.size:
                                if not return_data.size:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 870 len 26] >> 48,
                                                    0
                                else:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 871 len 26] >> 48,
                                                    0
                            else:
                                if not return_data.size:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 871 len 26] >> 48,
                                                    0
                                else:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 872 len 26] >> 48,
                                                    0
        ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    if stor30[address(arg1)]:
        if stor31[address(arg1)] > !arg2:
            revert with 0, 17
        if stor31[address(arg1)] + arg2 < stor31[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        stor31[address(arg1)] += arg2
        if balanceOf[this.address] < swapTokensAmount:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if arg2 > 10^18 * antiWhale:
                if stor29[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'You are not permitted to transfer more than 100,000 tokens'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        if not uint8(stor25.field_8):
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if arg2 > 10^18 * antiWhale:
                if stor29[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'You are not permitted to transfer more than 100,000 tokens'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        if uint8(stor25.field_0):
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if arg2 > 10^18 * antiWhale:
                if stor29[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'You are not permitted to transfer more than 100,000 tokens'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        if owner == msg.sender:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if arg2 > 10^18 * antiWhale:
                if stor29[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'You are not permitted to transfer more than 100,000 tokens'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        if stor29[address(msg.sender)]:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if arg2 > 10^18 * antiWhale:
                if stor29[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'You are not permitted to transfer more than 100,000 tokens'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        uint8(stor25.field_0) = 1
        if liquidityPoolFee > !marketingFee:
            revert with 0, 17
        if liquidityPoolFee + marketingFee < liquidityPoolFee:
            revert with 0, 'SafeMath: addition overflow'
        if liquidityPoolFee + marketingFee > !treasuryFee:
            revert with 0, 17
        if treasuryFee < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not balanceOf[this.address]:
            if not totalFees:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / totalFees:
                mem[384] = this.address
                staticcall uniswapV2RouterAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[448] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[416] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor13].field_0 = 0
                emit Approval(0, this.address, uniswapV2RouterAddress);
                mem[ceil32(return_data.size) + 448] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 452] = 0
                idx = 0
                s = ceil32(return_data.size) + 644
                t = 384
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 448] = 30
                mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor13].field_0 = 0
                emit Approval(0, this.address, uniswapV2RouterAddress);
                mem[ceil32(return_data.size) + 580] = 0
                mem[ceil32(return_data.size) + 612] = 0
                mem[ceil32(return_data.size) + 644] = 0
                mem[ceil32(return_data.size) + 676] = block.timestamp
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args this.address, 0, 0, 0, 0, block.timestamp
                mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                    0,
                if treasuryFee > !marketingFee:
                    revert with 0, 17
                if treasuryFee + marketingFee < treasuryFee:
                    revert with 0, 'SafeMath: addition overflow'
                if not 0 / totalFees:
                    mem[(2 * ceil32(return_data.size)) + 512] = 2
                    mem[(2 * ceil32(return_data.size)) + 544] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = 0
                    emit Approval(0, this.address, uniswapV2RouterAddress);
                    mem[(4 * ceil32(return_data.size)) + 608] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 612] = 0
                    mem[(4 * ceil32(return_data.size)) + 644] = 0
                    mem[(4 * ceil32(return_data.size)) + 676] = 160
                    mem[(4 * ceil32(return_data.size)) + 772] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 804
                    t = (2 * ceil32(return_data.size)) + 544
                    while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 708] = this.address
                    mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 772 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                else:
                    if 0 / totalFees and treasuryFee + marketingFee > -1 / 0 / totalFees:
                        revert with 0, 17
                    if not 0 / totalFees:
                        revert with 0, 18
                    if (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees) / 0 / totalFees != treasuryFee + marketingFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(2 * ceil32(return_data.size)) + 512] = 2
                    mem[(2 * ceil32(return_data.size)) + 544] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                    emit Approval(((treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                    mem[(4 * ceil32(return_data.size)) + 608] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 612] = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                    mem[(4 * ceil32(return_data.size)) + 644] = 0
                    mem[(4 * ceil32(return_data.size)) + 676] = 160
                    mem[(4 * ceil32(return_data.size)) + 772] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 804
                    t = (2 * ceil32(return_data.size)) + 544
                    while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 708] = this.address
                    mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 772 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if marketingFee > !treasuryFee:
                    revert with 0, 17
                if marketingFee + treasuryFee < marketingFee:
                    revert with 0, 'SafeMath: addition overflow'
                if not marketingFee + treasuryFee:
                    revert with 0, 'SafeMath: division by zero', 0
                call sub_9f497482Address with:
                   value 0 / marketingFee + treasuryFee wei
                     gas gas_remaining wei
                if marketingFee > !treasuryFee:
                    revert with 0, 17
                if marketingFee + treasuryFee < marketingFee:
                    revert with 0, 'SafeMath: addition overflow'
                if not marketingFee + treasuryFee:
                    revert with 0, 'SafeMath: division by zero', 0
                call sub_b0a58b32Address with:
                   value 0 / marketingFee + treasuryFee wei
                     gas gas_remaining wei
                uint8(stor25.field_0) = 0
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if arg2 > 10^18 * antiWhale:
                    if stor29[address(msg.sender)]:
                        revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                if not return_data.size:
                    if not return_data.size:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 870 len 26] >> 48,
                                        0
                    else:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 871 len 26] >> 48,
                                        0
                else:
                    if not return_data.size:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 871 len 26] >> 48,
                                        0
                    else:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 872 len 26] >> 48,
                                        0
                ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                emit Transfer(arg2, msg.sender, arg1);
                return 1
            if 0 / totalFees and liquidityPoolFee > -1 / 0 / totalFees:
                revert with 0, 17
            if not 0 / totalFees:
                revert with 0, 18
            if 0 / totalFees * liquidityPoolFee / 0 / totalFees != liquidityPoolFee:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 / totalFees * liquidityPoolFee / 100 / 2 > 0 / totalFees * liquidityPoolFee / 100:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 / totalFees * liquidityPoolFee / 100 < 0 / totalFees * liquidityPoolFee / 100 / 2:
                revert with 0, 17
            mem[384] = this.address
            staticcall uniswapV2RouterAddress.WAVAX() with:
                    gas gas_remaining wei
            mem[448] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[416] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor13].field_0 = 0 / totalFees * liquidityPoolFee / 100 / 2
            allowance[address(this.address)][stor13].field_255 = 0
            emit Approval((0 / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
            mem[ceil32(return_data.size) + 448] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 452] = 0 / totalFees * liquidityPoolFee / 100 / 2
            idx = 0
            s = ceil32(return_data.size) + 644
            t = 384
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 448] = 30
            mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
            if eth.balance(this.address) > eth.balance(this.address):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor13].field_0 = (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)
            emit Approval(((0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
            mem[ceil32(return_data.size) + 580] = 0
            mem[ceil32(return_data.size) + 612] = 0
            mem[ceil32(return_data.size) + 644] = 0
            mem[ceil32(return_data.size) + 676] = block.timestamp
            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args this.address, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
            mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            emit SwapAndLiquify(Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2));
            if treasuryFee > !marketingFee:
                revert with 0, 17
            if treasuryFee + marketingFee < treasuryFee:
                revert with 0, 'SafeMath: addition overflow'
            if not 0 / totalFees:
                mem[(2 * ceil32(return_data.size)) + 512] = 2
                mem[(2 * ceil32(return_data.size)) + 544] = this.address
                staticcall uniswapV2RouterAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor13].field_0 = 0
                emit Approval(0, this.address, uniswapV2RouterAddress);
                mem[(4 * ceil32(return_data.size)) + 608] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 612] = 0
                mem[(4 * ceil32(return_data.size)) + 644] = 0
                mem[(4 * ceil32(return_data.size)) + 676] = 160
                mem[(4 * ceil32(return_data.size)) + 772] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 804
                t = (2 * ceil32(return_data.size)) + 544
                while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 708] = this.address
                mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 772 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if marketingFee > !treasuryFee:
                    revert with 0, 17
                if marketingFee + treasuryFee < marketingFee:
                    revert with 0, 'SafeMath: addition overflow'
                if not marketingFee + treasuryFee:
                    revert with 0, 'SafeMath: division by zero', 0
                call sub_9f497482Address with:
                   value 0 / marketingFee + treasuryFee wei
                     gas gas_remaining wei
                if marketingFee > !treasuryFee:
                    revert with 0, 17
                if marketingFee + treasuryFee < marketingFee:
                    revert with 0, 'SafeMath: addition overflow'
                if not marketingFee + treasuryFee:
                    revert with 0, 'SafeMath: division by zero', 0
                call sub_b0a58b32Address with:
                   value 0 / marketingFee + treasuryFee wei
                     gas gas_remaining wei
                uint8(stor25.field_0) = 0
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if arg2 > 10^18 * antiWhale:
                    if stor29[address(msg.sender)]:
                        revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                if not return_data.size:
                    if not return_data.size:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 870 len 26] >> 48,
                                        0
                    else:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 871 len 26] >> 48,
                                        0
                else:
                    if not return_data.size:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 871 len 26] >> 48,
                                        0
                    else:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 872 len 26] >> 48,
                                        0
                ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                emit Transfer(arg2, msg.sender, arg1);
                return 1
            if 0 / totalFees and treasuryFee + marketingFee > -1 / 0 / totalFees:
                revert with 0, 17
            if not 0 / totalFees:
                revert with 0, 18
            if (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees) / 0 / totalFees != treasuryFee + marketingFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[(2 * ceil32(return_data.size)) + 512] = 2
            mem[(2 * ceil32(return_data.size)) + 544] = this.address
            staticcall uniswapV2RouterAddress.WAVAX() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor13].field_0 = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
            emit Approval(((treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)), this.address, uniswapV2RouterAddress);
            mem[(4 * ceil32(return_data.size)) + 608] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 612] = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
            mem[(4 * ceil32(return_data.size)) + 644] = 0
            mem[(4 * ceil32(return_data.size)) + 676] = 160
            mem[(4 * ceil32(return_data.size)) + 772] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 804
            t = (2 * ceil32(return_data.size)) + 544
            while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 708] = this.address
            mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 772 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
        else:
            if balanceOf[this.address] and liquidityPoolFee + marketingFee + treasuryFee > -1 / balanceOf[this.address]:
                revert with 0, 17
            if not balanceOf[this.address]:
                revert with 0, 18
            if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / balanceOf[this.address] != liquidityPoolFee + marketingFee + treasuryFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not totalFees:
                revert with 0, 'SafeMath: division by zero', 0
            if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                mem[384] = this.address
                staticcall uniswapV2RouterAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[448] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[416] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor13].field_0 = 0
                emit Approval(0, this.address, uniswapV2RouterAddress);
                mem[ceil32(return_data.size) + 448] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 452] = 0
                idx = 0
                s = ceil32(return_data.size) + 644
                t = 384
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 448] = 30
                mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor13].field_0 = 0
                emit Approval(0, this.address, uniswapV2RouterAddress);
                mem[ceil32(return_data.size) + 580] = 0
                mem[ceil32(return_data.size) + 612] = 0
                mem[ceil32(return_data.size) + 644] = 0
                mem[ceil32(return_data.size) + 676] = block.timestamp
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args this.address, 0, 0, 0, 0, block.timestamp
                mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                    0,
            else:
                if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and liquidityPoolFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                    revert with 0, 17
                if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                    revert with 0, 18
                if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != liquidityPoolFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2 > (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 < (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2:
                    revert with 0, 17
                mem[384] = this.address
                staticcall uniswapV2RouterAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[448] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[416] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor13].field_0 = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                allowance[address(this.address)][stor13].field_255 = 0
                emit Approval(((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                mem[ceil32(return_data.size) + 448] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 452] = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                idx = 0
                s = ceil32(return_data.size) + 644
                t = 384
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 448] = 30
                mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor13].field_0 = ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)
                emit Approval((((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                mem[ceil32(return_data.size) + 580] = 0
                mem[ceil32(return_data.size) + 612] = 0
                mem[ceil32(return_data.size) + 644] = 0
                mem[ceil32(return_data.size) + 676] = block.timestamp
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args this.address, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2));
            if treasuryFee > !marketingFee:
                revert with 0, 17
            if treasuryFee + marketingFee < treasuryFee:
                revert with 0, 'SafeMath: addition overflow'
            if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                mem[(2 * ceil32(return_data.size)) + 512] = 2
                mem[(2 * ceil32(return_data.size)) + 544] = this.address
                staticcall uniswapV2RouterAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor13].field_0 = 0
                emit Approval(0, this.address, uniswapV2RouterAddress);
                mem[(4 * ceil32(return_data.size)) + 608] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 612] = 0
                mem[(4 * ceil32(return_data.size)) + 644] = 0
                mem[(4 * ceil32(return_data.size)) + 676] = 160
                mem[(4 * ceil32(return_data.size)) + 772] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 804
                t = (2 * ceil32(return_data.size)) + 544
                while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 708] = this.address
                mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 772 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
            else:
                if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and treasuryFee + marketingFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                    revert with 0, 17
                if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                    revert with 0, 18
                if (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != treasuryFee + marketingFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(2 * ceil32(return_data.size)) + 512] = 2
                mem[(2 * ceil32(return_data.size)) + 544] = this.address
                staticcall uniswapV2RouterAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor13].field_0 = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                emit Approval(((treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)), this.address, uniswapV2RouterAddress);
                mem[(4 * ceil32(return_data.size)) + 608] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 612] = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                mem[(4 * ceil32(return_data.size)) + 644] = 0
                mem[(4 * ceil32(return_data.size)) + 676] = 160
                mem[(4 * ceil32(return_data.size)) + 772] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 804
                t = (2 * ceil32(return_data.size)) + 544
                while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 708] = this.address
                mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 772 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) > eth.balance(this.address):
            mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 676] = 32
            mem[(4 * ceil32(return_data.size)) + 708] = 30
            mem[(4 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
            mem[(4 * ceil32(return_data.size)) + 770] = 0
            revert with memory
              from (4 * ceil32(return_data.size)) + 672
               len (5 * ceil32(return_data.size)) + 100
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 17
        if marketingFee > !treasuryFee:
            revert with 0, 17
        if marketingFee + treasuryFee < marketingFee:
            mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 676] = 32
            mem[(4 * ceil32(return_data.size)) + 708] = 27
            mem[(4 * ceil32(return_data.size)) + 740] = 'SafeMath: addition overflow'
            revert with memory
              from (4 * ceil32(return_data.size)) + 672
               len (5 * ceil32(return_data.size)) + 100
        if not marketingFee + treasuryFee:
            mem[(4 * ceil32(return_data.size)) + 736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 740] = 32
            mem[(4 * ceil32(return_data.size)) + 772] = 26
            mem[(4 * ceil32(return_data.size)) + 804] = 'SafeMath: division by zero'
            mem[(4 * ceil32(return_data.size)) + 830] = 0
            revert with memory
              from (4 * ceil32(return_data.size)) + 736
               len (5 * ceil32(return_data.size)) + 100
        call sub_9f497482Address with:
           value 0 / marketingFee + treasuryFee wei
             gas gas_remaining wei
        if not return_data.size:
            if marketingFee > !treasuryFee:
                revert with 0, 17
            if marketingFee + treasuryFee < marketingFee:
                mem[(4 * ceil32(return_data.size)) + 736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 740] = 32
                mem[(4 * ceil32(return_data.size)) + 772] = 27
                mem[(4 * ceil32(return_data.size)) + 804] = 'SafeMath: addition overflow'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 736
                   len (5 * ceil32(return_data.size)) + 100
            if not marketingFee + treasuryFee:
                mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 804] = 32
                mem[(4 * ceil32(return_data.size)) + 836] = 26
                mem[(4 * ceil32(return_data.size)) + 868] = 'SafeMath: division by zero'
                mem[(4 * ceil32(return_data.size)) + 894] = 0
                revert with memory
                  from (4 * ceil32(return_data.size)) + 800
                   len (5 * ceil32(return_data.size)) + 100
            call sub_b0a58b32Address with:
               value 0 / marketingFee + treasuryFee wei
                 gas gas_remaining wei
            if not return_data.size:
                uint8(stor25.field_0) = 0
                if not msg.sender:
                    mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 804] = 32
                    mem[(4 * ceil32(return_data.size)) + 836] = 37
                    mem[(4 * ceil32(return_data.size)) + 868] = 'ERC20: transfer from the zero ad'
                    mem[(4 * ceil32(return_data.size)) + 900] = 0x6472657373000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 800
                       len (5 * ceil32(return_data.size)) + 132
                if not arg1:
                    mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 804] = 32
                    mem[(4 * ceil32(return_data.size)) + 836] = 35
                    mem[(4 * ceil32(return_data.size)) + 868] = 'ERC20: transfer to the zero addr'
                    mem[(4 * ceil32(return_data.size)) + 900] = 0x6573730000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 800
                       len (5 * ceil32(return_data.size)) + 132
                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if arg2 > 10^18 * antiWhale:
                    if stor29[address(msg.sender)]:
                        mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 804] = 32
                        mem[(4 * ceil32(return_data.size)) + 836] = 58
                        mem[(4 * ceil32(return_data.size)) + 868] = 'You are not permitted to transfe'
                        mem[(4 * ceil32(return_data.size)) + 900] = 'r more than 100,000 tokens'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 800
                           len (5 * ceil32(return_data.size)) + 132
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[(4 * ceil32(return_data.size)) + 896] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 900] = 32
                    mem[(4 * ceil32(return_data.size)) + 932] = 38
                    mem[(4 * ceil32(return_data.size)) + 964 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 870 len 26]
                    mem[(4 * ceil32(return_data.size)) + 1002] = 0
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 896
                       len (5 * ceil32(return_data.size)) + 132
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                mem[(4 * ceil32(return_data.size)) + 896] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 900] = 32
                mem[(4 * ceil32(return_data.size)) + 932] = 27
                mem[(4 * ceil32(return_data.size)) + 964] = 'SafeMath: addition overflow'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 896
                   len (5 * ceil32(return_data.size)) + 100
            mem[(4 * ceil32(return_data.size)) + 832 len return_data.size] = ext_call.return_data[0 len return_data.size]
            uint8(stor25.field_0) = 0
            if not msg.sender:
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 37
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'ERC20: transfer from the zero ad'
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0x6472657373000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                   len (5 * ceil32(return_data.size)) + 132
            if not arg1:
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 35
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'ERC20: transfer to the zero addr'
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0x6573730000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                   len (5 * ceil32(return_data.size)) + 132
            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if arg2 > 10^18 * antiWhale:
                if stor29[address(msg.sender)]:
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 58
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'You are not permitted to transfe'
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 'r more than 100,000 tokens'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                       len (5 * ceil32(return_data.size)) + 132
            if arg2 > balanceOf[address(msg.sender)]:
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 38
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 871 len 26]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1003] = 0
                revert with memory
                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897
                   len (5 * ceil32(return_data.size)) + 132
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                emit Transfer(arg2, msg.sender, arg1);
                return 1
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 27
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 'SafeMath: addition overflow'
            revert with memory
              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897
               len (5 * ceil32(return_data.size)) + 100
        mem[(4 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if marketingFee > !treasuryFee:
            revert with 0, 17
        if marketingFee + treasuryFee < marketingFee:
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 737] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 741] = 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 773] = 27
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 'SafeMath: addition overflow'
            revert with memory
              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 737
               len (5 * ceil32(return_data.size)) + 100
        if not marketingFee + treasuryFee:
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 26
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'SafeMath: division by zero'
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 895] = 0
            revert with memory
              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
               len (5 * ceil32(return_data.size)) + 100
        call sub_b0a58b32Address with:
           value 0 / marketingFee + treasuryFee wei
             gas gas_remaining wei
        if not return_data.size:
            uint8(stor25.field_0) = 0
            if not msg.sender:
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 37
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'ERC20: transfer from the zero ad'
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0x6472657373000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                   len (5 * ceil32(return_data.size)) + 132
            if not arg1:
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 35
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'ERC20: transfer to the zero addr'
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0x6573730000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                   len (5 * ceil32(return_data.size)) + 132
            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if arg2 > 10^18 * antiWhale:
                if stor29[address(msg.sender)]:
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 805] = 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 58
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 'You are not permitted to transfe'
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 'r more than 100,000 tokens'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                       len (5 * ceil32(return_data.size)) + 132
            if arg2 > balanceOf[address(msg.sender)]:
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 38
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 871 len 26]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1003] = 0
                revert with memory
                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897
                   len (5 * ceil32(return_data.size)) + 132
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                emit Transfer(arg2, msg.sender, arg1);
                return 1
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 27
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 'SafeMath: addition overflow'
            revert with memory
              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 897
               len (5 * ceil32(return_data.size)) + 100
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = return_data.size
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 833 len return_data.size] = ext_call.return_data[0 len return_data.size]
        uint8(stor25.field_0) = 0
        if not msg.sender:
            mem[(8 * ceil32(return_data.size)) + 802] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 806] = 32
            mem[(8 * ceil32(return_data.size)) + 838] = 37
            mem[(8 * ceil32(return_data.size)) + 870] = 'ERC20: transfer from the zero ad'
            mem[(8 * ceil32(return_data.size)) + 902] = 0x6472657373000000000000000000000000000000000000000000000000000000
            revert with memory
              from (8 * ceil32(return_data.size)) + 802
               len (13 * ceil32(return_data.size)) + 132
        if not arg1:
            mem[(8 * ceil32(return_data.size)) + 802] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 806] = 32
            mem[(8 * ceil32(return_data.size)) + 838] = 35
            mem[(8 * ceil32(return_data.size)) + 870] = 'ERC20: transfer to the zero addr'
            mem[(8 * ceil32(return_data.size)) + 902] = 0x6573730000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (8 * ceil32(return_data.size)) + 802
               len (13 * ceil32(return_data.size)) + 132
        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if arg2 > 10^18 * antiWhale:
            if stor29[address(msg.sender)]:
                mem[(8 * ceil32(return_data.size)) + 802] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 806] = 32
                mem[(8 * ceil32(return_data.size)) + 838] = 58
                mem[(8 * ceil32(return_data.size)) + 870] = 'You are not permitted to transfe'
                mem[(8 * ceil32(return_data.size)) + 902] = 'r more than 100,000 tokens'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 802
                   len (13 * ceil32(return_data.size)) + 132
        if arg2 > balanceOf[address(msg.sender)]:
            mem[(8 * ceil32(return_data.size)) + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 902] = 32
            mem[(8 * ceil32(return_data.size)) + 934] = 38
            mem[(8 * ceil32(return_data.size)) + 966 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 872 len 26]
            mem[(8 * ceil32(return_data.size)) + 1004] = 0
            revert with memory
              from (8 * ceil32(return_data.size)) + 898
               len (13 * ceil32(return_data.size)) + 132
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        mem[(8 * ceil32(return_data.size)) + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 902] = 32
        mem[(8 * ceil32(return_data.size)) + 934] = 27
        mem[(8 * ceil32(return_data.size)) + 966] = 'SafeMath: addition overflow'
        revert with memory
          from (8 * ceil32(return_data.size)) + 898
           len (13 * ceil32(return_data.size)) + 100
    if uniswapV2PairAddress != msg.sender:
        if not stor32[address(msg.sender)]:
            if arg2:
                if arg2 and totalFees > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if arg2 * totalFees / arg2 != totalFees:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not stor24:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor31[this.address] > !(arg2 * totalFees / stor24):
                    revert with 0, 17
                if stor31[this.address] + (arg2 * totalFees / stor24) < stor31[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[this.address] += arg2 * totalFees / stor24
                emit Transfer((arg2 * totalFees / stor24), msg.sender, this.address);
                if arg2 * totalFees / stor24 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < arg2 * totalFees / stor24:
                    revert with 0, 17
                if stor31[address(arg1)] > !(arg2 - (arg2 * totalFees / stor24)):
                    revert with 0, 17
                if stor31[address(arg1)] + arg2 - (arg2 * totalFees / stor24) < stor31[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[address(arg1)] = stor31[address(arg1)] + arg2 - (arg2 * totalFees / stor24)
                if balanceOf[this.address] < swapTokensAmount:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if not uint8(stor25.field_8):
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if uint8(stor25.field_0):
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if owner == msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if stor29[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                uint8(stor25.field_0) = 1
                if liquidityPoolFee > !marketingFee:
                    revert with 0, 17
                if liquidityPoolFee + marketingFee < liquidityPoolFee:
                    revert with 0, 'SafeMath: addition overflow'
                if liquidityPoolFee + marketingFee > !treasuryFee:
                    revert with 0, 17
                if treasuryFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[this.address]:
                    if balanceOf[this.address] and liquidityPoolFee + marketingFee + treasuryFee > -1 / balanceOf[this.address]:
                        revert with 0, 17
                    if not balanceOf[this.address]:
                        revert with 0, 18
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / balanceOf[this.address] != liquidityPoolFee + marketingFee + treasuryFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not totalFees:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = 0
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, 0, 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                            0,
                    else:
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and liquidityPoolFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            revert with 0, 17
                        if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            revert with 0, 18
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != liquidityPoolFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2 > (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 < (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2:
                            revert with 0, 17
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                        allowance[address(this.address)][stor13].field_255 = 0
                        emit Approval(((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)
                        emit Approval((((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2));
                    if treasuryFee > !marketingFee:
                        revert with 0, 17
                    if treasuryFee + marketingFee < treasuryFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and treasuryFee + marketingFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            revert with 0, 17
                        if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            revert with 0, 18
                        if (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != treasuryFee + marketingFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                        emit Approval(((treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)), this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not marketingFee + treasuryFee:
                            revert with 0, 'SafeMath: division by zero', 0
                        call sub_9f497482Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not marketingFee + treasuryFee:
                            revert with 0, 'SafeMath: division by zero', 0
                        call sub_b0a58b32Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        uint8(stor25.field_0) = 0
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if arg2 > 10^18 * antiWhale:
                            if stor29[address(msg.sender)]:
                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                        if not return_data.size:
                            if not return_data.size:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                0
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                0
                        else:
                            if not return_data.size:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                0
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                                0
                        ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    mem[(2 * ceil32(return_data.size)) + 640] = 2
                    mem[(2 * ceil32(return_data.size)) + 672] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = 0
                    emit Approval(0, this.address, uniswapV2RouterAddress);
                    mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 740] = 0
                    mem[(4 * ceil32(return_data.size)) + 772] = 0
                    mem[(4 * ceil32(return_data.size)) + 804] = 160
                    mem[(4 * ceil32(return_data.size)) + 900] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 932
                    t = (2 * ceil32(return_data.size)) + 672
                    while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 836] = this.address
                    mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                else:
                    if not totalFees:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / totalFees:
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = 0
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, 0, 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                            0,
                        if treasuryFee > !marketingFee:
                            revert with 0, 17
                        if treasuryFee + marketingFee < treasuryFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 0 / totalFees:
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = 0
                            emit Approval(0, this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = 0
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        else:
                            if 0 / totalFees and treasuryFee + marketingFee > -1 / 0 / totalFees:
                                revert with 0, 17
                            if not 0 / totalFees:
                                revert with 0, 18
                            if (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees) / 0 / totalFees != treasuryFee + marketingFee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                            emit Approval(((treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not marketingFee + treasuryFee:
                            revert with 0, 'SafeMath: division by zero', 0
                        call sub_9f497482Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not marketingFee + treasuryFee:
                            revert with 0, 'SafeMath: division by zero', 0
                        call sub_b0a58b32Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        uint8(stor25.field_0) = 0
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if arg2 > 10^18 * antiWhale:
                            if stor29[address(msg.sender)]:
                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                        if not return_data.size:
                            if not return_data.size:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                0
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                0
                        else:
                            if not return_data.size:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                0
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                                0
                        ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if 0 / totalFees and liquidityPoolFee > -1 / 0 / totalFees:
                        revert with 0, 17
                    if not 0 / totalFees:
                        revert with 0, 18
                    if 0 / totalFees * liquidityPoolFee / 0 / totalFees != liquidityPoolFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / totalFees * liquidityPoolFee / 100 / 2 > 0 / totalFees * liquidityPoolFee / 100:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / totalFees * liquidityPoolFee / 100 < 0 / totalFees * liquidityPoolFee / 100 / 2:
                        revert with 0, 17
                    mem[512] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[576] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[544] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = 0 / totalFees * liquidityPoolFee / 100 / 2
                    allowance[address(this.address)][stor13].field_255 = 0
                    emit Approval((0 / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 580] = 0 / totalFees * liquidityPoolFee / 100 / 2
                    idx = 0
                    s = ceil32(return_data.size) + 772
                    t = 512
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 576] = 30
                    mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)
                    emit Approval(((0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 708] = 0
                    mem[ceil32(return_data.size) + 740] = 0
                    mem[ceil32(return_data.size) + 772] = 0
                    mem[ceil32(return_data.size) + 804] = block.timestamp
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args this.address, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                    mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify(Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2));
                    if treasuryFee > !marketingFee:
                        revert with 0, 17
                    if treasuryFee + marketingFee < treasuryFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 0 / totalFees:
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = 0
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                    else:
                        if 0 / totalFees and treasuryFee + marketingFee > -1 / 0 / totalFees:
                            revert with 0, 17
                        if not 0 / totalFees:
                            revert with 0, 18
                        if (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees) / 0 / totalFees != treasuryFee + marketingFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                        emit Approval(((treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
            else:
                if not stor24:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor31[this.address] > !(0 / stor24):
                    revert with 0, 17
                if stor31[this.address] + (0 / stor24) < stor31[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[this.address] += 0 / stor24
                emit Transfer((0 / stor24), msg.sender, this.address);
                if 0 / stor24 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < 0 / stor24:
                    revert with 0, 17
                if stor31[address(arg1)] > !(arg2 - (0 / stor24)):
                    revert with 0, 17
                if stor31[address(arg1)] + arg2 - (0 / stor24) < stor31[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[address(arg1)] = stor31[address(arg1)] + arg2 - (0 / stor24)
                if balanceOf[this.address] < swapTokensAmount:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if not uint8(stor25.field_8):
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if uint8(stor25.field_0):
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if owner == msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if stor29[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                uint8(stor25.field_0) = 1
                if liquidityPoolFee > !marketingFee:
                    revert with 0, 17
                if liquidityPoolFee + marketingFee < liquidityPoolFee:
                    revert with 0, 'SafeMath: addition overflow'
                if liquidityPoolFee + marketingFee > !treasuryFee:
                    revert with 0, 17
                if treasuryFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not balanceOf[this.address]:
                    if not totalFees:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / totalFees:
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = 0
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, 0, 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                            0,
                        if treasuryFee > !marketingFee:
                            revert with 0, 17
                        if treasuryFee + marketingFee < treasuryFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / totalFees:
                            if 0 / totalFees and treasuryFee + marketingFee > -1 / 0 / totalFees:
                                revert with 0, 17
                            if not 0 / totalFees:
                                revert with 0, 18
                            if (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees) / 0 / totalFees != treasuryFee + marketingFee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                            emit Approval(((treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if marketingFee > !treasuryFee:
                                revert with 0, 17
                            if marketingFee + treasuryFee < marketingFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if not marketingFee + treasuryFee:
                                revert with 0, 'SafeMath: division by zero', 0
                            call sub_9f497482Address with:
                               value 0 / marketingFee + treasuryFee wei
                                 gas gas_remaining wei
                            if marketingFee > !treasuryFee:
                                revert with 0, 17
                            if marketingFee + treasuryFee < marketingFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if not marketingFee + treasuryFee:
                                revert with 0, 'SafeMath: division by zero', 0
                            call sub_b0a58b32Address with:
                               value 0 / marketingFee + treasuryFee wei
                                 gas gas_remaining wei
                            uint8(stor25.field_0) = 0
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if arg2 > 10^18 * antiWhale:
                                if stor29[address(msg.sender)]:
                                    revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                            if not return_data.size:
                                if not return_data.size:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                    0
                                else:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                    0
                            else:
                                if not return_data.size:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                    0
                                else:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                                    0
                            ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = 0
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                    else:
                        if 0 / totalFees and liquidityPoolFee > -1 / 0 / totalFees:
                            revert with 0, 17
                        if not 0 / totalFees:
                            revert with 0, 18
                        if 0 / totalFees * liquidityPoolFee / 0 / totalFees != liquidityPoolFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / totalFees * liquidityPoolFee / 100 / 2 > 0 / totalFees * liquidityPoolFee / 100:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 / totalFees * liquidityPoolFee / 100 < 0 / totalFees * liquidityPoolFee / 100 / 2:
                            revert with 0, 17
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0 / totalFees * liquidityPoolFee / 100 / 2
                        allowance[address(this.address)][stor13].field_255 = 0
                        emit Approval((0 / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = 0 / totalFees * liquidityPoolFee / 100 / 2
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)
                        emit Approval(((0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2));
                        if treasuryFee > !marketingFee:
                            revert with 0, 17
                        if treasuryFee + marketingFee < treasuryFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 0 / totalFees:
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = 0
                            emit Approval(0, this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = 0
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        else:
                            if 0 / totalFees and treasuryFee + marketingFee > -1 / 0 / totalFees:
                                revert with 0, 17
                            if not 0 / totalFees:
                                revert with 0, 18
                            if (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees) / 0 / totalFees != treasuryFee + marketingFee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                            emit Approval(((treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                else:
                    if balanceOf[this.address] and liquidityPoolFee + marketingFee + treasuryFee > -1 / balanceOf[this.address]:
                        revert with 0, 17
                    if not balanceOf[this.address]:
                        revert with 0, 18
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / balanceOf[this.address] != liquidityPoolFee + marketingFee + treasuryFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not totalFees:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = 0
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, 0, 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                            0,
                        if treasuryFee > !marketingFee:
                            revert with 0, 17
                        if treasuryFee + marketingFee < treasuryFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = 0
                            emit Approval(0, this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = 0
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        else:
                            if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and treasuryFee + marketingFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                revert with 0, 17
                            if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                revert with 0, 18
                            if (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != treasuryFee + marketingFee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                            emit Approval(((treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)), this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not marketingFee + treasuryFee:
                            revert with 0, 'SafeMath: division by zero', 0
                        call sub_9f497482Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not marketingFee + treasuryFee:
                            revert with 0, 'SafeMath: division by zero', 0
                        call sub_b0a58b32Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        uint8(stor25.field_0) = 0
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if arg2 > 10^18 * antiWhale:
                            if stor29[address(msg.sender)]:
                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                        if not return_data.size:
                            if not return_data.size:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                0
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                0
                        else:
                            if not return_data.size:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                0
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                                0
                        ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and liquidityPoolFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        revert with 0, 17
                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        revert with 0, 18
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != liquidityPoolFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2 > (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 < (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2:
                        revert with 0, 17
                    mem[512] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[576] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[544] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                    allowance[address(this.address)][stor13].field_255 = 0
                    emit Approval(((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 580] = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                    idx = 0
                    s = ceil32(return_data.size) + 772
                    t = 512
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 576] = 30
                    mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)
                    emit Approval((((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 708] = 0
                    mem[ceil32(return_data.size) + 740] = 0
                    mem[ceil32(return_data.size) + 772] = 0
                    mem[ceil32(return_data.size) + 804] = block.timestamp
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args this.address, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                    mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify(Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2));
                    if treasuryFee > !marketingFee:
                        revert with 0, 17
                    if treasuryFee + marketingFee < treasuryFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = 0
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not marketingFee + treasuryFee:
                            revert with 0, 'SafeMath: division by zero', 0
                        call sub_9f497482Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not marketingFee + treasuryFee:
                            revert with 0, 'SafeMath: division by zero', 0
                        call sub_b0a58b32Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        uint8(stor25.field_0) = 0
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if arg2 > 10^18 * antiWhale:
                            if stor29[address(msg.sender)]:
                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                        if not return_data.size:
                            if not return_data.size:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                0
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                0
                        else:
                            if not return_data.size:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                0
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                                0
                        ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and treasuryFee + marketingFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        revert with 0, 17
                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        revert with 0, 18
                    if (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != treasuryFee + marketingFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(2 * ceil32(return_data.size)) + 640] = 2
                    mem[(2 * ceil32(return_data.size)) + 672] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                    emit Approval(((treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)), this.address, uniswapV2RouterAddress);
                    mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                    mem[(4 * ceil32(return_data.size)) + 772] = 0
                    mem[(4 * ceil32(return_data.size)) + 804] = 160
                    mem[(4 * ceil32(return_data.size)) + 900] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 932
                    t = (2 * ceil32(return_data.size)) + 672
                    while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 836] = this.address
                    mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
        else:
            if totalFees > !sub_6c0cd64e:
                revert with 0, 17
            totalFees += sub_6c0cd64e
            if arg2:
                if arg2 and totalFees > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if arg2 * totalFees / arg2 != totalFees:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not stor24:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor31[this.address] > !(arg2 * totalFees / stor24):
                    revert with 0, 17
                if stor31[this.address] + (arg2 * totalFees / stor24) < stor31[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[this.address] += arg2 * totalFees / stor24
                emit Transfer((arg2 * totalFees / stor24), msg.sender, this.address);
                if arg2 * totalFees / stor24 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < arg2 * totalFees / stor24:
                    revert with 0, 17
                if stor31[address(arg1)] > !(arg2 - (arg2 * totalFees / stor24)):
                    revert with 0, 17
                if stor31[address(arg1)] + arg2 - (arg2 * totalFees / stor24) < stor31[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[address(arg1)] = stor31[address(arg1)] + arg2 - (arg2 * totalFees / stor24)
                if balanceOf[this.address] < swapTokensAmount:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if not uint8(stor25.field_8):
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if uint8(stor25.field_0):
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if owner == msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if stor29[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                uint8(stor25.field_0) = 1
                if liquidityPoolFee > !marketingFee:
                    revert with 0, 17
                if liquidityPoolFee + marketingFee < liquidityPoolFee:
                    revert with 0, 'SafeMath: addition overflow'
                if liquidityPoolFee + marketingFee > !treasuryFee:
                    revert with 0, 17
                if treasuryFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[this.address]:
                    if balanceOf[this.address] and liquidityPoolFee + marketingFee + treasuryFee > -1 / balanceOf[this.address]:
                        revert with 0, 17
                    if not balanceOf[this.address]:
                        revert with 0, 18
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / balanceOf[this.address] != liquidityPoolFee + marketingFee + treasuryFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not totalFees:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = 0
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, 0, 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                            0,
                        if treasuryFee > !marketingFee:
                            revert with 0, 17
                        if treasuryFee + marketingFee < treasuryFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = 0
                            emit Approval(0, this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = 0
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        else:
                            if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and treasuryFee + marketingFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                revert with 0, 17
                            if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                revert with 0, 18
                            if (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != treasuryFee + marketingFee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                            emit Approval(((treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)), this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) > eth.balance(this.address):
                            mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 804] = 32
                            mem[(4 * ceil32(return_data.size)) + 836] = 30
                            mem[(4 * ceil32(return_data.size)) + 868] = 'SafeMath: subtraction overflow'
                            mem[(4 * ceil32(return_data.size)) + 898] = 0
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 800
                               len (5 * ceil32(return_data.size)) + 100
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 804] = 32
                            mem[(4 * ceil32(return_data.size)) + 836] = 27
                            mem[(4 * ceil32(return_data.size)) + 868] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 800
                               len (5 * ceil32(return_data.size)) + 100
                        if not marketingFee + treasuryFee:
                            mem[(4 * ceil32(return_data.size)) + 864] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 868] = 32
                            mem[(4 * ceil32(return_data.size)) + 900] = 26
                            mem[(4 * ceil32(return_data.size)) + 932] = 'SafeMath: division by zero'
                            mem[(4 * ceil32(return_data.size)) + 958] = 0
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 864
                               len (5 * ceil32(return_data.size)) + 100
                        call sub_9f497482Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if marketingFee > !treasuryFee:
                                revert with 0, 17
                            if marketingFee + treasuryFee < marketingFee:
                                mem[(4 * ceil32(return_data.size)) + 864] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 868] = 32
                                mem[(4 * ceil32(return_data.size)) + 900] = 27
                                mem[(4 * ceil32(return_data.size)) + 932] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 864
                                   len (5 * ceil32(return_data.size)) + 100
                            if not marketingFee + treasuryFee:
                                mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 932] = 32
                                mem[(4 * ceil32(return_data.size)) + 964] = 26
                                mem[(4 * ceil32(return_data.size)) + 996] = 'SafeMath: division by zero'
                                mem[(4 * ceil32(return_data.size)) + 1022] = 0
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 928
                                   len (5 * ceil32(return_data.size)) + 100
                            call sub_b0a58b32Address with:
                               value 0 / marketingFee + treasuryFee wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                uint8(stor25.field_0) = 0
                                if not msg.sender:
                                    mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 932] = 32
                                    mem[(4 * ceil32(return_data.size)) + 964] = 37
                                    mem[(4 * ceil32(return_data.size)) + 996] = 'ERC20: transfer from the zero ad'
                                    mem[(4 * ceil32(return_data.size)) + 1028] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 928
                                       len (5 * ceil32(return_data.size)) + 132
                                if not arg1:
                                    mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 932] = 32
                                    mem[(4 * ceil32(return_data.size)) + 964] = 35
                                    mem[(4 * ceil32(return_data.size)) + 996] = 'ERC20: transfer to the zero addr'
                                    mem[(4 * ceil32(return_data.size)) + 1028] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 928
                                       len (5 * ceil32(return_data.size)) + 132
                                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if arg2 > 10^18 * antiWhale:
                                    if stor29[address(msg.sender)]:
                                        mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 932] = 32
                                        mem[(4 * ceil32(return_data.size)) + 964] = 58
                                        mem[(4 * ceil32(return_data.size)) + 996] = 'You are not permitted to transfe'
                                        mem[(4 * ceil32(return_data.size)) + 1028] = 'r more than 100,000 tokens'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 928
                                           len (5 * ceil32(return_data.size)) + 132
                                if arg2 > balanceOf[address(msg.sender)]:
                                    mem[(4 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 1028] = 32
                                    mem[(4 * ceil32(return_data.size)) + 1060] = 38
                                    mem[(4 * ceil32(return_data.size)) + 1092 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26]
                                    mem[(4 * ceil32(return_data.size)) + 1130] = 0
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 1024
                                       len (5 * ceil32(return_data.size)) + 132
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                mem[(4 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 1028] = 32
                                mem[(4 * ceil32(return_data.size)) + 1060] = 27
                                mem[(4 * ceil32(return_data.size)) + 1092] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 1024
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 960 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            uint8(stor25.field_0) = 0
                            if not msg.sender:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 37
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'ERC20: transfer from the zero ad'
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                   len (5 * ceil32(return_data.size)) + 132
                            if not arg1:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 35
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'ERC20: transfer to the zero addr'
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                   len (5 * ceil32(return_data.size)) + 132
                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if arg2 > 10^18 * antiWhale:
                                if stor29[address(msg.sender)]:
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 58
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'You are not permitted to transfe'
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 'r more than 100,000 tokens'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                       len (5 * ceil32(return_data.size)) + 132
                            if arg2 > balanceOf[address(msg.sender)]:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 38
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26]
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1131] = 0
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025
                                   len (5 * ceil32(return_data.size)) + 132
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 32
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 27
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025
                               len (5 * ceil32(return_data.size)) + 100
                        mem[(4 * ceil32(return_data.size)) + 896 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 865] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 32
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 27
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 865
                               len (5 * ceil32(return_data.size)) + 100
                        if not marketingFee + treasuryFee:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 26
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'SafeMath: division by zero'
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1023] = 0
                            revert with memory
                              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                               len (5 * ceil32(return_data.size)) + 100
                        call sub_b0a58b32Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        if not return_data.size:
                            uint8(stor25.field_0) = 0
                            if not msg.sender:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 37
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'ERC20: transfer from the zero ad'
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                   len (5 * ceil32(return_data.size)) + 132
                            if not arg1:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 35
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'ERC20: transfer to the zero addr'
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                   len (5 * ceil32(return_data.size)) + 132
                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if arg2 > 10^18 * antiWhale:
                                if stor29[address(msg.sender)]:
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 58
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'You are not permitted to transfe'
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 'r more than 100,000 tokens'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                       len (5 * ceil32(return_data.size)) + 132
                            if arg2 > balanceOf[address(msg.sender)]:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 38
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26]
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1131] = 0
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025
                                   len (5 * ceil32(return_data.size)) + 132
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 32
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 27
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025
                               len (5 * ceil32(return_data.size)) + 100
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = return_data.size
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 961 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        uint8(stor25.field_0) = 0
                        if not msg.sender:
                            mem[(8 * ceil32(return_data.size)) + 930] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 934] = 32
                            mem[(8 * ceil32(return_data.size)) + 966] = 37
                            mem[(8 * ceil32(return_data.size)) + 998] = 'ERC20: transfer from the zero ad'
                            mem[(8 * ceil32(return_data.size)) + 1030] = 0x6472657373000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 930
                               len (13 * ceil32(return_data.size)) + 132
                        if not arg1:
                            mem[(8 * ceil32(return_data.size)) + 930] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 934] = 32
                            mem[(8 * ceil32(return_data.size)) + 966] = 35
                            mem[(8 * ceil32(return_data.size)) + 998] = 'ERC20: transfer to the zero addr'
                            mem[(8 * ceil32(return_data.size)) + 1030] = 0x6573730000000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 930
                               len (13 * ceil32(return_data.size)) + 132
                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if arg2 > 10^18 * antiWhale:
                            if stor29[address(msg.sender)]:
                                mem[(8 * ceil32(return_data.size)) + 930] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 934] = 32
                                mem[(8 * ceil32(return_data.size)) + 966] = 58
                                mem[(8 * ceil32(return_data.size)) + 998] = 'You are not permitted to transfe'
                                mem[(8 * ceil32(return_data.size)) + 1030] = 'r more than 100,000 tokens'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 930
                                   len (13 * ceil32(return_data.size)) + 132
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[(8 * ceil32(return_data.size)) + 1026] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 1030] = 32
                            mem[(8 * ceil32(return_data.size)) + 1062] = 38
                            mem[(8 * ceil32(return_data.size)) + 1094 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26]
                            mem[(8 * ceil32(return_data.size)) + 1132] = 0
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 1026
                               len (13 * ceil32(return_data.size)) + 132
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        mem[(8 * ceil32(return_data.size)) + 1026] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 1030] = 32
                        mem[(8 * ceil32(return_data.size)) + 1062] = 27
                        mem[(8 * ceil32(return_data.size)) + 1094] = 'SafeMath: addition overflow'
                        revert with memory
                          from (8 * ceil32(return_data.size)) + 1026
                           len (13 * ceil32(return_data.size)) + 100
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and liquidityPoolFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        revert with 0, 17
                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        revert with 0, 18
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != liquidityPoolFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2 > (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 < (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2:
                        revert with 0, 17
                    mem[512] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[576] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[544] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                    allowance[address(this.address)][stor13].field_255 = 0
                    emit Approval(((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 580] = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                    idx = 0
                    s = ceil32(return_data.size) + 772
                    t = 512
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 576] = 30
                    mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)
                    emit Approval((((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 708] = 0
                    mem[ceil32(return_data.size) + 740] = 0
                    mem[ceil32(return_data.size) + 772] = 0
                    mem[ceil32(return_data.size) + 804] = block.timestamp
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args this.address, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                    mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify(Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2));
                    if treasuryFee > !marketingFee:
                        revert with 0, 17
                    if treasuryFee + marketingFee < treasuryFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = 0
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                    else:
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and treasuryFee + marketingFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            revert with 0, 17
                        if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            revert with 0, 18
                        if (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != treasuryFee + marketingFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                        emit Approval(((treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)), this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if marketingFee > !treasuryFee:
                        revert with 0, 17
                    if marketingFee + treasuryFee < marketingFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not marketingFee + treasuryFee:
                        revert with 0, 'SafeMath: division by zero', 0
                    call sub_9f497482Address with:
                       value 0 / marketingFee + treasuryFee wei
                         gas gas_remaining wei
                    if marketingFee > !treasuryFee:
                        revert with 0, 17
                    if marketingFee + treasuryFee < marketingFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not marketingFee + treasuryFee:
                        revert with 0, 'SafeMath: division by zero', 0
                    call sub_b0a58b32Address with:
                       value 0 / marketingFee + treasuryFee wei
                         gas gas_remaining wei
                    uint8(stor25.field_0) = 0
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if not return_data.size:
                        if not return_data.size:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                            0
                        else:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                            0
                    else:
                        if not return_data.size:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                            0
                        else:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                            0
                    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if not totalFees:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / totalFees:
                    mem[512] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[576] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[544] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = 0
                    emit Approval(0, this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 580] = 0
                    idx = 0
                    s = ceil32(return_data.size) + 772
                    t = 512
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 576] = 30
                    mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = 0
                    emit Approval(0, this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 708] = 0
                    mem[ceil32(return_data.size) + 740] = 0
                    mem[ceil32(return_data.size) + 772] = 0
                    mem[ceil32(return_data.size) + 804] = block.timestamp
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args this.address, 0, 0, 0, 0, block.timestamp
                    mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                        0,
                    if treasuryFee > !marketingFee:
                        revert with 0, 17
                    if treasuryFee + marketingFee < treasuryFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 0 / totalFees:
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = 0
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                    else:
                        if 0 / totalFees and treasuryFee + marketingFee > -1 / 0 / totalFees:
                            revert with 0, 17
                        if not 0 / totalFees:
                            revert with 0, 18
                        if (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees) / 0 / totalFees != treasuryFee + marketingFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                        emit Approval(((treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                else:
                    if 0 / totalFees and liquidityPoolFee > -1 / 0 / totalFees:
                        revert with 0, 17
                    if not 0 / totalFees:
                        revert with 0, 18
                    if 0 / totalFees * liquidityPoolFee / 0 / totalFees != liquidityPoolFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / totalFees * liquidityPoolFee / 100 / 2 > 0 / totalFees * liquidityPoolFee / 100:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / totalFees * liquidityPoolFee / 100 < 0 / totalFees * liquidityPoolFee / 100 / 2:
                        revert with 0, 17
                    mem[512] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[576] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[544] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = 0 / totalFees * liquidityPoolFee / 100 / 2
                    allowance[address(this.address)][stor13].field_255 = 0
                    emit Approval((0 / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 580] = 0 / totalFees * liquidityPoolFee / 100 / 2
                    idx = 0
                    s = ceil32(return_data.size) + 772
                    t = 512
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 576] = 30
                    mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)
                    emit Approval(((0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 708] = 0
                    mem[ceil32(return_data.size) + 740] = 0
                    mem[ceil32(return_data.size) + 772] = 0
                    mem[ceil32(return_data.size) + 804] = block.timestamp
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args this.address, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                    mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify(Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2));
                    if treasuryFee > !marketingFee:
                        revert with 0, 17
                    if treasuryFee + marketingFee < treasuryFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 0 / totalFees:
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = 0
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not marketingFee + treasuryFee:
                            revert with 0, 'SafeMath: division by zero', 0
                        call sub_9f497482Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not marketingFee + treasuryFee:
                            revert with 0, 'SafeMath: division by zero', 0
                        call sub_b0a58b32Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        uint8(stor25.field_0) = 0
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if arg2 > 10^18 * antiWhale:
                            if stor29[address(msg.sender)]:
                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                        if not return_data.size:
                            if not return_data.size:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                0
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                0
                        else:
                            if not return_data.size:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                0
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                                0
                        ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if 0 / totalFees and treasuryFee + marketingFee > -1 / 0 / totalFees:
                        revert with 0, 17
                    if not 0 / totalFees:
                        revert with 0, 18
                    if (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees) / 0 / totalFees != treasuryFee + marketingFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(2 * ceil32(return_data.size)) + 640] = 2
                    mem[(2 * ceil32(return_data.size)) + 672] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                    emit Approval(((treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                    mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                    mem[(4 * ceil32(return_data.size)) + 772] = 0
                    mem[(4 * ceil32(return_data.size)) + 804] = 160
                    mem[(4 * ceil32(return_data.size)) + 900] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 932
                    t = (2 * ceil32(return_data.size)) + 672
                    while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 836] = this.address
                    mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
            else:
                if not stor24:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor31[this.address] > !(0 / stor24):
                    revert with 0, 17
                if stor31[this.address] + (0 / stor24) < stor31[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[this.address] += 0 / stor24
                emit Transfer((0 / stor24), msg.sender, this.address);
                if 0 / stor24 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < 0 / stor24:
                    revert with 0, 17
                if stor31[address(arg1)] > !(arg2 - (0 / stor24)):
                    revert with 0, 17
                if stor31[address(arg1)] + arg2 - (0 / stor24) < stor31[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[address(arg1)] = stor31[address(arg1)] + arg2 - (0 / stor24)
                if balanceOf[this.address] < swapTokensAmount:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if not uint8(stor25.field_8):
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if uint8(stor25.field_0):
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if owner == msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if stor29[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                uint8(stor25.field_0) = 1
                if liquidityPoolFee > !marketingFee:
                    revert with 0, 17
                if liquidityPoolFee + marketingFee < liquidityPoolFee:
                    revert with 0, 'SafeMath: addition overflow'
                if liquidityPoolFee + marketingFee > !treasuryFee:
                    revert with 0, 17
                if treasuryFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not balanceOf[this.address]:
                    if not totalFees:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / totalFees:
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = 0
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, 0, 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                            0,
                        if treasuryFee > !marketingFee:
                            revert with 0, 17
                        if treasuryFee + marketingFee < treasuryFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / totalFees:
                            if 0 / totalFees and treasuryFee + marketingFee > -1 / 0 / totalFees:
                                revert with 0, 17
                            if not 0 / totalFees:
                                revert with 0, 18
                            if (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees) / 0 / totalFees != treasuryFee + marketingFee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                            emit Approval(((treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if marketingFee > !treasuryFee:
                                revert with 0, 17
                            if marketingFee + treasuryFee < marketingFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if not marketingFee + treasuryFee:
                                revert with 0, 'SafeMath: division by zero', 0
                            call sub_9f497482Address with:
                               value 0 / marketingFee + treasuryFee wei
                                 gas gas_remaining wei
                            if marketingFee > !treasuryFee:
                                revert with 0, 17
                            if marketingFee + treasuryFee < marketingFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if not marketingFee + treasuryFee:
                                revert with 0, 'SafeMath: division by zero', 0
                            call sub_b0a58b32Address with:
                               value 0 / marketingFee + treasuryFee wei
                                 gas gas_remaining wei
                            uint8(stor25.field_0) = 0
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if arg2 > 10^18 * antiWhale:
                                if stor29[address(msg.sender)]:
                                    revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                            if not return_data.size:
                                if not return_data.size:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                    0
                                else:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                    0
                            else:
                                if not return_data.size:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                    0
                                else:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                                    0
                            ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = 0
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) > eth.balance(this.address):
                            mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 804] = 32
                            mem[(4 * ceil32(return_data.size)) + 836] = 30
                            mem[(4 * ceil32(return_data.size)) + 868] = 'SafeMath: subtraction overflow'
                            mem[(4 * ceil32(return_data.size)) + 898] = 0
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 800
                               len (5 * ceil32(return_data.size)) + 100
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 804] = 32
                            mem[(4 * ceil32(return_data.size)) + 836] = 27
                            mem[(4 * ceil32(return_data.size)) + 868] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 800
                               len (5 * ceil32(return_data.size)) + 100
                        if not marketingFee + treasuryFee:
                            mem[(4 * ceil32(return_data.size)) + 864] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 868] = 32
                            mem[(4 * ceil32(return_data.size)) + 900] = 26
                            mem[(4 * ceil32(return_data.size)) + 932] = 'SafeMath: division by zero'
                            mem[(4 * ceil32(return_data.size)) + 958] = 0
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 864
                               len (5 * ceil32(return_data.size)) + 100
                        call sub_9f497482Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if marketingFee > !treasuryFee:
                                revert with 0, 17
                            if marketingFee + treasuryFee < marketingFee:
                                mem[(4 * ceil32(return_data.size)) + 864] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 868] = 32
                                mem[(4 * ceil32(return_data.size)) + 900] = 27
                                mem[(4 * ceil32(return_data.size)) + 932] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 864
                                   len (5 * ceil32(return_data.size)) + 100
                            if not marketingFee + treasuryFee:
                                mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 932] = 32
                                mem[(4 * ceil32(return_data.size)) + 964] = 26
                                mem[(4 * ceil32(return_data.size)) + 996] = 'SafeMath: division by zero'
                                mem[(4 * ceil32(return_data.size)) + 1022] = 0
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 928
                                   len (5 * ceil32(return_data.size)) + 100
                            call sub_b0a58b32Address with:
                               value 0 / marketingFee + treasuryFee wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                uint8(stor25.field_0) = 0
                                if not msg.sender:
                                    mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 932] = 32
                                    mem[(4 * ceil32(return_data.size)) + 964] = 37
                                    mem[(4 * ceil32(return_data.size)) + 996] = 'ERC20: transfer from the zero ad'
                                    mem[(4 * ceil32(return_data.size)) + 1028] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 928
                                       len (5 * ceil32(return_data.size)) + 132
                                if not arg1:
                                    mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 932] = 32
                                    mem[(4 * ceil32(return_data.size)) + 964] = 35
                                    mem[(4 * ceil32(return_data.size)) + 996] = 'ERC20: transfer to the zero addr'
                                    mem[(4 * ceil32(return_data.size)) + 1028] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 928
                                       len (5 * ceil32(return_data.size)) + 132
                                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if arg2 > 10^18 * antiWhale:
                                    if stor29[address(msg.sender)]:
                                        mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 932] = 32
                                        mem[(4 * ceil32(return_data.size)) + 964] = 58
                                        mem[(4 * ceil32(return_data.size)) + 996] = 'You are not permitted to transfe'
                                        mem[(4 * ceil32(return_data.size)) + 1028] = 'r more than 100,000 tokens'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 928
                                           len (5 * ceil32(return_data.size)) + 132
                                if arg2 > balanceOf[address(msg.sender)]:
                                    mem[(4 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 1028] = 32
                                    mem[(4 * ceil32(return_data.size)) + 1060] = 38
                                    mem[(4 * ceil32(return_data.size)) + 1092 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26]
                                    mem[(4 * ceil32(return_data.size)) + 1130] = 0
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 1024
                                       len (5 * ceil32(return_data.size)) + 132
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                mem[(4 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 1028] = 32
                                mem[(4 * ceil32(return_data.size)) + 1060] = 27
                                mem[(4 * ceil32(return_data.size)) + 1092] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 1024
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 960 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            uint8(stor25.field_0) = 0
                            if not msg.sender:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 37
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'ERC20: transfer from the zero ad'
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                   len (5 * ceil32(return_data.size)) + 132
                            if not arg1:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 35
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'ERC20: transfer to the zero addr'
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                   len (5 * ceil32(return_data.size)) + 132
                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if arg2 > 10^18 * antiWhale:
                                if stor29[address(msg.sender)]:
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 58
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'You are not permitted to transfe'
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 'r more than 100,000 tokens'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                       len (5 * ceil32(return_data.size)) + 132
                            if arg2 > balanceOf[address(msg.sender)]:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 38
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26]
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1131] = 0
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025
                                   len (5 * ceil32(return_data.size)) + 132
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 32
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 27
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025
                               len (5 * ceil32(return_data.size)) + 100
                        mem[(4 * ceil32(return_data.size)) + 896 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 865] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 32
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 27
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 865
                               len (5 * ceil32(return_data.size)) + 100
                        if not marketingFee + treasuryFee:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 26
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'SafeMath: division by zero'
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1023] = 0
                            revert with memory
                              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                               len (5 * ceil32(return_data.size)) + 100
                        call sub_b0a58b32Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        if not return_data.size:
                            uint8(stor25.field_0) = 0
                            if not msg.sender:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 37
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'ERC20: transfer from the zero ad'
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                   len (5 * ceil32(return_data.size)) + 132
                            if not arg1:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 35
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'ERC20: transfer to the zero addr'
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                   len (5 * ceil32(return_data.size)) + 132
                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if arg2 > 10^18 * antiWhale:
                                if stor29[address(msg.sender)]:
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 58
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'You are not permitted to transfe'
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 'r more than 100,000 tokens'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                       len (5 * ceil32(return_data.size)) + 132
                            if arg2 > balanceOf[address(msg.sender)]:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 38
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26]
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1131] = 0
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025
                                   len (5 * ceil32(return_data.size)) + 132
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 32
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 27
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025
                               len (5 * ceil32(return_data.size)) + 100
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = return_data.size
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 961 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        uint8(stor25.field_0) = 0
                        if not msg.sender:
                            mem[(8 * ceil32(return_data.size)) + 930] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 934] = 32
                            mem[(8 * ceil32(return_data.size)) + 966] = 37
                            mem[(8 * ceil32(return_data.size)) + 998] = 'ERC20: transfer from the zero ad'
                            mem[(8 * ceil32(return_data.size)) + 1030] = 0x6472657373000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 930
                               len (13 * ceil32(return_data.size)) + 132
                        if not arg1:
                            mem[(8 * ceil32(return_data.size)) + 930] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 934] = 32
                            mem[(8 * ceil32(return_data.size)) + 966] = 35
                            mem[(8 * ceil32(return_data.size)) + 998] = 'ERC20: transfer to the zero addr'
                            mem[(8 * ceil32(return_data.size)) + 1030] = 0x6573730000000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 930
                               len (13 * ceil32(return_data.size)) + 132
                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if arg2 > 10^18 * antiWhale:
                            if stor29[address(msg.sender)]:
                                mem[(8 * ceil32(return_data.size)) + 930] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 934] = 32
                                mem[(8 * ceil32(return_data.size)) + 966] = 58
                                mem[(8 * ceil32(return_data.size)) + 998] = 'You are not permitted to transfe'
                                mem[(8 * ceil32(return_data.size)) + 1030] = 'r more than 100,000 tokens'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 930
                                   len (13 * ceil32(return_data.size)) + 132
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[(8 * ceil32(return_data.size)) + 1026] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 1030] = 32
                            mem[(8 * ceil32(return_data.size)) + 1062] = 38
                            mem[(8 * ceil32(return_data.size)) + 1094 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26]
                            mem[(8 * ceil32(return_data.size)) + 1132] = 0
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 1026
                               len (13 * ceil32(return_data.size)) + 132
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        mem[(8 * ceil32(return_data.size)) + 1026] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 1030] = 32
                        mem[(8 * ceil32(return_data.size)) + 1062] = 27
                        mem[(8 * ceil32(return_data.size)) + 1094] = 'SafeMath: addition overflow'
                        revert with memory
                          from (8 * ceil32(return_data.size)) + 1026
                           len (13 * ceil32(return_data.size)) + 100
                    if 0 / totalFees and liquidityPoolFee > -1 / 0 / totalFees:
                        revert with 0, 17
                    if not 0 / totalFees:
                        revert with 0, 18
                    if 0 / totalFees * liquidityPoolFee / 0 / totalFees != liquidityPoolFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / totalFees * liquidityPoolFee / 100 / 2 > 0 / totalFees * liquidityPoolFee / 100:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / totalFees * liquidityPoolFee / 100 < 0 / totalFees * liquidityPoolFee / 100 / 2:
                        revert with 0, 17
                    mem[512] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[576] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[544] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = 0 / totalFees * liquidityPoolFee / 100 / 2
                    allowance[address(this.address)][stor13].field_255 = 0
                    emit Approval((0 / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 580] = 0 / totalFees * liquidityPoolFee / 100 / 2
                    idx = 0
                    s = ceil32(return_data.size) + 772
                    t = 512
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 576] = 30
                    mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)
                    emit Approval(((0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 708] = 0
                    mem[ceil32(return_data.size) + 740] = 0
                    mem[ceil32(return_data.size) + 772] = 0
                    mem[ceil32(return_data.size) + 804] = block.timestamp
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args this.address, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                    mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify(Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2));
                    if treasuryFee > !marketingFee:
                        revert with 0, 17
                    if treasuryFee + marketingFee < treasuryFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 0 / totalFees:
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = 0
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                    else:
                        if 0 / totalFees and treasuryFee + marketingFee > -1 / 0 / totalFees:
                            revert with 0, 17
                        if not 0 / totalFees:
                            revert with 0, 18
                        if (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees) / 0 / totalFees != treasuryFee + marketingFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                        emit Approval(((treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if marketingFee > !treasuryFee:
                        revert with 0, 17
                    if marketingFee + treasuryFee < marketingFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not marketingFee + treasuryFee:
                        revert with 0, 'SafeMath: division by zero', 0
                    call sub_9f497482Address with:
                       value 0 / marketingFee + treasuryFee wei
                         gas gas_remaining wei
                    if marketingFee > !treasuryFee:
                        revert with 0, 17
                    if marketingFee + treasuryFee < marketingFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not marketingFee + treasuryFee:
                        revert with 0, 'SafeMath: division by zero', 0
                    call sub_b0a58b32Address with:
                       value 0 / marketingFee + treasuryFee wei
                         gas gas_remaining wei
                    uint8(stor25.field_0) = 0
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if not return_data.size:
                        if not return_data.size:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                            0
                        else:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                            0
                    else:
                        if not return_data.size:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                            0
                        else:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                            0
                    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if balanceOf[this.address] and liquidityPoolFee + marketingFee + treasuryFee > -1 / balanceOf[this.address]:
                    revert with 0, 17
                if not balanceOf[this.address]:
                    revert with 0, 18
                if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / balanceOf[this.address] != liquidityPoolFee + marketingFee + treasuryFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not totalFees:
                    revert with 0, 'SafeMath: division by zero', 0
                if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                    mem[512] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[576] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[544] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = 0
                    emit Approval(0, this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 580] = 0
                    idx = 0
                    s = ceil32(return_data.size) + 772
                    t = 512
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 576] = 30
                    mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = 0
                    emit Approval(0, this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 708] = 0
                    mem[ceil32(return_data.size) + 740] = 0
                    mem[ceil32(return_data.size) + 772] = 0
                    mem[ceil32(return_data.size) + 804] = block.timestamp
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args this.address, 0, 0, 0, 0, block.timestamp
                    mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                        0,
                    if treasuryFee > !marketingFee:
                        revert with 0, 17
                    if treasuryFee + marketingFee < treasuryFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = 0
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not marketingFee + treasuryFee:
                            revert with 0, 'SafeMath: division by zero', 0
                        call sub_9f497482Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not marketingFee + treasuryFee:
                            revert with 0, 'SafeMath: division by zero', 0
                        call sub_b0a58b32Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        uint8(stor25.field_0) = 0
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if arg2 > 10^18 * antiWhale:
                            if stor29[address(msg.sender)]:
                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                        if not return_data.size:
                            if not return_data.size:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                0
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                0
                        else:
                            if not return_data.size:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                0
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                                0
                        ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and treasuryFee + marketingFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        revert with 0, 17
                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        revert with 0, 18
                    if (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != treasuryFee + marketingFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(2 * ceil32(return_data.size)) + 640] = 2
                    mem[(2 * ceil32(return_data.size)) + 672] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                    emit Approval(((treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)), this.address, uniswapV2RouterAddress);
                    mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                    mem[(4 * ceil32(return_data.size)) + 772] = 0
                    mem[(4 * ceil32(return_data.size)) + 804] = 160
                    mem[(4 * ceil32(return_data.size)) + 900] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 932
                    t = (2 * ceil32(return_data.size)) + 672
                    while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 836] = this.address
                    mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                else:
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and liquidityPoolFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        revert with 0, 17
                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        revert with 0, 18
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != liquidityPoolFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2 > (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 < (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2:
                        revert with 0, 17
                    mem[512] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[576] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[544] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                    allowance[address(this.address)][stor13].field_255 = 0
                    emit Approval(((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 580] = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                    idx = 0
                    s = ceil32(return_data.size) + 772
                    t = 512
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 576] = 30
                    mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)
                    emit Approval((((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 708] = 0
                    mem[ceil32(return_data.size) + 740] = 0
                    mem[ceil32(return_data.size) + 772] = 0
                    mem[ceil32(return_data.size) + 804] = block.timestamp
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args this.address, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                    mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify(Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2));
                    if treasuryFee > !marketingFee:
                        revert with 0, 17
                    if treasuryFee + marketingFee < treasuryFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = 0
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                    else:
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and treasuryFee + marketingFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            revert with 0, 17
                        if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            revert with 0, 18
                        if (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != treasuryFee + marketingFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                        emit Approval(((treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)), this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
    else:
        totalFees = 0
        if not stor32[address(msg.sender)]:
            if arg2:
                if arg2 and totalFees > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if arg2 * totalFees / arg2 != totalFees:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not stor24:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor31[this.address] > !(arg2 * totalFees / stor24):
                    revert with 0, 17
                if stor31[this.address] + (arg2 * totalFees / stor24) < stor31[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[this.address] += arg2 * totalFees / stor24
                emit Transfer((arg2 * totalFees / stor24), msg.sender, this.address);
                if arg2 * totalFees / stor24 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < arg2 * totalFees / stor24:
                    revert with 0, 17
                if stor31[address(arg1)] > !(arg2 - (arg2 * totalFees / stor24)):
                    revert with 0, 17
                if stor31[address(arg1)] + arg2 - (arg2 * totalFees / stor24) < stor31[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[address(arg1)] = stor31[address(arg1)] + arg2 - (arg2 * totalFees / stor24)
                if balanceOf[this.address] < swapTokensAmount:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if not uint8(stor25.field_8):
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if uint8(stor25.field_0):
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if owner == msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if stor29[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                uint8(stor25.field_0) = 1
                if liquidityPoolFee > !marketingFee:
                    revert with 0, 17
                if liquidityPoolFee + marketingFee < liquidityPoolFee:
                    revert with 0, 'SafeMath: addition overflow'
                if liquidityPoolFee + marketingFee > !treasuryFee:
                    revert with 0, 17
                if treasuryFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not balanceOf[this.address]:
                    if not totalFees:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / totalFees:
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = 0
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, 0, 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                            0,
                    else:
                        if 0 / totalFees and liquidityPoolFee > -1 / 0 / totalFees:
                            revert with 0, 17
                        if not 0 / totalFees:
                            revert with 0, 18
                        if 0 / totalFees * liquidityPoolFee / 0 / totalFees != liquidityPoolFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / totalFees * liquidityPoolFee / 100 / 2 > 0 / totalFees * liquidityPoolFee / 100:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 / totalFees * liquidityPoolFee / 100 < 0 / totalFees * liquidityPoolFee / 100 / 2:
                            revert with 0, 17
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0 / totalFees * liquidityPoolFee / 100 / 2
                        allowance[address(this.address)][stor13].field_255 = 0
                        emit Approval((0 / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = 0 / totalFees * liquidityPoolFee / 100 / 2
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)
                        emit Approval(((0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2));
                    if treasuryFee > !marketingFee:
                        revert with 0, 17
                    if treasuryFee + marketingFee < treasuryFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / totalFees:
                        if 0 / totalFees and treasuryFee + marketingFee > -1 / 0 / totalFees:
                            revert with 0, 17
                        if not 0 / totalFees:
                            revert with 0, 18
                        if (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees) / 0 / totalFees != treasuryFee + marketingFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                        emit Approval(((treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not marketingFee + treasuryFee:
                            revert with 0, 'SafeMath: division by zero', 0
                        call sub_9f497482Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not marketingFee + treasuryFee:
                            revert with 0, 'SafeMath: division by zero', 0
                        call sub_b0a58b32Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        uint8(stor25.field_0) = 0
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if arg2 > 10^18 * antiWhale:
                            if stor29[address(msg.sender)]:
                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                        if not return_data.size:
                            if not return_data.size:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                0
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                0
                        else:
                            if not return_data.size:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                0
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                                0
                        ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    mem[(2 * ceil32(return_data.size)) + 640] = 2
                    mem[(2 * ceil32(return_data.size)) + 672] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = 0
                    emit Approval(0, this.address, uniswapV2RouterAddress);
                    mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 740] = 0
                    mem[(4 * ceil32(return_data.size)) + 772] = 0
                    mem[(4 * ceil32(return_data.size)) + 804] = 160
                    mem[(4 * ceil32(return_data.size)) + 900] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 932
                    t = (2 * ceil32(return_data.size)) + 672
                    while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 836] = this.address
                    mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                else:
                    if balanceOf[this.address] and liquidityPoolFee + marketingFee + treasuryFee > -1 / balanceOf[this.address]:
                        revert with 0, 17
                    if not balanceOf[this.address]:
                        revert with 0, 18
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / balanceOf[this.address] != liquidityPoolFee + marketingFee + treasuryFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not totalFees:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = 0
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, 0, 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                            0,
                        if treasuryFee > !marketingFee:
                            revert with 0, 17
                        if treasuryFee + marketingFee < treasuryFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = 0
                            emit Approval(0, this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = 0
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        else:
                            if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and treasuryFee + marketingFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                revert with 0, 17
                            if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                revert with 0, 18
                            if (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != treasuryFee + marketingFee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                            emit Approval(((treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)), this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                    else:
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and liquidityPoolFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            revert with 0, 17
                        if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            revert with 0, 18
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != liquidityPoolFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2 > (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 < (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2:
                            revert with 0, 17
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                        allowance[address(this.address)][stor13].field_255 = 0
                        emit Approval(((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)
                        emit Approval((((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2));
                        if treasuryFee > !marketingFee:
                            revert with 0, 17
                        if treasuryFee + marketingFee < treasuryFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and treasuryFee + marketingFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                revert with 0, 17
                            if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                revert with 0, 18
                            if (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != treasuryFee + marketingFee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                            emit Approval(((treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)), this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if marketingFee > !treasuryFee:
                                revert with 0, 17
                            if marketingFee + treasuryFee < marketingFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if not marketingFee + treasuryFee:
                                revert with 0, 'SafeMath: division by zero', 0
                            call sub_9f497482Address with:
                               value 0 / marketingFee + treasuryFee wei
                                 gas gas_remaining wei
                            if marketingFee > !treasuryFee:
                                revert with 0, 17
                            if marketingFee + treasuryFee < marketingFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if not marketingFee + treasuryFee:
                                revert with 0, 'SafeMath: division by zero', 0
                            call sub_b0a58b32Address with:
                               value 0 / marketingFee + treasuryFee wei
                                 gas gas_remaining wei
                            uint8(stor25.field_0) = 0
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if arg2 > 10^18 * antiWhale:
                                if stor29[address(msg.sender)]:
                                    revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                            if not return_data.size:
                                if not return_data.size:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                    0
                                else:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                    0
                            else:
                                if not return_data.size:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                    0
                                else:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                                    0
                            ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = 0
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
            else:
                if not stor24:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor31[this.address] > !(0 / stor24):
                    revert with 0, 17
                if stor31[this.address] + (0 / stor24) < stor31[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[this.address] += 0 / stor24
                emit Transfer((0 / stor24), msg.sender, this.address);
                if 0 / stor24 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < 0 / stor24:
                    revert with 0, 17
                if stor31[address(arg1)] > !(arg2 - (0 / stor24)):
                    revert with 0, 17
                if stor31[address(arg1)] + arg2 - (0 / stor24) < stor31[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[address(arg1)] = stor31[address(arg1)] + arg2 - (0 / stor24)
                if balanceOf[this.address] < swapTokensAmount:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if not uint8(stor25.field_8):
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if uint8(stor25.field_0):
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if owner == msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if stor29[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                uint8(stor25.field_0) = 1
                if liquidityPoolFee > !marketingFee:
                    revert with 0, 17
                if liquidityPoolFee + marketingFee < liquidityPoolFee:
                    revert with 0, 'SafeMath: addition overflow'
                if liquidityPoolFee + marketingFee > !treasuryFee:
                    revert with 0, 17
                if treasuryFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not balanceOf[this.address]:
                    if not totalFees:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / totalFees:
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = 0
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, 0, 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                            0,
                        if treasuryFee > !marketingFee:
                            revert with 0, 17
                        if treasuryFee + marketingFee < treasuryFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 0 / totalFees:
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = 0
                            emit Approval(0, this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = 0
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        else:
                            if 0 / totalFees and treasuryFee + marketingFee > -1 / 0 / totalFees:
                                revert with 0, 17
                            if not 0 / totalFees:
                                revert with 0, 18
                            if (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees) / 0 / totalFees != treasuryFee + marketingFee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                            emit Approval(((treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                    else:
                        if 0 / totalFees and liquidityPoolFee > -1 / 0 / totalFees:
                            revert with 0, 17
                        if not 0 / totalFees:
                            revert with 0, 18
                        if 0 / totalFees * liquidityPoolFee / 0 / totalFees != liquidityPoolFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / totalFees * liquidityPoolFee / 100 / 2 > 0 / totalFees * liquidityPoolFee / 100:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 / totalFees * liquidityPoolFee / 100 < 0 / totalFees * liquidityPoolFee / 100 / 2:
                            revert with 0, 17
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0 / totalFees * liquidityPoolFee / 100 / 2
                        allowance[address(this.address)][stor13].field_255 = 0
                        emit Approval((0 / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = 0 / totalFees * liquidityPoolFee / 100 / 2
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)
                        emit Approval(((0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2));
                        if treasuryFee > !marketingFee:
                            revert with 0, 17
                        if treasuryFee + marketingFee < treasuryFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 0 / totalFees:
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = 0
                            emit Approval(0, this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = 0
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if marketingFee > !treasuryFee:
                                revert with 0, 17
                            if marketingFee + treasuryFee < marketingFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if not marketingFee + treasuryFee:
                                revert with 0, 'SafeMath: division by zero', 0
                            call sub_9f497482Address with:
                               value 0 / marketingFee + treasuryFee wei
                                 gas gas_remaining wei
                            if marketingFee > !treasuryFee:
                                revert with 0, 17
                            if marketingFee + treasuryFee < marketingFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if not marketingFee + treasuryFee:
                                revert with 0, 'SafeMath: division by zero', 0
                            call sub_b0a58b32Address with:
                               value 0 / marketingFee + treasuryFee wei
                                 gas gas_remaining wei
                            uint8(stor25.field_0) = 0
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if arg2 > 10^18 * antiWhale:
                                if stor29[address(msg.sender)]:
                                    revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                            if not return_data.size:
                                if not return_data.size:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                    0
                                else:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                    0
                            else:
                                if not return_data.size:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                    0
                                else:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                                    0
                            ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if 0 / totalFees and treasuryFee + marketingFee > -1 / 0 / totalFees:
                            revert with 0, 17
                        if not 0 / totalFees:
                            revert with 0, 18
                        if (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees) / 0 / totalFees != treasuryFee + marketingFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                        emit Approval(((treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                else:
                    if balanceOf[this.address] and liquidityPoolFee + marketingFee + treasuryFee > -1 / balanceOf[this.address]:
                        revert with 0, 17
                    if not balanceOf[this.address]:
                        revert with 0, 18
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / balanceOf[this.address] != liquidityPoolFee + marketingFee + treasuryFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not totalFees:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = 0
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, 0, 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                            0,
                    else:
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and liquidityPoolFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            revert with 0, 17
                        if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            revert with 0, 18
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != liquidityPoolFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2 > (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 < (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2:
                            revert with 0, 17
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                        allowance[address(this.address)][stor13].field_255 = 0
                        emit Approval(((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)
                        emit Approval((((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2));
                    if treasuryFee > !marketingFee:
                        revert with 0, 17
                    if treasuryFee + marketingFee < treasuryFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = 0
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not marketingFee + treasuryFee:
                            revert with 0, 'SafeMath: division by zero', 0
                        call sub_9f497482Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not marketingFee + treasuryFee:
                            revert with 0, 'SafeMath: division by zero', 0
                        call sub_b0a58b32Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        uint8(stor25.field_0) = 0
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if arg2 > 10^18 * antiWhale:
                            if stor29[address(msg.sender)]:
                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                        if not return_data.size:
                            if not return_data.size:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                0
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                0
                        else:
                            if not return_data.size:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                0
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                                0
                        ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and treasuryFee + marketingFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        revert with 0, 17
                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        revert with 0, 18
                    if (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != treasuryFee + marketingFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(2 * ceil32(return_data.size)) + 640] = 2
                    mem[(2 * ceil32(return_data.size)) + 672] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                    emit Approval(((treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)), this.address, uniswapV2RouterAddress);
                    mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                    mem[(4 * ceil32(return_data.size)) + 772] = 0
                    mem[(4 * ceil32(return_data.size)) + 804] = 160
                    mem[(4 * ceil32(return_data.size)) + 900] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 932
                    t = (2 * ceil32(return_data.size)) + 672
                    while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 836] = this.address
                    mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
        else:
            if totalFees > !sub_6c0cd64e:
                revert with 0, 17
            totalFees += sub_6c0cd64e
            if not arg2:
                if not stor24:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor31[this.address] > !(0 / stor24):
                    revert with 0, 17
                if stor31[this.address] + (0 / stor24) < stor31[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[this.address] += 0 / stor24
                emit Transfer((0 / stor24), msg.sender, this.address);
                if 0 / stor24 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < 0 / stor24:
                    revert with 0, 17
                if stor31[address(arg1)] > !(arg2 - (0 / stor24)):
                    revert with 0, 17
                if stor31[address(arg1)] + arg2 - (0 / stor24) < stor31[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[address(arg1)] = stor31[address(arg1)] + arg2 - (0 / stor24)
                if balanceOf[this.address] < swapTokensAmount:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if not uint8(stor25.field_8):
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if uint8(stor25.field_0):
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if owner == msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if stor29[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                uint8(stor25.field_0) = 1
                if liquidityPoolFee > !marketingFee:
                    revert with 0, 17
                if liquidityPoolFee + marketingFee < liquidityPoolFee:
                    revert with 0, 'SafeMath: addition overflow'
                if liquidityPoolFee + marketingFee > !treasuryFee:
                    revert with 0, 17
                if treasuryFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not balanceOf[this.address]:
                    if not totalFees:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / totalFees:
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = 0
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, 0, 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                            0,
                    else:
                        if 0 / totalFees and liquidityPoolFee > -1 / 0 / totalFees:
                            revert with 0, 17
                        if not 0 / totalFees:
                            revert with 0, 18
                        if 0 / totalFees * liquidityPoolFee / 0 / totalFees != liquidityPoolFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / totalFees * liquidityPoolFee / 100 / 2 > 0 / totalFees * liquidityPoolFee / 100:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 / totalFees * liquidityPoolFee / 100 < 0 / totalFees * liquidityPoolFee / 100 / 2:
                            revert with 0, 17
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0 / totalFees * liquidityPoolFee / 100 / 2
                        allowance[address(this.address)][stor13].field_255 = 0
                        emit Approval((0 / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = 0 / totalFees * liquidityPoolFee / 100 / 2
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)
                        emit Approval(((0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2));
                    if treasuryFee > !marketingFee:
                        revert with 0, 17
                    if treasuryFee + marketingFee < treasuryFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 0 / totalFees:
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = 0
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not marketingFee + treasuryFee:
                            revert with 0, 'SafeMath: division by zero', 0
                        call sub_9f497482Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not marketingFee + treasuryFee:
                            revert with 0, 'SafeMath: division by zero', 0
                        call sub_b0a58b32Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        uint8(stor25.field_0) = 0
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if arg2 > 10^18 * antiWhale:
                            if stor29[address(msg.sender)]:
                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                        if not return_data.size:
                            if not return_data.size:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                0
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                0
                        else:
                            if not return_data.size:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                0
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                                0
                        ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if 0 / totalFees and treasuryFee + marketingFee > -1 / 0 / totalFees:
                        revert with 0, 17
                    if not 0 / totalFees:
                        revert with 0, 18
                    if (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees) / 0 / totalFees != treasuryFee + marketingFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(2 * ceil32(return_data.size)) + 640] = 2
                    mem[(2 * ceil32(return_data.size)) + 672] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                    emit Approval(((treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                    mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                    mem[(4 * ceil32(return_data.size)) + 772] = 0
                    mem[(4 * ceil32(return_data.size)) + 804] = 160
                    mem[(4 * ceil32(return_data.size)) + 900] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 932
                    t = (2 * ceil32(return_data.size)) + 672
                    while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 836] = this.address
                    mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                else:
                    if balanceOf[this.address] and liquidityPoolFee + marketingFee + treasuryFee > -1 / balanceOf[this.address]:
                        revert with 0, 17
                    if not balanceOf[this.address]:
                        revert with 0, 18
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / balanceOf[this.address] != liquidityPoolFee + marketingFee + treasuryFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not totalFees:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = 0
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, 0, 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                            0,
                        if treasuryFee > !marketingFee:
                            revert with 0, 17
                        if treasuryFee + marketingFee < treasuryFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = 0
                            emit Approval(0, this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = 0
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if marketingFee > !treasuryFee:
                                revert with 0, 17
                            if marketingFee + treasuryFee < marketingFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if not marketingFee + treasuryFee:
                                revert with 0, 'SafeMath: division by zero', 0
                            call sub_9f497482Address with:
                               value 0 / marketingFee + treasuryFee wei
                                 gas gas_remaining wei
                            if marketingFee > !treasuryFee:
                                revert with 0, 17
                            if marketingFee + treasuryFee < marketingFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if not marketingFee + treasuryFee:
                                revert with 0, 'SafeMath: division by zero', 0
                            call sub_b0a58b32Address with:
                               value 0 / marketingFee + treasuryFee wei
                                 gas gas_remaining wei
                            uint8(stor25.field_0) = 0
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if arg2 > 10^18 * antiWhale:
                                if stor29[address(msg.sender)]:
                                    revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                            if not return_data.size:
                                if not return_data.size:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                    0
                                else:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                    0
                            else:
                                if not return_data.size:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                    0
                                else:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                                    0
                            ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and treasuryFee + marketingFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            revert with 0, 17
                        if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            revert with 0, 18
                        if (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != treasuryFee + marketingFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                        emit Approval(((treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)), this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                    else:
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and liquidityPoolFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            revert with 0, 17
                        if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            revert with 0, 18
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != liquidityPoolFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2 > (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 < (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2:
                            revert with 0, 17
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                        allowance[address(this.address)][stor13].field_255 = 0
                        emit Approval(((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)
                        emit Approval((((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2));
                        if treasuryFee > !marketingFee:
                            revert with 0, 17
                        if treasuryFee + marketingFee < treasuryFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = 0
                            emit Approval(0, this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = 0
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        else:
                            if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and treasuryFee + marketingFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                revert with 0, 17
                            if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                                revert with 0, 18
                            if (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != treasuryFee + marketingFee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                            emit Approval(((treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)), this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
            else:
                if arg2 and totalFees > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if arg2 * totalFees / arg2 != totalFees:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not stor24:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor31[this.address] > !(arg2 * totalFees / stor24):
                    revert with 0, 17
                if stor31[this.address] + (arg2 * totalFees / stor24) < stor31[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[this.address] += arg2 * totalFees / stor24
                emit Transfer((arg2 * totalFees / stor24), msg.sender, this.address);
                if arg2 * totalFees / stor24 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < arg2 * totalFees / stor24:
                    revert with 0, 17
                if stor31[address(arg1)] > !(arg2 - (arg2 * totalFees / stor24)):
                    revert with 0, 17
                if stor31[address(arg1)] + arg2 - (arg2 * totalFees / stor24) < stor31[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[address(arg1)] = stor31[address(arg1)] + arg2 - (arg2 * totalFees / stor24)
                if balanceOf[this.address] < swapTokensAmount:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if not uint8(stor25.field_8):
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if uint8(stor25.field_0):
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if owner == msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if stor29[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                uint8(stor25.field_0) = 1
                if liquidityPoolFee > !marketingFee:
                    revert with 0, 17
                if liquidityPoolFee + marketingFee < liquidityPoolFee:
                    revert with 0, 'SafeMath: addition overflow'
                if liquidityPoolFee + marketingFee > !treasuryFee:
                    revert with 0, 17
                if treasuryFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not balanceOf[this.address]:
                    if not totalFees:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / totalFees:
                        mem[512] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[576] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[544] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 580] = 0
                        idx = 0
                        s = ceil32(return_data.size) + 772
                        t = 512
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576] = 30
                        mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 708] = 0
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = block.timestamp
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, 0, 0, 0, 0, block.timestamp
                        mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                            0,
                        if treasuryFee > !marketingFee:
                            revert with 0, 17
                        if treasuryFee + marketingFee < treasuryFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 0 / totalFees:
                            mem[(2 * ceil32(return_data.size)) + 640] = 2
                            mem[(2 * ceil32(return_data.size)) + 672] = this.address
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor13].field_0 = 0
                            emit Approval(0, this.address, uniswapV2RouterAddress);
                            mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 740] = 0
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 160
                            mem[(4 * ceil32(return_data.size)) + 900] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 932
                            t = (2 * ceil32(return_data.size)) + 672
                            while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if marketingFee > !treasuryFee:
                                revert with 0, 17
                            if marketingFee + treasuryFee < marketingFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if not marketingFee + treasuryFee:
                                revert with 0, 'SafeMath: division by zero', 0
                            call sub_9f497482Address with:
                               value 0 / marketingFee + treasuryFee wei
                                 gas gas_remaining wei
                            if marketingFee > !treasuryFee:
                                revert with 0, 17
                            if marketingFee + treasuryFee < marketingFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if not marketingFee + treasuryFee:
                                revert with 0, 'SafeMath: division by zero', 0
                            call sub_b0a58b32Address with:
                               value 0 / marketingFee + treasuryFee wei
                                 gas gas_remaining wei
                            uint8(stor25.field_0) = 0
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if arg2 > 10^18 * antiWhale:
                                if stor29[address(msg.sender)]:
                                    revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                            if not return_data.size:
                                if not return_data.size:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                    0
                                else:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                    0
                            else:
                                if not return_data.size:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                                    0
                                else:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                                    0
                            ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if 0 / totalFees and treasuryFee + marketingFee > -1 / 0 / totalFees:
                            revert with 0, 17
                        if not 0 / totalFees:
                            revert with 0, 18
                        if (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees) / 0 / totalFees != treasuryFee + marketingFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                        emit Approval(((treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) > eth.balance(this.address):
                            mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 804] = 32
                            mem[(4 * ceil32(return_data.size)) + 836] = 30
                            mem[(4 * ceil32(return_data.size)) + 868] = 'SafeMath: subtraction overflow'
                            mem[(4 * ceil32(return_data.size)) + 898] = 0
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 800
                               len (5 * ceil32(return_data.size)) + 100
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 804] = 32
                            mem[(4 * ceil32(return_data.size)) + 836] = 27
                            mem[(4 * ceil32(return_data.size)) + 868] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 800
                               len (5 * ceil32(return_data.size)) + 100
                        if not marketingFee + treasuryFee:
                            mem[(4 * ceil32(return_data.size)) + 864] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 868] = 32
                            mem[(4 * ceil32(return_data.size)) + 900] = 26
                            mem[(4 * ceil32(return_data.size)) + 932] = 'SafeMath: division by zero'
                            mem[(4 * ceil32(return_data.size)) + 958] = 0
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 864
                               len (5 * ceil32(return_data.size)) + 100
                        call sub_9f497482Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if marketingFee > !treasuryFee:
                                revert with 0, 17
                            if marketingFee + treasuryFee < marketingFee:
                                mem[(4 * ceil32(return_data.size)) + 864] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 868] = 32
                                mem[(4 * ceil32(return_data.size)) + 900] = 27
                                mem[(4 * ceil32(return_data.size)) + 932] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 864
                                   len (5 * ceil32(return_data.size)) + 100
                            if not marketingFee + treasuryFee:
                                mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 932] = 32
                                mem[(4 * ceil32(return_data.size)) + 964] = 26
                                mem[(4 * ceil32(return_data.size)) + 996] = 'SafeMath: division by zero'
                                mem[(4 * ceil32(return_data.size)) + 1022] = 0
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 928
                                   len (5 * ceil32(return_data.size)) + 100
                            call sub_b0a58b32Address with:
                               value 0 / marketingFee + treasuryFee wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                uint8(stor25.field_0) = 0
                                if not msg.sender:
                                    mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 932] = 32
                                    mem[(4 * ceil32(return_data.size)) + 964] = 37
                                    mem[(4 * ceil32(return_data.size)) + 996] = 'ERC20: transfer from the zero ad'
                                    mem[(4 * ceil32(return_data.size)) + 1028] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 928
                                       len (5 * ceil32(return_data.size)) + 132
                                if not arg1:
                                    mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 932] = 32
                                    mem[(4 * ceil32(return_data.size)) + 964] = 35
                                    mem[(4 * ceil32(return_data.size)) + 996] = 'ERC20: transfer to the zero addr'
                                    mem[(4 * ceil32(return_data.size)) + 1028] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 928
                                       len (5 * ceil32(return_data.size)) + 132
                                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if arg2 > 10^18 * antiWhale:
                                    if stor29[address(msg.sender)]:
                                        mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 932] = 32
                                        mem[(4 * ceil32(return_data.size)) + 964] = 58
                                        mem[(4 * ceil32(return_data.size)) + 996] = 'You are not permitted to transfe'
                                        mem[(4 * ceil32(return_data.size)) + 1028] = 'r more than 100,000 tokens'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 928
                                           len (5 * ceil32(return_data.size)) + 132
                                if arg2 > balanceOf[address(msg.sender)]:
                                    mem[(4 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 1028] = 32
                                    mem[(4 * ceil32(return_data.size)) + 1060] = 38
                                    mem[(4 * ceil32(return_data.size)) + 1092 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26]
                                    mem[(4 * ceil32(return_data.size)) + 1130] = 0
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 1024
                                       len (5 * ceil32(return_data.size)) + 132
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                mem[(4 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 1028] = 32
                                mem[(4 * ceil32(return_data.size)) + 1060] = 27
                                mem[(4 * ceil32(return_data.size)) + 1092] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 1024
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 960 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            uint8(stor25.field_0) = 0
                            if not msg.sender:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 37
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'ERC20: transfer from the zero ad'
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                   len (5 * ceil32(return_data.size)) + 132
                            if not arg1:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 35
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'ERC20: transfer to the zero addr'
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                   len (5 * ceil32(return_data.size)) + 132
                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if arg2 > 10^18 * antiWhale:
                                if stor29[address(msg.sender)]:
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 58
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'You are not permitted to transfe'
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 'r more than 100,000 tokens'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                       len (5 * ceil32(return_data.size)) + 132
                            if arg2 > balanceOf[address(msg.sender)]:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 38
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26]
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1131] = 0
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025
                                   len (5 * ceil32(return_data.size)) + 132
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 32
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 27
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025
                               len (5 * ceil32(return_data.size)) + 100
                        mem[(4 * ceil32(return_data.size)) + 896 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if marketingFee > !treasuryFee:
                            revert with 0, 17
                        if marketingFee + treasuryFee < marketingFee:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 865] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 32
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 27
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 865
                               len (5 * ceil32(return_data.size)) + 100
                        if not marketingFee + treasuryFee:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 26
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'SafeMath: division by zero'
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1023] = 0
                            revert with memory
                              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                               len (5 * ceil32(return_data.size)) + 100
                        call sub_b0a58b32Address with:
                           value 0 / marketingFee + treasuryFee wei
                             gas gas_remaining wei
                        if not return_data.size:
                            uint8(stor25.field_0) = 0
                            if not msg.sender:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 37
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'ERC20: transfer from the zero ad'
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                   len (5 * ceil32(return_data.size)) + 132
                            if not arg1:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 35
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'ERC20: transfer to the zero addr'
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                   len (5 * ceil32(return_data.size)) + 132
                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if arg2 > 10^18 * antiWhale:
                                if stor29[address(msg.sender)]:
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 58
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'You are not permitted to transfe'
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 'r more than 100,000 tokens'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                       len (5 * ceil32(return_data.size)) + 132
                            if arg2 > balanceOf[address(msg.sender)]:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 38
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26]
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1131] = 0
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025
                                   len (5 * ceil32(return_data.size)) + 132
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 32
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 27
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025
                               len (5 * ceil32(return_data.size)) + 100
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = return_data.size
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 961 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        uint8(stor25.field_0) = 0
                        if not msg.sender:
                            mem[(8 * ceil32(return_data.size)) + 930] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 934] = 32
                            mem[(8 * ceil32(return_data.size)) + 966] = 37
                            mem[(8 * ceil32(return_data.size)) + 998] = 'ERC20: transfer from the zero ad'
                            mem[(8 * ceil32(return_data.size)) + 1030] = 0x6472657373000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 930
                               len (13 * ceil32(return_data.size)) + 132
                        if not arg1:
                            mem[(8 * ceil32(return_data.size)) + 930] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 934] = 32
                            mem[(8 * ceil32(return_data.size)) + 966] = 35
                            mem[(8 * ceil32(return_data.size)) + 998] = 'ERC20: transfer to the zero addr'
                            mem[(8 * ceil32(return_data.size)) + 1030] = 0x6573730000000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 930
                               len (13 * ceil32(return_data.size)) + 132
                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if arg2 > 10^18 * antiWhale:
                            if stor29[address(msg.sender)]:
                                mem[(8 * ceil32(return_data.size)) + 930] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 934] = 32
                                mem[(8 * ceil32(return_data.size)) + 966] = 58
                                mem[(8 * ceil32(return_data.size)) + 998] = 'You are not permitted to transfe'
                                mem[(8 * ceil32(return_data.size)) + 1030] = 'r more than 100,000 tokens'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 930
                                   len (13 * ceil32(return_data.size)) + 132
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[(8 * ceil32(return_data.size)) + 1026] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 1030] = 32
                            mem[(8 * ceil32(return_data.size)) + 1062] = 38
                            mem[(8 * ceil32(return_data.size)) + 1094 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26]
                            mem[(8 * ceil32(return_data.size)) + 1132] = 0
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 1026
                               len (13 * ceil32(return_data.size)) + 132
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        mem[(8 * ceil32(return_data.size)) + 1026] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 1030] = 32
                        mem[(8 * ceil32(return_data.size)) + 1062] = 27
                        mem[(8 * ceil32(return_data.size)) + 1094] = 'SafeMath: addition overflow'
                        revert with memory
                          from (8 * ceil32(return_data.size)) + 1026
                           len (13 * ceil32(return_data.size)) + 100
                    if 0 / totalFees and liquidityPoolFee > -1 / 0 / totalFees:
                        revert with 0, 17
                    if not 0 / totalFees:
                        revert with 0, 18
                    if 0 / totalFees * liquidityPoolFee / 0 / totalFees != liquidityPoolFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / totalFees * liquidityPoolFee / 100 / 2 > 0 / totalFees * liquidityPoolFee / 100:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / totalFees * liquidityPoolFee / 100 < 0 / totalFees * liquidityPoolFee / 100 / 2:
                        revert with 0, 17
                    mem[512] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[576] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[544] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = 0 / totalFees * liquidityPoolFee / 100 / 2
                    allowance[address(this.address)][stor13].field_255 = 0
                    emit Approval((0 / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 580] = 0 / totalFees * liquidityPoolFee / 100 / 2
                    idx = 0
                    s = ceil32(return_data.size) + 772
                    t = 512
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 576] = 30
                    mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)
                    emit Approval(((0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 708] = 0
                    mem[ceil32(return_data.size) + 740] = 0
                    mem[ceil32(return_data.size) + 772] = 0
                    mem[ceil32(return_data.size) + 804] = block.timestamp
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args this.address, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                    mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify(Mask(255, 1, 0 / totalFees * liquidityPoolFee / 100), 0, (0 / totalFees * liquidityPoolFee / 100) - (0 / totalFees * liquidityPoolFee / 100 / 2));
                    if treasuryFee > !marketingFee:
                        revert with 0, 17
                    if treasuryFee + marketingFee < treasuryFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 0 / totalFees:
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = 0
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                    else:
                        if 0 / totalFees and treasuryFee + marketingFee > -1 / 0 / totalFees:
                            revert with 0, 17
                        if not 0 / totalFees:
                            revert with 0, 18
                        if (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees) / 0 / totalFees != treasuryFee + marketingFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[(2 * ceil32(return_data.size)) + 640] = 2
                        mem[(2 * ceil32(return_data.size)) + 672] = this.address
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                        emit Approval(((treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                        mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees)
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 160
                        mem[(4 * ceil32(return_data.size)) + 900] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 932
                        t = (2 * ceil32(return_data.size)) + 672
                        while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (treasuryFee * 0 / totalFees) + (marketingFee * 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if marketingFee > !treasuryFee:
                        revert with 0, 17
                    if marketingFee + treasuryFee < marketingFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not marketingFee + treasuryFee:
                        revert with 0, 'SafeMath: division by zero', 0
                    call sub_9f497482Address with:
                       value 0 / marketingFee + treasuryFee wei
                         gas gas_remaining wei
                    if marketingFee > !treasuryFee:
                        revert with 0, 17
                    if marketingFee + treasuryFee < marketingFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not marketingFee + treasuryFee:
                        revert with 0, 'SafeMath: division by zero', 0
                    call sub_b0a58b32Address with:
                       value 0 / marketingFee + treasuryFee wei
                         gas gas_remaining wei
                    uint8(stor25.field_0) = 0
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if not return_data.size:
                        if not return_data.size:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                            0
                        else:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                            0
                    else:
                        if not return_data.size:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                            0
                        else:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                            0
                    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if balanceOf[this.address] and liquidityPoolFee + marketingFee + treasuryFee > -1 / balanceOf[this.address]:
                    revert with 0, 17
                if not balanceOf[this.address]:
                    revert with 0, 18
                if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / balanceOf[this.address] != liquidityPoolFee + marketingFee + treasuryFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not totalFees:
                    revert with 0, 'SafeMath: division by zero', 0
                if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                    mem[512] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[576] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[544] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = 0
                    emit Approval(0, this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 580] = 0
                    idx = 0
                    s = ceil32(return_data.size) + 772
                    t = 512
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 576] = 30
                    mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = 0
                    emit Approval(0, this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 708] = 0
                    mem[ceil32(return_data.size) + 740] = 0
                    mem[ceil32(return_data.size) + 772] = 0
                    mem[ceil32(return_data.size) + 804] = block.timestamp
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args this.address, 0, 0, 0, 0, block.timestamp
                    mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                        0,
                else:
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and liquidityPoolFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        revert with 0, 17
                    if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                        revert with 0, 18
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != liquidityPoolFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2 > (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 < (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2:
                        revert with 0, 17
                    mem[512] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[576] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[544] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                    allowance[address(this.address)][stor13].field_255 = 0
                    emit Approval(((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 580] = (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2
                    idx = 0
                    s = ceil32(return_data.size) + 772
                    t = 512
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 576] = 30
                    mem[ceil32(return_data.size) + 608] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)
                    emit Approval((((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                    mem[ceil32(return_data.size) + 708] = 0
                    mem[ceil32(return_data.size) + 740] = 0
                    mem[ceil32(return_data.size) + 772] = 0
                    mem[ceil32(return_data.size) + 804] = block.timestamp
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args this.address, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                    mem[ceil32(return_data.size) + 640 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify(Mask(255, 1, (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100), 0, ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100) - ((liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees * liquidityPoolFee / 100 / 2));
                if treasuryFee > !marketingFee:
                    revert with 0, 17
                if treasuryFee + marketingFee < treasuryFee:
                    revert with 0, 'SafeMath: addition overflow'
                if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                    mem[(2 * ceil32(return_data.size)) + 640] = 2
                    mem[(2 * ceil32(return_data.size)) + 672] = this.address
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor13].field_0 = 0
                    emit Approval(0, this.address, uniswapV2RouterAddress);
                    mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 740] = 0
                    mem[(4 * ceil32(return_data.size)) + 772] = 0
                    mem[(4 * ceil32(return_data.size)) + 804] = 160
                    mem[(4 * ceil32(return_data.size)) + 900] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 932
                    t = (2 * ceil32(return_data.size)) + 672
                    while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 836] = this.address
                    mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if marketingFee > !treasuryFee:
                        revert with 0, 17
                    if marketingFee + treasuryFee < marketingFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not marketingFee + treasuryFee:
                        revert with 0, 'SafeMath: division by zero', 0
                    call sub_9f497482Address with:
                       value 0 / marketingFee + treasuryFee wei
                         gas gas_remaining wei
                    if marketingFee > !treasuryFee:
                        revert with 0, 17
                    if marketingFee + treasuryFee < marketingFee:
                        revert with 0, 'SafeMath: addition overflow'
                    if not marketingFee + treasuryFee:
                        revert with 0, 'SafeMath: division by zero', 0
                    call sub_b0a58b32Address with:
                       value 0 / marketingFee + treasuryFee wei
                         gas gas_remaining wei
                    uint8(stor25.field_0) = 0
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if arg2 > 10^18 * antiWhale:
                        if stor29[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if not return_data.size:
                        if not return_data.size:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                            0
                        else:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                            0
                    else:
                        if not return_data.size:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26] >> 48,
                                            0
                        else:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26] >> 48,
                                            0
                    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                if (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees and treasuryFee + marketingFee > -1 / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                    revert with 0, 17
                if not (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees:
                    revert with 0, 18
                if (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) / (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees != treasuryFee + marketingFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(2 * ceil32(return_data.size)) + 640] = 2
                mem[(2 * ceil32(return_data.size)) + 672] = this.address
                staticcall uniswapV2RouterAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor13].field_0 = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                emit Approval(((treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)), this.address, uniswapV2RouterAddress);
                mem[(4 * ceil32(return_data.size)) + 736] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 740] = (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees)
                mem[(4 * ceil32(return_data.size)) + 772] = 0
                mem[(4 * ceil32(return_data.size)) + 804] = 160
                mem[(4 * ceil32(return_data.size)) + 900] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 932
                t = (2 * ceil32(return_data.size)) + 672
                while idx < mem[(2 * ceil32(return_data.size)) + 640]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 836] = this.address
                mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (treasuryFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees) + (marketingFee * (liquidityPoolFee * balanceOf[this.address]) + (marketingFee * balanceOf[this.address]) + (treasuryFee * balanceOf[this.address]) / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 900 len (32 * mem[(2 * ceil32(return_data.size)) + 640]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > eth.balance(this.address):
        mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 804] = 32
        mem[(4 * ceil32(return_data.size)) + 836] = 30
        mem[(4 * ceil32(return_data.size)) + 868] = 'SafeMath: subtraction overflow'
        mem[(4 * ceil32(return_data.size)) + 898] = 0
        revert with memory
          from (4 * ceil32(return_data.size)) + 800
           len (5 * ceil32(return_data.size)) + 100
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    if marketingFee > !treasuryFee:
        revert with 0, 17
    if marketingFee + treasuryFee < marketingFee:
        mem[(4 * ceil32(return_data.size)) + 800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 804] = 32
        mem[(4 * ceil32(return_data.size)) + 836] = 27
        mem[(4 * ceil32(return_data.size)) + 868] = 'SafeMath: addition overflow'
        revert with memory
          from (4 * ceil32(return_data.size)) + 800
           len (5 * ceil32(return_data.size)) + 100
    if not marketingFee + treasuryFee:
        mem[(4 * ceil32(return_data.size)) + 864] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 868] = 32
        mem[(4 * ceil32(return_data.size)) + 900] = 26
        mem[(4 * ceil32(return_data.size)) + 932] = 'SafeMath: division by zero'
        mem[(4 * ceil32(return_data.size)) + 958] = 0
        revert with memory
          from (4 * ceil32(return_data.size)) + 864
           len (5 * ceil32(return_data.size)) + 100
    call sub_9f497482Address with:
       value 0 / marketingFee + treasuryFee wei
         gas gas_remaining wei
    if not return_data.size:
        if marketingFee > !treasuryFee:
            revert with 0, 17
        if marketingFee + treasuryFee < marketingFee:
            mem[(4 * ceil32(return_data.size)) + 864] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 868] = 32
            mem[(4 * ceil32(return_data.size)) + 900] = 27
            mem[(4 * ceil32(return_data.size)) + 932] = 'SafeMath: addition overflow'
            revert with memory
              from (4 * ceil32(return_data.size)) + 864
               len (5 * ceil32(return_data.size)) + 100
        if not marketingFee + treasuryFee:
            mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 932] = 32
            mem[(4 * ceil32(return_data.size)) + 964] = 26
            mem[(4 * ceil32(return_data.size)) + 996] = 'SafeMath: division by zero'
            mem[(4 * ceil32(return_data.size)) + 1022] = 0
            revert with memory
              from (4 * ceil32(return_data.size)) + 928
               len (5 * ceil32(return_data.size)) + 100
        call sub_b0a58b32Address with:
           value 0 / marketingFee + treasuryFee wei
             gas gas_remaining wei
        if not return_data.size:
            uint8(stor25.field_0) = 0
            if not msg.sender:
                mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 932] = 32
                mem[(4 * ceil32(return_data.size)) + 964] = 37
                mem[(4 * ceil32(return_data.size)) + 996] = 'ERC20: transfer from the zero ad'
                mem[(4 * ceil32(return_data.size)) + 1028] = 0x6472657373000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 928
                   len (5 * ceil32(return_data.size)) + 132
            if not arg1:
                mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 932] = 32
                mem[(4 * ceil32(return_data.size)) + 964] = 35
                mem[(4 * ceil32(return_data.size)) + 996] = 'ERC20: transfer to the zero addr'
                mem[(4 * ceil32(return_data.size)) + 1028] = 0x6573730000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 928
                   len (5 * ceil32(return_data.size)) + 132
            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if arg2 > 10^18 * antiWhale:
                if stor29[address(msg.sender)]:
                    mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 932] = 32
                    mem[(4 * ceil32(return_data.size)) + 964] = 58
                    mem[(4 * ceil32(return_data.size)) + 996] = 'You are not permitted to transfe'
                    mem[(4 * ceil32(return_data.size)) + 1028] = 'r more than 100,000 tokens'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 928
                       len (5 * ceil32(return_data.size)) + 132
            if arg2 > balanceOf[address(msg.sender)]:
                mem[(4 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 1028] = 32
                mem[(4 * ceil32(return_data.size)) + 1060] = 38
                mem[(4 * ceil32(return_data.size)) + 1092 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 998 len 26]
                mem[(4 * ceil32(return_data.size)) + 1130] = 0
                revert with memory
                  from (4 * ceil32(return_data.size)) + 1024
                   len (5 * ceil32(return_data.size)) + 132
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                emit Transfer(arg2, msg.sender, arg1);
                return 1
            mem[(4 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 1028] = 32
            mem[(4 * ceil32(return_data.size)) + 1060] = 27
            mem[(4 * ceil32(return_data.size)) + 1092] = 'SafeMath: addition overflow'
            revert with memory
              from (4 * ceil32(return_data.size)) + 1024
               len (5 * ceil32(return_data.size)) + 100
        mem[(4 * ceil32(return_data.size)) + 960 len return_data.size] = ext_call.return_data[0 len return_data.size]
        uint8(stor25.field_0) = 0
        if not msg.sender:
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 37
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'ERC20: transfer from the zero ad'
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0x6472657373000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
               len (5 * ceil32(return_data.size)) + 132
        if not arg1:
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 35
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'ERC20: transfer to the zero addr'
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0x6573730000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
               len (5 * ceil32(return_data.size)) + 132
        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if arg2 > 10^18 * antiWhale:
            if stor29[address(msg.sender)]:
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 58
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'You are not permitted to transfe'
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 'r more than 100,000 tokens'
                revert with memory
                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                   len (5 * ceil32(return_data.size)) + 132
        if arg2 > balanceOf[address(msg.sender)]:
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 38
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26]
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1131] = 0
            revert with memory
              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025
               len (5 * ceil32(return_data.size)) + 132
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 27
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093] = 'SafeMath: addition overflow'
        revert with memory
          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025
           len (5 * ceil32(return_data.size)) + 100
    mem[(4 * ceil32(return_data.size)) + 896 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if marketingFee > !treasuryFee:
        revert with 0, 17
    if marketingFee + treasuryFee < marketingFee:
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 865] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 27
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 'SafeMath: addition overflow'
        revert with memory
          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 865
           len (5 * ceil32(return_data.size)) + 100
    if not marketingFee + treasuryFee:
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 26
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'SafeMath: division by zero'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1023] = 0
        revert with memory
          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
           len (5 * ceil32(return_data.size)) + 100
    call sub_b0a58b32Address with:
       value 0 / marketingFee + treasuryFee wei
         gas gas_remaining wei
    if not return_data.size:
        uint8(stor25.field_0) = 0
        if not msg.sender:
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 37
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'ERC20: transfer from the zero ad'
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0x6472657373000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
               len (5 * ceil32(return_data.size)) + 132
        if not arg1:
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 35
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'ERC20: transfer to the zero addr'
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0x6573730000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
               len (5 * ceil32(return_data.size)) + 132
        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if arg2 > 10^18 * antiWhale:
            if stor29[address(msg.sender)]:
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 58
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 'You are not permitted to transfe'
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 'r more than 100,000 tokens'
                revert with memory
                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                   len (5 * ceil32(return_data.size)) + 132
        if arg2 > balanceOf[address(msg.sender)]:
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 38
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 999 len 26]
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1131] = 0
            revert with memory
              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025
               len (5 * ceil32(return_data.size)) + 132
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 27
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093] = 'SafeMath: addition overflow'
        revert with memory
          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1025
           len (5 * ceil32(return_data.size)) + 100
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = return_data.size
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 961 len return_data.size] = ext_call.return_data[0 len return_data.size]
    uint8(stor25.field_0) = 0
    if not msg.sender:
        mem[(8 * ceil32(return_data.size)) + 930] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 934] = 32
        mem[(8 * ceil32(return_data.size)) + 966] = 37
        mem[(8 * ceil32(return_data.size)) + 998] = 'ERC20: transfer from the zero ad'
        mem[(8 * ceil32(return_data.size)) + 1030] = 0x6472657373000000000000000000000000000000000000000000000000000000
        revert with memory
          from (8 * ceil32(return_data.size)) + 930
           len (13 * ceil32(return_data.size)) + 132
    if not arg1:
        mem[(8 * ceil32(return_data.size)) + 930] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 934] = 32
        mem[(8 * ceil32(return_data.size)) + 966] = 35
        mem[(8 * ceil32(return_data.size)) + 998] = 'ERC20: transfer to the zero addr'
        mem[(8 * ceil32(return_data.size)) + 1030] = 0x6573730000000000000000000000000000000000000000000000000000000000
        revert with memory
          from (8 * ceil32(return_data.size)) + 930
           len (13 * ceil32(return_data.size)) + 132
    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if arg2 > 10^18 * antiWhale:
        if stor29[address(msg.sender)]:
            mem[(8 * ceil32(return_data.size)) + 930] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 934] = 32
            mem[(8 * ceil32(return_data.size)) + 966] = 58
            mem[(8 * ceil32(return_data.size)) + 998] = 'You are not permitted to transfe'
            mem[(8 * ceil32(return_data.size)) + 1030] = 'r more than 100,000 tokens'
            revert with memory
              from (8 * ceil32(return_data.size)) + 930
               len (13 * ceil32(return_data.size)) + 132
    if arg2 > balanceOf[address(msg.sender)]:
        mem[(8 * ceil32(return_data.size)) + 1026] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 1030] = 32
        mem[(8 * ceil32(return_data.size)) + 1062] = 38
        mem[(8 * ceil32(return_data.size)) + 1094 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1000 len 26]
        mem[(8 * ceil32(return_data.size)) + 1132] = 0
        revert with memory
          from (8 * ceil32(return_data.size)) + 1026
           len (13 * ceil32(return_data.size)) + 132
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    if balanceOf[arg1] + arg2 >= balanceOf[arg1]:
        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    mem[(8 * ceil32(return_data.size)) + 1026] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 1030] = 32
    mem[(8 * ceil32(return_data.size)) + 1062] = 27
    mem[(8 * ceil32(return_data.size)) + 1094] = 'SafeMath: addition overflow'
    revert with memory
      from (8 * ceil32(return_data.size)) + 1026
       len (13 * ceil32(return_data.size)) + 100
}



}
