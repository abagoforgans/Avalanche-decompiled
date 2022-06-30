contract main {




// =====================  Runtime code  =====================


#
#  - sub_20802c7e(?)
#  - sub_62a13670(?)
#  - sub_7ee8e414(?)
#  - sub_85cd4366(?)
#  - sub_91cc3228(?)
#  - sub_cd08752c(?)
#  - sub_d23982c1(?)
#  - sub_f2d049b6(?)
#  - _fallback()
#
address owner;
array of address stor1;
array of uint256 stor2;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;
mapping of uint256 totalReleased;
mapping of uint256 released;
address sub_f4f357b1Address;
address sub_79eff064Address;
address devWalletAddress;
address distributionPoolAddress;
address deadWalletAddress;
address stor14;
uint256 rewardsFee;
uint256 liquidityPoolFee;
uint256 stor17;
uint256 devFee;
uint256 totalFees;
uint256 cashoutFee;
uint256 stor21; offset 8
uint256 swapTokensAmount;
mapping of uint8 stor23;
mapping of uint8 stor24;
mapping of struct stor25;
array of struct stor26;
mapping of struct stor99;
array of struct stor2481041784956016742021570618494952475758789857281704946240779902470294861374;

function totalFees() {
    return totalFees
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor23[arg1])
}

function rewardsFee() {
    return rewardsFee
}

function totalShares() {
    return stor1.length
}

function released(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return released[address(arg1)][address(arg2)]
}

function liquidityPoolFee() {
    return liquidityPoolFee
}

function swapTokensAmount() {
    return swapTokensAmount
}

function devFee() {
    return devFee
}

function cashoutFee() {
    return cashoutFee
}

function sub_79eff064(?) {
    return sub_79eff064Address
}

function deadWallet() {
    return deadWalletAddress
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

function devWallet() {
    return devWalletAddress
}

function released(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return released[address(arg1)]
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor24[arg1])
}

function distributionPool() {
    return distributionPoolAddress
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

function totalReleased() {
    return stor2.length
}

function sub_f4f357b1(?) {
    return sub_f4f357b1Address
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateTreasuryFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17 = arg1
}

function updateSwapTokensAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapTokensAmount = arg1
}

function sub_1aabc25d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14 = address(arg1)
}

function changeSwapLiquify(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21 = Mask(248, 0, arg1)
}

function sub_a39e7e23(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devWalletAddress = address(arg1)
}

function updateRewardsWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    distributionPoolAddress = arg1
}

function blacklistMalicious(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23[address(arg1)] = uint8(arg2)
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

function updateUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_f4f357b1Address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TKN: The router already has that address'
    emit 0x4aee3245: arg1, sub_f4f357b1Address
    sub_f4f357b1Address = arg1
}

function boostReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= eth.balance(this.address):
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateLiquidityFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityPoolFee = arg1
    if rewardsFee > !arg1:
        revert with 0, 17
    if rewardsFee + arg1 < rewardsFee:
        revert with 0, 'SafeMath: addition overflow'
    if rewardsFee + arg1 > !devFee:
        revert with 0, 17
    if devFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = rewardsFee + arg1 + devFee
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
    if arg1 + liquidityPoolFee > !devFee:
        revert with 0, 17
    if devFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = arg1 + liquidityPoolFee + devFee
}

function sub_fb876ef9(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devFee = arg1
    if rewardsFee > !liquidityPoolFee:
        revert with 0, 17
    if rewardsFee + liquidityPoolFee < rewardsFee:
        revert with 0, 'SafeMath: addition overflow'
    if rewardsFee + liquidityPoolFee > !arg1:
        revert with 0, 17
    if arg1 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = rewardsFee + liquidityPoolFee + arg1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_79eff064Address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The TraderJoe pair cannot be removed from automatedMarketMakerPairs'
    if arg2 == bool(stor24[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Automated market maker pair is already set to that value'
    stor24[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function release(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    if eth.balance(this.address) > !stor2.length:
        revert with 0, 17
    if eth.balance(this.address) + stor2.length and shares[address(arg1)] > -1 / eth.balance(this.address) + stor2.length:
        revert with 0, 17
    if not stor1.length:
        revert with 0, 18
    if (eth.balance(this.address) * shares[address(arg1)]) + (stor2.length * shares[address(arg1)]) / stor1.length < released[address(arg1)]:
        revert with 0, 17
    if not ((eth.balance(this.address) * shares[address(arg1)]) + (stor2.length * shares[address(arg1)]) / stor1.length) - released[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)] > !(((eth.balance(this.address) * shares[address(arg1)]) + (stor2.length * shares[address(arg1)]) / stor1.length) - released[address(arg1)]):
        revert with 0, 17
    released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (stor2.length * shares[address(arg1)]) / stor1.length
    if stor2.length > !(((eth.balance(this.address) * shares[address(arg1)]) + (stor2.length * shares[address(arg1)]) / stor1.length) - released[address(arg1)]):
        revert with 0, 17
    stor2.length = stor2.length + ((eth.balance(this.address) * shares[address(arg1)]) + (stor2.length * shares[address(arg1)]) / stor1.length) - released[address(arg1)]
    if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(arg1)]) + (stor2.length * shares[address(arg1)]) / stor1.length) - released[address(arg1)]:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value ((eth.balance(this.address) * shares[address(arg1)]) + (stor2.length * shares[address(arg1)]) / stor1.length) - released[address(arg1)] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit PaymentReleased(address(arg1), ((eth.balance(this.address) * shares[address(arg1)]) + (stor2.length * shares[address(arg1)]) / stor1.length) - released[address(arg1)]);
}

function sub_fe551b05(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[arg1.length + 128] = 0
    if bool(stor25[arg1[all]].field_0):
        if bool(stor25[arg1[all]].field_0) == uint255(uint256(stor25[arg1[all]].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor25[arg1[all]].field_0):
            if bool(stor25[arg1[all]].field_0) == uint255(uint256(stor25[arg1[all]].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor25[arg1[all]].field_0)):
                if 31 >= uint255(uint256(stor25[arg1[all]].field_0)) * 0.5:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor25[arg1[all]].field_8)
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor25[arg1[all]].field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + (uint255(uint256(stor25[arg1[all]].field_0)) * 0.5) + 97 > idx:
                        mem[idx + 32] = uint256(stor25[arg1[all]][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor25[arg1[all]].field_0) == stor25[arg1[all]].field_1 % 128 < 32:
                revert with 0, 34
            if stor25[arg1[all]].field_1 % 128:
                if 31 >= stor25[arg1[all]].field_1 % 128:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor25[arg1[all]].field_8)
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor25[arg1[all]].field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor25[arg1[all]].field_1 % 128 + 97 > idx:
                        mem[idx + 32] = uint256(stor25[arg1[all]][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, uint256(stor25[arg1[all]].field_0)), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor25[arg1[all]].field_0)) * 0.5)]), 
               address(stor25[arg1[all]].field_256),
               uint256(stor25[arg1[all]].field_512)
    if bool(stor25[arg1[all]].field_0) == stor25[arg1[all]].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor25[arg1[all]].field_0):
        if bool(stor25[arg1[all]].field_0) == uint255(uint256(stor25[arg1[all]].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor25[arg1[all]].field_0)):
            if 31 >= uint255(uint256(stor25[arg1[all]].field_0)) * 0.5:
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor25[arg1[all]].field_8)
            else:
                mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor25[arg1[all]].field_0)
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + (uint255(uint256(stor25[arg1[all]].field_0)) * 0.5) + 97 > idx:
                    mem[idx + 32] = uint256(stor25[arg1[all]][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor25[arg1[all]].field_0) == stor25[arg1[all]].field_1 % 128 < 32:
            revert with 0, 34
        if stor25[arg1[all]].field_1 % 128:
            if 31 >= stor25[arg1[all]].field_1 % 128:
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor25[arg1[all]].field_8)
            else:
                mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor25[arg1[all]].field_0)
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + stor25[arg1[all]].field_1 % 128 + 97 > idx:
                    mem[idx + 32] = uint256(stor25[arg1[all]][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor25[arg1[all]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor25[arg1[all]].field_1 % 128)]), 
           address(stor25[arg1[all]].field_256),
           uint256(stor25[arg1[all]].field_512)
}

function allTiers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor26.length
    if bool(stor26[arg1].field_0):
        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor26[arg1].field_0):
            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor26[arg1].field_0)):
                if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor26[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor26[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor26[arg1].field_8)
        else:
            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor26[arg1].field_1 % 128:
                if 31 < stor26[arg1].field_1 % 128:
                    mem[128] = uint256(stor26[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor26[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor26[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor26[arg1].field_8)
        mem[ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) > uint255(uint256(stor26[arg1].field_0)) * 0.5:
            mem[(uint255(uint256(stor26[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor26[arg1].field_0):
        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor26[arg1].field_0)):
            if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor26[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor26[arg1 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor26[arg1].field_0 % 128, data=mem[128 len ceil32(stor26[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor26[arg1].field_8)
    else:
        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor26[arg1].field_1 % 128:
            if 31 < stor26[arg1].field_1 % 128:
                mem[128] = uint256(stor26[arg1].field_0)
                idx = 128
                s = 0
                while stor26[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor26[arg1 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor26[arg1].field_0 % 128, data=mem[128 len ceil32(stor26[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor26[arg1].field_8)
    mem[ceil32(stor26[arg1].field_1 % 128) + 192 len ceil32(stor26[arg1].field_1 % 128)] = mem[128 len ceil32(stor26[arg1].field_1 % 128)]
    if ceil32(stor26[arg1].field_1 % 128) > stor26[arg1].field_1 % 128:
        mem[stor26[arg1].field_1 % 128 + ceil32(stor26[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor26[arg1].field_0 % 128, data=mem[128 len ceil32(stor26[arg1].field_1 % 128)], mem[(2 * ceil32(stor26[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor26[arg1].field_1 % 128)]), 
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
    if not stor1.length:
        revert with 0, 18
    if (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length < released[address(arg1)][address(arg2)]:
        revert with 0, 17
    if not ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length) - released[address(arg1)][address(arg2)]:
        revert with 0, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)][address(arg2)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length) - released[address(arg1)][address(arg2)]):
        revert with 0, 17
    released[address(arg1)][address(arg2)] = (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length
    if totalReleased[address(arg1)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length) - released[address(arg1)][address(arg2)]):
        revert with 0, 17
    totalReleased[address(arg1)] = totalReleased[address(arg1)] + ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length) - released[address(arg1)][address(arg2)], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length) - released[address(arg1)][address(arg2)], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length) - released[address(arg1)][address(arg2)], 0) << 288)
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
    emit ERC20PaymentReleased(address(arg2), ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length) - released[address(arg1)][address(arg2)], arg1);
}

function sub_9953a200(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0):
        if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) == uint255(uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = 0
            idx = 0
            while (uint255(uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) == stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = 0
            idx = 0
            while stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
    address(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 96))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 25))]) = uint64(arg2) << 96
    stor2[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 96))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 25))] = arg3
}

function sub_ccb0de18(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 25
    if ceil32(arg2.length) <= arg2.length:
        _99 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)):
                require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeClaimTime(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
            else:
                if 31 >= uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5:
                    require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                    call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeClaimTime(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                else:
                    idx = ceil32(ceil32(arg2.length)) + 225
                    s = 0
                    while ceil32(ceil32(arg2.length)) + (uint255(uint256(stor[_99].field_0)) * 0.5) + 193 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_99) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(stor1[_99]))
                    call address(stor1[_99])._changeClaimTime(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128:
                require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeClaimTime(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
            else:
                if 31 >= stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128:
                    require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                    call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeClaimTime(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                else:
                    idx = ceil32(ceil32(arg2.length)) + 225
                    s = 0
                    while ceil32(ceil32(arg2.length)) + stor[_99].field_1 % 128 + 193 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_99) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(stor1[_99]))
                    call address(stor1[_99])._changeClaimTime(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
    else:
        _102 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)):
                require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeClaimTime(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
            else:
                if 31 >= uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5:
                    require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                    call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeClaimTime(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                else:
                    idx = ceil32(ceil32(arg2.length)) + 225
                    s = 0
                    while ceil32(ceil32(arg2.length)) + (uint255(uint256(stor[_102].field_0)) * 0.5) + 193 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_102) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(stor1[_102]))
                    call address(stor1[_102])._changeClaimTime(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128:
                require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeClaimTime(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
            else:
                if 31 >= stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128:
                    require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                    call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeClaimTime(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                else:
                    idx = ceil32(ceil32(arg2.length)) + 225
                    s = 0
                    while ceil32(ceil32(arg2.length)) + stor[_102].field_1 % 128 + 193 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_102) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(stor1[_102]))
                    call address(stor1[_102])._changeClaimTime(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ccd3fb60(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 25
    if ceil32(arg2.length) <= arg2.length:
        _99 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)):
                require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeNodePrice(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
            else:
                if 31 >= uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5:
                    require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                    call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeNodePrice(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                else:
                    idx = ceil32(ceil32(arg2.length)) + 225
                    s = 0
                    while ceil32(ceil32(arg2.length)) + (uint255(uint256(stor[_99].field_0)) * 0.5) + 193 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_99) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(stor1[_99]))
                    call address(stor1[_99])._changeNodePrice(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128:
                require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeNodePrice(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
            else:
                if 31 >= stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128:
                    require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                    call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeNodePrice(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                else:
                    idx = ceil32(ceil32(arg2.length)) + 225
                    s = 0
                    while ceil32(ceil32(arg2.length)) + stor[_99].field_1 % 128 + 193 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_99) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(stor1[_99]))
                    call address(stor1[_99])._changeNodePrice(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
    else:
        _102 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)):
                require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeNodePrice(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
            else:
                if 31 >= uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5:
                    require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                    call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeNodePrice(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                else:
                    idx = ceil32(ceil32(arg2.length)) + 225
                    s = 0
                    while ceil32(ceil32(arg2.length)) + (uint255(uint256(stor[_102].field_0)) * 0.5) + 193 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_102) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(stor1[_102]))
                    call address(stor1[_102])._changeNodePrice(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128:
                require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeNodePrice(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
            else:
                if 31 >= stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128:
                    require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                    call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeNodePrice(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                else:
                    idx = ceil32(ceil32(arg2.length)) + 225
                    s = 0
                    while ceil32(ceil32(arg2.length)) + stor[_102].field_1 % 128 + 193 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_102) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(stor1[_102]))
                    call address(stor1[_102])._changeNodePrice(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0d3153d0(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 25
    if ceil32(arg2.length) <= arg2.length:
        _99 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)):
                require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeRewardPerNode(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
            else:
                if 31 >= uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5:
                    require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                    call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeRewardPerNode(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                else:
                    idx = ceil32(ceil32(arg2.length)) + 225
                    s = 0
                    while ceil32(ceil32(arg2.length)) + (uint255(uint256(stor[_99].field_0)) * 0.5) + 193 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_99) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(stor1[_99]))
                    call address(stor1[_99])._changeRewardPerNode(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128:
                require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeRewardPerNode(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
            else:
                if 31 >= stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128:
                    require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                    call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeRewardPerNode(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                else:
                    idx = ceil32(ceil32(arg2.length)) + 225
                    s = 0
                    while ceil32(ceil32(arg2.length)) + stor[_99].field_1 % 128 + 193 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_99) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(stor1[_99]))
                    call address(stor1[_99])._changeRewardPerNode(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
    else:
        _102 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)):
                require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeRewardPerNode(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
            else:
                if 31 >= uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5:
                    require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                    call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeRewardPerNode(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                else:
                    idx = ceil32(ceil32(arg2.length)) + 225
                    s = 0
                    while ceil32(ceil32(arg2.length)) + (uint255(uint256(stor[_102].field_0)) * 0.5) + 193 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_102) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(stor1[_102]))
                    call address(stor1[_102])._changeRewardPerNode(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128:
                require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeRewardPerNode(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
            else:
                if 31 >= stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128:
                    require ext_code.size(address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]))
                    call address(stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])._changeRewardPerNode(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                else:
                    idx = ceil32(ceil32(arg2.length)) + 225
                    s = 0
                    while ceil32(ceil32(arg2.length)) + stor[_102].field_1 % 128 + 193 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_102) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(stor1[_102]))
                    call address(stor1[_102])._changeRewardPerNode(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7e705880(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0):
        if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) == uint255(uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = 0
            idx = 0
            while (uint255(uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) == stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = 0
            idx = 0
            while stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 25)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
    address(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 96))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 25))]) = uint64(arg2) << 96
    stor2[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 96))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 25))] = arg3
    stor26.length++
    if bool(stor57C3[stor26.length].field_0):
        if bool(stor57C3[stor26.length].field_0) == uint255(uint256(stor57C3[stor26.length].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor[sha3(stor26.length + 0x57c384a7d1c54f3a1b2e5e67b2617b8224fdfd1ea7234eea573a6ff665ff63e)][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor57C3[stor26.length].field_0) = 0
            idx = 0
            while (uint255(uint256(stor57C3[stor26.length].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor[idx + sha3(stor26.length + 0x57c384a7d1c54f3a1b2e5e67b2617b8224fdfd1ea7234eea573a6ff665ff63e)].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor57C3[stor26.length].field_0) == stor57C3[stor26.length].field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor[sha3(stor26.length + 0x57c384a7d1c54f3a1b2e5e67b2617b8224fdfd1ea7234eea573a6ff665ff63e)][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor57C3[stor26.length].field_0) = 0
            idx = 0
            while stor57C3[stor26.length].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[idx + sha3(stor26.length + 0x57c384a7d1c54f3a1b2e5e67b2617b8224fdfd1ea7234eea573a6ff665ff63e)].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_1d394843(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 25
    if ceil32(arg2.length) <= arg2.length:
        _193 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
            mem[64] = ceil32(ceil32(arg2.length)) + ceil32(uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5) + 225
            mem[ceil32(ceil32(arg2.length)) + 193] = uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5
            if bool(stor[_193].field_0):
                if bool(stor[_193].field_0) == uint255(uint256(stor[_193].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_193].field_0)):
                    staticcall address(stor1[_193])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if 31 >= uint255(uint256(stor[_193].field_0)) * 0.5:
                    staticcall address(stor1[_193])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                mem[0] = _193
                mem[ceil32(ceil32(arg2.length)) + 225] = uint256(stor[sha3(_193)].field_0)
                idx = ceil32(ceil32(arg2.length)) + 225
                s = 0
                while ceil32(ceil32(arg2.length)) + (uint255(uint256(stor[_193].field_0)) * 0.5) + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_193) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg2.length)) + 97] = ceil32(ceil32(arg2.length)) + 193
                mem[ceil32(ceil32(arg2.length)) + 129] = address(stor1[_193])
                mem[ceil32(ceil32(arg2.length)) + 161] = stor2[_193]
                mem[mem[64] + 4] = address(arg1)
                staticcall address(stor1[_193])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _402 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_402]
            else:
                if bool(stor[_193].field_0) == stor[_193].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_193].field_1 % 128:
                    staticcall address(stor1[_193])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if 31 >= stor[_193].field_1 % 128:
                    staticcall address(stor1[_193])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                mem[0] = _193
                mem[ceil32(ceil32(arg2.length)) + 225] = uint256(stor[sha3(_193)].field_0)
                idx = ceil32(ceil32(arg2.length)) + 225
                s = 0
                while ceil32(ceil32(arg2.length)) + stor[_193].field_1 % 128 + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_193) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg2.length)) + 97] = ceil32(ceil32(arg2.length)) + 193
                mem[ceil32(ceil32(arg2.length)) + 129] = address(stor1[_193])
                mem[ceil32(ceil32(arg2.length)) + 161] = stor2[_193]
                mem[mem[64] + 4] = address(arg1)
                staticcall address(stor1[_193])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _403 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_403]
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
            mem[64] = ceil32(ceil32(arg2.length)) + ceil32(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128) + 225
            mem[ceil32(ceil32(arg2.length)) + 193] = stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128
            if bool(stor[_193].field_0):
                if bool(stor[_193].field_0) == uint255(uint256(stor[_193].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_193].field_0)):
                    staticcall address(stor1[_193])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if 31 >= uint255(uint256(stor[_193].field_0)) * 0.5:
                    staticcall address(stor1[_193])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                mem[0] = _193
                mem[ceil32(ceil32(arg2.length)) + 225] = uint256(stor[sha3(_193)].field_0)
                idx = ceil32(ceil32(arg2.length)) + 225
                s = 0
                while ceil32(ceil32(arg2.length)) + (uint255(uint256(stor[_193].field_0)) * 0.5) + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_193) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg2.length)) + 97] = ceil32(ceil32(arg2.length)) + 193
                mem[ceil32(ceil32(arg2.length)) + 129] = address(stor1[_193])
                mem[ceil32(ceil32(arg2.length)) + 161] = stor2[_193]
                mem[mem[64] + 4] = address(arg1)
                staticcall address(stor1[_193])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _404 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_404]
            else:
                if bool(stor[_193].field_0) == stor[_193].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_193].field_1 % 128:
                    staticcall address(stor1[_193])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if 31 >= stor[_193].field_1 % 128:
                    staticcall address(stor1[_193])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                mem[0] = _193
                mem[ceil32(ceil32(arg2.length)) + 225] = uint256(stor[sha3(_193)].field_0)
                idx = ceil32(ceil32(arg2.length)) + 225
                s = 0
                while ceil32(ceil32(arg2.length)) + stor[_193].field_1 % 128 + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_193) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg2.length)) + 97] = ceil32(ceil32(arg2.length)) + 193
                mem[ceil32(ceil32(arg2.length)) + 129] = address(stor1[_193])
                mem[ceil32(ceil32(arg2.length)) + 161] = stor2[_193]
                mem[mem[64] + 4] = address(arg1)
                staticcall address(stor1[_193])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _405 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_405]
    else:
        _196 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
            mem[64] = ceil32(ceil32(arg2.length)) + ceil32(uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5) + 225
            mem[ceil32(ceil32(arg2.length)) + 193] = uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5
            if bool(stor[_196].field_0):
                if bool(stor[_196].field_0) == uint255(uint256(stor[_196].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_196].field_0)):
                    staticcall address(stor1[_196])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if 31 >= uint255(uint256(stor[_196].field_0)) * 0.5:
                    staticcall address(stor1[_196])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                mem[0] = _196
                mem[ceil32(ceil32(arg2.length)) + 225] = uint256(stor[sha3(_196)].field_0)
                idx = ceil32(ceil32(arg2.length)) + 225
                s = 0
                while ceil32(ceil32(arg2.length)) + (uint255(uint256(stor[_196].field_0)) * 0.5) + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_196) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg2.length)) + 97] = ceil32(ceil32(arg2.length)) + 193
                mem[ceil32(ceil32(arg2.length)) + 129] = address(stor1[_196])
                mem[ceil32(ceil32(arg2.length)) + 161] = stor2[_196]
                mem[mem[64] + 4] = address(arg1)
                staticcall address(stor1[_196])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _406 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_406]
            else:
                if bool(stor[_196].field_0) == stor[_196].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_196].field_1 % 128:
                    staticcall address(stor1[_196])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if 31 >= stor[_196].field_1 % 128:
                    staticcall address(stor1[_196])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                mem[0] = _196
                mem[ceil32(ceil32(arg2.length)) + 225] = uint256(stor[sha3(_196)].field_0)
                idx = ceil32(ceil32(arg2.length)) + 225
                s = 0
                while ceil32(ceil32(arg2.length)) + stor[_196].field_1 % 128 + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_196) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg2.length)) + 97] = ceil32(ceil32(arg2.length)) + 193
                mem[ceil32(ceil32(arg2.length)) + 129] = address(stor1[_196])
                mem[ceil32(ceil32(arg2.length)) + 161] = stor2[_196]
                mem[mem[64] + 4] = address(arg1)
                staticcall address(stor1[_196])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _407 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_407]
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
            mem[64] = ceil32(ceil32(arg2.length)) + ceil32(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128) + 225
            mem[ceil32(ceil32(arg2.length)) + 193] = stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128
            if bool(stor[_196].field_0):
                if bool(stor[_196].field_0) == uint255(uint256(stor[_196].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_196].field_0)):
                    staticcall address(stor1[_196])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if 31 >= uint255(uint256(stor[_196].field_0)) * 0.5:
                    staticcall address(stor1[_196])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                mem[0] = _196
                mem[ceil32(ceil32(arg2.length)) + 225] = uint256(stor[sha3(_196)].field_0)
                idx = ceil32(ceil32(arg2.length)) + 225
                s = 0
                while ceil32(ceil32(arg2.length)) + (uint255(uint256(stor[_196].field_0)) * 0.5) + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_196) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg2.length)) + 97] = ceil32(ceil32(arg2.length)) + 193
                mem[ceil32(ceil32(arg2.length)) + 129] = address(stor1[_196])
                mem[ceil32(ceil32(arg2.length)) + 161] = stor2[_196]
                mem[mem[64] + 4] = address(arg1)
                staticcall address(stor1[_196])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _408 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_408]
            else:
                if bool(stor[_196].field_0) == stor[_196].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_196].field_1 % 128:
                    staticcall address(stor1[_196])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if 31 >= stor[_196].field_1 % 128:
                    staticcall address(stor1[_196])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                mem[0] = _196
                mem[ceil32(ceil32(arg2.length)) + 225] = uint256(stor[sha3(_196)].field_0)
                idx = ceil32(ceil32(arg2.length)) + 225
                s = 0
                while ceil32(ceil32(arg2.length)) + stor[_196].field_1 % 128 + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_196) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg2.length)) + 97] = ceil32(ceil32(arg2.length)) + 193
                mem[ceil32(ceil32(arg2.length)) + 129] = address(stor1[_196])
                mem[ceil32(ceil32(arg2.length)) + 161] = stor2[_196]
                mem[mem[64] + 4] = address(arg1)
                staticcall address(stor1[_196])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _409 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_409]
    return memory
      from mem[64]
       len 32
}

function sub_9da7caf1(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 25
    if ceil32(arg2.length) <= arg2.length:
        _193 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
            mem[64] = ceil32(ceil32(arg2.length)) + ceil32(uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5) + 225
            mem[ceil32(ceil32(arg2.length)) + 193] = uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5
            if bool(stor[_193].field_0):
                if bool(stor[_193].field_0) == uint255(uint256(stor[_193].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_193].field_0)):
                    staticcall address(stor1[_193])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if 31 >= uint255(uint256(stor[_193].field_0)) * 0.5:
                    staticcall address(stor1[_193])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                mem[0] = _193
                mem[ceil32(ceil32(arg2.length)) + 225] = uint256(stor[sha3(_193)].field_0)
                idx = ceil32(ceil32(arg2.length)) + 225
                s = 0
                while ceil32(ceil32(arg2.length)) + (uint255(uint256(stor[_193].field_0)) * 0.5) + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_193) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg2.length)) + 97] = ceil32(ceil32(arg2.length)) + 193
                mem[ceil32(ceil32(arg2.length)) + 129] = address(stor1[_193])
                mem[ceil32(ceil32(arg2.length)) + 161] = stor2[_193]
                mem[mem[64] + 4] = address(arg1)
                staticcall address(stor1[_193])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _402 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_402]
            else:
                if bool(stor[_193].field_0) == stor[_193].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_193].field_1 % 128:
                    staticcall address(stor1[_193])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if 31 >= stor[_193].field_1 % 128:
                    staticcall address(stor1[_193])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                mem[0] = _193
                mem[ceil32(ceil32(arg2.length)) + 225] = uint256(stor[sha3(_193)].field_0)
                idx = ceil32(ceil32(arg2.length)) + 225
                s = 0
                while ceil32(ceil32(arg2.length)) + stor[_193].field_1 % 128 + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_193) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg2.length)) + 97] = ceil32(ceil32(arg2.length)) + 193
                mem[ceil32(ceil32(arg2.length)) + 129] = address(stor1[_193])
                mem[ceil32(ceil32(arg2.length)) + 161] = stor2[_193]
                mem[mem[64] + 4] = address(arg1)
                staticcall address(stor1[_193])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _403 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_403]
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
            mem[64] = ceil32(ceil32(arg2.length)) + ceil32(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128) + 225
            mem[ceil32(ceil32(arg2.length)) + 193] = stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128
            if bool(stor[_193].field_0):
                if bool(stor[_193].field_0) == uint255(uint256(stor[_193].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_193].field_0)):
                    staticcall address(stor1[_193])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if 31 >= uint255(uint256(stor[_193].field_0)) * 0.5:
                    staticcall address(stor1[_193])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                mem[0] = _193
                mem[ceil32(ceil32(arg2.length)) + 225] = uint256(stor[sha3(_193)].field_0)
                idx = ceil32(ceil32(arg2.length)) + 225
                s = 0
                while ceil32(ceil32(arg2.length)) + (uint255(uint256(stor[_193].field_0)) * 0.5) + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_193) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg2.length)) + 97] = ceil32(ceil32(arg2.length)) + 193
                mem[ceil32(ceil32(arg2.length)) + 129] = address(stor1[_193])
                mem[ceil32(ceil32(arg2.length)) + 161] = stor2[_193]
                mem[mem[64] + 4] = address(arg1)
                staticcall address(stor1[_193])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _404 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_404]
            else:
                if bool(stor[_193].field_0) == stor[_193].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_193].field_1 % 128:
                    staticcall address(stor1[_193])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if 31 >= stor[_193].field_1 % 128:
                    staticcall address(stor1[_193])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                mem[0] = _193
                mem[ceil32(ceil32(arg2.length)) + 225] = uint256(stor[sha3(_193)].field_0)
                idx = ceil32(ceil32(arg2.length)) + 225
                s = 0
                while ceil32(ceil32(arg2.length)) + stor[_193].field_1 % 128 + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_193) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg2.length)) + 97] = ceil32(ceil32(arg2.length)) + 193
                mem[ceil32(ceil32(arg2.length)) + 129] = address(stor1[_193])
                mem[ceil32(ceil32(arg2.length)) + 161] = stor2[_193]
                mem[mem[64] + 4] = address(arg1)
                staticcall address(stor1[_193])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _405 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_405]
    else:
        _196 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
            mem[64] = ceil32(ceil32(arg2.length)) + ceil32(uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5) + 225
            mem[ceil32(ceil32(arg2.length)) + 193] = uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5
            if bool(stor[_196].field_0):
                if bool(stor[_196].field_0) == uint255(uint256(stor[_196].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_196].field_0)):
                    staticcall address(stor1[_196])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if 31 >= uint255(uint256(stor[_196].field_0)) * 0.5:
                    staticcall address(stor1[_196])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                mem[0] = _196
                mem[ceil32(ceil32(arg2.length)) + 225] = uint256(stor[sha3(_196)].field_0)
                idx = ceil32(ceil32(arg2.length)) + 225
                s = 0
                while ceil32(ceil32(arg2.length)) + (uint255(uint256(stor[_196].field_0)) * 0.5) + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_196) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg2.length)) + 97] = ceil32(ceil32(arg2.length)) + 193
                mem[ceil32(ceil32(arg2.length)) + 129] = address(stor1[_196])
                mem[ceil32(ceil32(arg2.length)) + 161] = stor2[_196]
                mem[mem[64] + 4] = address(arg1)
                staticcall address(stor1[_196])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _406 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_406]
            else:
                if bool(stor[_196].field_0) == stor[_196].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_196].field_1 % 128:
                    staticcall address(stor1[_196])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if 31 >= stor[_196].field_1 % 128:
                    staticcall address(stor1[_196])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                mem[0] = _196
                mem[ceil32(ceil32(arg2.length)) + 225] = uint256(stor[sha3(_196)].field_0)
                idx = ceil32(ceil32(arg2.length)) + 225
                s = 0
                while ceil32(ceil32(arg2.length)) + stor[_196].field_1 % 128 + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_196) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg2.length)) + 97] = ceil32(ceil32(arg2.length)) + 193
                mem[ceil32(ceil32(arg2.length)) + 129] = address(stor1[_196])
                mem[ceil32(ceil32(arg2.length)) + 161] = stor2[_196]
                mem[mem[64] + 4] = address(arg1)
                staticcall address(stor1[_196])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _407 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_407]
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
            mem[64] = ceil32(ceil32(arg2.length)) + ceil32(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128) + 225
            mem[ceil32(ceil32(arg2.length)) + 193] = stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128
            if bool(stor[_196].field_0):
                if bool(stor[_196].field_0) == uint255(uint256(stor[_196].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_196].field_0)):
                    staticcall address(stor1[_196])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if 31 >= uint255(uint256(stor[_196].field_0)) * 0.5:
                    staticcall address(stor1[_196])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                mem[0] = _196
                mem[ceil32(ceil32(arg2.length)) + 225] = uint256(stor[sha3(_196)].field_0)
                idx = ceil32(ceil32(arg2.length)) + 225
                s = 0
                while ceil32(ceil32(arg2.length)) + (uint255(uint256(stor[_196].field_0)) * 0.5) + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_196) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg2.length)) + 97] = ceil32(ceil32(arg2.length)) + 193
                mem[ceil32(ceil32(arg2.length)) + 129] = address(stor1[_196])
                mem[ceil32(ceil32(arg2.length)) + 161] = stor2[_196]
                mem[mem[64] + 4] = address(arg1)
                staticcall address(stor1[_196])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _408 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_408]
            else:
                if bool(stor[_196].field_0) == stor[_196].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_196].field_1 % 128:
                    staticcall address(stor1[_196])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if 31 >= stor[_196].field_1 % 128:
                    staticcall address(stor1[_196])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                mem[0] = _196
                mem[ceil32(ceil32(arg2.length)) + 225] = uint256(stor[sha3(_196)].field_0)
                idx = ceil32(ceil32(arg2.length)) + 225
                s = 0
                while ceil32(ceil32(arg2.length)) + stor[_196].field_1 % 128 + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_196) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg2.length)) + 97] = ceil32(ceil32(arg2.length)) + 193
                mem[ceil32(ceil32(arg2.length)) + 129] = address(stor1[_196])
                mem[ceil32(ceil32(arg2.length)) + 161] = stor2[_196]
                mem[mem[64] + 4] = address(arg1)
                staticcall address(stor1[_196])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _409 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_409]
    return memory
      from mem[64]
       len 32
}

function getTotalCreatedNodes() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    s = 0
    while idx < stor26.length:
        mem[0] = 26
        _567 = mem[64]
        if bool(stor26[idx].field_0):
            if bool(stor26[idx].field_0) == uint255(uint256(stor26[idx].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor26[idx].field_0):
                mem[mem[64]] = Mask(248, 8, uint256(stor26[idx].field_0))
                mem[mem[64] + (uint255(uint256(stor26[idx].field_0)) * 0.5)] = 25
                _572 = sha3(Mask(248, 8, uint256(stor26[idx].field_0)), mem[mem[64] + 32 len uint255(uint256(stor26[idx].field_0)) * 0.5])
                _573 = mem[64]
                mem[64] = mem[64] + 96
                if bool(stor[_572].field_0):
                    if bool(stor[_572].field_0) == uint255(uint256(stor[_572].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _586 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor[_572].field_0)) * 0.5) + 32
                    mem[_586] = uint255(uint256(stor[_572].field_0)) * 0.5
                    if bool(stor[_572].field_0):
                        if bool(stor[_572].field_0) == uint255(uint256(stor[_572].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, uint256(stor[_572].field_0)):
                            mem[_573] = _586
                            mem[_573 + 32] = address(stor1[_572])
                            mem[_573 + 64] = stor2[_572]
                            staticcall address(stor1[_572]).totalNodesCreated() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _604 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if s > !mem[_604]:
                                revert with 0, 17
                            if s + mem[_604] < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + mem[_604]
                            continue 
                        if 31 >= uint255(uint256(stor[_572].field_0)) * 0.5:
                            mem[_586 + 32] = 256 * Mask(248, 0, stor[_572].field_8)
                            mem[_573] = _586
                            mem[_573 + 32] = address(stor1[_572])
                            mem[_573 + 64] = stor2[_572]
                            staticcall address(stor1[_572]).totalNodesCreated() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _648 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if s > !mem[_648]:
                                revert with 0, 17
                            if s + mem[_648] < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + mem[_648]
                            continue 
                        mem[0] = _572
                        mem[_586 + 32] = uint256(stor[sha3(_572)].field_0)
                        t = _586 + 32
                        u = sha3(_572)
                        while _586 + (uint255(uint256(stor[_572].field_0)) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_573] = _586
                        mem[_573 + 32] = address(stor1[_572])
                        mem[_573 + 64] = stor2[_572]
                        staticcall address(stor1[_572]).totalNodesCreated() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1177 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_1177]:
                            revert with 0, 17
                        if s + mem[_1177] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_1177]
                        continue 
                    if bool(stor[_572].field_0) == stor[_572].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor[_572].field_1 % 128:
                        mem[_573] = _586
                        mem[_573 + 32] = address(stor1[_572])
                        mem[_573 + 64] = stor2[_572]
                        staticcall address(stor1[_572]).totalNodesCreated() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _621 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_621]:
                            revert with 0, 17
                        if s + mem[_621] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_621]
                        continue 
                    if 31 >= stor[_572].field_1 % 128:
                        mem[_586 + 32] = 256 * Mask(248, 0, stor[_572].field_8)
                        mem[_573] = _586
                        mem[_573 + 32] = address(stor1[_572])
                        mem[_573 + 64] = stor2[_572]
                        staticcall address(stor1[_572]).totalNodesCreated() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _692 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_692]:
                            revert with 0, 17
                        if s + mem[_692] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_692]
                        continue 
                    mem[0] = _572
                    mem[_586 + 32] = uint256(stor[sha3(_572)].field_0)
                    t = _586 + 32
                    u = sha3(_572)
                    while _586 + stor[_572].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_573] = _586
                    mem[_573 + 32] = address(stor1[_572])
                    mem[_573 + 64] = stor2[_572]
                    staticcall address(stor1[_572]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1178 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1178]:
                        revert with 0, 17
                    if s + mem[_1178] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1178]
                    continue 
                if bool(stor[_572].field_0) == stor[_572].field_1 % 128 < 32:
                    revert with 0, 34
                _590 = mem[64]
                mem[64] = mem[64] + ceil32(stor[_572].field_1 % 128) + 32
                mem[_590] = stor[_572].field_1 % 128
                if bool(stor[_572].field_0):
                    if bool(stor[_572].field_0) == uint255(uint256(stor[_572].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor[_572].field_0)):
                        mem[_573] = _590
                        mem[_573 + 32] = address(stor1[_572])
                        mem[_573 + 64] = stor2[_572]
                        staticcall address(stor1[_572]).totalNodesCreated() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _623 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_623]:
                            revert with 0, 17
                        if s + mem[_623] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_623]
                        continue 
                    if 31 >= uint255(uint256(stor[_572].field_0)) * 0.5:
                        mem[_590 + 32] = 256 * Mask(248, 0, stor[_572].field_8)
                        mem[_573] = _590
                        mem[_573 + 32] = address(stor1[_572])
                        mem[_573 + 64] = stor2[_572]
                        staticcall address(stor1[_572]).totalNodesCreated() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _694 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_694]:
                            revert with 0, 17
                        if s + mem[_694] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_694]
                        continue 
                    mem[0] = _572
                    mem[_590 + 32] = uint256(stor[sha3(_572)].field_0)
                    t = _590 + 32
                    u = sha3(_572)
                    while _590 + (uint255(uint256(stor[_572].field_0)) * 0.5) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_573] = _590
                    mem[_573 + 32] = address(stor1[_572])
                    mem[_573 + 64] = stor2[_572]
                    staticcall address(stor1[_572]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1179 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1179]:
                        revert with 0, 17
                    if s + mem[_1179] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1179]
                    continue 
                if bool(stor[_572].field_0) == stor[_572].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_572].field_1 % 128:
                    mem[_573] = _590
                    mem[_573 + 32] = address(stor1[_572])
                    mem[_573 + 64] = stor2[_572]
                    staticcall address(stor1[_572]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _655 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_655]:
                        revert with 0, 17
                    if s + mem[_655] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_655]
                    continue 
                if 31 >= stor[_572].field_1 % 128:
                    mem[_590 + 32] = 256 * Mask(248, 0, stor[_572].field_8)
                    mem[_573] = _590
                    mem[_573 + 32] = address(stor1[_572])
                    mem[_573 + 64] = stor2[_572]
                    staticcall address(stor1[_572]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _748 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_748]:
                        revert with 0, 17
                    if s + mem[_748] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_748]
                    continue 
                mem[0] = _572
                mem[_590 + 32] = uint256(stor[sha3(_572)].field_0)
                t = _590 + 32
                u = sha3(_572)
                while _590 + stor[_572].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_573] = _590
                mem[_573 + 32] = address(stor1[_572])
                mem[_573 + 64] = stor2[_572]
                staticcall address(stor1[_572]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1180 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1180]:
                    revert with 0, 17
                if s + mem[_1180] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1180]
                continue 
            if bool(stor26[idx].field_0) != 1:
                mem[0] = 25
                _575 = sha3(mem[mem[64] len -mem[64] + 32])
                _576 = mem[64]
                mem[64] = mem[64] + 96
                if bool(stor[_575].field_0):
                    if bool(stor[_575].field_0) == uint255(uint256(stor[_575].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _591 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor[_575].field_0)) * 0.5) + 32
                    mem[_591] = uint255(uint256(stor[_575].field_0)) * 0.5
                    if bool(stor[_575].field_0):
                        if bool(stor[_575].field_0) == uint255(uint256(stor[_575].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, uint256(stor[_575].field_0)):
                            mem[_576] = _591
                            mem[_576 + 32] = address(stor1[_575])
                            mem[_576 + 64] = stor2[_575]
                            staticcall address(stor1[_575]).totalNodesCreated() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _628 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if s > !mem[_628]:
                                revert with 0, 17
                            if s + mem[_628] < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + mem[_628]
                            continue 
                        if 31 >= uint255(uint256(stor[_575].field_0)) * 0.5:
                            mem[_591 + 32] = 256 * Mask(248, 0, stor[_575].field_8)
                            mem[_576] = _591
                            mem[_576 + 32] = address(stor1[_575])
                            mem[_576 + 64] = stor2[_575]
                            staticcall address(stor1[_575]).totalNodesCreated() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _707 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if s > !mem[_707]:
                                revert with 0, 17
                            if s + mem[_707] < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + mem[_707]
                            continue 
                        mem[0] = _575
                        mem[_591 + 32] = uint256(stor[sha3(_575)].field_0)
                        t = _591 + 32
                        u = sha3(_575)
                        while _591 + (uint255(uint256(stor[_575].field_0)) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_576] = _591
                        mem[_576 + 32] = address(stor1[_575])
                        mem[_576 + 64] = stor2[_575]
                        staticcall address(stor1[_575]).totalNodesCreated() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1181 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_1181]:
                            revert with 0, 17
                        if s + mem[_1181] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_1181]
                        continue 
                    if bool(stor[_575].field_0) == stor[_575].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor[_575].field_1 % 128:
                        mem[_576] = _591
                        mem[_576 + 32] = address(stor1[_575])
                        mem[_576 + 64] = stor2[_575]
                        staticcall address(stor1[_575]).totalNodesCreated() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _663 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_663]:
                            revert with 0, 17
                        if s + mem[_663] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_663]
                        continue 
                    if 31 >= stor[_575].field_1 % 128:
                        mem[_591 + 32] = 256 * Mask(248, 0, stor[_575].field_8)
                        mem[_576] = _591
                        mem[_576 + 32] = address(stor1[_575])
                        mem[_576 + 64] = stor2[_575]
                        staticcall address(stor1[_575]).totalNodesCreated() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _763 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_763]:
                            revert with 0, 17
                        if s + mem[_763] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_763]
                        continue 
                    mem[0] = _575
                    mem[_591 + 32] = uint256(stor[sha3(_575)].field_0)
                    t = _591 + 32
                    u = sha3(_575)
                    while _591 + stor[_575].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_576] = _591
                    mem[_576 + 32] = address(stor1[_575])
                    mem[_576 + 64] = stor2[_575]
                    staticcall address(stor1[_575]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1182 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1182]:
                        revert with 0, 17
                    if s + mem[_1182] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1182]
                    continue 
                if bool(stor[_575].field_0) == stor[_575].field_1 % 128 < 32:
                    revert with 0, 34
                _593 = mem[64]
                mem[64] = mem[64] + ceil32(stor[_575].field_1 % 128) + 32
                mem[_593] = stor[_575].field_1 % 128
                if bool(stor[_575].field_0):
                    if bool(stor[_575].field_0) == uint255(uint256(stor[_575].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor[_575].field_0)):
                        mem[_576] = _593
                        mem[_576 + 32] = address(stor1[_575])
                        mem[_576 + 64] = stor2[_575]
                        staticcall address(stor1[_575]).totalNodesCreated() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _665 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_665]:
                            revert with 0, 17
                        if s + mem[_665] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_665]
                        continue 
                    if 31 >= uint255(uint256(stor[_575].field_0)) * 0.5:
                        mem[_593 + 32] = 256 * Mask(248, 0, stor[_575].field_8)
                        mem[_576] = _593
                        mem[_576 + 32] = address(stor1[_575])
                        mem[_576 + 64] = stor2[_575]
                        staticcall address(stor1[_575]).totalNodesCreated() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _765 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_765]:
                            revert with 0, 17
                        if s + mem[_765] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_765]
                        continue 
                    mem[0] = _575
                    mem[_593 + 32] = uint256(stor[sha3(_575)].field_0)
                    t = _593 + 32
                    u = sha3(_575)
                    while _593 + (uint255(uint256(stor[_575].field_0)) * 0.5) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_576] = _593
                    mem[_576 + 32] = address(stor1[_575])
                    mem[_576 + 64] = stor2[_575]
                    staticcall address(stor1[_575]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1183 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1183]:
                        revert with 0, 17
                    if s + mem[_1183] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1183]
                    continue 
                if bool(stor[_575].field_0) == stor[_575].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_575].field_1 % 128:
                    mem[_576] = _593
                    mem[_576 + 32] = address(stor1[_575])
                    mem[_576 + 64] = stor2[_575]
                    staticcall address(stor1[_575]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _714 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_714]:
                        revert with 0, 17
                    if s + mem[_714] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_714]
                    continue 
                if 31 >= stor[_575].field_1 % 128:
                    mem[_593 + 32] = 256 * Mask(248, 0, stor[_575].field_8)
                    mem[_576] = _593
                    mem[_576 + 32] = address(stor1[_575])
                    mem[_576 + 64] = stor2[_575]
                    staticcall address(stor1[_575]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _823 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_823]:
                        revert with 0, 17
                    if s + mem[_823] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_823]
                    continue 
                mem[0] = _575
                mem[_593 + 32] = uint256(stor[sha3(_575)].field_0)
                t = _593 + 32
                u = sha3(_575)
                while _593 + stor[_575].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_576] = _593
                mem[_576 + 32] = address(stor1[_575])
                mem[_576 + 64] = stor2[_575]
                staticcall address(stor1[_575]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1184 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1184]:
                    revert with 0, 17
                if s + mem[_1184] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1184]
                continue 
            mem[0] = sha3(26) + idx
            t = 0
            u = sha3(mem[0])
            while t < uint255(uint256(stor26[idx].field_0)) * 0.5:
                mem[t + _567] = uint256(stor[u].field_0)
                t = t + 32
                u = u + 1
                continue 
            mem[_567 + (uint255(uint256(stor26[idx].field_0)) * 0.5)] = 25
            _1194 = sha3(mem[mem[64] len _567 + (uint255(uint256(stor26[idx].field_0)) * 0.5) + -mem[64] + 32])
            _1195 = mem[64]
            mem[64] = mem[64] + 96
            if bool(stor[_1194].field_0):
                if bool(stor[_1194].field_0) == uint255(uint256(stor[_1194].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _1215 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor[_1194].field_0)) * 0.5) + 32
                mem[_1215] = uint255(uint256(stor[_1194].field_0)) * 0.5
                if bool(stor[_1194].field_0):
                    if bool(stor[_1194].field_0) == uint255(uint256(stor[_1194].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor[_1194].field_0)):
                        mem[_1195] = _1215
                        mem[_1195 + 32] = address(stor1[_1194])
                        mem[_1195 + 64] = stor2[_1194]
                        staticcall address(stor1[_1194]).totalNodesCreated() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1257 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_1257]:
                            revert with 0, 17
                        if s + mem[_1257] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_1257]
                        continue 
                    if 31 >= uint255(uint256(stor[_1194].field_0)) * 0.5:
                        mem[_1215 + 32] = 256 * Mask(248, 0, stor[_1194].field_8)
                        mem[_1195] = _1215
                        mem[_1195 + 32] = address(stor1[_1194])
                        mem[_1195 + 64] = stor2[_1194]
                        staticcall address(stor1[_1194]).totalNodesCreated() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1294 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_1294]:
                            revert with 0, 17
                        if s + mem[_1294] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_1294]
                        continue 
                    mem[0] = _1194
                    mem[_1215 + 32] = uint256(stor[sha3(_1194)].field_0)
                    t = _1215 + 32
                    u = sha3(_1194)
                    while _1215 + (uint255(uint256(stor[_1194].field_0)) * 0.5) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_1195] = _1215
                    mem[_1195 + 32] = address(stor1[_1194])
                    mem[_1195 + 64] = stor2[_1194]
                    staticcall address(stor1[_1194]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1451 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1451]:
                        revert with 0, 17
                    if s + mem[_1451] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1451]
                    continue 
                if bool(stor[_1194].field_0) == stor[_1194].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_1194].field_1 % 128:
                    mem[_1195] = _1215
                    mem[_1195 + 32] = address(stor1[_1194])
                    mem[_1195 + 64] = stor2[_1194]
                    staticcall address(stor1[_1194]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1276 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1276]:
                        revert with 0, 17
                    if s + mem[_1276] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1276]
                    continue 
                if 31 >= stor[_1194].field_1 % 128:
                    mem[_1215 + 32] = 256 * Mask(248, 0, stor[_1194].field_8)
                    mem[_1195] = _1215
                    mem[_1195 + 32] = address(stor1[_1194])
                    mem[_1195 + 64] = stor2[_1194]
                    staticcall address(stor1[_1194]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1317]:
                        revert with 0, 17
                    if s + mem[_1317] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1317]
                    continue 
                mem[0] = _1194
                mem[_1215 + 32] = uint256(stor[sha3(_1194)].field_0)
                t = _1215 + 32
                u = sha3(_1194)
                while _1215 + stor[_1194].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1195] = _1215
                mem[_1195 + 32] = address(stor1[_1194])
                mem[_1195 + 64] = stor2[_1194]
                staticcall address(stor1[_1194]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1452 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1452]:
                    revert with 0, 17
                if s + mem[_1452] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1452]
                continue 
            if bool(stor[_1194].field_0) == stor[_1194].field_1 % 128 < 32:
                revert with 0, 34
            _1217 = mem[64]
            mem[64] = mem[64] + ceil32(stor[_1194].field_1 % 128) + 32
            mem[_1217] = stor[_1194].field_1 % 128
            if bool(stor[_1194].field_0):
                if bool(stor[_1194].field_0) == uint255(uint256(stor[_1194].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_1194].field_0)):
                    mem[_1195] = _1217
                    mem[_1195 + 32] = address(stor1[_1194])
                    mem[_1195 + 64] = stor2[_1194]
                    staticcall address(stor1[_1194]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1278 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1278]:
                        revert with 0, 17
                    if s + mem[_1278] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1278]
                    continue 
                if 31 >= uint255(uint256(stor[_1194].field_0)) * 0.5:
                    mem[_1217 + 32] = 256 * Mask(248, 0, stor[_1194].field_8)
                    mem[_1195] = _1217
                    mem[_1195 + 32] = address(stor1[_1194])
                    mem[_1195 + 64] = stor2[_1194]
                    staticcall address(stor1[_1194]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1319 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1319]:
                        revert with 0, 17
                    if s + mem[_1319] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1319]
                    continue 
                mem[0] = _1194
                mem[_1217 + 32] = uint256(stor[sha3(_1194)].field_0)
                t = _1217 + 32
                u = sha3(_1194)
                while _1217 + (uint255(uint256(stor[_1194].field_0)) * 0.5) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1195] = _1217
                mem[_1195 + 32] = address(stor1[_1194])
                mem[_1195 + 64] = stor2[_1194]
                staticcall address(stor1[_1194]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1453 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1453]:
                    revert with 0, 17
                if s + mem[_1453] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1453]
                continue 
            if bool(stor[_1194].field_0) == stor[_1194].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[_1194].field_1 % 128:
                mem[_1195] = _1217
                mem[_1195 + 32] = address(stor1[_1194])
                mem[_1195 + 64] = stor2[_1194]
                staticcall address(stor1[_1194]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1301 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1301]:
                    revert with 0, 17
                if s + mem[_1301] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1301]
                continue 
            if 31 >= stor[_1194].field_1 % 128:
                mem[_1217 + 32] = 256 * Mask(248, 0, stor[_1194].field_8)
                mem[_1195] = _1217
                mem[_1195 + 32] = address(stor1[_1194])
                mem[_1195 + 64] = stor2[_1194]
                staticcall address(stor1[_1194]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1342 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1342]:
                    revert with 0, 17
                if s + mem[_1342] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1342]
                continue 
            mem[0] = _1194
            mem[_1217 + 32] = uint256(stor[sha3(_1194)].field_0)
            t = _1217 + 32
            u = sha3(_1194)
            while _1217 + stor[_1194].field_1 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_1195] = _1217
            mem[_1195 + 32] = address(stor1[_1194])
            mem[_1195 + 64] = stor2[_1194]
            staticcall address(stor1[_1194]).totalNodesCreated() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1454 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1454]:
                revert with 0, 17
            if s + mem[_1454] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1454]
            continue 
        if bool(stor26[idx].field_0) == stor26[idx].field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor26[idx].field_0):
            mem[mem[64]] = Mask(248, 8, uint256(stor26[idx].field_0))
            mem[mem[64] + stor26[idx].field_1 % 128] = 25
            _578 = sha3(Mask(248, 8, uint256(stor26[idx].field_0)), mem[mem[64] + 32 len stor26[idx].field_1 % 128])
            _579 = mem[64]
            mem[64] = mem[64] + 96
            if bool(stor[_578].field_0):
                if bool(stor[_578].field_0) == uint255(uint256(stor[_578].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _592 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor[_578].field_0)) * 0.5) + 32
                mem[_592] = uint255(uint256(stor[_578].field_0)) * 0.5
                if bool(stor[_578].field_0):
                    if bool(stor[_578].field_0) == uint255(uint256(stor[_578].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor[_578].field_0)):
                        mem[_579] = _592
                        mem[_579 + 32] = address(stor1[_578])
                        mem[_579 + 64] = stor2[_578]
                        staticcall address(stor1[_578]).totalNodesCreated() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _636 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_636]:
                            revert with 0, 17
                        if s + mem[_636] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_636]
                        continue 
                    if 31 >= uint255(uint256(stor[_578].field_0)) * 0.5:
                        mem[_592 + 32] = 256 * Mask(248, 0, stor[_578].field_8)
                        mem[_579] = _592
                        mem[_579 + 32] = address(stor1[_578])
                        mem[_579 + 64] = stor2[_578]
                        staticcall address(stor1[_578]).totalNodesCreated() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _717 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_717]:
                            revert with 0, 17
                        if s + mem[_717] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_717]
                        continue 
                    mem[0] = _578
                    mem[_592 + 32] = uint256(stor[sha3(_578)].field_0)
                    t = _592 + 32
                    u = sha3(_578)
                    while _592 + (uint255(uint256(stor[_578].field_0)) * 0.5) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_579] = _592
                    mem[_579 + 32] = address(stor1[_578])
                    mem[_579 + 64] = stor2[_578]
                    staticcall address(stor1[_578]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1185 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1185]:
                        revert with 0, 17
                    if s + mem[_1185] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1185]
                    continue 
                if bool(stor[_578].field_0) == stor[_578].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_578].field_1 % 128:
                    mem[_579] = _592
                    mem[_579 + 32] = address(stor1[_578])
                    mem[_579 + 64] = stor2[_578]
                    staticcall address(stor1[_578]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _673 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_673]:
                        revert with 0, 17
                    if s + mem[_673] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_673]
                    continue 
                if 31 >= stor[_578].field_1 % 128:
                    mem[_592 + 32] = 256 * Mask(248, 0, stor[_578].field_8)
                    mem[_579] = _592
                    mem[_579 + 32] = address(stor1[_578])
                    mem[_579 + 64] = stor2[_578]
                    staticcall address(stor1[_578]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _773 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_773]:
                        revert with 0, 17
                    if s + mem[_773] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_773]
                    continue 
                mem[0] = _578
                mem[_592 + 32] = uint256(stor[sha3(_578)].field_0)
                t = _592 + 32
                u = sha3(_578)
                while _592 + stor[_578].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_579] = _592
                mem[_579 + 32] = address(stor1[_578])
                mem[_579 + 64] = stor2[_578]
                staticcall address(stor1[_578]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1186 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1186]:
                    revert with 0, 17
                if s + mem[_1186] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1186]
                continue 
            if bool(stor[_578].field_0) == stor[_578].field_1 % 128 < 32:
                revert with 0, 34
            _594 = mem[64]
            mem[64] = mem[64] + ceil32(stor[_578].field_1 % 128) + 32
            mem[_594] = stor[_578].field_1 % 128
            if bool(stor[_578].field_0):
                if bool(stor[_578].field_0) == uint255(uint256(stor[_578].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_578].field_0)):
                    mem[_579] = _594
                    mem[_579 + 32] = address(stor1[_578])
                    mem[_579 + 64] = stor2[_578]
                    staticcall address(stor1[_578]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _675 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_675]:
                        revert with 0, 17
                    if s + mem[_675] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_675]
                    continue 
                if 31 >= uint255(uint256(stor[_578].field_0)) * 0.5:
                    mem[_594 + 32] = 256 * Mask(248, 0, stor[_578].field_8)
                    mem[_579] = _594
                    mem[_579 + 32] = address(stor1[_578])
                    mem[_579 + 64] = stor2[_578]
                    staticcall address(stor1[_578]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _775 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_775]:
                        revert with 0, 17
                    if s + mem[_775] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_775]
                    continue 
                mem[0] = _578
                mem[_594 + 32] = uint256(stor[sha3(_578)].field_0)
                t = _594 + 32
                u = sha3(_578)
                while _594 + (uint255(uint256(stor[_578].field_0)) * 0.5) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_579] = _594
                mem[_579 + 32] = address(stor1[_578])
                mem[_579 + 64] = stor2[_578]
                staticcall address(stor1[_578]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1187 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1187]:
                    revert with 0, 17
                if s + mem[_1187] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1187]
                continue 
            if bool(stor[_578].field_0) == stor[_578].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[_578].field_1 % 128:
                mem[_579] = _594
                mem[_579 + 32] = address(stor1[_578])
                mem[_579 + 64] = stor2[_578]
                staticcall address(stor1[_578]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _724 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_724]:
                    revert with 0, 17
                if s + mem[_724] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_724]
                continue 
            if 31 >= stor[_578].field_1 % 128:
                mem[_594 + 32] = 256 * Mask(248, 0, stor[_578].field_8)
                mem[_579] = _594
                mem[_579 + 32] = address(stor1[_578])
                mem[_579 + 64] = stor2[_578]
                staticcall address(stor1[_578]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _833 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_833]:
                    revert with 0, 17
                if s + mem[_833] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_833]
                continue 
            mem[0] = _578
            mem[_594 + 32] = uint256(stor[sha3(_578)].field_0)
            t = _594 + 32
            u = sha3(_578)
            while _594 + stor[_578].field_1 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_579] = _594
            mem[_579 + 32] = address(stor1[_578])
            mem[_579 + 64] = stor2[_578]
            staticcall address(stor1[_578]).totalNodesCreated() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1188 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1188]:
                revert with 0, 17
            if s + mem[_1188] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1188]
            continue 
        if bool(stor26[idx].field_0) != 1:
            mem[0] = 25
            _581 = sha3(mem[mem[64] len -mem[64] + 32])
            _582 = mem[64]
            mem[64] = mem[64] + 96
            if bool(stor[_581].field_0):
                if bool(stor[_581].field_0) == uint255(uint256(stor[_581].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _595 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor[_581].field_0)) * 0.5) + 32
                mem[_595] = uint255(uint256(stor[_581].field_0)) * 0.5
                if bool(stor[_581].field_0):
                    if bool(stor[_581].field_0) == uint255(uint256(stor[_581].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor[_581].field_0)):
                        mem[_582] = _595
                        mem[_582 + 32] = address(stor1[_581])
                        mem[_582 + 64] = stor2[_581]
                        staticcall address(stor1[_581]).totalNodesCreated() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _680 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_680]:
                            revert with 0, 17
                        if s + mem[_680] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_680]
                        continue 
                    if 31 >= uint255(uint256(stor[_581].field_0)) * 0.5:
                        mem[_595 + 32] = 256 * Mask(248, 0, stor[_581].field_8)
                        mem[_582] = _595
                        mem[_582 + 32] = address(stor1[_581])
                        mem[_582 + 64] = stor2[_581]
                        staticcall address(stor1[_581]).totalNodesCreated() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _788 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_788]:
                            revert with 0, 17
                        if s + mem[_788] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_788]
                        continue 
                    mem[0] = _581
                    mem[_595 + 32] = uint256(stor[sha3(_581)].field_0)
                    t = _595 + 32
                    u = sha3(_581)
                    while _595 + (uint255(uint256(stor[_581].field_0)) * 0.5) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_582] = _595
                    mem[_582 + 32] = address(stor1[_581])
                    mem[_582 + 64] = stor2[_581]
                    staticcall address(stor1[_581]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1189 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1189]:
                        revert with 0, 17
                    if s + mem[_1189] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1189]
                    continue 
                if bool(stor[_581].field_0) == stor[_581].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_581].field_1 % 128:
                    mem[_582] = _595
                    mem[_582 + 32] = address(stor1[_581])
                    mem[_582 + 64] = stor2[_581]
                    staticcall address(stor1[_581]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _732 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_732]:
                        revert with 0, 17
                    if s + mem[_732] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_732]
                    continue 
                if 31 >= stor[_581].field_1 % 128:
                    mem[_595 + 32] = 256 * Mask(248, 0, stor[_581].field_8)
                    mem[_582] = _595
                    mem[_582 + 32] = address(stor1[_581])
                    mem[_582 + 64] = stor2[_581]
                    staticcall address(stor1[_581]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _848 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_848]:
                        revert with 0, 17
                    if s + mem[_848] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_848]
                    continue 
                mem[0] = _581
                mem[_595 + 32] = uint256(stor[sha3(_581)].field_0)
                t = _595 + 32
                u = sha3(_581)
                while _595 + stor[_581].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_582] = _595
                mem[_582 + 32] = address(stor1[_581])
                mem[_582 + 64] = stor2[_581]
                staticcall address(stor1[_581]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1190 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1190]:
                    revert with 0, 17
                if s + mem[_1190] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1190]
                continue 
            if bool(stor[_581].field_0) == stor[_581].field_1 % 128 < 32:
                revert with 0, 34
            _597 = mem[64]
            mem[64] = mem[64] + ceil32(stor[_581].field_1 % 128) + 32
            mem[_597] = stor[_581].field_1 % 128
            if bool(stor[_581].field_0):
                if bool(stor[_581].field_0) == uint255(uint256(stor[_581].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_581].field_0)):
                    mem[_582] = _597
                    mem[_582 + 32] = address(stor1[_581])
                    mem[_582 + 64] = stor2[_581]
                    staticcall address(stor1[_581]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _734 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_734]:
                        revert with 0, 17
                    if s + mem[_734] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_734]
                    continue 
                if 31 >= uint255(uint256(stor[_581].field_0)) * 0.5:
                    mem[_597 + 32] = 256 * Mask(248, 0, stor[_581].field_8)
                    mem[_582] = _597
                    mem[_582 + 32] = address(stor1[_581])
                    mem[_582 + 64] = stor2[_581]
                    staticcall address(stor1[_581]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _850 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_850]:
                        revert with 0, 17
                    if s + mem[_850] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_850]
                    continue 
                mem[0] = _581
                mem[_597 + 32] = uint256(stor[sha3(_581)].field_0)
                t = _597 + 32
                u = sha3(_581)
                while _597 + (uint255(uint256(stor[_581].field_0)) * 0.5) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_582] = _597
                mem[_582 + 32] = address(stor1[_581])
                mem[_582 + 64] = stor2[_581]
                staticcall address(stor1[_581]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1191 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1191]:
                    revert with 0, 17
                if s + mem[_1191] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1191]
                continue 
            if bool(stor[_581].field_0) == stor[_581].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[_581].field_1 % 128:
                mem[_582] = _597
                mem[_582 + 32] = address(stor1[_581])
                mem[_582 + 64] = stor2[_581]
                staticcall address(stor1[_581]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _795 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_795]:
                    revert with 0, 17
                if s + mem[_795] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_795]
                continue 
            if 31 >= stor[_581].field_1 % 128:
                mem[_597 + 32] = 256 * Mask(248, 0, stor[_581].field_8)
                mem[_582] = _597
                mem[_582 + 32] = address(stor1[_581])
                mem[_582 + 64] = stor2[_581]
                staticcall address(stor1[_581]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _900 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_900]:
                    revert with 0, 17
                if s + mem[_900] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_900]
                continue 
            mem[0] = _581
            mem[_597 + 32] = uint256(stor[sha3(_581)].field_0)
            t = _597 + 32
            u = sha3(_581)
            while _597 + stor[_581].field_1 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_582] = _597
            mem[_582 + 32] = address(stor1[_581])
            mem[_582 + 64] = stor2[_581]
            staticcall address(stor1[_581]).totalNodesCreated() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1192 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1192]:
                revert with 0, 17
            if s + mem[_1192] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1192]
            continue 
        mem[0] = sha3(26) + idx
        t = 0
        u = sha3(mem[0])
        while t < stor26[idx].field_1 % 128:
            mem[t + _567] = uint256(stor[u].field_0)
            t = t + 32
            u = u + 1
            continue 
        mem[_567 + stor26[idx].field_1 % 128] = 25
        _1197 = sha3(mem[mem[64] len _567 + stor26[idx].field_1 % 128 + -mem[64] + 32])
        _1198 = mem[64]
        mem[64] = mem[64] + 96
        if bool(stor[_1197].field_0):
            if bool(stor[_1197].field_0) == uint255(uint256(stor[_1197].field_0)) * 0.5 < 32:
                revert with 0, 34
            _1216 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(stor[_1197].field_0)) * 0.5) + 32
            mem[_1216] = uint255(uint256(stor[_1197].field_0)) * 0.5
            if bool(stor[_1197].field_0):
                if bool(stor[_1197].field_0) == uint255(uint256(stor[_1197].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_1197].field_0)):
                    mem[_1198] = _1216
                    mem[_1198 + 32] = address(stor1[_1197])
                    mem[_1198 + 64] = stor2[_1197]
                    staticcall address(stor1[_1197]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1265 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1265]:
                        revert with 0, 17
                    if s + mem[_1265] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1265]
                    continue 
                if 31 >= uint255(uint256(stor[_1197].field_0)) * 0.5:
                    mem[_1216 + 32] = 256 * Mask(248, 0, stor[_1197].field_8)
                    mem[_1198] = _1216
                    mem[_1198 + 32] = address(stor1[_1197])
                    mem[_1198 + 64] = stor2[_1197]
                    staticcall address(stor1[_1197]).totalNodesCreated() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1304]:
                        revert with 0, 17
                    if s + mem[_1304] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1304]
                    continue 
                mem[0] = _1197
                mem[_1216 + 32] = uint256(stor[sha3(_1197)].field_0)
                t = _1216 + 32
                u = sha3(_1197)
                while _1216 + (uint255(uint256(stor[_1197].field_0)) * 0.5) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1198] = _1216
                mem[_1198 + 32] = address(stor1[_1197])
                mem[_1198 + 64] = stor2[_1197]
                staticcall address(stor1[_1197]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1455 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1455]:
                    revert with 0, 17
                if s + mem[_1455] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1455]
                continue 
            if bool(stor[_1197].field_0) == stor[_1197].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[_1197].field_1 % 128:
                mem[_1198] = _1216
                mem[_1198 + 32] = address(stor1[_1197])
                mem[_1198 + 64] = stor2[_1197]
                staticcall address(stor1[_1197]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1286 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1286]:
                    revert with 0, 17
                if s + mem[_1286] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1286]
                continue 
            if 31 >= stor[_1197].field_1 % 128:
                mem[_1216 + 32] = 256 * Mask(248, 0, stor[_1197].field_8)
                mem[_1198] = _1216
                mem[_1198 + 32] = address(stor1[_1197])
                mem[_1198 + 64] = stor2[_1197]
                staticcall address(stor1[_1197]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1327 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1327]:
                    revert with 0, 17
                if s + mem[_1327] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1327]
                continue 
            mem[0] = _1197
            mem[_1216 + 32] = uint256(stor[sha3(_1197)].field_0)
            t = _1216 + 32
            u = sha3(_1197)
            while _1216 + stor[_1197].field_1 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_1198] = _1216
            mem[_1198 + 32] = address(stor1[_1197])
            mem[_1198 + 64] = stor2[_1197]
            staticcall address(stor1[_1197]).totalNodesCreated() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1456 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1456]:
                revert with 0, 17
            if s + mem[_1456] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1456]
            continue 
        if bool(stor[_1197].field_0) == stor[_1197].field_1 % 128 < 32:
            revert with 0, 34
        _1218 = mem[64]
        mem[64] = mem[64] + ceil32(stor[_1197].field_1 % 128) + 32
        mem[_1218] = stor[_1197].field_1 % 128
        if bool(stor[_1197].field_0):
            if bool(stor[_1197].field_0) == uint255(uint256(stor[_1197].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor[_1197].field_0)):
                mem[_1198] = _1218
                mem[_1198 + 32] = address(stor1[_1197])
                mem[_1198 + 64] = stor2[_1197]
                staticcall address(stor1[_1197]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1288 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1288]:
                    revert with 0, 17
                if s + mem[_1288] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1288]
                continue 
            if 31 >= uint255(uint256(stor[_1197].field_0)) * 0.5:
                mem[_1218 + 32] = 256 * Mask(248, 0, stor[_1197].field_8)
                mem[_1198] = _1218
                mem[_1198 + 32] = address(stor1[_1197])
                mem[_1198 + 64] = stor2[_1197]
                staticcall address(stor1[_1197]).totalNodesCreated() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1329 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1329]:
                    revert with 0, 17
                if s + mem[_1329] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1329]
                continue 
            mem[0] = _1197
            mem[_1218 + 32] = uint256(stor[sha3(_1197)].field_0)
            t = _1218 + 32
            u = sha3(_1197)
            while _1218 + (uint255(uint256(stor[_1197].field_0)) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_1198] = _1218
            mem[_1198 + 32] = address(stor1[_1197])
            mem[_1198 + 64] = stor2[_1197]
            staticcall address(stor1[_1197]).totalNodesCreated() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1457 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1457]:
                revert with 0, 17
            if s + mem[_1457] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1457]
            continue 
        if bool(stor[_1197].field_0) == stor[_1197].field_1 % 128 < 32:
            revert with 0, 34
        if not stor[_1197].field_1 % 128:
            mem[_1198] = _1218
            mem[_1198 + 32] = address(stor1[_1197])
            mem[_1198 + 64] = stor2[_1197]
            staticcall address(stor1[_1197]).totalNodesCreated() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1311 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1311]:
                revert with 0, 17
            if s + mem[_1311] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1311]
            continue 
        if 31 >= stor[_1197].field_1 % 128:
            mem[_1218 + 32] = 256 * Mask(248, 0, stor[_1197].field_8)
            mem[_1198] = _1218
            mem[_1198 + 32] = address(stor1[_1197])
            mem[_1198 + 64] = stor2[_1197]
            staticcall address(stor1[_1197]).totalNodesCreated() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1352 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1352]:
                revert with 0, 17
            if s + mem[_1352] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1352]
            continue 
        mem[0] = _1197
        mem[_1218 + 32] = uint256(stor[sha3(_1197)].field_0)
        t = _1218 + 32
        u = sha3(_1197)
        while _1218 + stor[_1197].field_1 % 128 > t:
            mem[t + 32] = uint256(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_1198] = _1218
        mem[_1198 + 32] = address(stor1[_1197])
        mem[_1198 + 64] = stor2[_1197]
        staticcall address(stor1[_1197]).totalNodesCreated() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1458 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_1458]:
            revert with 0, 17
        if s + mem[_1458] < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_1458]
        continue 
    return s
}

function getNodeNumberOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < stor26.length:
        mem[0] = 26
        _567 = mem[64]
        if bool(stor26[idx].field_0):
            if bool(stor26[idx].field_0) == uint255(uint256(stor26[idx].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor26[idx].field_0):
                mem[mem[64]] = Mask(248, 8, uint256(stor26[idx].field_0))
                mem[mem[64] + (uint255(uint256(stor26[idx].field_0)) * 0.5)] = 25
                _572 = sha3(Mask(248, 8, uint256(stor26[idx].field_0)), mem[mem[64] + 32 len uint255(uint256(stor26[idx].field_0)) * 0.5])
                _573 = mem[64]
                mem[64] = mem[64] + 96
                if bool(stor[_572].field_0):
                    if bool(stor[_572].field_0) == uint255(uint256(stor[_572].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _586 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor[_572].field_0)) * 0.5) + 32
                    mem[_586] = uint255(uint256(stor[_572].field_0)) * 0.5
                    if bool(stor[_572].field_0):
                        if bool(stor[_572].field_0) == uint255(uint256(stor[_572].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, uint256(stor[_572].field_0)):
                            mem[_573] = _586
                            mem[_573 + 32] = address(stor1[_572])
                            mem[_573 + 64] = stor2[_572]
                            mem[mem[64] + 4] = arg1
                            staticcall address(stor1[_572])._getNodeNumberOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _604 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if s > !mem[_604]:
                                revert with 0, 17
                            if s + mem[_604] < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + mem[_604]
                            continue 
                        if 31 >= uint255(uint256(stor[_572].field_0)) * 0.5:
                            mem[_586 + 32] = 256 * Mask(248, 0, stor[_572].field_8)
                            mem[_573] = _586
                            mem[_573 + 32] = address(stor1[_572])
                            mem[_573 + 64] = stor2[_572]
                            mem[mem[64] + 4] = arg1
                            staticcall address(stor1[_572])._getNodeNumberOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _648 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if s > !mem[_648]:
                                revert with 0, 17
                            if s + mem[_648] < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + mem[_648]
                            continue 
                        mem[0] = _572
                        mem[_586 + 32] = uint256(stor[sha3(_572)].field_0)
                        t = _586 + 32
                        u = sha3(_572)
                        while _586 + (uint255(uint256(stor[_572].field_0)) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_573] = _586
                        mem[_573 + 32] = address(stor1[_572])
                        mem[_573 + 64] = stor2[_572]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_572])._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1177 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_1177]:
                            revert with 0, 17
                        if s + mem[_1177] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_1177]
                        continue 
                    if bool(stor[_572].field_0) == stor[_572].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor[_572].field_1 % 128:
                        mem[_573] = _586
                        mem[_573 + 32] = address(stor1[_572])
                        mem[_573 + 64] = stor2[_572]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_572])._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _621 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_621]:
                            revert with 0, 17
                        if s + mem[_621] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_621]
                        continue 
                    if 31 >= stor[_572].field_1 % 128:
                        mem[_586 + 32] = 256 * Mask(248, 0, stor[_572].field_8)
                        mem[_573] = _586
                        mem[_573 + 32] = address(stor1[_572])
                        mem[_573 + 64] = stor2[_572]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_572])._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _692 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_692]:
                            revert with 0, 17
                        if s + mem[_692] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_692]
                        continue 
                    mem[0] = _572
                    mem[_586 + 32] = uint256(stor[sha3(_572)].field_0)
                    t = _586 + 32
                    u = sha3(_572)
                    while _586 + stor[_572].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_573] = _586
                    mem[_573 + 32] = address(stor1[_572])
                    mem[_573 + 64] = stor2[_572]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_572])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1178 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1178]:
                        revert with 0, 17
                    if s + mem[_1178] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1178]
                    continue 
                if bool(stor[_572].field_0) == stor[_572].field_1 % 128 < 32:
                    revert with 0, 34
                _590 = mem[64]
                mem[64] = mem[64] + ceil32(stor[_572].field_1 % 128) + 32
                mem[_590] = stor[_572].field_1 % 128
                if bool(stor[_572].field_0):
                    if bool(stor[_572].field_0) == uint255(uint256(stor[_572].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor[_572].field_0)):
                        mem[_573] = _590
                        mem[_573 + 32] = address(stor1[_572])
                        mem[_573 + 64] = stor2[_572]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_572])._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _623 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_623]:
                            revert with 0, 17
                        if s + mem[_623] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_623]
                        continue 
                    if 31 >= uint255(uint256(stor[_572].field_0)) * 0.5:
                        mem[_590 + 32] = 256 * Mask(248, 0, stor[_572].field_8)
                        mem[_573] = _590
                        mem[_573 + 32] = address(stor1[_572])
                        mem[_573 + 64] = stor2[_572]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_572])._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _694 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_694]:
                            revert with 0, 17
                        if s + mem[_694] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_694]
                        continue 
                    mem[0] = _572
                    mem[_590 + 32] = uint256(stor[sha3(_572)].field_0)
                    t = _590 + 32
                    u = sha3(_572)
                    while _590 + (uint255(uint256(stor[_572].field_0)) * 0.5) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_573] = _590
                    mem[_573 + 32] = address(stor1[_572])
                    mem[_573 + 64] = stor2[_572]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_572])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1179 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1179]:
                        revert with 0, 17
                    if s + mem[_1179] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1179]
                    continue 
                if bool(stor[_572].field_0) == stor[_572].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_572].field_1 % 128:
                    mem[_573] = _590
                    mem[_573 + 32] = address(stor1[_572])
                    mem[_573 + 64] = stor2[_572]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_572])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _655 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_655]:
                        revert with 0, 17
                    if s + mem[_655] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_655]
                    continue 
                if 31 >= stor[_572].field_1 % 128:
                    mem[_590 + 32] = 256 * Mask(248, 0, stor[_572].field_8)
                    mem[_573] = _590
                    mem[_573 + 32] = address(stor1[_572])
                    mem[_573 + 64] = stor2[_572]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_572])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _748 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_748]:
                        revert with 0, 17
                    if s + mem[_748] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_748]
                    continue 
                mem[0] = _572
                mem[_590 + 32] = uint256(stor[sha3(_572)].field_0)
                t = _590 + 32
                u = sha3(_572)
                while _590 + stor[_572].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_573] = _590
                mem[_573 + 32] = address(stor1[_572])
                mem[_573 + 64] = stor2[_572]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_572])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1180 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1180]:
                    revert with 0, 17
                if s + mem[_1180] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1180]
                continue 
            if bool(stor26[idx].field_0) != 1:
                mem[0] = 25
                _575 = sha3(mem[mem[64] len -mem[64] + 32])
                _576 = mem[64]
                mem[64] = mem[64] + 96
                if bool(stor[_575].field_0):
                    if bool(stor[_575].field_0) == uint255(uint256(stor[_575].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _591 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor[_575].field_0)) * 0.5) + 32
                    mem[_591] = uint255(uint256(stor[_575].field_0)) * 0.5
                    if bool(stor[_575].field_0):
                        if bool(stor[_575].field_0) == uint255(uint256(stor[_575].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, uint256(stor[_575].field_0)):
                            mem[_576] = _591
                            mem[_576 + 32] = address(stor1[_575])
                            mem[_576 + 64] = stor2[_575]
                            mem[mem[64] + 4] = arg1
                            staticcall address(stor1[_575])._getNodeNumberOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _628 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if s > !mem[_628]:
                                revert with 0, 17
                            if s + mem[_628] < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + mem[_628]
                            continue 
                        if 31 >= uint255(uint256(stor[_575].field_0)) * 0.5:
                            mem[_591 + 32] = 256 * Mask(248, 0, stor[_575].field_8)
                            mem[_576] = _591
                            mem[_576 + 32] = address(stor1[_575])
                            mem[_576 + 64] = stor2[_575]
                            mem[mem[64] + 4] = arg1
                            staticcall address(stor1[_575])._getNodeNumberOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _707 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if s > !mem[_707]:
                                revert with 0, 17
                            if s + mem[_707] < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + mem[_707]
                            continue 
                        mem[0] = _575
                        mem[_591 + 32] = uint256(stor[sha3(_575)].field_0)
                        t = _591 + 32
                        u = sha3(_575)
                        while _591 + (uint255(uint256(stor[_575].field_0)) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_576] = _591
                        mem[_576 + 32] = address(stor1[_575])
                        mem[_576 + 64] = stor2[_575]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_575])._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1181 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_1181]:
                            revert with 0, 17
                        if s + mem[_1181] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_1181]
                        continue 
                    if bool(stor[_575].field_0) == stor[_575].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor[_575].field_1 % 128:
                        mem[_576] = _591
                        mem[_576 + 32] = address(stor1[_575])
                        mem[_576 + 64] = stor2[_575]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_575])._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _663 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_663]:
                            revert with 0, 17
                        if s + mem[_663] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_663]
                        continue 
                    if 31 >= stor[_575].field_1 % 128:
                        mem[_591 + 32] = 256 * Mask(248, 0, stor[_575].field_8)
                        mem[_576] = _591
                        mem[_576 + 32] = address(stor1[_575])
                        mem[_576 + 64] = stor2[_575]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_575])._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _763 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_763]:
                            revert with 0, 17
                        if s + mem[_763] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_763]
                        continue 
                    mem[0] = _575
                    mem[_591 + 32] = uint256(stor[sha3(_575)].field_0)
                    t = _591 + 32
                    u = sha3(_575)
                    while _591 + stor[_575].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_576] = _591
                    mem[_576 + 32] = address(stor1[_575])
                    mem[_576 + 64] = stor2[_575]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_575])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1182 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1182]:
                        revert with 0, 17
                    if s + mem[_1182] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1182]
                    continue 
                if bool(stor[_575].field_0) == stor[_575].field_1 % 128 < 32:
                    revert with 0, 34
                _593 = mem[64]
                mem[64] = mem[64] + ceil32(stor[_575].field_1 % 128) + 32
                mem[_593] = stor[_575].field_1 % 128
                if bool(stor[_575].field_0):
                    if bool(stor[_575].field_0) == uint255(uint256(stor[_575].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor[_575].field_0)):
                        mem[_576] = _593
                        mem[_576 + 32] = address(stor1[_575])
                        mem[_576 + 64] = stor2[_575]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_575])._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _665 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_665]:
                            revert with 0, 17
                        if s + mem[_665] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_665]
                        continue 
                    if 31 >= uint255(uint256(stor[_575].field_0)) * 0.5:
                        mem[_593 + 32] = 256 * Mask(248, 0, stor[_575].field_8)
                        mem[_576] = _593
                        mem[_576 + 32] = address(stor1[_575])
                        mem[_576 + 64] = stor2[_575]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_575])._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _765 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_765]:
                            revert with 0, 17
                        if s + mem[_765] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_765]
                        continue 
                    mem[0] = _575
                    mem[_593 + 32] = uint256(stor[sha3(_575)].field_0)
                    t = _593 + 32
                    u = sha3(_575)
                    while _593 + (uint255(uint256(stor[_575].field_0)) * 0.5) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_576] = _593
                    mem[_576 + 32] = address(stor1[_575])
                    mem[_576 + 64] = stor2[_575]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_575])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1183 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1183]:
                        revert with 0, 17
                    if s + mem[_1183] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1183]
                    continue 
                if bool(stor[_575].field_0) == stor[_575].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_575].field_1 % 128:
                    mem[_576] = _593
                    mem[_576 + 32] = address(stor1[_575])
                    mem[_576 + 64] = stor2[_575]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_575])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _714 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_714]:
                        revert with 0, 17
                    if s + mem[_714] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_714]
                    continue 
                if 31 >= stor[_575].field_1 % 128:
                    mem[_593 + 32] = 256 * Mask(248, 0, stor[_575].field_8)
                    mem[_576] = _593
                    mem[_576 + 32] = address(stor1[_575])
                    mem[_576 + 64] = stor2[_575]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_575])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _823 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_823]:
                        revert with 0, 17
                    if s + mem[_823] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_823]
                    continue 
                mem[0] = _575
                mem[_593 + 32] = uint256(stor[sha3(_575)].field_0)
                t = _593 + 32
                u = sha3(_575)
                while _593 + stor[_575].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_576] = _593
                mem[_576 + 32] = address(stor1[_575])
                mem[_576 + 64] = stor2[_575]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_575])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1184 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1184]:
                    revert with 0, 17
                if s + mem[_1184] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1184]
                continue 
            mem[0] = sha3(26) + idx
            t = 0
            u = sha3(mem[0])
            while t < uint255(uint256(stor26[idx].field_0)) * 0.5:
                mem[t + _567] = uint256(stor[u].field_0)
                t = t + 32
                u = u + 1
                continue 
            mem[_567 + (uint255(uint256(stor26[idx].field_0)) * 0.5)] = 25
            _1194 = sha3(mem[mem[64] len _567 + (uint255(uint256(stor26[idx].field_0)) * 0.5) + -mem[64] + 32])
            _1195 = mem[64]
            mem[64] = mem[64] + 96
            if bool(stor[_1194].field_0):
                if bool(stor[_1194].field_0) == uint255(uint256(stor[_1194].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _1215 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor[_1194].field_0)) * 0.5) + 32
                mem[_1215] = uint255(uint256(stor[_1194].field_0)) * 0.5
                if bool(stor[_1194].field_0):
                    if bool(stor[_1194].field_0) == uint255(uint256(stor[_1194].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor[_1194].field_0)):
                        mem[_1195] = _1215
                        mem[_1195 + 32] = address(stor1[_1194])
                        mem[_1195 + 64] = stor2[_1194]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_1194])._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1257 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_1257]:
                            revert with 0, 17
                        if s + mem[_1257] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_1257]
                        continue 
                    if 31 >= uint255(uint256(stor[_1194].field_0)) * 0.5:
                        mem[_1215 + 32] = 256 * Mask(248, 0, stor[_1194].field_8)
                        mem[_1195] = _1215
                        mem[_1195 + 32] = address(stor1[_1194])
                        mem[_1195 + 64] = stor2[_1194]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_1194])._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1294 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_1294]:
                            revert with 0, 17
                        if s + mem[_1294] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_1294]
                        continue 
                    mem[0] = _1194
                    mem[_1215 + 32] = uint256(stor[sha3(_1194)].field_0)
                    t = _1215 + 32
                    u = sha3(_1194)
                    while _1215 + (uint255(uint256(stor[_1194].field_0)) * 0.5) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_1195] = _1215
                    mem[_1195 + 32] = address(stor1[_1194])
                    mem[_1195 + 64] = stor2[_1194]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_1194])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1451 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1451]:
                        revert with 0, 17
                    if s + mem[_1451] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1451]
                    continue 
                if bool(stor[_1194].field_0) == stor[_1194].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_1194].field_1 % 128:
                    mem[_1195] = _1215
                    mem[_1195 + 32] = address(stor1[_1194])
                    mem[_1195 + 64] = stor2[_1194]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_1194])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1276 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1276]:
                        revert with 0, 17
                    if s + mem[_1276] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1276]
                    continue 
                if 31 >= stor[_1194].field_1 % 128:
                    mem[_1215 + 32] = 256 * Mask(248, 0, stor[_1194].field_8)
                    mem[_1195] = _1215
                    mem[_1195 + 32] = address(stor1[_1194])
                    mem[_1195 + 64] = stor2[_1194]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_1194])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1317]:
                        revert with 0, 17
                    if s + mem[_1317] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1317]
                    continue 
                mem[0] = _1194
                mem[_1215 + 32] = uint256(stor[sha3(_1194)].field_0)
                t = _1215 + 32
                u = sha3(_1194)
                while _1215 + stor[_1194].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1195] = _1215
                mem[_1195 + 32] = address(stor1[_1194])
                mem[_1195 + 64] = stor2[_1194]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_1194])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1452 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1452]:
                    revert with 0, 17
                if s + mem[_1452] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1452]
                continue 
            if bool(stor[_1194].field_0) == stor[_1194].field_1 % 128 < 32:
                revert with 0, 34
            _1217 = mem[64]
            mem[64] = mem[64] + ceil32(stor[_1194].field_1 % 128) + 32
            mem[_1217] = stor[_1194].field_1 % 128
            if bool(stor[_1194].field_0):
                if bool(stor[_1194].field_0) == uint255(uint256(stor[_1194].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_1194].field_0)):
                    mem[_1195] = _1217
                    mem[_1195 + 32] = address(stor1[_1194])
                    mem[_1195 + 64] = stor2[_1194]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_1194])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1278 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1278]:
                        revert with 0, 17
                    if s + mem[_1278] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1278]
                    continue 
                if 31 >= uint255(uint256(stor[_1194].field_0)) * 0.5:
                    mem[_1217 + 32] = 256 * Mask(248, 0, stor[_1194].field_8)
                    mem[_1195] = _1217
                    mem[_1195 + 32] = address(stor1[_1194])
                    mem[_1195 + 64] = stor2[_1194]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_1194])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1319 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1319]:
                        revert with 0, 17
                    if s + mem[_1319] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1319]
                    continue 
                mem[0] = _1194
                mem[_1217 + 32] = uint256(stor[sha3(_1194)].field_0)
                t = _1217 + 32
                u = sha3(_1194)
                while _1217 + (uint255(uint256(stor[_1194].field_0)) * 0.5) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1195] = _1217
                mem[_1195 + 32] = address(stor1[_1194])
                mem[_1195 + 64] = stor2[_1194]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_1194])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1453 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1453]:
                    revert with 0, 17
                if s + mem[_1453] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1453]
                continue 
            if bool(stor[_1194].field_0) == stor[_1194].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[_1194].field_1 % 128:
                mem[_1195] = _1217
                mem[_1195 + 32] = address(stor1[_1194])
                mem[_1195 + 64] = stor2[_1194]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_1194])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1301 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1301]:
                    revert with 0, 17
                if s + mem[_1301] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1301]
                continue 
            if 31 >= stor[_1194].field_1 % 128:
                mem[_1217 + 32] = 256 * Mask(248, 0, stor[_1194].field_8)
                mem[_1195] = _1217
                mem[_1195 + 32] = address(stor1[_1194])
                mem[_1195 + 64] = stor2[_1194]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_1194])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1342 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1342]:
                    revert with 0, 17
                if s + mem[_1342] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1342]
                continue 
            mem[0] = _1194
            mem[_1217 + 32] = uint256(stor[sha3(_1194)].field_0)
            t = _1217 + 32
            u = sha3(_1194)
            while _1217 + stor[_1194].field_1 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_1195] = _1217
            mem[_1195 + 32] = address(stor1[_1194])
            mem[_1195 + 64] = stor2[_1194]
            mem[mem[64] + 4] = arg1
            staticcall address(stor1[_1194])._getNodeNumberOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1454 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1454]:
                revert with 0, 17
            if s + mem[_1454] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1454]
            continue 
        if bool(stor26[idx].field_0) == stor26[idx].field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor26[idx].field_0):
            mem[mem[64]] = Mask(248, 8, uint256(stor26[idx].field_0))
            mem[mem[64] + stor26[idx].field_1 % 128] = 25
            _578 = sha3(Mask(248, 8, uint256(stor26[idx].field_0)), mem[mem[64] + 32 len stor26[idx].field_1 % 128])
            _579 = mem[64]
            mem[64] = mem[64] + 96
            if bool(stor[_578].field_0):
                if bool(stor[_578].field_0) == uint255(uint256(stor[_578].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _592 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor[_578].field_0)) * 0.5) + 32
                mem[_592] = uint255(uint256(stor[_578].field_0)) * 0.5
                if bool(stor[_578].field_0):
                    if bool(stor[_578].field_0) == uint255(uint256(stor[_578].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor[_578].field_0)):
                        mem[_579] = _592
                        mem[_579 + 32] = address(stor1[_578])
                        mem[_579 + 64] = stor2[_578]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_578])._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _636 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_636]:
                            revert with 0, 17
                        if s + mem[_636] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_636]
                        continue 
                    if 31 >= uint255(uint256(stor[_578].field_0)) * 0.5:
                        mem[_592 + 32] = 256 * Mask(248, 0, stor[_578].field_8)
                        mem[_579] = _592
                        mem[_579 + 32] = address(stor1[_578])
                        mem[_579 + 64] = stor2[_578]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_578])._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _717 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_717]:
                            revert with 0, 17
                        if s + mem[_717] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_717]
                        continue 
                    mem[0] = _578
                    mem[_592 + 32] = uint256(stor[sha3(_578)].field_0)
                    t = _592 + 32
                    u = sha3(_578)
                    while _592 + (uint255(uint256(stor[_578].field_0)) * 0.5) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_579] = _592
                    mem[_579 + 32] = address(stor1[_578])
                    mem[_579 + 64] = stor2[_578]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_578])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1185 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1185]:
                        revert with 0, 17
                    if s + mem[_1185] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1185]
                    continue 
                if bool(stor[_578].field_0) == stor[_578].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_578].field_1 % 128:
                    mem[_579] = _592
                    mem[_579 + 32] = address(stor1[_578])
                    mem[_579 + 64] = stor2[_578]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_578])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _673 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_673]:
                        revert with 0, 17
                    if s + mem[_673] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_673]
                    continue 
                if 31 >= stor[_578].field_1 % 128:
                    mem[_592 + 32] = 256 * Mask(248, 0, stor[_578].field_8)
                    mem[_579] = _592
                    mem[_579 + 32] = address(stor1[_578])
                    mem[_579 + 64] = stor2[_578]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_578])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _773 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_773]:
                        revert with 0, 17
                    if s + mem[_773] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_773]
                    continue 
                mem[0] = _578
                mem[_592 + 32] = uint256(stor[sha3(_578)].field_0)
                t = _592 + 32
                u = sha3(_578)
                while _592 + stor[_578].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_579] = _592
                mem[_579 + 32] = address(stor1[_578])
                mem[_579 + 64] = stor2[_578]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_578])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1186 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1186]:
                    revert with 0, 17
                if s + mem[_1186] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1186]
                continue 
            if bool(stor[_578].field_0) == stor[_578].field_1 % 128 < 32:
                revert with 0, 34
            _594 = mem[64]
            mem[64] = mem[64] + ceil32(stor[_578].field_1 % 128) + 32
            mem[_594] = stor[_578].field_1 % 128
            if bool(stor[_578].field_0):
                if bool(stor[_578].field_0) == uint255(uint256(stor[_578].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_578].field_0)):
                    mem[_579] = _594
                    mem[_579 + 32] = address(stor1[_578])
                    mem[_579 + 64] = stor2[_578]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_578])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _675 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_675]:
                        revert with 0, 17
                    if s + mem[_675] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_675]
                    continue 
                if 31 >= uint255(uint256(stor[_578].field_0)) * 0.5:
                    mem[_594 + 32] = 256 * Mask(248, 0, stor[_578].field_8)
                    mem[_579] = _594
                    mem[_579 + 32] = address(stor1[_578])
                    mem[_579 + 64] = stor2[_578]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_578])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _775 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_775]:
                        revert with 0, 17
                    if s + mem[_775] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_775]
                    continue 
                mem[0] = _578
                mem[_594 + 32] = uint256(stor[sha3(_578)].field_0)
                t = _594 + 32
                u = sha3(_578)
                while _594 + (uint255(uint256(stor[_578].field_0)) * 0.5) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_579] = _594
                mem[_579 + 32] = address(stor1[_578])
                mem[_579 + 64] = stor2[_578]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_578])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1187 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1187]:
                    revert with 0, 17
                if s + mem[_1187] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1187]
                continue 
            if bool(stor[_578].field_0) == stor[_578].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[_578].field_1 % 128:
                mem[_579] = _594
                mem[_579 + 32] = address(stor1[_578])
                mem[_579 + 64] = stor2[_578]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_578])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _724 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_724]:
                    revert with 0, 17
                if s + mem[_724] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_724]
                continue 
            if 31 >= stor[_578].field_1 % 128:
                mem[_594 + 32] = 256 * Mask(248, 0, stor[_578].field_8)
                mem[_579] = _594
                mem[_579 + 32] = address(stor1[_578])
                mem[_579 + 64] = stor2[_578]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_578])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _833 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_833]:
                    revert with 0, 17
                if s + mem[_833] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_833]
                continue 
            mem[0] = _578
            mem[_594 + 32] = uint256(stor[sha3(_578)].field_0)
            t = _594 + 32
            u = sha3(_578)
            while _594 + stor[_578].field_1 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_579] = _594
            mem[_579 + 32] = address(stor1[_578])
            mem[_579 + 64] = stor2[_578]
            mem[mem[64] + 4] = arg1
            staticcall address(stor1[_578])._getNodeNumberOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1188 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1188]:
                revert with 0, 17
            if s + mem[_1188] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1188]
            continue 
        if bool(stor26[idx].field_0) != 1:
            mem[0] = 25
            _581 = sha3(mem[mem[64] len -mem[64] + 32])
            _582 = mem[64]
            mem[64] = mem[64] + 96
            if bool(stor[_581].field_0):
                if bool(stor[_581].field_0) == uint255(uint256(stor[_581].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _595 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor[_581].field_0)) * 0.5) + 32
                mem[_595] = uint255(uint256(stor[_581].field_0)) * 0.5
                if bool(stor[_581].field_0):
                    if bool(stor[_581].field_0) == uint255(uint256(stor[_581].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor[_581].field_0)):
                        mem[_582] = _595
                        mem[_582 + 32] = address(stor1[_581])
                        mem[_582 + 64] = stor2[_581]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_581])._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _680 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_680]:
                            revert with 0, 17
                        if s + mem[_680] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_680]
                        continue 
                    if 31 >= uint255(uint256(stor[_581].field_0)) * 0.5:
                        mem[_595 + 32] = 256 * Mask(248, 0, stor[_581].field_8)
                        mem[_582] = _595
                        mem[_582 + 32] = address(stor1[_581])
                        mem[_582 + 64] = stor2[_581]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_581])._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _788 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_788]:
                            revert with 0, 17
                        if s + mem[_788] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_788]
                        continue 
                    mem[0] = _581
                    mem[_595 + 32] = uint256(stor[sha3(_581)].field_0)
                    t = _595 + 32
                    u = sha3(_581)
                    while _595 + (uint255(uint256(stor[_581].field_0)) * 0.5) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_582] = _595
                    mem[_582 + 32] = address(stor1[_581])
                    mem[_582 + 64] = stor2[_581]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_581])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1189 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1189]:
                        revert with 0, 17
                    if s + mem[_1189] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1189]
                    continue 
                if bool(stor[_581].field_0) == stor[_581].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_581].field_1 % 128:
                    mem[_582] = _595
                    mem[_582 + 32] = address(stor1[_581])
                    mem[_582 + 64] = stor2[_581]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_581])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _732 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_732]:
                        revert with 0, 17
                    if s + mem[_732] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_732]
                    continue 
                if 31 >= stor[_581].field_1 % 128:
                    mem[_595 + 32] = 256 * Mask(248, 0, stor[_581].field_8)
                    mem[_582] = _595
                    mem[_582 + 32] = address(stor1[_581])
                    mem[_582 + 64] = stor2[_581]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_581])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _848 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_848]:
                        revert with 0, 17
                    if s + mem[_848] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_848]
                    continue 
                mem[0] = _581
                mem[_595 + 32] = uint256(stor[sha3(_581)].field_0)
                t = _595 + 32
                u = sha3(_581)
                while _595 + stor[_581].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_582] = _595
                mem[_582 + 32] = address(stor1[_581])
                mem[_582 + 64] = stor2[_581]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_581])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1190 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1190]:
                    revert with 0, 17
                if s + mem[_1190] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1190]
                continue 
            if bool(stor[_581].field_0) == stor[_581].field_1 % 128 < 32:
                revert with 0, 34
            _597 = mem[64]
            mem[64] = mem[64] + ceil32(stor[_581].field_1 % 128) + 32
            mem[_597] = stor[_581].field_1 % 128
            if bool(stor[_581].field_0):
                if bool(stor[_581].field_0) == uint255(uint256(stor[_581].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_581].field_0)):
                    mem[_582] = _597
                    mem[_582 + 32] = address(stor1[_581])
                    mem[_582 + 64] = stor2[_581]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_581])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _734 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_734]:
                        revert with 0, 17
                    if s + mem[_734] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_734]
                    continue 
                if 31 >= uint255(uint256(stor[_581].field_0)) * 0.5:
                    mem[_597 + 32] = 256 * Mask(248, 0, stor[_581].field_8)
                    mem[_582] = _597
                    mem[_582 + 32] = address(stor1[_581])
                    mem[_582 + 64] = stor2[_581]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_581])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _850 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_850]:
                        revert with 0, 17
                    if s + mem[_850] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_850]
                    continue 
                mem[0] = _581
                mem[_597 + 32] = uint256(stor[sha3(_581)].field_0)
                t = _597 + 32
                u = sha3(_581)
                while _597 + (uint255(uint256(stor[_581].field_0)) * 0.5) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_582] = _597
                mem[_582 + 32] = address(stor1[_581])
                mem[_582 + 64] = stor2[_581]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_581])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1191 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1191]:
                    revert with 0, 17
                if s + mem[_1191] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1191]
                continue 
            if bool(stor[_581].field_0) == stor[_581].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[_581].field_1 % 128:
                mem[_582] = _597
                mem[_582 + 32] = address(stor1[_581])
                mem[_582 + 64] = stor2[_581]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_581])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _795 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_795]:
                    revert with 0, 17
                if s + mem[_795] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_795]
                continue 
            if 31 >= stor[_581].field_1 % 128:
                mem[_597 + 32] = 256 * Mask(248, 0, stor[_581].field_8)
                mem[_582] = _597
                mem[_582 + 32] = address(stor1[_581])
                mem[_582 + 64] = stor2[_581]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_581])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _900 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_900]:
                    revert with 0, 17
                if s + mem[_900] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_900]
                continue 
            mem[0] = _581
            mem[_597 + 32] = uint256(stor[sha3(_581)].field_0)
            t = _597 + 32
            u = sha3(_581)
            while _597 + stor[_581].field_1 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_582] = _597
            mem[_582 + 32] = address(stor1[_581])
            mem[_582 + 64] = stor2[_581]
            mem[mem[64] + 4] = arg1
            staticcall address(stor1[_581])._getNodeNumberOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1192 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1192]:
                revert with 0, 17
            if s + mem[_1192] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1192]
            continue 
        mem[0] = sha3(26) + idx
        t = 0
        u = sha3(mem[0])
        while t < stor26[idx].field_1 % 128:
            mem[t + _567] = uint256(stor[u].field_0)
            t = t + 32
            u = u + 1
            continue 
        mem[_567 + stor26[idx].field_1 % 128] = 25
        _1197 = sha3(mem[mem[64] len _567 + stor26[idx].field_1 % 128 + -mem[64] + 32])
        _1198 = mem[64]
        mem[64] = mem[64] + 96
        if bool(stor[_1197].field_0):
            if bool(stor[_1197].field_0) == uint255(uint256(stor[_1197].field_0)) * 0.5 < 32:
                revert with 0, 34
            _1216 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(stor[_1197].field_0)) * 0.5) + 32
            mem[_1216] = uint255(uint256(stor[_1197].field_0)) * 0.5
            if bool(stor[_1197].field_0):
                if bool(stor[_1197].field_0) == uint255(uint256(stor[_1197].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_1197].field_0)):
                    mem[_1198] = _1216
                    mem[_1198 + 32] = address(stor1[_1197])
                    mem[_1198 + 64] = stor2[_1197]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_1197])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1265 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1265]:
                        revert with 0, 17
                    if s + mem[_1265] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1265]
                    continue 
                if 31 >= uint255(uint256(stor[_1197].field_0)) * 0.5:
                    mem[_1216 + 32] = 256 * Mask(248, 0, stor[_1197].field_8)
                    mem[_1198] = _1216
                    mem[_1198 + 32] = address(stor1[_1197])
                    mem[_1198 + 64] = stor2[_1197]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_1197])._getNodeNumberOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1304]:
                        revert with 0, 17
                    if s + mem[_1304] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1304]
                    continue 
                mem[0] = _1197
                mem[_1216 + 32] = uint256(stor[sha3(_1197)].field_0)
                t = _1216 + 32
                u = sha3(_1197)
                while _1216 + (uint255(uint256(stor[_1197].field_0)) * 0.5) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1198] = _1216
                mem[_1198 + 32] = address(stor1[_1197])
                mem[_1198 + 64] = stor2[_1197]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_1197])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1455 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1455]:
                    revert with 0, 17
                if s + mem[_1455] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1455]
                continue 
            if bool(stor[_1197].field_0) == stor[_1197].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[_1197].field_1 % 128:
                mem[_1198] = _1216
                mem[_1198 + 32] = address(stor1[_1197])
                mem[_1198 + 64] = stor2[_1197]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_1197])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1286 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1286]:
                    revert with 0, 17
                if s + mem[_1286] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1286]
                continue 
            if 31 >= stor[_1197].field_1 % 128:
                mem[_1216 + 32] = 256 * Mask(248, 0, stor[_1197].field_8)
                mem[_1198] = _1216
                mem[_1198 + 32] = address(stor1[_1197])
                mem[_1198 + 64] = stor2[_1197]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_1197])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1327 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1327]:
                    revert with 0, 17
                if s + mem[_1327] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1327]
                continue 
            mem[0] = _1197
            mem[_1216 + 32] = uint256(stor[sha3(_1197)].field_0)
            t = _1216 + 32
            u = sha3(_1197)
            while _1216 + stor[_1197].field_1 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_1198] = _1216
            mem[_1198 + 32] = address(stor1[_1197])
            mem[_1198 + 64] = stor2[_1197]
            mem[mem[64] + 4] = arg1
            staticcall address(stor1[_1197])._getNodeNumberOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1456 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1456]:
                revert with 0, 17
            if s + mem[_1456] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1456]
            continue 
        if bool(stor[_1197].field_0) == stor[_1197].field_1 % 128 < 32:
            revert with 0, 34
        _1218 = mem[64]
        mem[64] = mem[64] + ceil32(stor[_1197].field_1 % 128) + 32
        mem[_1218] = stor[_1197].field_1 % 128
        if bool(stor[_1197].field_0):
            if bool(stor[_1197].field_0) == uint255(uint256(stor[_1197].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor[_1197].field_0)):
                mem[_1198] = _1218
                mem[_1198 + 32] = address(stor1[_1197])
                mem[_1198 + 64] = stor2[_1197]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_1197])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1288 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1288]:
                    revert with 0, 17
                if s + mem[_1288] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1288]
                continue 
            if 31 >= uint255(uint256(stor[_1197].field_0)) * 0.5:
                mem[_1218 + 32] = 256 * Mask(248, 0, stor[_1197].field_8)
                mem[_1198] = _1218
                mem[_1198 + 32] = address(stor1[_1197])
                mem[_1198 + 64] = stor2[_1197]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_1197])._getNodeNumberOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1329 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1329]:
                    revert with 0, 17
                if s + mem[_1329] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1329]
                continue 
            mem[0] = _1197
            mem[_1218 + 32] = uint256(stor[sha3(_1197)].field_0)
            t = _1218 + 32
            u = sha3(_1197)
            while _1218 + (uint255(uint256(stor[_1197].field_0)) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_1198] = _1218
            mem[_1198 + 32] = address(stor1[_1197])
            mem[_1198 + 64] = stor2[_1197]
            mem[mem[64] + 4] = arg1
            staticcall address(stor1[_1197])._getNodeNumberOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1457 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1457]:
                revert with 0, 17
            if s + mem[_1457] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1457]
            continue 
        if bool(stor[_1197].field_0) == stor[_1197].field_1 % 128 < 32:
            revert with 0, 34
        if not stor[_1197].field_1 % 128:
            mem[_1198] = _1218
            mem[_1198 + 32] = address(stor1[_1197])
            mem[_1198 + 64] = stor2[_1197]
            mem[mem[64] + 4] = arg1
            staticcall address(stor1[_1197])._getNodeNumberOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1311 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1311]:
                revert with 0, 17
            if s + mem[_1311] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1311]
            continue 
        if 31 >= stor[_1197].field_1 % 128:
            mem[_1218 + 32] = 256 * Mask(248, 0, stor[_1197].field_8)
            mem[_1198] = _1218
            mem[_1198 + 32] = address(stor1[_1197])
            mem[_1198 + 64] = stor2[_1197]
            mem[mem[64] + 4] = arg1
            staticcall address(stor1[_1197])._getNodeNumberOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1352 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1352]:
                revert with 0, 17
            if s + mem[_1352] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1352]
            continue 
        mem[0] = _1197
        mem[_1218 + 32] = uint256(stor[sha3(_1197)].field_0)
        t = _1218 + 32
        u = sha3(_1197)
        while _1218 + stor[_1197].field_1 % 128 > t:
            mem[t + 32] = uint256(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_1198] = _1218
        mem[_1198 + 32] = address(stor1[_1197])
        mem[_1198 + 64] = stor2[_1197]
        mem[mem[64] + 4] = arg1
        staticcall address(stor1[_1197])._getNodeNumberOf(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1458 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_1458]:
            revert with 0, 17
        if s + mem[_1458] < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_1458]
        continue 
    return s
}

function getRewardAmountOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < stor26.length:
        mem[0] = 26
        _567 = mem[64]
        if bool(stor26[idx].field_0):
            if bool(stor26[idx].field_0) == uint255(uint256(stor26[idx].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor26[idx].field_0):
                mem[mem[64]] = Mask(248, 8, uint256(stor26[idx].field_0))
                mem[mem[64] + (uint255(uint256(stor26[idx].field_0)) * 0.5)] = 25
                _572 = sha3(Mask(248, 8, uint256(stor26[idx].field_0)), mem[mem[64] + 32 len uint255(uint256(stor26[idx].field_0)) * 0.5])
                _573 = mem[64]
                mem[64] = mem[64] + 96
                if bool(stor[_572].field_0):
                    if bool(stor[_572].field_0) == uint255(uint256(stor[_572].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _586 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor[_572].field_0)) * 0.5) + 32
                    mem[_586] = uint255(uint256(stor[_572].field_0)) * 0.5
                    if bool(stor[_572].field_0):
                        if bool(stor[_572].field_0) == uint255(uint256(stor[_572].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, uint256(stor[_572].field_0)):
                            mem[_573] = _586
                            mem[_573 + 32] = address(stor1[_572])
                            mem[_573 + 64] = stor2[_572]
                            mem[mem[64] + 4] = arg1
                            staticcall address(stor1[_572])._getRewardAmountOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _604 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if s > !mem[_604]:
                                revert with 0, 17
                            if s + mem[_604] < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + mem[_604]
                            continue 
                        if 31 >= uint255(uint256(stor[_572].field_0)) * 0.5:
                            mem[_586 + 32] = 256 * Mask(248, 0, stor[_572].field_8)
                            mem[_573] = _586
                            mem[_573 + 32] = address(stor1[_572])
                            mem[_573 + 64] = stor2[_572]
                            mem[mem[64] + 4] = arg1
                            staticcall address(stor1[_572])._getRewardAmountOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _648 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if s > !mem[_648]:
                                revert with 0, 17
                            if s + mem[_648] < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + mem[_648]
                            continue 
                        mem[0] = _572
                        mem[_586 + 32] = uint256(stor[sha3(_572)].field_0)
                        t = _586 + 32
                        u = sha3(_572)
                        while _586 + (uint255(uint256(stor[_572].field_0)) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_573] = _586
                        mem[_573 + 32] = address(stor1[_572])
                        mem[_573 + 64] = stor2[_572]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_572])._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1177 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_1177]:
                            revert with 0, 17
                        if s + mem[_1177] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_1177]
                        continue 
                    if bool(stor[_572].field_0) == stor[_572].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor[_572].field_1 % 128:
                        mem[_573] = _586
                        mem[_573 + 32] = address(stor1[_572])
                        mem[_573 + 64] = stor2[_572]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_572])._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _621 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_621]:
                            revert with 0, 17
                        if s + mem[_621] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_621]
                        continue 
                    if 31 >= stor[_572].field_1 % 128:
                        mem[_586 + 32] = 256 * Mask(248, 0, stor[_572].field_8)
                        mem[_573] = _586
                        mem[_573 + 32] = address(stor1[_572])
                        mem[_573 + 64] = stor2[_572]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_572])._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _692 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_692]:
                            revert with 0, 17
                        if s + mem[_692] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_692]
                        continue 
                    mem[0] = _572
                    mem[_586 + 32] = uint256(stor[sha3(_572)].field_0)
                    t = _586 + 32
                    u = sha3(_572)
                    while _586 + stor[_572].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_573] = _586
                    mem[_573 + 32] = address(stor1[_572])
                    mem[_573 + 64] = stor2[_572]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_572])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1178 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1178]:
                        revert with 0, 17
                    if s + mem[_1178] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1178]
                    continue 
                if bool(stor[_572].field_0) == stor[_572].field_1 % 128 < 32:
                    revert with 0, 34
                _590 = mem[64]
                mem[64] = mem[64] + ceil32(stor[_572].field_1 % 128) + 32
                mem[_590] = stor[_572].field_1 % 128
                if bool(stor[_572].field_0):
                    if bool(stor[_572].field_0) == uint255(uint256(stor[_572].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor[_572].field_0)):
                        mem[_573] = _590
                        mem[_573 + 32] = address(stor1[_572])
                        mem[_573 + 64] = stor2[_572]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_572])._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _623 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_623]:
                            revert with 0, 17
                        if s + mem[_623] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_623]
                        continue 
                    if 31 >= uint255(uint256(stor[_572].field_0)) * 0.5:
                        mem[_590 + 32] = 256 * Mask(248, 0, stor[_572].field_8)
                        mem[_573] = _590
                        mem[_573 + 32] = address(stor1[_572])
                        mem[_573 + 64] = stor2[_572]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_572])._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _694 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_694]:
                            revert with 0, 17
                        if s + mem[_694] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_694]
                        continue 
                    mem[0] = _572
                    mem[_590 + 32] = uint256(stor[sha3(_572)].field_0)
                    t = _590 + 32
                    u = sha3(_572)
                    while _590 + (uint255(uint256(stor[_572].field_0)) * 0.5) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_573] = _590
                    mem[_573 + 32] = address(stor1[_572])
                    mem[_573 + 64] = stor2[_572]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_572])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1179 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1179]:
                        revert with 0, 17
                    if s + mem[_1179] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1179]
                    continue 
                if bool(stor[_572].field_0) == stor[_572].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_572].field_1 % 128:
                    mem[_573] = _590
                    mem[_573 + 32] = address(stor1[_572])
                    mem[_573 + 64] = stor2[_572]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_572])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _655 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_655]:
                        revert with 0, 17
                    if s + mem[_655] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_655]
                    continue 
                if 31 >= stor[_572].field_1 % 128:
                    mem[_590 + 32] = 256 * Mask(248, 0, stor[_572].field_8)
                    mem[_573] = _590
                    mem[_573 + 32] = address(stor1[_572])
                    mem[_573 + 64] = stor2[_572]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_572])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _748 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_748]:
                        revert with 0, 17
                    if s + mem[_748] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_748]
                    continue 
                mem[0] = _572
                mem[_590 + 32] = uint256(stor[sha3(_572)].field_0)
                t = _590 + 32
                u = sha3(_572)
                while _590 + stor[_572].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_573] = _590
                mem[_573 + 32] = address(stor1[_572])
                mem[_573 + 64] = stor2[_572]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_572])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1180 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1180]:
                    revert with 0, 17
                if s + mem[_1180] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1180]
                continue 
            if bool(stor26[idx].field_0) != 1:
                mem[0] = 25
                _575 = sha3(mem[mem[64] len -mem[64] + 32])
                _576 = mem[64]
                mem[64] = mem[64] + 96
                if bool(stor[_575].field_0):
                    if bool(stor[_575].field_0) == uint255(uint256(stor[_575].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _591 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor[_575].field_0)) * 0.5) + 32
                    mem[_591] = uint255(uint256(stor[_575].field_0)) * 0.5
                    if bool(stor[_575].field_0):
                        if bool(stor[_575].field_0) == uint255(uint256(stor[_575].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, uint256(stor[_575].field_0)):
                            mem[_576] = _591
                            mem[_576 + 32] = address(stor1[_575])
                            mem[_576 + 64] = stor2[_575]
                            mem[mem[64] + 4] = arg1
                            staticcall address(stor1[_575])._getRewardAmountOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _628 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if s > !mem[_628]:
                                revert with 0, 17
                            if s + mem[_628] < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + mem[_628]
                            continue 
                        if 31 >= uint255(uint256(stor[_575].field_0)) * 0.5:
                            mem[_591 + 32] = 256 * Mask(248, 0, stor[_575].field_8)
                            mem[_576] = _591
                            mem[_576 + 32] = address(stor1[_575])
                            mem[_576 + 64] = stor2[_575]
                            mem[mem[64] + 4] = arg1
                            staticcall address(stor1[_575])._getRewardAmountOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _707 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if s > !mem[_707]:
                                revert with 0, 17
                            if s + mem[_707] < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + mem[_707]
                            continue 
                        mem[0] = _575
                        mem[_591 + 32] = uint256(stor[sha3(_575)].field_0)
                        t = _591 + 32
                        u = sha3(_575)
                        while _591 + (uint255(uint256(stor[_575].field_0)) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_576] = _591
                        mem[_576 + 32] = address(stor1[_575])
                        mem[_576 + 64] = stor2[_575]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_575])._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1181 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_1181]:
                            revert with 0, 17
                        if s + mem[_1181] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_1181]
                        continue 
                    if bool(stor[_575].field_0) == stor[_575].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor[_575].field_1 % 128:
                        mem[_576] = _591
                        mem[_576 + 32] = address(stor1[_575])
                        mem[_576 + 64] = stor2[_575]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_575])._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _663 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_663]:
                            revert with 0, 17
                        if s + mem[_663] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_663]
                        continue 
                    if 31 >= stor[_575].field_1 % 128:
                        mem[_591 + 32] = 256 * Mask(248, 0, stor[_575].field_8)
                        mem[_576] = _591
                        mem[_576 + 32] = address(stor1[_575])
                        mem[_576 + 64] = stor2[_575]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_575])._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _763 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_763]:
                            revert with 0, 17
                        if s + mem[_763] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_763]
                        continue 
                    mem[0] = _575
                    mem[_591 + 32] = uint256(stor[sha3(_575)].field_0)
                    t = _591 + 32
                    u = sha3(_575)
                    while _591 + stor[_575].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_576] = _591
                    mem[_576 + 32] = address(stor1[_575])
                    mem[_576 + 64] = stor2[_575]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_575])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1182 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1182]:
                        revert with 0, 17
                    if s + mem[_1182] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1182]
                    continue 
                if bool(stor[_575].field_0) == stor[_575].field_1 % 128 < 32:
                    revert with 0, 34
                _593 = mem[64]
                mem[64] = mem[64] + ceil32(stor[_575].field_1 % 128) + 32
                mem[_593] = stor[_575].field_1 % 128
                if bool(stor[_575].field_0):
                    if bool(stor[_575].field_0) == uint255(uint256(stor[_575].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor[_575].field_0)):
                        mem[_576] = _593
                        mem[_576 + 32] = address(stor1[_575])
                        mem[_576 + 64] = stor2[_575]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_575])._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _665 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_665]:
                            revert with 0, 17
                        if s + mem[_665] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_665]
                        continue 
                    if 31 >= uint255(uint256(stor[_575].field_0)) * 0.5:
                        mem[_593 + 32] = 256 * Mask(248, 0, stor[_575].field_8)
                        mem[_576] = _593
                        mem[_576 + 32] = address(stor1[_575])
                        mem[_576 + 64] = stor2[_575]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_575])._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _765 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_765]:
                            revert with 0, 17
                        if s + mem[_765] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_765]
                        continue 
                    mem[0] = _575
                    mem[_593 + 32] = uint256(stor[sha3(_575)].field_0)
                    t = _593 + 32
                    u = sha3(_575)
                    while _593 + (uint255(uint256(stor[_575].field_0)) * 0.5) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_576] = _593
                    mem[_576 + 32] = address(stor1[_575])
                    mem[_576 + 64] = stor2[_575]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_575])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1183 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1183]:
                        revert with 0, 17
                    if s + mem[_1183] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1183]
                    continue 
                if bool(stor[_575].field_0) == stor[_575].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_575].field_1 % 128:
                    mem[_576] = _593
                    mem[_576 + 32] = address(stor1[_575])
                    mem[_576 + 64] = stor2[_575]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_575])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _714 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_714]:
                        revert with 0, 17
                    if s + mem[_714] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_714]
                    continue 
                if 31 >= stor[_575].field_1 % 128:
                    mem[_593 + 32] = 256 * Mask(248, 0, stor[_575].field_8)
                    mem[_576] = _593
                    mem[_576 + 32] = address(stor1[_575])
                    mem[_576 + 64] = stor2[_575]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_575])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _823 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_823]:
                        revert with 0, 17
                    if s + mem[_823] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_823]
                    continue 
                mem[0] = _575
                mem[_593 + 32] = uint256(stor[sha3(_575)].field_0)
                t = _593 + 32
                u = sha3(_575)
                while _593 + stor[_575].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_576] = _593
                mem[_576 + 32] = address(stor1[_575])
                mem[_576 + 64] = stor2[_575]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_575])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1184 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1184]:
                    revert with 0, 17
                if s + mem[_1184] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1184]
                continue 
            mem[0] = sha3(26) + idx
            t = 0
            u = sha3(mem[0])
            while t < uint255(uint256(stor26[idx].field_0)) * 0.5:
                mem[t + _567] = uint256(stor[u].field_0)
                t = t + 32
                u = u + 1
                continue 
            mem[_567 + (uint255(uint256(stor26[idx].field_0)) * 0.5)] = 25
            _1194 = sha3(mem[mem[64] len _567 + (uint255(uint256(stor26[idx].field_0)) * 0.5) + -mem[64] + 32])
            _1195 = mem[64]
            mem[64] = mem[64] + 96
            if bool(stor[_1194].field_0):
                if bool(stor[_1194].field_0) == uint255(uint256(stor[_1194].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _1215 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor[_1194].field_0)) * 0.5) + 32
                mem[_1215] = uint255(uint256(stor[_1194].field_0)) * 0.5
                if bool(stor[_1194].field_0):
                    if bool(stor[_1194].field_0) == uint255(uint256(stor[_1194].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor[_1194].field_0)):
                        mem[_1195] = _1215
                        mem[_1195 + 32] = address(stor1[_1194])
                        mem[_1195 + 64] = stor2[_1194]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_1194])._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1257 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_1257]:
                            revert with 0, 17
                        if s + mem[_1257] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_1257]
                        continue 
                    if 31 >= uint255(uint256(stor[_1194].field_0)) * 0.5:
                        mem[_1215 + 32] = 256 * Mask(248, 0, stor[_1194].field_8)
                        mem[_1195] = _1215
                        mem[_1195 + 32] = address(stor1[_1194])
                        mem[_1195 + 64] = stor2[_1194]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_1194])._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1294 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_1294]:
                            revert with 0, 17
                        if s + mem[_1294] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_1294]
                        continue 
                    mem[0] = _1194
                    mem[_1215 + 32] = uint256(stor[sha3(_1194)].field_0)
                    t = _1215 + 32
                    u = sha3(_1194)
                    while _1215 + (uint255(uint256(stor[_1194].field_0)) * 0.5) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_1195] = _1215
                    mem[_1195 + 32] = address(stor1[_1194])
                    mem[_1195 + 64] = stor2[_1194]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_1194])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1451 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1451]:
                        revert with 0, 17
                    if s + mem[_1451] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1451]
                    continue 
                if bool(stor[_1194].field_0) == stor[_1194].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_1194].field_1 % 128:
                    mem[_1195] = _1215
                    mem[_1195 + 32] = address(stor1[_1194])
                    mem[_1195 + 64] = stor2[_1194]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_1194])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1276 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1276]:
                        revert with 0, 17
                    if s + mem[_1276] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1276]
                    continue 
                if 31 >= stor[_1194].field_1 % 128:
                    mem[_1215 + 32] = 256 * Mask(248, 0, stor[_1194].field_8)
                    mem[_1195] = _1215
                    mem[_1195 + 32] = address(stor1[_1194])
                    mem[_1195 + 64] = stor2[_1194]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_1194])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1317]:
                        revert with 0, 17
                    if s + mem[_1317] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1317]
                    continue 
                mem[0] = _1194
                mem[_1215 + 32] = uint256(stor[sha3(_1194)].field_0)
                t = _1215 + 32
                u = sha3(_1194)
                while _1215 + stor[_1194].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1195] = _1215
                mem[_1195 + 32] = address(stor1[_1194])
                mem[_1195 + 64] = stor2[_1194]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_1194])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1452 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1452]:
                    revert with 0, 17
                if s + mem[_1452] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1452]
                continue 
            if bool(stor[_1194].field_0) == stor[_1194].field_1 % 128 < 32:
                revert with 0, 34
            _1217 = mem[64]
            mem[64] = mem[64] + ceil32(stor[_1194].field_1 % 128) + 32
            mem[_1217] = stor[_1194].field_1 % 128
            if bool(stor[_1194].field_0):
                if bool(stor[_1194].field_0) == uint255(uint256(stor[_1194].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_1194].field_0)):
                    mem[_1195] = _1217
                    mem[_1195 + 32] = address(stor1[_1194])
                    mem[_1195 + 64] = stor2[_1194]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_1194])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1278 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1278]:
                        revert with 0, 17
                    if s + mem[_1278] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1278]
                    continue 
                if 31 >= uint255(uint256(stor[_1194].field_0)) * 0.5:
                    mem[_1217 + 32] = 256 * Mask(248, 0, stor[_1194].field_8)
                    mem[_1195] = _1217
                    mem[_1195 + 32] = address(stor1[_1194])
                    mem[_1195 + 64] = stor2[_1194]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_1194])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1319 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1319]:
                        revert with 0, 17
                    if s + mem[_1319] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1319]
                    continue 
                mem[0] = _1194
                mem[_1217 + 32] = uint256(stor[sha3(_1194)].field_0)
                t = _1217 + 32
                u = sha3(_1194)
                while _1217 + (uint255(uint256(stor[_1194].field_0)) * 0.5) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1195] = _1217
                mem[_1195 + 32] = address(stor1[_1194])
                mem[_1195 + 64] = stor2[_1194]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_1194])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1453 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1453]:
                    revert with 0, 17
                if s + mem[_1453] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1453]
                continue 
            if bool(stor[_1194].field_0) == stor[_1194].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[_1194].field_1 % 128:
                mem[_1195] = _1217
                mem[_1195 + 32] = address(stor1[_1194])
                mem[_1195 + 64] = stor2[_1194]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_1194])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1301 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1301]:
                    revert with 0, 17
                if s + mem[_1301] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1301]
                continue 
            if 31 >= stor[_1194].field_1 % 128:
                mem[_1217 + 32] = 256 * Mask(248, 0, stor[_1194].field_8)
                mem[_1195] = _1217
                mem[_1195 + 32] = address(stor1[_1194])
                mem[_1195 + 64] = stor2[_1194]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_1194])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1342 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1342]:
                    revert with 0, 17
                if s + mem[_1342] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1342]
                continue 
            mem[0] = _1194
            mem[_1217 + 32] = uint256(stor[sha3(_1194)].field_0)
            t = _1217 + 32
            u = sha3(_1194)
            while _1217 + stor[_1194].field_1 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_1195] = _1217
            mem[_1195 + 32] = address(stor1[_1194])
            mem[_1195 + 64] = stor2[_1194]
            mem[mem[64] + 4] = arg1
            staticcall address(stor1[_1194])._getRewardAmountOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1454 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1454]:
                revert with 0, 17
            if s + mem[_1454] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1454]
            continue 
        if bool(stor26[idx].field_0) == stor26[idx].field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor26[idx].field_0):
            mem[mem[64]] = Mask(248, 8, uint256(stor26[idx].field_0))
            mem[mem[64] + stor26[idx].field_1 % 128] = 25
            _578 = sha3(Mask(248, 8, uint256(stor26[idx].field_0)), mem[mem[64] + 32 len stor26[idx].field_1 % 128])
            _579 = mem[64]
            mem[64] = mem[64] + 96
            if bool(stor[_578].field_0):
                if bool(stor[_578].field_0) == uint255(uint256(stor[_578].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _592 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor[_578].field_0)) * 0.5) + 32
                mem[_592] = uint255(uint256(stor[_578].field_0)) * 0.5
                if bool(stor[_578].field_0):
                    if bool(stor[_578].field_0) == uint255(uint256(stor[_578].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor[_578].field_0)):
                        mem[_579] = _592
                        mem[_579 + 32] = address(stor1[_578])
                        mem[_579 + 64] = stor2[_578]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_578])._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _636 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_636]:
                            revert with 0, 17
                        if s + mem[_636] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_636]
                        continue 
                    if 31 >= uint255(uint256(stor[_578].field_0)) * 0.5:
                        mem[_592 + 32] = 256 * Mask(248, 0, stor[_578].field_8)
                        mem[_579] = _592
                        mem[_579 + 32] = address(stor1[_578])
                        mem[_579 + 64] = stor2[_578]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_578])._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _717 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_717]:
                            revert with 0, 17
                        if s + mem[_717] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_717]
                        continue 
                    mem[0] = _578
                    mem[_592 + 32] = uint256(stor[sha3(_578)].field_0)
                    t = _592 + 32
                    u = sha3(_578)
                    while _592 + (uint255(uint256(stor[_578].field_0)) * 0.5) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_579] = _592
                    mem[_579 + 32] = address(stor1[_578])
                    mem[_579 + 64] = stor2[_578]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_578])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1185 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1185]:
                        revert with 0, 17
                    if s + mem[_1185] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1185]
                    continue 
                if bool(stor[_578].field_0) == stor[_578].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_578].field_1 % 128:
                    mem[_579] = _592
                    mem[_579 + 32] = address(stor1[_578])
                    mem[_579 + 64] = stor2[_578]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_578])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _673 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_673]:
                        revert with 0, 17
                    if s + mem[_673] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_673]
                    continue 
                if 31 >= stor[_578].field_1 % 128:
                    mem[_592 + 32] = 256 * Mask(248, 0, stor[_578].field_8)
                    mem[_579] = _592
                    mem[_579 + 32] = address(stor1[_578])
                    mem[_579 + 64] = stor2[_578]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_578])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _773 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_773]:
                        revert with 0, 17
                    if s + mem[_773] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_773]
                    continue 
                mem[0] = _578
                mem[_592 + 32] = uint256(stor[sha3(_578)].field_0)
                t = _592 + 32
                u = sha3(_578)
                while _592 + stor[_578].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_579] = _592
                mem[_579 + 32] = address(stor1[_578])
                mem[_579 + 64] = stor2[_578]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_578])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1186 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1186]:
                    revert with 0, 17
                if s + mem[_1186] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1186]
                continue 
            if bool(stor[_578].field_0) == stor[_578].field_1 % 128 < 32:
                revert with 0, 34
            _594 = mem[64]
            mem[64] = mem[64] + ceil32(stor[_578].field_1 % 128) + 32
            mem[_594] = stor[_578].field_1 % 128
            if bool(stor[_578].field_0):
                if bool(stor[_578].field_0) == uint255(uint256(stor[_578].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_578].field_0)):
                    mem[_579] = _594
                    mem[_579 + 32] = address(stor1[_578])
                    mem[_579 + 64] = stor2[_578]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_578])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _675 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_675]:
                        revert with 0, 17
                    if s + mem[_675] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_675]
                    continue 
                if 31 >= uint255(uint256(stor[_578].field_0)) * 0.5:
                    mem[_594 + 32] = 256 * Mask(248, 0, stor[_578].field_8)
                    mem[_579] = _594
                    mem[_579 + 32] = address(stor1[_578])
                    mem[_579 + 64] = stor2[_578]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_578])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _775 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_775]:
                        revert with 0, 17
                    if s + mem[_775] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_775]
                    continue 
                mem[0] = _578
                mem[_594 + 32] = uint256(stor[sha3(_578)].field_0)
                t = _594 + 32
                u = sha3(_578)
                while _594 + (uint255(uint256(stor[_578].field_0)) * 0.5) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_579] = _594
                mem[_579 + 32] = address(stor1[_578])
                mem[_579 + 64] = stor2[_578]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_578])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1187 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1187]:
                    revert with 0, 17
                if s + mem[_1187] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1187]
                continue 
            if bool(stor[_578].field_0) == stor[_578].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[_578].field_1 % 128:
                mem[_579] = _594
                mem[_579 + 32] = address(stor1[_578])
                mem[_579 + 64] = stor2[_578]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_578])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _724 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_724]:
                    revert with 0, 17
                if s + mem[_724] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_724]
                continue 
            if 31 >= stor[_578].field_1 % 128:
                mem[_594 + 32] = 256 * Mask(248, 0, stor[_578].field_8)
                mem[_579] = _594
                mem[_579 + 32] = address(stor1[_578])
                mem[_579 + 64] = stor2[_578]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_578])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _833 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_833]:
                    revert with 0, 17
                if s + mem[_833] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_833]
                continue 
            mem[0] = _578
            mem[_594 + 32] = uint256(stor[sha3(_578)].field_0)
            t = _594 + 32
            u = sha3(_578)
            while _594 + stor[_578].field_1 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_579] = _594
            mem[_579 + 32] = address(stor1[_578])
            mem[_579 + 64] = stor2[_578]
            mem[mem[64] + 4] = arg1
            staticcall address(stor1[_578])._getRewardAmountOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1188 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1188]:
                revert with 0, 17
            if s + mem[_1188] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1188]
            continue 
        if bool(stor26[idx].field_0) != 1:
            mem[0] = 25
            _581 = sha3(mem[mem[64] len -mem[64] + 32])
            _582 = mem[64]
            mem[64] = mem[64] + 96
            if bool(stor[_581].field_0):
                if bool(stor[_581].field_0) == uint255(uint256(stor[_581].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _595 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor[_581].field_0)) * 0.5) + 32
                mem[_595] = uint255(uint256(stor[_581].field_0)) * 0.5
                if bool(stor[_581].field_0):
                    if bool(stor[_581].field_0) == uint255(uint256(stor[_581].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor[_581].field_0)):
                        mem[_582] = _595
                        mem[_582 + 32] = address(stor1[_581])
                        mem[_582 + 64] = stor2[_581]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_581])._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _680 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_680]:
                            revert with 0, 17
                        if s + mem[_680] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_680]
                        continue 
                    if 31 >= uint255(uint256(stor[_581].field_0)) * 0.5:
                        mem[_595 + 32] = 256 * Mask(248, 0, stor[_581].field_8)
                        mem[_582] = _595
                        mem[_582 + 32] = address(stor1[_581])
                        mem[_582 + 64] = stor2[_581]
                        mem[mem[64] + 4] = arg1
                        staticcall address(stor1[_581])._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _788 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s > !mem[_788]:
                            revert with 0, 17
                        if s + mem[_788] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[_788]
                        continue 
                    mem[0] = _581
                    mem[_595 + 32] = uint256(stor[sha3(_581)].field_0)
                    t = _595 + 32
                    u = sha3(_581)
                    while _595 + (uint255(uint256(stor[_581].field_0)) * 0.5) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_582] = _595
                    mem[_582 + 32] = address(stor1[_581])
                    mem[_582 + 64] = stor2[_581]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_581])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1189 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1189]:
                        revert with 0, 17
                    if s + mem[_1189] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1189]
                    continue 
                if bool(stor[_581].field_0) == stor[_581].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor[_581].field_1 % 128:
                    mem[_582] = _595
                    mem[_582 + 32] = address(stor1[_581])
                    mem[_582 + 64] = stor2[_581]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_581])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _732 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_732]:
                        revert with 0, 17
                    if s + mem[_732] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_732]
                    continue 
                if 31 >= stor[_581].field_1 % 128:
                    mem[_595 + 32] = 256 * Mask(248, 0, stor[_581].field_8)
                    mem[_582] = _595
                    mem[_582 + 32] = address(stor1[_581])
                    mem[_582 + 64] = stor2[_581]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_581])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _848 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_848]:
                        revert with 0, 17
                    if s + mem[_848] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_848]
                    continue 
                mem[0] = _581
                mem[_595 + 32] = uint256(stor[sha3(_581)].field_0)
                t = _595 + 32
                u = sha3(_581)
                while _595 + stor[_581].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_582] = _595
                mem[_582 + 32] = address(stor1[_581])
                mem[_582 + 64] = stor2[_581]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_581])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1190 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1190]:
                    revert with 0, 17
                if s + mem[_1190] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1190]
                continue 
            if bool(stor[_581].field_0) == stor[_581].field_1 % 128 < 32:
                revert with 0, 34
            _597 = mem[64]
            mem[64] = mem[64] + ceil32(stor[_581].field_1 % 128) + 32
            mem[_597] = stor[_581].field_1 % 128
            if bool(stor[_581].field_0):
                if bool(stor[_581].field_0) == uint255(uint256(stor[_581].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_581].field_0)):
                    mem[_582] = _597
                    mem[_582 + 32] = address(stor1[_581])
                    mem[_582 + 64] = stor2[_581]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_581])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _734 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_734]:
                        revert with 0, 17
                    if s + mem[_734] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_734]
                    continue 
                if 31 >= uint255(uint256(stor[_581].field_0)) * 0.5:
                    mem[_597 + 32] = 256 * Mask(248, 0, stor[_581].field_8)
                    mem[_582] = _597
                    mem[_582 + 32] = address(stor1[_581])
                    mem[_582 + 64] = stor2[_581]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_581])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _850 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_850]:
                        revert with 0, 17
                    if s + mem[_850] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_850]
                    continue 
                mem[0] = _581
                mem[_597 + 32] = uint256(stor[sha3(_581)].field_0)
                t = _597 + 32
                u = sha3(_581)
                while _597 + (uint255(uint256(stor[_581].field_0)) * 0.5) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_582] = _597
                mem[_582 + 32] = address(stor1[_581])
                mem[_582 + 64] = stor2[_581]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_581])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1191 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1191]:
                    revert with 0, 17
                if s + mem[_1191] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1191]
                continue 
            if bool(stor[_581].field_0) == stor[_581].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[_581].field_1 % 128:
                mem[_582] = _597
                mem[_582 + 32] = address(stor1[_581])
                mem[_582 + 64] = stor2[_581]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_581])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _795 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_795]:
                    revert with 0, 17
                if s + mem[_795] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_795]
                continue 
            if 31 >= stor[_581].field_1 % 128:
                mem[_597 + 32] = 256 * Mask(248, 0, stor[_581].field_8)
                mem[_582] = _597
                mem[_582 + 32] = address(stor1[_581])
                mem[_582 + 64] = stor2[_581]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_581])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _900 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_900]:
                    revert with 0, 17
                if s + mem[_900] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_900]
                continue 
            mem[0] = _581
            mem[_597 + 32] = uint256(stor[sha3(_581)].field_0)
            t = _597 + 32
            u = sha3(_581)
            while _597 + stor[_581].field_1 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_582] = _597
            mem[_582 + 32] = address(stor1[_581])
            mem[_582 + 64] = stor2[_581]
            mem[mem[64] + 4] = arg1
            staticcall address(stor1[_581])._getRewardAmountOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1192 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1192]:
                revert with 0, 17
            if s + mem[_1192] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1192]
            continue 
        mem[0] = sha3(26) + idx
        t = 0
        u = sha3(mem[0])
        while t < stor26[idx].field_1 % 128:
            mem[t + _567] = uint256(stor[u].field_0)
            t = t + 32
            u = u + 1
            continue 
        mem[_567 + stor26[idx].field_1 % 128] = 25
        _1197 = sha3(mem[mem[64] len _567 + stor26[idx].field_1 % 128 + -mem[64] + 32])
        _1198 = mem[64]
        mem[64] = mem[64] + 96
        if bool(stor[_1197].field_0):
            if bool(stor[_1197].field_0) == uint255(uint256(stor[_1197].field_0)) * 0.5 < 32:
                revert with 0, 34
            _1216 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(stor[_1197].field_0)) * 0.5) + 32
            mem[_1216] = uint255(uint256(stor[_1197].field_0)) * 0.5
            if bool(stor[_1197].field_0):
                if bool(stor[_1197].field_0) == uint255(uint256(stor[_1197].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor[_1197].field_0)):
                    mem[_1198] = _1216
                    mem[_1198 + 32] = address(stor1[_1197])
                    mem[_1198 + 64] = stor2[_1197]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_1197])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1265 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1265]:
                        revert with 0, 17
                    if s + mem[_1265] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1265]
                    continue 
                if 31 >= uint255(uint256(stor[_1197].field_0)) * 0.5:
                    mem[_1216 + 32] = 256 * Mask(248, 0, stor[_1197].field_8)
                    mem[_1198] = _1216
                    mem[_1198 + 32] = address(stor1[_1197])
                    mem[_1198 + 64] = stor2[_1197]
                    mem[mem[64] + 4] = arg1
                    staticcall address(stor1[_1197])._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_1304]:
                        revert with 0, 17
                    if s + mem[_1304] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_1304]
                    continue 
                mem[0] = _1197
                mem[_1216 + 32] = uint256(stor[sha3(_1197)].field_0)
                t = _1216 + 32
                u = sha3(_1197)
                while _1216 + (uint255(uint256(stor[_1197].field_0)) * 0.5) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1198] = _1216
                mem[_1198 + 32] = address(stor1[_1197])
                mem[_1198 + 64] = stor2[_1197]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_1197])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1455 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1455]:
                    revert with 0, 17
                if s + mem[_1455] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1455]
                continue 
            if bool(stor[_1197].field_0) == stor[_1197].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[_1197].field_1 % 128:
                mem[_1198] = _1216
                mem[_1198 + 32] = address(stor1[_1197])
                mem[_1198 + 64] = stor2[_1197]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_1197])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1286 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1286]:
                    revert with 0, 17
                if s + mem[_1286] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1286]
                continue 
            if 31 >= stor[_1197].field_1 % 128:
                mem[_1216 + 32] = 256 * Mask(248, 0, stor[_1197].field_8)
                mem[_1198] = _1216
                mem[_1198 + 32] = address(stor1[_1197])
                mem[_1198 + 64] = stor2[_1197]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_1197])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1327 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1327]:
                    revert with 0, 17
                if s + mem[_1327] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1327]
                continue 
            mem[0] = _1197
            mem[_1216 + 32] = uint256(stor[sha3(_1197)].field_0)
            t = _1216 + 32
            u = sha3(_1197)
            while _1216 + stor[_1197].field_1 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_1198] = _1216
            mem[_1198 + 32] = address(stor1[_1197])
            mem[_1198 + 64] = stor2[_1197]
            mem[mem[64] + 4] = arg1
            staticcall address(stor1[_1197])._getRewardAmountOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1456 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1456]:
                revert with 0, 17
            if s + mem[_1456] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1456]
            continue 
        if bool(stor[_1197].field_0) == stor[_1197].field_1 % 128 < 32:
            revert with 0, 34
        _1218 = mem[64]
        mem[64] = mem[64] + ceil32(stor[_1197].field_1 % 128) + 32
        mem[_1218] = stor[_1197].field_1 % 128
        if bool(stor[_1197].field_0):
            if bool(stor[_1197].field_0) == uint255(uint256(stor[_1197].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor[_1197].field_0)):
                mem[_1198] = _1218
                mem[_1198 + 32] = address(stor1[_1197])
                mem[_1198 + 64] = stor2[_1197]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_1197])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1288 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1288]:
                    revert with 0, 17
                if s + mem[_1288] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1288]
                continue 
            if 31 >= uint255(uint256(stor[_1197].field_0)) * 0.5:
                mem[_1218 + 32] = 256 * Mask(248, 0, stor[_1197].field_8)
                mem[_1198] = _1218
                mem[_1198 + 32] = address(stor1[_1197])
                mem[_1198 + 64] = stor2[_1197]
                mem[mem[64] + 4] = arg1
                staticcall address(stor1[_1197])._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1329 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_1329]:
                    revert with 0, 17
                if s + mem[_1329] < s:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_1329]
                continue 
            mem[0] = _1197
            mem[_1218 + 32] = uint256(stor[sha3(_1197)].field_0)
            t = _1218 + 32
            u = sha3(_1197)
            while _1218 + (uint255(uint256(stor[_1197].field_0)) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_1198] = _1218
            mem[_1198 + 32] = address(stor1[_1197])
            mem[_1198 + 64] = stor2[_1197]
            mem[mem[64] + 4] = arg1
            staticcall address(stor1[_1197])._getRewardAmountOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1457 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1457]:
                revert with 0, 17
            if s + mem[_1457] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1457]
            continue 
        if bool(stor[_1197].field_0) == stor[_1197].field_1 % 128 < 32:
            revert with 0, 34
        if not stor[_1197].field_1 % 128:
            mem[_1198] = _1218
            mem[_1198 + 32] = address(stor1[_1197])
            mem[_1198 + 64] = stor2[_1197]
            mem[mem[64] + 4] = arg1
            staticcall address(stor1[_1197])._getRewardAmountOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1311 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1311]:
                revert with 0, 17
            if s + mem[_1311] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1311]
            continue 
        if 31 >= stor[_1197].field_1 % 128:
            mem[_1218 + 32] = 256 * Mask(248, 0, stor[_1197].field_8)
            mem[_1198] = _1218
            mem[_1198 + 32] = address(stor1[_1197])
            mem[_1198 + 64] = stor2[_1197]
            mem[mem[64] + 4] = arg1
            staticcall address(stor1[_1197])._getRewardAmountOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1352 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_1352]:
                revert with 0, 17
            if s + mem[_1352] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_1352]
            continue 
        mem[0] = _1197
        mem[_1218 + 32] = uint256(stor[sha3(_1197)].field_0)
        t = _1218 + 32
        u = sha3(_1197)
        while _1218 + stor[_1197].field_1 % 128 > t:
            mem[t + 32] = uint256(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_1198] = _1218
        mem[_1198 + 32] = address(stor1[_1197])
        mem[_1198 + 64] = stor2[_1197]
        mem[mem[64] + 4] = arg1
        staticcall address(stor1[_1197])._getRewardAmountOf(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1458 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_1458]:
            revert with 0, 17
        if s + mem[_1458] < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_1458]
        continue 
    return s
}



}
