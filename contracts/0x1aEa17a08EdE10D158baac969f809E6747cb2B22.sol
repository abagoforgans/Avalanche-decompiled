contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const decimals = 18

const BURN_ADDRESS = 57005


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
address joePairAddress;
address sub_527509f3Address;
address teamPoolAddress;
address rewardsPoolAddress;
uint256 rewardsFee;
uint256 liquidityPoolFee;
uint256 sub_b326a0f9;
uint256 cashoutFee;
uint256 totalFees;
uint256 swapTokensAmount;
uint256 totalClaimed;
uint8 isTradingEnabled;
uint8 sub_fabc4035; offset 8
uint8 antiBot; offset 16
uint256 stor24; offset 16
uint256 stor24; offset 8
uint256 sub_629c7074;
uint256 currentBlock;
uint8 antiwhale;
uint16 buyTax; offset 8
uint16 sellTax; offset 24
address stor27;
address stor27; offset 40
address stor28;
uint256 stor29;
uint8 stor30;
uint16 stor30;
uint16 maxTransferAmountRate; offset 8
uint16 maxBalanceAmountRate; offset 24
mapping of uint8 stor31;
mapping of uint8 stor32;
mapping of uint256 sub_32dbbdad;
mapping of uint8 stor34;

function rewardsPool() {
    return rewardsPoolAddress
}

function isTradingEnabled() {
    return bool(isTradingEnabled)
}

function totalFees() {
    return totalFees
}

function totalSupply() {
    return totalSupply
}

function isExcludedFromAntiWhale(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor34[address(arg1)])
}

function rewardsFee() {
    return rewardsFee
}

function sub_32dbbdad(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_32dbbdad[arg1]
}

function teamPool() {
    return teamPoolAddress
}

function totalShares() {
    return totalShares
}

function antiwhale() {
    return bool(antiwhale)
}

function maxTransferAmountRate() {
    return maxTransferAmountRate
}

function released(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return released[address(arg1)][address(arg2)]
}

function maxBalanceAmountRate() {
    return maxBalanceAmountRate
}

function buyTax() {
    return buyTax
}

function sub_527509f3(?) {
    return sub_527509f3Address
}

function liquidityPoolFee() {
    return liquidityPoolFee
}

function swapTokensAmount() {
    return swapTokensAmount
}

function sub_629c7074(?) {
    return sub_629c7074
}

function joePair() {
    return joePairAddress
}

function cashoutFee() {
    return cashoutFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function antiBot() {
    return bool(antiBot)
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

function released(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return released[address(arg1)]
}

function sub_b326a0f9(?) {
    return sub_b326a0f9
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor32[arg1])
}

function sellTax() {
    return sellTax
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[address(arg1)]
}

function totalClaimed() {
    return totalClaimed
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

function currentBlock() {
    return currentBlock
}

function totalReleased() {
    return totalReleased
}

function sub_fabc4035(?) {
    return bool(sub_fabc4035)
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor31[arg1])
}

function getCurrentBlock() {
    currentBlock = block.number
}

function sub_62677fee(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    sub_32dbbdad[address(arg1)] = block.number
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_5cc15b65(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_629c7074 = arg1
}

function updateRwSwapFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor29 = arg1
}

function updateCashoutFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cashoutFee = arg1
}

function updateSwapTokensAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapTokensAmount = arg1
}

function setAntiWhale(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    antiwhale = uint8(arg1)
}

function sub_6eacab12(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    teamPoolAddress = address(arg1)
}

function sub_2ae883fd(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isTradingEnabled = uint8(bool(arg1))
}

function sub_6653a340(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsPoolAddress = address(arg1)
}

function setAntiBot(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor24.field_16) = Mask(240, 0, arg1)
}

function sub_f4e27dc8(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor24.field_8) = Mask(248, 0, bool(arg1))
}

function sub_c3b045e4(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require uint16(arg1) <= 1000
    buyTax = uint16(arg1)
}

function sub_9c138b7b(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require uint16(arg1) <= 1000
    sellTax = uint16(arg1)
}

function blacklistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor31[address(arg1)] = uint8(arg2)
}

function setExcludedFromAntiWhale(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor34[address(arg1)] = uint8(arg2)
}

function maxBalanceAmount() {
    if totalSupply < balanceOf[stor16]:
        revert with 0, 17
    if totalSupply - balanceOf[stor16] and maxBalanceAmountRate > -1 / totalSupply - balanceOf[stor16]:
        revert with 0, 17
    return ((totalSupply * maxBalanceAmountRate) - (balanceOf[stor16] * maxBalanceAmountRate) / 10000)
}

function maxTransferAmount() {
    if totalSupply < balanceOf[stor16]:
        revert with 0, 17
    if totalSupply - balanceOf[stor16] and maxTransferAmountRate > -1 / totalSupply - balanceOf[stor16]:
        revert with 0, 17
    return ((totalSupply * maxTransferAmountRate) - (balanceOf[stor16] * maxTransferAmountRate) / 10000)
}

function updateLiquidityFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityPoolFee = arg1
    if rewardsFee > !arg1:
        revert with 0, 17
    if rewardsFee + arg1 > !sub_b326a0f9:
        revert with 0, 17
    totalFees = rewardsFee + arg1 + sub_b326a0f9
}

function updateRewardsFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsFee = arg1
    if arg1 > !liquidityPoolFee:
        revert with 0, 17
    if arg1 + liquidityPoolFee > !sub_b326a0f9:
        revert with 0, 17
    totalFees = arg1 + liquidityPoolFee + sub_b326a0f9
}

function updateTeamFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b326a0f9 = arg1
    if rewardsFee > !liquidityPoolFee:
        revert with 0, 17
    if rewardsFee + liquidityPoolFee > !arg1:
        revert with 0, 17
    totalFees = rewardsFee + liquidityPoolFee + arg1
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

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if joePairAddress == arg1:
        revert with 0, 'TKN:2'
    if arg2 == bool(stor32[address(arg1)]):
        revert with 0, 'TKN:3'
    stor32[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function updatemaxBalanceAmountRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'NEBULA::updatemaxBalanceAmountRate: Max transfer amount rate must not exceed the maximum rate.'
    emit 0x48a8b3c1: uint16(stor30.field_0), arg1, msg.sender
    maxBalanceAmountRate = arg1
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

function updateMaxTransferAmountRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'NEBULA::updateMaxTransferAmountRate: Max transfer amount rate must not exceed the maximum rate.'
    emit MaxTransferAmountRateUpdated(uint16(stor30.field_0), arg1, msg.sender);
    maxTransferAmountRate = arg1
}

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function sub_e159b3ae(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(stor27.field_40) == address(arg1):
        revert with 0, 'TKN:1'
    emit 0xb172ff8d: address(arg1), address(stor27.field_40)
    require ext_code.size(address(stor27.field_40))
    staticcall address(stor27.field_40).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    joePairAddress = ext_call.return_data[12 len 20]
    sub_527509f3Address = address(arg1)
}

function migrate(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _42 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        _44 = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
            revert with 0, 17
        totalSupply += mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        if balanceOf[mem[(32 * idx) + 140 len 20]] > !mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
            revert with 0, 17
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        emit Transfer(_44, 0, address(_42));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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

function release(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not shares[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    mem[100] = this.address
    require ext_code.size(arg1)
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

function cashoutAll() {
    if not msg.sender:
        revert with 0, 'CASHOUT:5'
    if stor31[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if teamPoolAddress == msg.sender:
        revert with 0, 'CASHOUT:7'
    if rewardsPoolAddress == msg.sender:
        revert with 0, 'CASHOUT:7'
    mem[100] = msg.sender
    require ext_code.size(stor28)
    staticcall stor28.getAllNodesRewards(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CASHOUT:8'
    if not sub_fabc4035:
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor16] < ext_call.return_data[0]:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor16] -= ext_call.return_data[0]
        if balanceOf[msg.sender] > !ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[msg.sender] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], rewardsPoolAddress, msg.sender);
        require ext_code.size(stor28)
        call stor28.cashoutAllNodesRewards(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if totalClaimed > !ext_call.return_data[0]:
            revert with 0, 17
        totalClaimed += ext_call.return_data[0]
        emit Cashout(ext_call.return_data[0], msg.sender, 0);
    else:
        if not cashoutFee:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            if not rewardsPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[stor16] < ext_call.return_data[0]:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[stor16] -= ext_call.return_data[0]
            if balanceOf[msg.sender] > !ext_call.return_data[0]:
                revert with 0, 17
            balanceOf[msg.sender] += ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], rewardsPoolAddress, msg.sender);
            require ext_code.size(stor28)
            call stor28.cashoutAllNodesRewards(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalClaimed > !ext_call.return_data[0]:
                revert with 0, 17
            totalClaimed += ext_call.return_data[0]
            emit Cashout(ext_call.return_data[0], msg.sender, 0);
        else:
            if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = this.address
            require ext_code.size(address(stor27.field_40))
            staticcall address(stor27.field_40).WAVAX() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
            if not this.address:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 36
                mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                mem[(2 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            if not address(stor27.field_40):
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 34
                mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                mem[(2 * ceil32(return_data.size)) + 292] = 0x7373000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            allowance[address(this.address)][address(stor27.field_0)].field_0 = ext_call.return_data[0] * cashoutFee / 100
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0] * cashoutFee / 100
            emit Approval(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], this.address, address(stor27.field_40));
            mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * cashoutFee / 100
            mem[(2 * ceil32(return_data.size)) + 228] = 0
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 388
            t = ceil32(return_data.size) + 128
            while idx < mem[ceil32(return_data.size) + 96]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(address(stor27.field_40))
            call address(stor27.field_40).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * cashoutFee / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            call rewardsPoolAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
                revert with 0, 17
            if not rewardsPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[stor16] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[stor16] = balanceOf[stor16] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
            if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                revert with 0, 17
            balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
            emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), rewardsPoolAddress, msg.sender);
            require ext_code.size(stor28)
            call stor28.cashoutAllNodesRewards(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                revert with 0, 17
            totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
            emit Cashout((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), msg.sender, 0);
}

function cashoutReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'CASHOUT:1'
    if stor31[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if teamPoolAddress == msg.sender:
        revert with 0, 'CASHOUT:3'
    if rewardsPoolAddress == msg.sender:
        revert with 0, 'CASHOUT:3'
    mem[100] = msg.sender
    mem[132] = arg1
    require ext_code.size(stor28)
    staticcall stor28.getNodeReward(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CASHOUT:4'
    if not sub_fabc4035:
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor16] < ext_call.return_data[0]:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor16] -= ext_call.return_data[0]
        if balanceOf[msg.sender] > !ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[msg.sender] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], rewardsPoolAddress, msg.sender);
        require ext_code.size(stor28)
        call stor28.cashoutNodeReward(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if totalClaimed > !ext_call.return_data[0]:
            revert with 0, 17
        totalClaimed += ext_call.return_data[0]
        emit Cashout(ext_call.return_data[0], msg.sender, arg1);
    else:
        if not cashoutFee:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            if not rewardsPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[stor16] < ext_call.return_data[0]:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[stor16] -= ext_call.return_data[0]
            if balanceOf[msg.sender] > !ext_call.return_data[0]:
                revert with 0, 17
            balanceOf[msg.sender] += ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], rewardsPoolAddress, msg.sender);
            require ext_code.size(stor28)
            call stor28.cashoutNodeReward(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalClaimed > !ext_call.return_data[0]:
                revert with 0, 17
            totalClaimed += ext_call.return_data[0]
            emit Cashout(ext_call.return_data[0], msg.sender, arg1);
        else:
            if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = this.address
            require ext_code.size(address(stor27.field_40))
            staticcall address(stor27.field_40).WAVAX() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
            if not this.address:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 36
                mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                mem[(2 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            if not address(stor27.field_40):
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 34
                mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                mem[(2 * ceil32(return_data.size)) + 292] = 0x7373000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            allowance[address(this.address)][address(stor27.field_0)].field_0 = ext_call.return_data[0] * cashoutFee / 100
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0] * cashoutFee / 100
            emit Approval(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], this.address, address(stor27.field_40));
            mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * cashoutFee / 100
            mem[(2 * ceil32(return_data.size)) + 228] = 0
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 388
            t = ceil32(return_data.size) + 128
            while idx < mem[ceil32(return_data.size) + 96]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(address(stor27.field_40))
            call address(stor27.field_40).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * cashoutFee / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            call rewardsPoolAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
                revert with 0, 17
            if not rewardsPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[stor16] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[stor16] = balanceOf[stor16] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
            if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                revert with 0, 17
            balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
            emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), rewardsPoolAddress, msg.sender);
            require ext_code.size(stor28)
            call stor28.cashoutNodeReward(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                revert with 0, 17
            totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
            emit Cashout((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if totalSupply < balanceOf[stor16]:
        revert with 0, 17
    if totalSupply - balanceOf[stor16] and maxTransferAmountRate > -1 / totalSupply - balanceOf[stor16]:
        revert with 0, 17
    if (totalSupply * maxTransferAmountRate) - (balanceOf[stor16] * maxTransferAmountRate) / 10000 > 0:
        if not stor34[address(msg.sender)]:
            if not stor34[address(arg1)]:
                if totalSupply < balanceOf[stor16]:
                    revert with 0, 17
                if totalSupply - balanceOf[stor16] and maxTransferAmountRate > -1 / totalSupply - balanceOf[stor16]:
                    revert with 0, 17
                if arg2 > (totalSupply * maxTransferAmountRate) - (balanceOf[stor16] * maxTransferAmountRate) / 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'NEBULA::antiWhale: Transfer amount exceeds the maxTransferAmount'
                if joePairAddress == msg.sender:
                    if totalSupply < balanceOf[stor16]:
                        revert with 0, 17
                    if totalSupply - balanceOf[stor16] and maxBalanceAmountRate > -1 / totalSupply - balanceOf[stor16]:
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    if balanceOf[address(arg1)] + arg2 > (totalSupply * maxBalanceAmountRate) - (balanceOf[stor16] * maxBalanceAmountRate) / 10000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'NEBULA::antiWhale: Transfer would exceed the maxBalanceAmount of the recipient'
    if 1 == bool(antiBot):
        if joePairAddress == msg.sender:
            sub_32dbbdad[address(msg.sender)] = block.number
        if joePairAddress == arg1:
            currentBlock = block.number
            if sub_32dbbdad[address(msg.sender)] > !sub_629c7074:
                revert with 0, 17
            if currentBlock <= sub_32dbbdad[address(msg.sender)] + sub_629c7074:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor31[address(msg.sender)] = 1
    if stor31[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if stor31[address(arg1)]:
        revert with 0, 'BLACKLISTED'
    if not msg.sender:
        revert with 0, 'ERC20:1'
    if not arg1:
        revert with 0, 'ERC20:2'
    if owner != msg.sender:
        if joePairAddress != arg1:
            if address(stor27.field_40) != arg1:
                if arg1 != this.address:
                    if msg.sender != this.address:
                        if not isTradingEnabled:
                            revert with 0, 'TRADING_DISABLED'
    if joePairAddress != msg.sender:
        if joePairAddress != arg1:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            balanceOf[arg1] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not sellTax:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                balanceOf[arg1] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if arg2 and sellTax > -1 / arg2:
                    revert with 0, 17
                if arg2 < arg2 * sellTax / 10000:
                    revert with 0, 17
                if arg2 * sellTax / 10000 > !(arg2 - (arg2 * sellTax / 10000)):
                    revert with 0, 17
                if arg2 != arg2:
                    revert with 0, 'invalid Tax'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                if balanceOf[this.address] > !(arg2 * sellTax / 10000):
                    revert with 0, 17
                balanceOf[this.address] += arg2 * sellTax / 10000
                emit Transfer((arg2 * sellTax / 10000), msg.sender, this.address);
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                    revert with 0, 17
                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
    else:
        if buyTax:
            if arg2 and buyTax > -1 / arg2:
                revert with 0, 17
            if arg2 < arg2 * buyTax / 10000:
                revert with 0, 17
            if arg2 * buyTax / 10000 > !(arg2 - (arg2 * buyTax / 10000)):
                revert with 0, 17
            if arg2 != arg2:
                revert with 0, 'invalid Tax'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2 * buyTax / 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2 * buyTax / 10000
            if balanceOf[this.address] > !(arg2 * buyTax / 10000):
                revert with 0, 17
            balanceOf[this.address] += arg2 * buyTax / 10000
            emit Transfer((arg2 * buyTax / 10000), msg.sender, this.address);
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2 - (arg2 * buyTax / 10000):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * buyTax / 10000)
            if balanceOf[arg1] > !(arg2 - (arg2 * buyTax / 10000)):
                revert with 0, 17
            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * buyTax / 10000)
            emit Transfer((arg2 - (arg2 * buyTax / 10000)), msg.sender, arg1);
        else:
            if joePairAddress != arg1:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                balanceOf[arg1] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not sellTax:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[arg1] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg2 and sellTax > -1 / arg2:
                        revert with 0, 17
                    if arg2 < arg2 * sellTax / 10000:
                        revert with 0, 17
                    if arg2 * sellTax / 10000 > !(arg2 - (arg2 * sellTax / 10000)):
                        revert with 0, 17
                    if arg2 != arg2:
                        revert with 0, 'invalid Tax'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                    if balanceOf[this.address] > !(arg2 * sellTax / 10000):
                        revert with 0, 17
                    balanceOf[this.address] += arg2 * sellTax / 10000
                    emit Transfer((arg2 * sellTax / 10000), msg.sender, this.address);
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                    if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                        revert with 0, 17
                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                    emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
    return 1
}

function createNodeWithTokens(string arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if 3 >= arg1.length:
        revert with 0, 'NC:1'
    if arg1.length >= 32:
        revert with 0, 'NC:1'
    if not msg.sender:
        revert with 0, 'NC:2'
    if stor31[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if teamPoolAddress == msg.sender:
        revert with 0, 'NC:4'
    if rewardsPoolAddress == msg.sender:
        revert with 0, 'NC:4'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'NC:5'
    if balanceOf[address(this.address)] < swapTokensAmount:
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not this.address:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[this.address] > !arg2:
            revert with 0, 17
        balanceOf[this.address] += arg2
        emit Transfer(arg2, msg.sender, this.address);
        require ext_code.size(stor28)
        call stor28.0x90219732 with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
    else:
        if not sub_fabc4035:
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not this.address:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[this.address] > !arg2:
                revert with 0, 17
            balanceOf[this.address] += arg2
            emit Transfer(arg2, msg.sender, this.address);
            require ext_code.size(stor28)
            call stor28.0x90219732 with:
                 gas gas_remaining wei
                args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
        else:
            if uint8(stor30.field_0):
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[this.address] > !arg2:
                    revert with 0, 17
                balanceOf[this.address] += arg2
                emit Transfer(arg2, msg.sender, this.address);
                require ext_code.size(stor28)
                call stor28.0x90219732 with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
            else:
                if owner == msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[this.address] > !arg2:
                        revert with 0, 17
                    balanceOf[this.address] += arg2
                    emit Transfer(arg2, msg.sender, this.address);
                    require ext_code.size(stor28)
                    call stor28.0x90219732 with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
                else:
                    if stor32[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[this.address] > !arg2:
                            revert with 0, 17
                        balanceOf[this.address] += arg2
                        emit Transfer(arg2, msg.sender, this.address);
                        require ext_code.size(stor28)
                        call stor28.0x90219732 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
                    else:
                        uint8(stor30.field_0) = 1
                        if balanceOf[address(this.address)] and sub_b326a0f9 > -1 / balanceOf[address(this.address)]:
                            revert with 0, 17
                        mem[ceil32(ceil32(arg1.length)) + 129] = this.address
                        require ext_code.size(address(stor27.field_40))
                        staticcall address(stor27.field_40).WAVAX() with:
                                gas gas_remaining wei
                        mem[ceil32(ceil32(arg1.length)) + 193] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(ceil32(arg1.length)) + 161] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(stor27.field_40):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][address(stor27.field_0)].field_0 = balanceOf[address(this.address)] * sub_b326a0f9 / 100
                        emit Approval((balanceOf[address(this.address)] * sub_b326a0f9 / 100), this.address, address(stor27.field_40));
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 197] = balanceOf[address(this.address)] * sub_b326a0f9 / 100
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 357] = 2
                        idx = 0
                        s = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 389
                        t = ceil32(ceil32(arg1.length)) + 129
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 293] = this.address
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 325] = block.timestamp
                        require ext_code.size(address(stor27.field_40))
                        call address(stor27.field_40).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)] * sub_b326a0f9 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 389 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        call teamPoolAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if balanceOf[address(this.address)] and rewardsFee > -1 / balanceOf[address(this.address)]:
                            revert with 0, 17
                        if balanceOf[address(this.address)] * rewardsFee / 100 and stor29 > -1 / balanceOf[address(this.address)] * rewardsFee / 100:
                            revert with 0, 17
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = 2
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 225] = this.address
                        require ext_code.size(address(stor27.field_40))
                        staticcall address(stor27.field_40).WAVAX() with:
                                gas gas_remaining wei
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 289] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 257] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(stor27.field_40):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][address(stor27.field_0)].field_0 = balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100
                        emit Approval((balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100), this.address, address(stor27.field_40));
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 160
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 453] = 2
                        idx = 0
                        s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 485
                        t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 225
                        while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = this.address
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421] = block.timestamp
                        require ext_code.size(address(stor27.field_40))
                        call address(stor27.field_40).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 453 len (32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        call rewardsPoolAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if balanceOf[address(this.address)] * rewardsFee / 100 < balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100:
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not rewardsPoolAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(this.address)] < (balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100):
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * rewardsFee / 100) + (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100)
                        if balanceOf[stor16] > !((balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100)):
                            revert with 0, 17
                        balanceOf[stor16] = balanceOf[stor16] + (balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100)
                        emit Transfer(((balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100)), this.address, rewardsPoolAddress);
                        if balanceOf[address(this.address)] and liquidityPoolFee > -1 / balanceOf[address(this.address)]:
                            revert with 0, 17
                        if balanceOf[address(this.address)] * liquidityPoolFee / 100 < balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2:
                            revert with 0, 17
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289] = 2
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = this.address
                        require ext_code.size(address(stor27.field_40))
                        staticcall address(stor27.field_40).WAVAX() with:
                                gas gas_remaining wei
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 385] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 353] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(stor27.field_40):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][address(stor27.field_0)].field_0 = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                        allowance[address(this.address)][address(stor27.field_0)].field_255 = 0
                        emit Approval((balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), this.address, address(stor27.field_40));
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 385] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 389] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 421] = 0
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 453] = 160
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 549] = 2
                        idx = 0
                        s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 581
                        t = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321
                        while idx < mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(stor27.field_40))
                        call address(stor27.field_40).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 549 len (32 * mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(stor27.field_40):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][address(stor27.field_0)].field_0 = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                        emit Approval(((balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)), this.address, address(stor27.field_40));
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 485] = 0
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 517] = 0
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 549] = block.timestamp
                        require ext_code.size(address(stor27.field_40))
                        call address(stor27.field_40).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2));
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 385] = 2
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 417] = this.address
                        require ext_code.size(address(stor27.field_40))
                        staticcall address(stor27.field_40).WAVAX() with:
                                gas gas_remaining wei
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 481] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 449] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(stor27.field_40):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][address(stor27.field_0)].field_0 = balanceOf[address(this.address)]
                        emit Approval(balanceOf[address(this.address)], this.address, address(stor27.field_40));
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 481] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 485] = balanceOf[address(this.address)]
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 517] = 0
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 549] = 160
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 645] = 2
                        idx = 0
                        s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 677
                        t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 417
                        while idx < mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 385]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 581] = this.address
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 613] = block.timestamp
                        require ext_code.size(address(stor27.field_40))
                        call address(stor27.field_40).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 645 len (32 * mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 385]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor30.field_0) = 0
                        if not msg.sender:
                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 481] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 485] = 32
                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 517] = 37
                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 549] = 'ERC20: transfer from the zero ad'
                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 581] = 0x6472657373000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 481
                               len (5 * ceil32(return_data.size)) + 132
                        if not this.address:
                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 481] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 485] = 32
                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 517] = 35
                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 549] = 'ERC20: transfer to the zero addr'
                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 581] = 0x6573730000000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 481
                               len (5 * ceil32(return_data.size)) + 132
                        if balanceOf[address(msg.sender)] < arg2:
                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 481] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 485] = 32
                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 517] = 38
                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 549] = 'ERC20: transfer amount exceeds b'
                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 581] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                            revert with memory
                              from ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 481
                               len (5 * ceil32(return_data.size)) + 132
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[this.address] > !arg2:
                            revert with 0, 17
                        balanceOf[this.address] += arg2
                        emit Transfer(arg2, msg.sender, this.address);
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 485] = msg.sender
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 517] = 96
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 581] = arg1.length
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 613 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 2) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                        if ceil32(arg1.length) > arg1.length:
                            mem[arg1.length + ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 613] = 0
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 549] = arg2
                        require ext_code.size(stor28)
                        call stor28.0x90219732 with:
                             gas gas_remaining wei
                            args mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 485 len ceil32(arg1.length) + (5 * ceil32(return_data.size)) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5c69cb5d(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'COMP:1'
    if stor31[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if teamPoolAddress == msg.sender:
        revert with 0, 'COMP:2'
    if rewardsPoolAddress == msg.sender:
        revert with 0, 'COMP:2'
    mem[100] = msg.sender
    mem[132] = arg1
    require ext_code.size(stor28)
    staticcall stor28.getNodeReward(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'COMP:3'
    if balanceOf[address(this.address)] < swapTokensAmount:
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not this.address:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor16] < ext_call.return_data[0]:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor16] -= ext_call.return_data[0]
        if balanceOf[this.address] > !ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[this.address] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], rewardsPoolAddress, this.address);
        require ext_code.size(stor28)
        call stor28.0xcbd14993 with:
             gas gas_remaining wei
            args msg.sender, arg1, ext_call.return_data[0]
    else:
        if not sub_fabc4035:
            if not rewardsPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not this.address:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[stor16] < ext_call.return_data[0]:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[stor16] -= ext_call.return_data[0]
            if balanceOf[this.address] > !ext_call.return_data[0]:
                revert with 0, 17
            balanceOf[this.address] += ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], rewardsPoolAddress, this.address);
            require ext_code.size(stor28)
            call stor28.0xcbd14993 with:
                 gas gas_remaining wei
                args msg.sender, arg1, ext_call.return_data[0]
        else:
            if uint8(stor30.field_0):
                if not rewardsPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[stor16] < ext_call.return_data[0]:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[stor16] -= ext_call.return_data[0]
                if balanceOf[this.address] > !ext_call.return_data[0]:
                    revert with 0, 17
                balanceOf[this.address] += ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], rewardsPoolAddress, this.address);
                require ext_code.size(stor28)
                call stor28.0xcbd14993 with:
                     gas gas_remaining wei
                    args msg.sender, arg1, ext_call.return_data[0]
            else:
                if owner == msg.sender:
                    if not rewardsPoolAddress:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[stor16] < ext_call.return_data[0]:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[stor16] -= ext_call.return_data[0]
                    if balanceOf[this.address] > !ext_call.return_data[0]:
                        revert with 0, 17
                    balanceOf[this.address] += ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], rewardsPoolAddress, this.address);
                    require ext_code.size(stor28)
                    call stor28.0xcbd14993 with:
                         gas gas_remaining wei
                        args msg.sender, arg1, ext_call.return_data[0]
                else:
                    if stor32[address(msg.sender)]:
                        if not rewardsPoolAddress:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[stor16] < ext_call.return_data[0]:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[stor16] -= ext_call.return_data[0]
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], rewardsPoolAddress, this.address);
                        require ext_code.size(stor28)
                        call stor28.0xcbd14993 with:
                             gas gas_remaining wei
                            args msg.sender, arg1, ext_call.return_data[0]
                    else:
                        uint8(stor30.field_0) = 1
                        if balanceOf[address(this.address)] and sub_b326a0f9 > -1 / balanceOf[address(this.address)]:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = this.address
                        require ext_code.size(address(stor27.field_40))
                        staticcall address(stor27.field_40).WAVAX() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                        if not this.address:
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 36
                            mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 132
                        if not address(stor27.field_40):
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 34
                            mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x7373000000000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 132
                        allowance[address(this.address)][address(stor27.field_0)].field_0 = balanceOf[address(this.address)] * sub_b326a0f9 / 100
                        mem[(2 * ceil32(return_data.size)) + 192] = balanceOf[address(this.address)] * sub_b326a0f9 / 100
                        emit Approval(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], this.address, address(stor27.field_40));
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = balanceOf[address(this.address)] * sub_b326a0f9 / 100
                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 388
                        t = ceil32(return_data.size) + 128
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(address(stor27.field_40))
                        call address(stor27.field_40).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)] * sub_b326a0f9 / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        call teamPoolAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if balanceOf[address(this.address)] and rewardsFee > -1 / balanceOf[address(this.address)]:
                            revert with 0, 17
                        if balanceOf[address(this.address)] * rewardsFee / 100 and stor29 > -1 / balanceOf[address(this.address)] * rewardsFee / 100:
                            revert with 0, 17
                        mem[(2 * ceil32(return_data.size)) + 192] = 2
                        mem[(2 * ceil32(return_data.size)) + 224] = this.address
                        require ext_code.size(address(stor27.field_40))
                        staticcall address(stor27.field_40).WAVAX() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(stor27.field_40):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][address(stor27.field_0)].field_0 = balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100
                        emit Approval((balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100), this.address, address(stor27.field_40));
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100
                        mem[(4 * ceil32(return_data.size)) + 324] = 0
                        mem[(4 * ceil32(return_data.size)) + 356] = 160
                        mem[(4 * ceil32(return_data.size)) + 452] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 484
                        t = (2 * ceil32(return_data.size)) + 224
                        while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 388] = this.address
                        mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
                        require ext_code.size(address(stor27.field_40))
                        call address(stor27.field_40).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 452 len (32 * mem[(2 * ceil32(return_data.size)) + 192]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        call rewardsPoolAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if balanceOf[address(this.address)] * rewardsFee / 100 < balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100:
                            revert with 0, 17
                        if not this.address:
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = 32
                            mem[(4 * ceil32(return_data.size)) + 324] = 37
                            mem[(4 * ceil32(return_data.size)) + 356] = 'ERC20: transfer from the zero ad'
                            mem[(4 * ceil32(return_data.size)) + 388] = 0x6472657373000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 288
                               len (5 * ceil32(return_data.size)) + 132
                        if not rewardsPoolAddress:
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = 32
                            mem[(4 * ceil32(return_data.size)) + 324] = 35
                            mem[(4 * ceil32(return_data.size)) + 356] = 'ERC20: transfer to the zero addr'
                            mem[(4 * ceil32(return_data.size)) + 388] = 0x6573730000000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 288
                               len (5 * ceil32(return_data.size)) + 132
                        if balanceOf[address(this.address)] < (balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100):
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = 32
                            mem[(4 * ceil32(return_data.size)) + 324] = 38
                            mem[(4 * ceil32(return_data.size)) + 356] = 'ERC20: transfer amount exceeds b'
                            mem[(4 * ceil32(return_data.size)) + 388] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 288
                               len (5 * ceil32(return_data.size)) + 132
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * rewardsFee / 100) + (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100)
                        if balanceOf[stor16] > !((balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100)):
                            revert with 0, 17
                        balanceOf[stor16] = balanceOf[stor16] + (balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100)
                        emit Transfer(((balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100)), this.address, rewardsPoolAddress);
                        if balanceOf[address(this.address)] and liquidityPoolFee > -1 / balanceOf[address(this.address)]:
                            revert with 0, 17
                        if balanceOf[address(this.address)] * liquidityPoolFee / 100 < balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 288] = 2
                        mem[(4 * ceil32(return_data.size)) + 320] = this.address
                        require ext_code.size(address(stor27.field_40))
                        staticcall address(stor27.field_40).WAVAX() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(stor27.field_40):
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = address(stor27.field_40)
                        mem[32] = sha3(address(this.address), 1)
                        allowance[address(this.address)][address(stor27.field_0)].field_0 = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                        allowance[address(this.address)][address(stor27.field_0)].field_255 = 0
                        emit Approval((balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), this.address, address(stor27.field_40));
                        mem[(6 * ceil32(return_data.size)) + 384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 388] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                        mem[(6 * ceil32(return_data.size)) + 420] = 0
                        mem[(6 * ceil32(return_data.size)) + 452] = 160
                        mem[(6 * ceil32(return_data.size)) + 548] = 2
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 580
                        t = (4 * ceil32(return_data.size)) + 320
                        while idx < mem[(4 * ceil32(return_data.size)) + 288]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 516] = block.timestamp
                        require ext_code.size(address(stor27.field_40))
                        call address(stor27.field_40).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[(6 * ceil32(return_data.size)) + 548 len (32 * mem[(4 * ceil32(return_data.size)) + 288]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address', mem[(6 * ceil32(return_data.size)) + 516 len 9 * ceil32(return_data.size)]
                        if not address(stor27.field_40):
                            revert with 0, 'ERC20: approve to the zero address', mem[(6 * ceil32(return_data.size)) + 516 len 9 * ceil32(return_data.size)]
                        allowance[address(this.address)][address(stor27.field_0)].field_0 = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                        emit Approval(((balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)), this.address, address(stor27.field_40));
                        mem[(6 * ceil32(return_data.size)) + 452] = 0
                        mem[(6 * ceil32(return_data.size)) + 484] = 0
                        mem[(6 * ceil32(return_data.size)) + 516] = 0
                        mem[(6 * ceil32(return_data.size)) + 548] = block.timestamp
                        require ext_code.size(address(stor27.field_40))
                        call address(stor27.field_40).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp, mem[(6 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 384 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[(8 * ceil32(return_data.size)) + 384] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                        mem[(8 * ceil32(return_data.size)) + 416] = 0
                        mem[(8 * ceil32(return_data.size)) + 448] = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                            mem[(8 * ceil32(return_data.size)) + 384 len (13 * ceil32(return_data.size)) + 96],
                        mem[(8 * ceil32(return_data.size)) + 416] = this.address
                        require ext_code.size(address(stor27.field_40))
                        staticcall address(stor27.field_40).WAVAX() with:
                                gas gas_remaining wei
                        mem[(8 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 448] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(stor27.field_40):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][address(stor27.field_0)].field_0 = balanceOf[address(this.address)]
                        emit Approval(balanceOf[address(this.address)], this.address, address(stor27.field_40));
                        mem[(10 * ceil32(return_data.size)) + 480] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 484] = balanceOf[address(this.address)]
                        mem[(10 * ceil32(return_data.size)) + 644] = 2
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 676
                        t = (8 * ceil32(return_data.size)) + 416
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(10 * ceil32(return_data.size)) + 580] = this.address
                        mem[(10 * ceil32(return_data.size)) + 612] = block.timestamp
                        require ext_code.size(address(stor27.field_40))
                        call address(stor27.field_40).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[(10 * ceil32(return_data.size)) + 676 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor30.field_0) = 0
                        if not rewardsPoolAddress:
                            revert with 0, 
                                        'ERC20: transfer from the zero address',
                                        mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address', mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                        if balanceOf[stor16] < ext_call.return_data[0]:
                            revert with 0, 
                                        'ERC20: transfer amount exceeds balance',
                                        mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                        balanceOf[stor16] -= ext_call.return_data[0]
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], rewardsPoolAddress, this.address);
                        require ext_code.size(stor28)
                        call stor28.0xcbd14993 with:
                             gas gas_remaining wei
                            args msg.sender, arg1, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 580 len 17 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Compound(ext_call.return_data[0], msg.sender, arg1);
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit PaymentReceived(msg.sender, msg.value);
    else:
        if unknown_0x6d9ae0be(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xb326a0f9(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x95d89b41(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x7dfcbe34(?????) > uint32(call.func_hash) >> 224:
                        if unknown_0x6d9ae0be(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return cashoutFee
                        if unknown_0x6eacab12(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            teamPoolAddress = address(cd[4])
                        else:
                            if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                return balanceOf[address(cd[4])]
                            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                owner = 0
                                emit OwnershipTransferred(owner, 0);
                            else:
                                require unknown_0x7beb2c14(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == uint16(cd[4])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if uint16(cd[4]) > 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'NEBULA::updatemaxBalanceAmountRate: Max transfer amount rate must not exceed the maximum rate.'
                                emit 0x48a8b3c1: uint16(stor30.field_0), uint16(cd[4]), msg.sender
                                maxBalanceAmountRate = uint16(cd[4])
                    else:
                        if unknown_0x7dfcbe34(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return bool(antiBot)
                        if unknown_0x8b83209b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if cd[4] >= payee.length:
                                revert with 0, 50
                            return payee[cd[4]]
                        if unknown_0x8bc9c7b0(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            stor29 = cd[4]
                        else:
                            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return owner
                            require unknown_0x8e675663(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            liquidityPoolFee = cd[4]
                            if rewardsFee > !cd[4]:
                                revert with 0, 17
                            if rewardsFee + cd[4] > !sub_b326a0f9:
                                revert with 0, 17
                            totalFees = rewardsFee + cd[4] + sub_b326a0f9
                if unknown_0xa457c2d7(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if bool(stor4.length):
                            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor4.length):
                                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor4.length):
                                    if 31 < uint255(stor4.length) * 0.5:
                                        mem[160] = uint256(stor4.field_0)
                                        idx = 160
                                        s = 0
                                        while (uint255(stor4.length) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor4[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                                    mem[160] = 256 * stor4.length.field_8
                            else:
                                if bool(stor4.length) == stor4.length.field_1 < 32:
                                    revert with 0, 34
                                if stor4.length.field_1:
                                    if 31 < stor4.length.field_1:
                                        mem[160] = uint256(stor4.field_0)
                                        idx = 160
                                        s = 0
                                        while stor4.length.field_1 + 128 > idx:
                                            mem[idx + 32] = stor4[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                                    mem[160] = 256 * stor4.length.field_8
                            mem[ceil32(uint255(stor4.length) * 0.5) + 224 len ceil32(uint255(stor4.length) * 0.5)] = mem[160 len ceil32(uint255(stor4.length) * 0.5)]
                            if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
                                mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 224] = 0
                            return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
                        if bool(stor4.length) == stor4.length.field_1 < 32:
                            revert with 0, 34
                        if bool(stor4.length):
                            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor4.length):
                                if 31 < uint255(stor4.length) * 0.5:
                                    mem[160] = uint256(stor4.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor4.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor4[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                                mem[160] = 256 * stor4.length.field_8
                        else:
                            if bool(stor4.length) == stor4.length.field_1 < 32:
                                revert with 0, 34
                            if stor4.length.field_1:
                                if 31 < stor4.length.field_1:
                                    mem[160] = uint256(stor4.field_0)
                                    idx = 160
                                    s = 0
                                    while stor4.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor4[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                                mem[160] = 256 * stor4.length.field_8
                        mem[ceil32(stor4.length.field_1) + 224 len ceil32(stor4.length.field_1)] = mem[160 len ceil32(stor4.length.field_1)]
                        if ceil32(stor4.length.field_1) > stor4.length.field_1:
                            mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 224] = 0
                        return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
                    if unknown_0x9852595c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return released[address(cd[4])]
                    if unknown_0x9a7a23d6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == bool(cd[36])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if joePairAddress == address(cd[4]):
                            revert with 0, 'TKN:2'
                        if bool(cd[36]) == bool(stor32[address(cd[4])]):
                            revert with 0, 'TKN:3'
                        stor32[address(cd[4])] = uint8(bool(cd[36]))
                        emit SetAutomatedMarketMakerPair(address(cd[4]), bool(cd[36]));
                    else:
                        if unknown_0x9c138b7b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == uint16(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require uint16(cd[4]) <= 1000
                            sellTax = uint16(cd[4])
                        else:
                            require unknown_0x9dc29fac(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: burn from the zero address'
                            if balanceOf[address(cd[4])] < cd[36]:
                                revert with 0, 'ERC20: burn amount exceeds balance'
                            balanceOf[address(cd[4])] -= cd[36]
                            if totalSupply < cd[36]:
                                revert with 0, 17
                            totalSupply -= cd[36]
                            emit Transfer(cd[36], address(cd[4]), 0);
                if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if allowance[msg.sender][address(cd[4])].field_0 < cd[36]:
                        revert with 0, 'ERC20: decreased allowance below zero'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(cd[4])].field_0 = allowance[msg.sender][address(cd[4])].field_0 - cd[36]
                    emit Approval((allowance[msg.sender][address(cd[4])].field_0 - cd[36]), msg.sender, address(cd[4]));
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                        if unknown_0xa9e75723(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if totalSupply < balanceOf[stor16]:
                                revert with 0, 17
                            if totalSupply - balanceOf[stor16] and maxTransferAmountRate > -1 / totalSupply - balanceOf[stor16]:
                                revert with 0, 17
                            return ((totalSupply * maxTransferAmountRate) - (balanceOf[stor16] * maxTransferAmountRate) / 10000)
                        if unknown_0xab04acd4(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if totalSupply < balanceOf[stor16]:
                                revert with 0, 17
                            if totalSupply - balanceOf[stor16] and maxBalanceAmountRate > -1 / totalSupply - balanceOf[stor16]:
                                revert with 0, 17
                            return ((totalSupply * maxBalanceAmountRate) - (balanceOf[stor16] * maxBalanceAmountRate) / 10000)
                        require unknown_0xacedf07c(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_b326a0f9 = cd[4]
                        if rewardsFee > !liquidityPoolFee:
                            revert with 0, 17
                        if rewardsFee + liquidityPoolFee > !cd[4]:
                            revert with 0, 17
                        totalFees = rewardsFee + liquidityPoolFee + cd[4]
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if totalSupply < balanceOf[stor16]:
                        revert with 0, 17
                    if totalSupply - balanceOf[stor16] and maxTransferAmountRate > -1 / totalSupply - balanceOf[stor16]:
                        revert with 0, 17
                    if (totalSupply * maxTransferAmountRate) - (balanceOf[stor16] * maxTransferAmountRate) / 10000 > 0:
                        if not stor34[address(msg.sender)]:
                            if not stor34[address(cd[4])]:
                                if totalSupply < balanceOf[stor16]:
                                    revert with 0, 17
                                if totalSupply - balanceOf[stor16] and maxTransferAmountRate > -1 / totalSupply - balanceOf[stor16]:
                                    revert with 0, 17
                                if cd[36] > (totalSupply * maxTransferAmountRate) - (balanceOf[stor16] * maxTransferAmountRate) / 10000:
                                    revert with 0, 'NEBULA::antiWhale: Transfer amount exceeds the maxTransferAmount'
                                if joePairAddress == msg.sender:
                                    if totalSupply < balanceOf[stor16]:
                                        revert with 0, 17
                                    if totalSupply - balanceOf[stor16] and maxBalanceAmountRate > -1 / totalSupply - balanceOf[stor16]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] + cd[36] > (totalSupply * maxBalanceAmountRate) - (balanceOf[stor16] * maxBalanceAmountRate) / 10000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'NEBULA::antiWhale: Transfer would exceed the maxBalanceAmount of the recipient'
                    if 1 == bool(antiBot):
                        if joePairAddress == msg.sender:
                            sub_32dbbdad[address(msg.sender)] = block.number
                        if joePairAddress == address(cd[4]):
                            currentBlock = block.number
                            if sub_32dbbdad[address(msg.sender)] > !sub_629c7074:
                                revert with 0, 17
                            if currentBlock <= sub_32dbbdad[address(msg.sender)] + sub_629c7074:
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                stor31[address(msg.sender)] = 1
                    if stor31[address(msg.sender)]:
                        revert with 0, 'BLACKLISTED'
                    if stor31[address(cd[4])]:
                        revert with 0, 'BLACKLISTED'
                    if not msg.sender:
                        revert with 0, 'ERC20:1'
                    if not address(cd[4]):
                        revert with 0, 'ERC20:2'
                    if owner != msg.sender:
                        if joePairAddress != address(cd[4]):
                            if address(stor27.field_40) != address(cd[4]):
                                if address(cd[4]) != this.address:
                                    if msg.sender != this.address:
                                        if not isTradingEnabled:
                                            revert with 0, 'TRADING_DISABLED'
                    if joePairAddress != msg.sender:
                        if joePairAddress != address(cd[4]):
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if not sellTax:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if cd[36] and sellTax > -1 / cd[36]:
                                    revert with 0, 17
                                if cd[36] < cd[36] * sellTax / 10000:
                                    revert with 0, 17
                                if cd[36] * sellTax / 10000 > !(cd[36] - (cd[36] * sellTax / 10000)):
                                    revert with 0, 17
                                if cd[36] != cd[36]:
                                    revert with 0, 'invalid Tax'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < cd[36] * sellTax / 10000:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= cd[36] * sellTax / 10000
                                if balanceOf[this.address] > !(cd[36] * sellTax / 10000):
                                    revert with 0, 17
                                balanceOf[this.address] += cd[36] * sellTax / 10000
                                emit Transfer((cd[36] * sellTax / 10000), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sellTax / 10000):
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sellTax / 10000)
                                if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sellTax / 10000)):
                                    revert with 0, 17
                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sellTax / 10000)
                                emit Transfer((cd[36] - (cd[36] * sellTax / 10000)), msg.sender, address(cd[4]));
                    else:
                        if buyTax:
                            if cd[36] and buyTax > -1 / cd[36]:
                                revert with 0, 17
                            if cd[36] < cd[36] * buyTax / 10000:
                                revert with 0, 17
                            if cd[36] * buyTax / 10000 > !(cd[36] - (cd[36] * buyTax / 10000)):
                                revert with 0, 17
                            if cd[36] != cd[36]:
                                revert with 0, 'invalid Tax'
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < cd[36] * buyTax / 10000:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= cd[36] * buyTax / 10000
                            if balanceOf[this.address] > !(cd[36] * buyTax / 10000):
                                revert with 0, 17
                            balanceOf[this.address] += cd[36] * buyTax / 10000
                            emit Transfer((cd[36] * buyTax / 10000), msg.sender, this.address);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * buyTax / 10000):
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * buyTax / 10000)
                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * buyTax / 10000)):
                                revert with 0, 17
                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * buyTax / 10000)
                            emit Transfer((cd[36] - (cd[36] * buyTax / 10000)), msg.sender, address(cd[4]));
                        else:
                            if joePairAddress != address(cd[4]):
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if not sellTax:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if cd[36] and sellTax > -1 / cd[36]:
                                        revert with 0, 17
                                    if cd[36] < cd[36] * sellTax / 10000:
                                        revert with 0, 17
                                    if cd[36] * sellTax / 10000 > !(cd[36] - (cd[36] * sellTax / 10000)):
                                        revert with 0, 17
                                    if cd[36] != cd[36]:
                                        revert with 0, 'invalid Tax'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < cd[36] * sellTax / 10000:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= cd[36] * sellTax / 10000
                                    if balanceOf[this.address] > !(cd[36] * sellTax / 10000):
                                        revert with 0, 17
                                    balanceOf[this.address] += cd[36] * sellTax / 10000
                                    emit Transfer((cd[36] * sellTax / 10000), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sellTax / 10000):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sellTax / 10000)
                                    if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sellTax / 10000)):
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sellTax / 10000)
                                    emit Transfer((cd[36] - (cd[36] * sellTax / 10000)), msg.sender, address(cd[4]));
                return 1
            if unknown_0xdd62ed3e(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xf2fde38b(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(cd[4]):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(cd[4])
                        emit OwnershipTransferred(owner, address(cd[4]));
                    if unknown_0xf4e27dc8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == bool(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        Mask(248, 0, stor24.field_8) = Mask(248, 0, bool(cd[4]))
                    if unknown_0xfabc4035(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(sub_fabc4035)
                    if unknown_0xfccc2813(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 57005
                    require unknown_0xfe575a87(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor31[cd[4]])
                if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    return allowance[address(cd[4])][address(cd[36])].field_0
                if unknown_0xde01e151(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    s = cd[4] + 36
                    t = 160
                    idx = 0
                    while idx < ('cd', 4).length:
                        require cd[s] == address(cd[s])
                        mem[t] = cd[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    if ('cd', 36).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                        revert with 0, 65
                    mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                    idx = 0
                    s = cd[36] + 36
                    t = ceil32(32 * ('cd', 4).length) + 161
                    while idx < ('cd', 36).length:
                        mem[t] = cd[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= mem[128]:
                            revert with 0, 50
                        _74833 = mem[(32 * idx) + 160]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                            revert with 0, 50
                        _74835 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                        if not mem[(32 * idx) + 172 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]:
                            revert with 0, 17
                        totalSupply += mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                        mem[0] = mem[(32 * idx) + 172 len 20]
                        mem[32] = 0
                        if balanceOf[mem[(32 * idx) + 172 len 20]] > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]:
                            revert with 0, 17
                        balanceOf[mem[(32 * idx) + 172 len 20]] += mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                        emit Transfer(_74835, 0, address(_74833));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if unknown_0xe12ed13c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return currentBlock
                    if uint32(call.func_hash) >> 224 != unknown_0xe159b3ae(?????):
                        require unknown_0xe33b7de3(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return totalReleased
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if address(stor27.field_40) == address(cd[4]):
                        revert with 0, 'TKN:1'
                    emit 0xb172ff8d: address(cd[4]), address(stor27.field_40)
                    require ext_code.size(address(stor27.field_40))
                    staticcall address(stor27.field_40).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).WAVAX() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args address(this.address), address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    joePairAddress = ext_call.return_data[12 len 20]
                    sub_527509f3Address = address(cd[4])
            else:
                if unknown_0xc7f59a67(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xc7f59a67(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == bool(cd[36])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor34[address(cd[4])] = uint8(bool(cd[36]))
                    if unknown_0xcc1776d3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sellTax
                    if unknown_0xce7c2ac2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return shares[address(cd[4])]
                    if unknown_0xd54ad2a1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return totalClaimed
                    require unknown_0xd79779b2(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return totalReleased[address(cd[4])]
                if unknown_0xb326a0f9(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_b326a0f9
                if unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor32[cd[4]])
                if uint32(call.func_hash) >> 224 != unknown_0xbbc67998(?????):
                    if unknown_0xc2c7c03a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == bool(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        Mask(240, 0, stor24.field_16) = Mask(240, 0, bool(cd[4]))
                    else:
                        require unknown_0xc3b045e4(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == uint16(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require uint16(cd[4]) <= 1000
                        buyTax = uint16(cd[4])
                else:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    require cd[4] + ('cd', 4).length + 36 <= calldata.size
                    mem[160 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                    if 3 >= ('cd', 4).length:
                        revert with 0, 'NC:1'
                    if ('cd', 4).length >= 32:
                        revert with 0, 'NC:1'
                    if not msg.sender:
                        revert with 0, 'NC:2'
                    if stor31[address(msg.sender)]:
                        revert with 0, 'BLACKLISTED'
                    if teamPoolAddress == msg.sender:
                        revert with 0, 'NC:4'
                    if rewardsPoolAddress == msg.sender:
                        revert with 0, 'NC:4'
                    if balanceOf[address(msg.sender)] < cd[36]:
                        revert with 0, 'NC:5'
                    if balanceOf[address(this.address)] < swapTokensAmount:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < cd[36]:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= cd[36]
                        if balanceOf[this.address] > !cd[36]:
                            revert with 0, 17
                        balanceOf[this.address] += cd[36]
                        emit Transfer(cd[36], msg.sender, this.address);
                        require ext_code.size(stor28)
                        call stor28.0x90219732 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), cd[36]
                    else:
                        if not sub_fabc4035:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[this.address] > !cd[36]:
                                revert with 0, 17
                            balanceOf[this.address] += cd[36]
                            emit Transfer(cd[36], msg.sender, this.address);
                            require ext_code.size(stor28)
                            call stor28.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), cd[36]
                        else:
                            if uint8(stor30.field_0):
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[this.address] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[this.address] += cd[36]
                                emit Transfer(cd[36], msg.sender, this.address);
                                require ext_code.size(stor28)
                                call stor28.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), cd[36]
                            else:
                                if owner == msg.sender:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[this.address] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[this.address] += cd[36]
                                    emit Transfer(cd[36], msg.sender, this.address);
                                    require ext_code.size(stor28)
                                    call stor28.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), cd[36]
                                else:
                                    if stor32[address(msg.sender)]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[this.address] > !cd[36]:
                                            revert with 0, 17
                                        balanceOf[this.address] += cd[36]
                                        emit Transfer(cd[36], msg.sender, this.address);
                                        require ext_code.size(stor28)
                                        call stor28.0x90219732 with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), cd[36]
                                    else:
                                        uint8(stor30.field_0) = 1
                                        if balanceOf[address(this.address)] and sub_b326a0f9 > -1 / balanceOf[address(this.address)]:
                                            revert with 0, 17
                                        mem[ceil32(ceil32(('cd', 4).length)) + 129] = 2
                                        mem[ceil32(ceil32(('cd', 4).length)) + 161] = this.address
                                        require ext_code.size(address(stor27.field_40))
                                        staticcall address(stor27.field_40).WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(('cd', 4).length)) + 225] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(('cd', 4).length)) + 193] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not address(stor27.field_40):
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][address(stor27.field_0)].field_0 = balanceOf[address(this.address)] * sub_b326a0f9 / 100
                                        emit Approval((balanceOf[address(this.address)] * sub_b326a0f9 / 100), this.address, address(stor27.field_40));
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 225] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 229] = balanceOf[address(this.address)] * sub_b326a0f9 / 100
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 389] = 2
                                        idx = 0
                                        s = ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 421
                                        t = ceil32(ceil32(('cd', 4).length)) + 161
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 325] = this.address
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 357] = block.timestamp
                                        require ext_code.size(address(stor27.field_40))
                                        call address(stor27.field_40).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[address(this.address)] * sub_b326a0f9 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 421 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call teamPoolAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)] and rewardsFee > -1 / balanceOf[address(this.address)]:
                                            revert with 0, 17
                                        if balanceOf[address(this.address)] * rewardsFee / 100 and stor29 > -1 / balanceOf[address(this.address)] * rewardsFee / 100:
                                            revert with 0, 17
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 225] = 2
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 257] = this.address
                                        require ext_code.size(address(stor27.field_40))
                                        staticcall address(stor27.field_40).WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 321] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 289] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not address(stor27.field_40):
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][address(stor27.field_0)].field_0 = balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100
                                        emit Approval((balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100), this.address, address(stor27.field_40));
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 321] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 325] = balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 357] = 0
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 389] = 160
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 485] = 2
                                        idx = 0
                                        s = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 517
                                        t = ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 257
                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 225]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 421] = this.address
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 453] = block.timestamp
                                        require ext_code.size(address(stor27.field_40))
                                        call address(stor27.field_40).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 485 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 225]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call rewardsPoolAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)] * rewardsFee / 100 < balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100:
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not rewardsPoolAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(this.address)] < (balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * rewardsFee / 100) + (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100)
                                        if balanceOf[stor16] > !((balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100)):
                                            revert with 0, 17
                                        balanceOf[stor16] = balanceOf[stor16] + (balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100)
                                        emit Transfer(((balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100)), this.address, rewardsPoolAddress);
                                        if balanceOf[address(this.address)] and liquidityPoolFee > -1 / balanceOf[address(this.address)]:
                                            revert with 0, 17
                                        if balanceOf[address(this.address)] * liquidityPoolFee / 100 < balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2:
                                            revert with 0, 17
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 321] = 2
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 353] = this.address
                                        require ext_code.size(address(stor27.field_40))
                                        staticcall address(stor27.field_40).WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 417] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 417
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 385] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not address(stor27.field_40):
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = address(stor27.field_40)
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][address(stor27.field_0)].field_0 = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                        allowance[address(this.address)][address(stor27.field_0)].field_255 = 0
                                        emit Approval((balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), this.address, address(stor27.field_40));
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 417] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 421] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 453] = 0
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 485] = 160
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 581] = 2
                                        idx = 0
                                        s = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 613
                                        t = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 353
                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 321]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(stor27.field_40))
                                        call address(stor27.field_40).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 581 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 321]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not address(stor27.field_40):
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][address(stor27.field_0)].field_0 = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                        emit Approval(((balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)), this.address, address(stor27.field_40));
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 517] = 0
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 549] = 0
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 581] = block.timestamp
                                        require ext_code.size(address(stor27.field_40))
                                        call address(stor27.field_40).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2));
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 417] = 2
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 449] = this.address
                                        require ext_code.size(address(stor27.field_40))
                                        staticcall address(stor27.field_40).WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 513] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 481] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not address(stor27.field_40):
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][address(stor27.field_0)].field_0 = balanceOf[address(this.address)]
                                        emit Approval(balanceOf[address(this.address)], this.address, address(stor27.field_40));
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 513] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 517] = balanceOf[address(this.address)]
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549] = 0
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 581] = 160
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 677] = 2
                                        idx = 0
                                        s = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 709
                                        t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 449
                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 417]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 613] = this.address
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 645] = block.timestamp
                                        require ext_code.size(address(stor27.field_40))
                                        call address(stor27.field_40).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 677 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 417]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor30.field_0) = 0
                                        if not msg.sender:
                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 513] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 517] = 32
                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549] = 37
                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 581] = 'ERC20: transfer from the zero ad'
                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 613] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 513
                                               len (5 * ceil32(return_data.size)) + 132
                                        if not this.address:
                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 513] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 517] = 32
                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549] = 35
                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 581] = 'ERC20: transfer to the zero addr'
                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 613] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 513
                                               len (5 * ceil32(return_data.size)) + 132
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 513] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 517] = 32
                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549] = 38
                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 581] = 'ERC20: transfer amount exceeds b'
                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 613] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 513
                                               len (5 * ceil32(return_data.size)) + 132
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[this.address] > !cd[36]:
                                            revert with 0, 17
                                        balanceOf[this.address] += cd[36]
                                        emit Transfer(cd[36], msg.sender, this.address);
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 517] = msg.sender
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549] = 96
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 613] = ('cd', 4).length
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 645 len ceil32(('cd', 4).length)] = mem[160 len ceil32(('cd', 4).length)]
                                        if ceil32(('cd', 4).length) > ('cd', 4).length:
                                            mem[('cd', 4).length + ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 645] = 0
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 581] = cd[36]
                                        require ext_code.size(stor28)
                                        call stor28.0x90219732 with:
                                             gas gas_remaining wei
                                            args mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 517 len ceil32(('cd', 4).length) + (5 * ceil32(return_data.size)) + 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0x455a4396(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x2ae883fd(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x39636504(?????) <= uint32(call.func_hash) >> 224:
                        if unknown_0x39636504(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return teamPoolAddress
                        if unknown_0x3a98ef39(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return totalShares
                        if unknown_0x3b18eab4(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return bool(antiwhale)
                        if unknown_0x3ff8bf2e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return maxTransferAmountRate
                        require unknown_0x406072a9(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        return released[address(cd[4])][address(cd[36])]
                    if unknown_0x2ae883fd(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == bool(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        isTradingEnabled = uint8(bool(cd[4]))
                    if unknown_0x2bb14e1d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return rewardsFee
                    if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 18
                    if unknown_0x32dbbdad(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return sub_32dbbdad[cd[4]]
                    require unknown_0x39509351(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if allowance[msg.sender][address(cd[4])].field_0 > !cd[36]:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(cd[4])].field_0 = allowance[msg.sender][address(cd[4])].field_0 + cd[36]
                    emit Approval((allowance[msg.sender][address(cd[4])].field_0 + cd[36]), msg.sender, address(cd[4]));
                else:
                    if unknown_0x13114a9d(?????) > uint32(call.func_hash) >> 224:
                        if rewardsPool() == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return rewardsPoolAddress
                        if isTradingEnabled() == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return bool(isTradingEnabled)
                        if uint32(call.func_hash) >> 224 != name():
                            if updateRewardsFee(uint256 arg1) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                rewardsFee = cd[4]
                                if cd[4] > !liquidityPoolFee:
                                    revert with 0, 17
                                if cd[4] + liquidityPoolFee > !sub_b326a0f9:
                                    revert with 0, 17
                                totalFees = cd[4] + liquidityPoolFee + sub_b326a0f9
                            require approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            if not msg.sender:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(msg.sender)][address(cd[4])].field_0 = cd[36]
                            emit Approval(cd[36], msg.sender, address(cd[4]));
                            return 1
                        require not msg.value
                        if bool(stor3.length):
                            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor3.length):
                                if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor3.length):
                                    if 31 < uint255(stor3.length) * 0.5:
                                        mem[160] = uint256(stor3.field_0)
                                        idx = 160
                                        s = 0
                                        while (uint255(stor3.length) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor3[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                                    mem[160] = 256 * stor3.length.field_8
                            else:
                                if bool(stor3.length) == stor3.length.field_1 < 32:
                                    revert with 0, 34
                                if stor3.length.field_1:
                                    if 31 < stor3.length.field_1:
                                        mem[160] = uint256(stor3.field_0)
                                        idx = 160
                                        s = 0
                                        while stor3.length.field_1 + 128 > idx:
                                            mem[idx + 32] = stor3[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                                    mem[160] = 256 * stor3.length.field_8
                            mem[ceil32(uint255(stor3.length) * 0.5) + 224 len ceil32(uint255(stor3.length) * 0.5)] = mem[160 len ceil32(uint255(stor3.length) * 0.5)]
                            if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
                                mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 224] = 0
                            return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 0, 34
                        if bool(stor3.length):
                            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor3.length):
                                if 31 < uint255(stor3.length) * 0.5:
                                    mem[160] = uint256(stor3.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor3.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor3[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                                mem[160] = 256 * stor3.length.field_8
                        else:
                            if bool(stor3.length) == stor3.length.field_1 < 32:
                                revert with 0, 34
                            if stor3.length.field_1:
                                if 31 < stor3.length.field_1:
                                    mem[160] = uint256(stor3.field_0)
                                    idx = 160
                                    s = 0
                                    while stor3.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor3[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                                mem[160] = 256 * stor3.length.field_8
                        mem[ceil32(stor3.length.field_1) + 224 len ceil32(stor3.length.field_1)] = mem[160 len ceil32(stor3.length.field_1)]
                        if ceil32(stor3.length.field_1) > stor3.length.field_1:
                            mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 224] = 0
                        return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 224 len 2 * ceil32(stor3.length.field_1)]), 
                    if unknown_0x13114a9d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return totalFees
                    if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return totalSupply
                    if unknown_0x19165587(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if not shares[address(cd[4])]:
                            revert with 0, 'PaymentSplitter: account has no shares'
                        if eth.balance(this.address) > !totalReleased:
                            revert with 0, 17
                        if eth.balance(this.address) + totalReleased and shares[address(cd[4])] > -1 / eth.balance(this.address) + totalReleased:
                            revert with 0, 17
                        if not totalShares:
                            revert with 0, 18
                        if (eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares < released[address(cd[4])]:
                            revert with 0, 17
                        if not ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]:
                            revert with 0, 'PaymentSplitter: account is not due payment'
                        if released[address(cd[4])] > !(((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]):
                            revert with 0, 17
                        released[address(cd[4])] = (eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares
                        if totalReleased > !(((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]):
                            revert with 0, 17
                        totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]
                        if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]:
                            revert with 0, 'Address: insufficient balance'
                        call address(cd[4]) with:
                           value ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])] wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                        emit PaymentReleased(address(cd[4]), ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]);
                    if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                        require unknown_0x269f534c(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor34[address(cd[4])])
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    if totalSupply < balanceOf[stor16]:
                        revert with 0, 17
                    if totalSupply - balanceOf[stor16] and maxTransferAmountRate > -1 / totalSupply - balanceOf[stor16]:
                        revert with 0, 17
                    if (totalSupply * maxTransferAmountRate) - (balanceOf[stor16] * maxTransferAmountRate) / 10000 > 0:
                        if not stor34[address(cd[4])]:
                            if not stor34[address(cd[36])]:
                                if totalSupply < balanceOf[stor16]:
                                    revert with 0, 17
                                if totalSupply - balanceOf[stor16] and maxTransferAmountRate > -1 / totalSupply - balanceOf[stor16]:
                                    revert with 0, 17
                                if cd[68] > (totalSupply * maxTransferAmountRate) - (balanceOf[stor16] * maxTransferAmountRate) / 10000:
                                    revert with 0, 'NEBULA::antiWhale: Transfer amount exceeds the maxTransferAmount'
                                if joePairAddress == address(cd[4]):
                                    if totalSupply < balanceOf[stor16]:
                                        revert with 0, 17
                                    if totalSupply - balanceOf[stor16] and maxBalanceAmountRate > -1 / totalSupply - balanceOf[stor16]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[36])] + cd[68] > (totalSupply * maxBalanceAmountRate) - (balanceOf[stor16] * maxBalanceAmountRate) / 10000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'NEBULA::antiWhale: Transfer would exceed the maxBalanceAmount of the recipient'
                    if 1 == bool(antiBot):
                        if joePairAddress == address(cd[4]):
                            sub_32dbbdad[address(msg.sender)] = block.number
                        if joePairAddress == address(cd[36]):
                            currentBlock = block.number
                            if sub_32dbbdad[address(msg.sender)] > !sub_629c7074:
                                revert with 0, 17
                            if currentBlock <= sub_32dbbdad[address(msg.sender)] + sub_629c7074:
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                stor31[address(msg.sender)] = 1
                    if stor31[address(cd[4])]:
                        revert with 0, 'BLACKLISTED'
                    if stor31[address(cd[36])]:
                        revert with 0, 'BLACKLISTED'
                    if not address(cd[4]):
                        revert with 0, 'ERC20:1'
                    if not address(cd[36]):
                        revert with 0, 'ERC20:2'
                    if owner != address(cd[4]):
                        if joePairAddress != address(cd[36]):
                            if address(stor27.field_40) != address(cd[36]):
                                if address(cd[36]) != this.address:
                                    if address(cd[4]) != this.address:
                                        if not isTradingEnabled:
                                            revert with 0, 'TRADING_DISABLED'
                    if joePairAddress != address(cd[4]):
                        if joePairAddress != address(cd[36]):
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[36]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        else:
                            if not sellTax:
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[36]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if cd[68] and sellTax > -1 / cd[68]:
                                    revert with 0, 17
                                if cd[68] < cd[68] * sellTax / 10000:
                                    revert with 0, 17
                                if cd[68] * sellTax / 10000 > !(cd[68] - (cd[68] * sellTax / 10000)):
                                    revert with 0, 17
                                if cd[68] != cd[68]:
                                    revert with 0, 'invalid Tax'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(cd[4])] < cd[68] * sellTax / 10000:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(cd[4])] -= cd[68] * sellTax / 10000
                                if balanceOf[this.address] > !(cd[68] * sellTax / 10000):
                                    revert with 0, 17
                                balanceOf[this.address] += cd[68] * sellTax / 10000
                                emit Transfer((cd[68] * sellTax / 10000), address(cd[4]), this.address);
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[36]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sellTax / 10000):
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sellTax / 10000)
                                if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sellTax / 10000)):
                                    revert with 0, 17
                                balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sellTax / 10000)
                                emit Transfer((cd[68] - (cd[68] * sellTax / 10000)), address(cd[4]), address(cd[36]));
                    else:
                        if buyTax:
                            if cd[68] and buyTax > -1 / cd[68]:
                                revert with 0, 17
                            if cd[68] < cd[68] * buyTax / 10000:
                                revert with 0, 17
                            if cd[68] * buyTax / 10000 > !(cd[68] - (cd[68] * buyTax / 10000)):
                                revert with 0, 17
                            if cd[68] != cd[68]:
                                revert with 0, 'invalid Tax'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(cd[4])] < cd[68] * buyTax / 10000:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(cd[4])] -= cd[68] * buyTax / 10000
                            if balanceOf[this.address] > !(cd[68] * buyTax / 10000):
                                revert with 0, 17
                            balanceOf[this.address] += cd[68] * buyTax / 10000
                            emit Transfer((cd[68] * buyTax / 10000), address(cd[4]), this.address);
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[36]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * buyTax / 10000):
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * buyTax / 10000)
                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * buyTax / 10000)):
                                revert with 0, 17
                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * buyTax / 10000)
                            emit Transfer((cd[68] - (cd[68] * buyTax / 10000)), address(cd[4]), address(cd[36]));
                        else:
                            if joePairAddress != address(cd[36]):
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[36]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if not sellTax:
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[36]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if cd[68] and sellTax > -1 / cd[68]:
                                        revert with 0, 17
                                    if cd[68] < cd[68] * sellTax / 10000:
                                        revert with 0, 17
                                    if cd[68] * sellTax / 10000 > !(cd[68] - (cd[68] * sellTax / 10000)):
                                        revert with 0, 17
                                    if cd[68] != cd[68]:
                                        revert with 0, 'invalid Tax'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(cd[4])] < cd[68] * sellTax / 10000:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(cd[4])] -= cd[68] * sellTax / 10000
                                    if balanceOf[this.address] > !(cd[68] * sellTax / 10000):
                                        revert with 0, 17
                                    balanceOf[this.address] += cd[68] * sellTax / 10000
                                    emit Transfer((cd[68] * sellTax / 10000), address(cd[4]), this.address);
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[36]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sellTax / 10000):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sellTax / 10000)
                                    if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sellTax / 10000)):
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sellTax / 10000)
                                    emit Transfer((cd[68] - (cd[68] * sellTax / 10000)), address(cd[4]), address(cd[36]));
                    if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                    emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                return 1
            if unknown_0x5f1c3182(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x672d5d3b(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x672d5d3b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        currentBlock = block.number
                    else:
                        if unknown_0x6770474b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            swapTokensAmount = cd[4]
                        else:
                            if unknown_0x6815a91c(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                cashoutFee = cd[4]
                            else:
                                if uint32(call.func_hash) >> 224 != unknown_0x6a141e2c(?????):
                                    require unknown_0x6bca89cb(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    return joePairAddress
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == uint16(cd[4])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if uint16(cd[4]) > 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'NEBULA::updateMaxTransferAmountRate: Max transfer amount rate must not exceed the maximum rate.'
                                emit MaxTransferAmountRateUpdated(uint16(stor30.field_0), uint16(cd[4]), msg.sender);
                                maxTransferAmountRate = uint16(cd[4])
                else:
                    if unknown_0x5f1c3182(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return swapTokensAmount
                    if unknown_0x62677fee(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        sub_32dbbdad[address(cd[4])] = block.number
                    else:
                        if unknown_0x629c7074(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_629c7074
                        if uint32(call.func_hash) >> 224 != unknown_0x65bfe430(?????):
                            require unknown_0x6653a340(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            rewardsPoolAddress = address(cd[4])
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if not msg.sender:
                                revert with 0, 'CASHOUT:1'
                            if stor31[address(msg.sender)]:
                                revert with 0, 'BLACKLISTED'
                            if teamPoolAddress == msg.sender:
                                revert with 0, 'CASHOUT:3'
                            if rewardsPoolAddress == msg.sender:
                                revert with 0, 'CASHOUT:3'
                            mem[132] = msg.sender
                            mem[164] = cd[4]
                            require ext_code.size(stor28)
                            staticcall stor28.getNodeReward(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, cd[4]
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'CASHOUT:4'
                            if not sub_fabc4035:
                                if not rewardsPoolAddress:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[stor16] < ext_call.return_data[0]:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[stor16] -= ext_call.return_data[0]
                                if balanceOf[msg.sender] > !ext_call.return_data[0]:
                                    revert with 0, 17
                                balanceOf[msg.sender] += ext_call.return_data[0]
                                emit Transfer(ext_call.return_data[0], rewardsPoolAddress, msg.sender);
                                require ext_code.size(stor28)
                                call stor28.cashoutNodeReward(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, cd[4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalClaimed > !ext_call.return_data[0]:
                                    revert with 0, 17
                                totalClaimed += ext_call.return_data[0]
                                emit Cashout(ext_call.return_data[0], msg.sender, cd[4]);
                            else:
                                if not cashoutFee:
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 17
                                    if not rewardsPoolAddress:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[stor16] < ext_call.return_data[0]:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[stor16] -= ext_call.return_data[0]
                                    if balanceOf[msg.sender] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[msg.sender] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], rewardsPoolAddress, msg.sender);
                                    require ext_code.size(stor28)
                                    call stor28.cashoutNodeReward(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[4]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalClaimed > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    totalClaimed += ext_call.return_data[0]
                                    emit Cashout(ext_call.return_data[0], msg.sender, cd[4]);
                                else:
                                    if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[ceil32(return_data.size) + 128] = 2
                                    mem[ceil32(return_data.size) + 160] = this.address
                                    require ext_code.size(address(stor27.field_40))
                                    staticcall address(stor27.field_40).WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        mem[(2 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 228] = 32
                                        mem[(2 * ceil32(return_data.size)) + 260] = 36
                                        mem[(2 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
                                        mem[(2 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 224
                                           len ceil32(return_data.size) + 132
                                    if not address(stor27.field_40):
                                        mem[(2 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 228] = 32
                                        mem[(2 * ceil32(return_data.size)) + 260] = 34
                                        mem[(2 * ceil32(return_data.size)) + 292] = 'ERC20: approve to the zero addre'
                                        mem[(2 * ceil32(return_data.size)) + 324] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 224
                                           len ceil32(return_data.size) + 132
                                    mem[0] = address(stor27.field_40)
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][address(stor27.field_0)].field_0 = ext_call.return_data[0] * cashoutFee / 100
                                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0] * cashoutFee / 100
                                    emit Approval(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], this.address, address(stor27.field_40));
                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * cashoutFee / 100
                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 420
                                    t = ceil32(return_data.size) + 160
                                    while idx < mem[ceil32(return_data.size) + 128]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                    require ext_code.size(address(stor27.field_40))
                                    call address(stor27.field_40).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 480]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call rewardsPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
                                        revert with 0, 17
                                    if not rewardsPoolAddress:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[stor16] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[stor16] = balanceOf[stor16] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
                                    if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                                        revert with 0, 17
                                    balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                                    emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), rewardsPoolAddress, msg.sender);
                                    require ext_code.size(stor28)
                                    call stor28.cashoutNodeReward(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[4]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                                        revert with 0, 17
                                    totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                                    emit Cashout((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), msg.sender, cd[4]);
            else:
                if unknown_0x527509f3(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x455a4396(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == bool(cd[36])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor31[address(cd[4])] = uint8(bool(cd[36]))
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x48b75044(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x4a5566bf(?????):
                                if unknown_0x4ef91063(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    return maxBalanceAmountRate
                                require unknown_0x4f7041a5(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                return buyTax
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == bool(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            antiwhale = uint8(bool(cd[4]))
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            require cd[36] == address(cd[36])
                            if not shares[address(cd[36])]:
                                revert with 0, 'PaymentSplitter: account has no shares'
                            mem[132] = this.address
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > !totalReleased[address(cd[4])]:
                                revert with 0, 17
                            if ext_call.return_data[0] + totalReleased[address(cd[4])] and shares[address(cd[36])] > -1 / ext_call.return_data[0] + totalReleased[address(cd[4])]:
                                revert with 0, 17
                            if not totalShares:
                                revert with 0, 18
                            if (ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares < released[address(cd[4])][address(cd[36])]:
                                revert with 0, 17
                            if not ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]:
                                revert with 0, 'PaymentSplitter: account is not due payment'
                            if released[address(cd[4])][address(cd[36])] > !(((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]):
                                revert with 0, 17
                            released[address(cd[4])][address(cd[36])] = (ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares
                            if totalReleased[address(cd[4])] > !(((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]):
                                revert with 0, 17
                            totalReleased[address(cd[4])] = totalReleased[address(cd[4])] + ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]
                            mem[ceil32(return_data.size) + 164] = address(cd[36])
                            mem[ceil32(return_data.size) + 196] = ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]
                            mem[ceil32(return_data.size) + 128] = 68
                            mem[ceil32(return_data.size) + 164 len 28] = address(cd[36]) << 64
                            mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 228] = 32
                            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(cd[4])):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])], 0
                            mem[ceil32(return_data.size) + 360] = 0
                            call address(cd[4]) with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])], 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                                    if not mem[ceil32(return_data.size) + 324]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            emit ERC20PaymentReleased(address(cd[36]), ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])], address(cd[4]));
                else:
                    if unknown_0x527509f3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_527509f3Address
                    if unknown_0x54557973(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if not msg.sender:
                            revert with 0, 'CASHOUT:5'
                        if stor31[address(msg.sender)]:
                            revert with 0, 'BLACKLISTED'
                        if teamPoolAddress == msg.sender:
                            revert with 0, 'CASHOUT:7'
                        if rewardsPoolAddress == msg.sender:
                            revert with 0, 'CASHOUT:7'
                        mem[132] = msg.sender
                        require ext_code.size(stor28)
                        staticcall stor28.getAllNodesRewards(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'CASHOUT:8'
                        if not sub_fabc4035:
                            if not rewardsPoolAddress:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[stor16] < ext_call.return_data[0]:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[stor16] -= ext_call.return_data[0]
                            if balanceOf[msg.sender] > !ext_call.return_data[0]:
                                revert with 0, 17
                            balanceOf[msg.sender] += ext_call.return_data[0]
                            emit Transfer(ext_call.return_data[0], rewardsPoolAddress, msg.sender);
                            require ext_code.size(stor28)
                            call stor28.cashoutAllNodesRewards(address arg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalClaimed > !ext_call.return_data[0]:
                                revert with 0, 17
                            totalClaimed += ext_call.return_data[0]
                            emit Cashout(ext_call.return_data[0], msg.sender, 0);
                        else:
                            if not cashoutFee:
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                if not rewardsPoolAddress:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[stor16] < ext_call.return_data[0]:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[stor16] -= ext_call.return_data[0]
                                if balanceOf[msg.sender] > !ext_call.return_data[0]:
                                    revert with 0, 17
                                balanceOf[msg.sender] += ext_call.return_data[0]
                                emit Transfer(ext_call.return_data[0], rewardsPoolAddress, msg.sender);
                                require ext_code.size(stor28)
                                call stor28.cashoutAllNodesRewards(address arg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalClaimed > !ext_call.return_data[0]:
                                    revert with 0, 17
                                totalClaimed += ext_call.return_data[0]
                                emit Cashout(ext_call.return_data[0], msg.sender, 0);
                            else:
                                if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 128] = 2
                                mem[ceil32(return_data.size) + 160] = this.address
                                require ext_code.size(address(stor27.field_40))
                                staticcall address(stor27.field_40).WAVAX() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 228] = 32
                                    mem[(2 * ceil32(return_data.size)) + 260] = 36
                                    mem[(2 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
                                    mem[(2 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 224
                                       len ceil32(return_data.size) + 132
                                if not address(stor27.field_40):
                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 228] = 32
                                    mem[(2 * ceil32(return_data.size)) + 260] = 34
                                    mem[(2 * ceil32(return_data.size)) + 292] = 'ERC20: approve to the zero addre'
                                    mem[(2 * ceil32(return_data.size)) + 324] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 224
                                       len ceil32(return_data.size) + 132
                                mem[0] = address(stor27.field_40)
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][address(stor27.field_0)].field_0 = ext_call.return_data[0] * cashoutFee / 100
                                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0] * cashoutFee / 100
                                emit Approval(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], this.address, address(stor27.field_40));
                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * cashoutFee / 100
                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 420
                                t = ceil32(return_data.size) + 160
                                while idx < mem[ceil32(return_data.size) + 128]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                require ext_code.size(address(stor27.field_40))
                                call address(stor27.field_40).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 480]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call rewardsPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
                                    revert with 0, 17
                                if not rewardsPoolAddress:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[stor16] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[stor16] = balanceOf[stor16] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
                                if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                                    revert with 0, 17
                                balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                                emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), rewardsPoolAddress, msg.sender);
                                require ext_code.size(stor28)
                                call stor28.cashoutAllNodesRewards(address arg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                                    revert with 0, 17
                                totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                                emit Cashout((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), msg.sender, 0);
                    else:
                        if unknown_0x54f12f1f(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return liquidityPoolFee
                        if uint32(call.func_hash) >> 224 != unknown_0x5c69cb5d(?????):
                            require unknown_0x5cc15b65(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            sub_629c7074 = cd[4]
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if not msg.sender:
                                revert with 0, 'COMP:1'
                            if stor31[address(msg.sender)]:
                                revert with 0, 'BLACKLISTED'
                            if teamPoolAddress == msg.sender:
                                revert with 0, 'COMP:2'
                            if rewardsPoolAddress == msg.sender:
                                revert with 0, 'COMP:2'
                            mem[132] = msg.sender
                            mem[164] = cd[4]
                            require ext_code.size(stor28)
                            staticcall stor28.getNodeReward(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, cd[4]
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'COMP:3'
                            if balanceOf[address(this.address)] >= swapTokensAmount:
                                if sub_fabc4035:
                                    if not uint8(stor30.field_0):
                                        if owner != msg.sender:
                                            if not stor32[address(msg.sender)]:
                                                uint8(stor30.field_0) = 1
                                                if balanceOf[address(this.address)] and sub_b326a0f9 > -1 / balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                mem[ceil32(return_data.size) + 128] = 2
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                require ext_code.size(address(stor27.field_40))
                                                staticcall address(stor27.field_40).WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 228] = 32
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 36
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
                                                    mem[(2 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from (2 * ceil32(return_data.size)) + 224
                                                       len ceil32(return_data.size) + 132
                                                if not address(stor27.field_40):
                                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 228] = 32
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 34
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 'ERC20: approve to the zero addre'
                                                    mem[(2 * ceil32(return_data.size)) + 324] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from (2 * ceil32(return_data.size)) + 224
                                                       len ceil32(return_data.size) + 132
                                                mem[0] = address(stor27.field_40)
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][address(stor27.field_0)].field_0 = balanceOf[address(this.address)] * sub_b326a0f9 / 100
                                                mem[(2 * ceil32(return_data.size)) + 224] = balanceOf[address(this.address)] * sub_b326a0f9 / 100
                                                emit Approval(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], this.address, address(stor27.field_40));
                                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 228] = balanceOf[address(this.address)] * sub_b326a0f9 / 100
                                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                                idx = 0
                                                s = (2 * ceil32(return_data.size)) + 420
                                                t = ceil32(return_data.size) + 160
                                                while idx < mem[ceil32(return_data.size) + 128]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(address(stor27.field_40))
                                                call address(stor27.field_40).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 480]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call teamPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if balanceOf[address(this.address)] and rewardsFee > -1 / balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if balanceOf[address(this.address)] * rewardsFee / 100 and stor29 > -1 / balanceOf[address(this.address)] * rewardsFee / 100:
                                                    revert with 0, 17
                                                _74407 = mem[64]
                                                mem[mem[64]] = 2
                                                mem[64] = mem[64] + 96
                                                mem[_74407 + 32 len 64] = call.data[calldata.size len 64]
                                                if 0 >= mem[_74407]:
                                                    revert with 0, 50
                                                mem[_74407 + 32] = this.address
                                                require ext_code.size(address(stor27.field_40))
                                                staticcall address(stor27.field_40).WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[_74407 + 96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _74407 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if 1 >= mem[_74407]:
                                                    revert with 0, 50
                                                mem[_74407 + 64] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not address(stor27.field_40):
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                mem[0] = address(stor27.field_40)
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][address(stor27.field_0)].field_0 = balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100
                                                emit Approval((balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100), this.address, address(stor27.field_40));
                                                mem[_74407 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[_74407 + ceil32(return_data.size) + 100] = balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100
                                                mem[_74407 + ceil32(return_data.size) + 132] = 0
                                                mem[_74407 + ceil32(return_data.size) + 164] = 160
                                                mem[_74407 + ceil32(return_data.size) + 260] = mem[_74407]
                                                idx = 0
                                                s = _74407 + ceil32(return_data.size) + 292
                                                t = _74407 + 32
                                                while idx < mem[_74407]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_74407 + ceil32(return_data.size) + 196] = this.address
                                                mem[_74407 + ceil32(return_data.size) + 228] = block.timestamp
                                                require ext_code.size(address(stor27.field_40))
                                                call address(stor27.field_40).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100, 0, 160, address(this.address), block.timestamp, mem[_74407 + ceil32(return_data.size) + 260 len (32 * mem[_74407]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call rewardsPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if balanceOf[address(this.address)] * rewardsFee / 100 < balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100:
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not rewardsPoolAddress:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(this.address)] < (balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * rewardsFee / 100) + (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100)
                                                if balanceOf[stor16] > !((balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100)):
                                                    revert with 0, 17
                                                balanceOf[stor16] = balanceOf[stor16] + (balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100)
                                                emit Transfer(((balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor29 / 100)), this.address, rewardsPoolAddress);
                                                if balanceOf[address(this.address)] and liquidityPoolFee > -1 / balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if balanceOf[address(this.address)] * liquidityPoolFee / 100 < balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2:
                                                    revert with 0, 17
                                                mem[_74407 + ceil32(return_data.size) + 96] = 2
                                                mem[_74407 + ceil32(return_data.size) + 128] = this.address
                                                require ext_code.size(address(stor27.field_40))
                                                staticcall address(stor27.field_40).WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[_74407 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_74407 + ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not address(stor27.field_40):
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                allowance[address(this.address)][address(stor27.field_0)].field_0 = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                allowance[address(this.address)][address(stor27.field_0)].field_255 = 0
                                                emit Approval((balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), this.address, address(stor27.field_40));
                                                mem[_74407 + (2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[_74407 + (2 * ceil32(return_data.size)) + 196] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                mem[_74407 + (2 * ceil32(return_data.size)) + 228] = 0
                                                mem[_74407 + (2 * ceil32(return_data.size)) + 260] = 160
                                                mem[_74407 + (2 * ceil32(return_data.size)) + 356] = 2
                                                idx = 0
                                                s = _74407 + (2 * ceil32(return_data.size)) + 388
                                                t = _74407 + ceil32(return_data.size) + 128
                                                while idx < mem[_74407 + ceil32(return_data.size) + 96]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_74407 + (2 * ceil32(return_data.size)) + 292] = this.address
                                                mem[_74407 + (2 * ceil32(return_data.size)) + 324] = block.timestamp
                                                require ext_code.size(address(stor27.field_40))
                                                call address(stor27.field_40).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_74407 + (2 * ceil32(return_data.size)) + 356 len (32 * mem[_74407 + ceil32(return_data.size) + 96]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if not this.address:
                                                    mem[_74407 + (2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_74407 + (2 * ceil32(return_data.size)) + 196] = 32
                                                    mem[_74407 + (2 * ceil32(return_data.size)) + 228] = 36
                                                    mem[_74407 + (2 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                                                    mem[_74407 + (2 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _74407 + (2 * ceil32(return_data.size)) + 192
                                                       len ceil32(return_data.size) + 132
                                                if not address(stor27.field_40):
                                                    mem[_74407 + (2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_74407 + (2 * ceil32(return_data.size)) + 196] = 32
                                                    mem[_74407 + (2 * ceil32(return_data.size)) + 228] = 34
                                                    mem[_74407 + (2 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                                                    mem[_74407 + (2 * ceil32(return_data.size)) + 292] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _74407 + (2 * ceil32(return_data.size)) + 192
                                                       len ceil32(return_data.size) + 132
                                                allowance[address(this.address)][address(stor27.field_0)].field_0 = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                emit Approval(((balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)), this.address, address(stor27.field_40));
                                                mem[_74407 + (2 * ceil32(return_data.size)) + 196] = this.address
                                                mem[_74407 + (2 * ceil32(return_data.size)) + 228] = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                mem[_74407 + (2 * ceil32(return_data.size)) + 260] = 0
                                                mem[_74407 + (2 * ceil32(return_data.size)) + 292] = 0
                                                mem[_74407 + (2 * ceil32(return_data.size)) + 324] = 0
                                                mem[_74407 + (2 * ceil32(return_data.size)) + 356] = block.timestamp
                                                require ext_code.size(address(stor27.field_40))
                                                call address(stor27.field_40).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args mem[_74407 + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 192]
                                                mem[_74407 + (2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[_74407 + (4 * ceil32(return_data.size)) + 192] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                mem[_74407 + (4 * ceil32(return_data.size)) + 224] = 0
                                                mem[_74407 + (4 * ceil32(return_data.size)) + 256] = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                    mem[_74407 + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 96],
                                                mem[_74407 + (4 * ceil32(return_data.size)) + 192] = 2
                                                mem[_74407 + (4 * ceil32(return_data.size)) + 224] = this.address
                                                require ext_code.size(address(stor27.field_40))
                                                staticcall address(stor27.field_40).WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[_74407 + (4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_74407 + (4 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not address(stor27.field_40):
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                allowance[address(this.address)][address(stor27.field_0)].field_0 = balanceOf[address(this.address)]
                                                emit Approval(balanceOf[address(this.address)], this.address, address(stor27.field_40));
                                                mem[_74407 + (6 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[_74407 + (6 * ceil32(return_data.size)) + 292] = balanceOf[address(this.address)]
                                                mem[_74407 + (6 * ceil32(return_data.size)) + 324] = 0
                                                mem[_74407 + (6 * ceil32(return_data.size)) + 356] = 160
                                                mem[_74407 + (6 * ceil32(return_data.size)) + 452] = 2
                                                idx = 0
                                                s = _74407 + (6 * ceil32(return_data.size)) + 484
                                                t = _74407 + (4 * ceil32(return_data.size)) + 224
                                                while idx < mem[_74407 + (4 * ceil32(return_data.size)) + 192]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(stor27.field_40))
                                                call address(stor27.field_40).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, mem[_74407 + (6 * ceil32(return_data.size)) + 452 len (32 * mem[_74407 + (4 * ceil32(return_data.size)) + 192]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                uint8(stor30.field_0) = 0
                            if not rewardsPoolAddress:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[stor16] < ext_call.return_data[0]:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[stor16] -= ext_call.return_data[0]
                            if balanceOf[this.address] > !ext_call.return_data[0]:
                                revert with 0, 17
                            balanceOf[this.address] += ext_call.return_data[0]
                            emit Transfer(ext_call.return_data[0], rewardsPoolAddress, this.address);
                            require ext_code.size(stor28)
                            call stor28.0xcbd14993 with:
                                 gas gas_remaining wei
                                args msg.sender, cd[4], ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Compound(ext_call.return_data[0], msg.sender, cd[4]);
}



}
