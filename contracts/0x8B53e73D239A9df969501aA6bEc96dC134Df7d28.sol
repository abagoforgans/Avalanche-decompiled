contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const deadAddress = 57005

const maxFees = 30


address owner;
array of struct stor3;
array of struct stor4;
uint8 decimals;
uint256 totalSupply;
address marketingAddress;
address sub_e5148bd6Address;
mapping of uint256 balanceOf;
mapping of struct allowance;
mapping of uint8 stor11;
mapping of uint8 stor12;
uint256 totalFees;
uint256 stor14;
uint256 liquidityFee;
uint256 burnFee;
uint256 marketingFee;
uint256 maxBalance;
address sub_34d2da91Address;
address uniswapV2PairAddress;
uint256 liquifyThreshhold;
uint8 stor22;

function totalFees() {
    return totalFees
}

function totalSupply() {
    return totalSupply
}

function isExcludedFromMaxBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[address(arg1)])
}

function decimals() {
    return decimals
}

function sub_34d2da91(?) {
    return sub_34d2da91Address
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[address(arg1)])
}

function liquifyThreshhold() {
    return liquifyThreshhold
}

function marketingFee() {
    return marketingFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function maxBalance() {
    return maxBalance
}

function owner() {
    return owner
}

function liquidityFee() {
    return liquidityFee
}

function marketingAddress() {
    return marketingAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function sub_e5148bd6(?) {
    return sub_e5148bd6Address
}

function burnFee() {
    return burnFee
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function includeInFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = 0
}

function excludeFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = 1
}

function setMarketingAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingAddress = arg1
}

function setLiquifyThreshhold(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquifyThreshhold = arg1
}

function includeInMaxBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = 0
}

function excludeFromMaxBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = 1
}

function setMarketingWalletToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e5148bd6Address = arg1
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
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMaxBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not totalSupply:
        require arg1 >= 0
    else:
        if totalSupply and 5 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if 5 * totalSupply / totalSupply != 5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require arg1 >= 5 * totalSupply / 1000
    maxBalance = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)].field_0:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[address(msg.sender)][address(arg1)].field_0 < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)].field_0 > -arg2 - 1:
        revert with 'NH{q', 17
    if allowance[address(msg.sender)][address(arg1)].field_0 + arg2 < allowance[address(msg.sender)][address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function setBurnFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if liquidityFee > -arg1 - 1:
        revert with 'NH{q', 17
    if liquidityFee + arg1 < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + arg1 > -marketingFee - 1:
        revert with 'NH{q', 17
    if marketingFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + arg1 + marketingFee > 30:
        revert with 0, 'Fees are too high.'
    burnFee = arg1
    if liquidityFee > -marketingFee - 1:
        revert with 'NH{q', 17
    if liquidityFee + marketingFee < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + marketingFee > -burnFee - 1:
        revert with 'NH{q', 17
    if burnFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = liquidityFee + marketingFee + burnFee
    emit SetBurnFee(burnFee);
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor22:
        revert with 0, 'inSwapAndLiquify'
    if arg1 > -burnFee - 1:
        revert with 'NH{q', 17
    if arg1 + burnFee < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + burnFee > -marketingFee - 1:
        revert with 'NH{q', 17
    if marketingFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + burnFee + marketingFee > 30:
        revert with 0, 'Fees are too high.'
    liquidityFee = arg1
    if liquidityFee > -marketingFee - 1:
        revert with 'NH{q', 17
    if liquidityFee + marketingFee < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + marketingFee > -burnFee - 1:
        revert with 'NH{q', 17
    if burnFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = liquidityFee + marketingFee + burnFee
    if liquidityFee > -marketingFee - 1:
        revert with 'NH{q', 17
    if liquidityFee + marketingFee < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    stor14 = liquidityFee + marketingFee
    emit SetLiquidityFee(liquidityFee);
}

function setMarketingFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor22:
        revert with 0, 'inSwapAndLiquify'
    if liquidityFee > -burnFee - 1:
        revert with 'NH{q', 17
    if liquidityFee + burnFee < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + burnFee > -arg1 - 1:
        revert with 'NH{q', 17
    if arg1 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + burnFee + arg1 > 30:
        revert with 0, 'Fees are too high.'
    marketingFee = arg1
    if liquidityFee > -marketingFee - 1:
        revert with 'NH{q', 17
    if liquidityFee + marketingFee < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + marketingFee > -burnFee - 1:
        revert with 'NH{q', 17
    if burnFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = liquidityFee + marketingFee + burnFee
    if liquidityFee > -marketingFee - 1:
        revert with 'NH{q', 17
    if liquidityFee + marketingFee < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    stor14 = liquidityFee + marketingFee
    emit SetMarketingFee(marketingFee);
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
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
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if msg.sender == owner:
        if arg1 != uniswapV2PairAddress:
            if stor11[address(msg.sender)]:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor11[address(arg1)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if totalFees <= 0:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not arg2:
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                emit TokenBurn(0, msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and burnFee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * burnFee / arg2 != burnFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if arg2 * burnFee / 100 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 * burnFee / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < arg2 * burnFee / 100:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += arg2 * burnFee / 100
                                emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                        else:
                            if arg2 and stor14 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor14 / arg2 != stor14:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not arg2:
                                if arg2 * stor14 / 100 > -1:
                                    revert with 'NH{q', 17
                                if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 * stor14 / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < arg2 * stor14 / 100:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg2 * stor14 / 100
                                emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                emit TokenBurn(0, msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                            else:
                                if arg2 and burnFee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * burnFee / arg2 != burnFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg2 * stor14 / 100
                                emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += arg2 * burnFee / 100
                                emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
            return 1
        if stor22:
            if stor11[address(msg.sender)]:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor11[address(arg1)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if totalFees <= 0:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not arg2:
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                emit TokenBurn(0, msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and burnFee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * burnFee / arg2 != burnFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if arg2 * burnFee / 100 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 * burnFee / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < arg2 * burnFee / 100:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += arg2 * burnFee / 100
                                emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                        else:
                            if arg2 and stor14 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor14 / arg2 != stor14:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not arg2:
                                if arg2 * stor14 / 100 > -1:
                                    revert with 'NH{q', 17
                                if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 * stor14 / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < arg2 * stor14 / 100:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg2 * stor14 / 100
                                emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                emit TokenBurn(0, msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                            else:
                                if arg2 and burnFee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * burnFee / arg2 != burnFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg2 * stor14 / 100
                                emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += arg2 * burnFee / 100
                                emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
            return 1
        if balanceOf[address(this.address)] < liquifyThreshhold:
            if stor11[address(msg.sender)]:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor11[address(arg1)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if totalFees <= 0:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not arg2:
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                emit TokenBurn(0, msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and burnFee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * burnFee / arg2 != burnFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if arg2 * burnFee / 100 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 * burnFee / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < arg2 * burnFee / 100:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += arg2 * burnFee / 100
                                emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                        else:
                            if arg2 and stor14 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor14 / arg2 != stor14:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not arg2:
                                if arg2 * stor14 / 100 > -1:
                                    revert with 'NH{q', 17
                                if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 * stor14 / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < arg2 * stor14 / 100:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg2 * stor14 / 100
                                emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                emit TokenBurn(0, msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                            else:
                                if arg2 and burnFee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * burnFee / arg2 != burnFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg2 * stor14 / 100
                                emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += arg2 * burnFee / 100
                                emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
            return 1
        if stor14 <= 0:
            if stor11[address(msg.sender)]:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor11[address(arg1)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if totalFees <= 0:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not arg2:
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                emit TokenBurn(0, msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and burnFee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * burnFee / arg2 != burnFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if arg2 * burnFee / 100 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 * burnFee / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < arg2 * burnFee / 100:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += arg2 * burnFee / 100
                                emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                        else:
                            if arg2 and stor14 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor14 / arg2 != stor14:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not arg2:
                                if arg2 * stor14 / 100 > -1:
                                    revert with 'NH{q', 17
                                if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 * stor14 / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < arg2 * stor14 / 100:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg2 * stor14 / 100
                                emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                emit TokenBurn(0, msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                            else:
                                if arg2 and burnFee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * burnFee / arg2 != burnFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg2 * stor14 / 100
                                emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += arg2 * burnFee / 100
                                emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
            return 1
        if msg.sender == owner:
            if stor11[address(msg.sender)]:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor11[address(arg1)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if totalFees <= 0:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not arg2:
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                emit TokenBurn(0, msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and burnFee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * burnFee / arg2 != burnFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if arg2 * burnFee / 100 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 * burnFee / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < arg2 * burnFee / 100:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += arg2 * burnFee / 100
                                emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                        else:
                            if arg2 and stor14 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor14 / arg2 != stor14:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not arg2:
                                if arg2 * stor14 / 100 > -1:
                                    revert with 'NH{q', 17
                                if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 * stor14 / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < arg2 * stor14 / 100:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg2 * stor14 / 100
                                emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                emit TokenBurn(0, msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                            else:
                                if arg2 and burnFee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * burnFee / arg2 != burnFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg2 * stor14 / 100
                                emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += arg2 * burnFee / 100
                                emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
            return 1
        if arg1 == owner:
            if stor11[address(msg.sender)]:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor11[address(arg1)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if totalFees <= 0:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not arg2:
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                emit TokenBurn(0, msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and burnFee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * burnFee / arg2 != burnFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if arg2 * burnFee / 100 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 * burnFee / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < arg2 * burnFee / 100:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += arg2 * burnFee / 100
                                emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                        else:
                            if arg2 and stor14 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor14 / arg2 != stor14:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not arg2:
                                if arg2 * stor14 / 100 > -1:
                                    revert with 'NH{q', 17
                                if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 * stor14 / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < arg2 * stor14 / 100:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg2 * stor14 / 100
                                emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                emit TokenBurn(0, msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                            else:
                                if arg2 and burnFee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * burnFee / arg2 != burnFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg2 * stor14 / 100
                                emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += arg2 * burnFee / 100
                                emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
            return 1
        stor22 = 1
        if balanceOf[address(this.address)]:
            if balanceOf[address(this.address)] and liquidityFee > -1 / balanceOf[address(this.address)]:
                revert with 'NH{q', 17
            if not balanceOf[address(this.address)]:
                revert with 'NH{q', 18
            if balanceOf[address(this.address)] * liquidityFee / balanceOf[address(this.address)] != liquidityFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if stor14 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor14:
                revert with 'NH{q', 18
            if balanceOf[address(this.address)]:
                if balanceOf[address(this.address)] and marketingFee > -1 / balanceOf[address(this.address)]:
                    revert with 'NH{q', 17
                if not balanceOf[address(this.address)]:
                    revert with 'NH{q', 18
                if balanceOf[address(this.address)] * marketingFee / balanceOf[address(this.address)] != marketingFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor14 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor14:
                    revert with 'NH{q', 18
                if balanceOf[address(this.address)] * liquidityFee / stor14 / 2 > balanceOf[address(this.address)] * liquidityFee / stor14:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if balanceOf[address(this.address)] * liquidityFee / stor14 < balanceOf[address(this.address)] * liquidityFee / stor14 / 2:
                    revert with 'NH{q', 17
                mem[384] = this.address
                require ext_code.size(sub_34d2da91Address)
                staticcall sub_34d2da91Address.0x73b295c2 with:
                        gas gas_remaining wei
                mem[448] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[416] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not sub_34d2da91Address:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                allowance[address(this.address)][stor19].field_255 = 0
                emit Approval((balanceOf[address(this.address)] * liquidityFee / stor14 / 2), this.address, sub_34d2da91Address);
                mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 452] = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                idx = 0
                s = 384
                t = ceil32(return_data.size) + 644
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_34d2da91Address)
                call sub_34d2da91Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, balanceOf[address(this.address)] * liquidityFee / stor14), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 448] = 30
                mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 'NH{q', 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not sub_34d2da91Address:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor19].field_0 = (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)
                emit Approval(((balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)), this.address, sub_34d2da91Address);
                mem[ceil32(return_data.size) + 580] = 0
                mem[ceil32(return_data.size) + 612] = 0
                mem[ceil32(return_data.size) + 644] = owner
                mem[ceil32(return_data.size) + 676] = block.timestamp
                require ext_code.size(sub_34d2da91Address)
                call sub_34d2da91Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args address(this.address), (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2), 0, 0, owner, block.timestamp
                mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
                mem[(2 * ceil32(return_data.size)) + 512] = 3
                mem[(2 * ceil32(return_data.size)) + 544] = this.address
                require ext_code.size(sub_34d2da91Address)
                staticcall sub_34d2da91Address.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not sub_34d2da91Address:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * marketingFee / stor14
                emit Approval((balanceOf[address(this.address)] * marketingFee / stor14), this.address, sub_34d2da91Address);
                mem[(4 * ceil32(return_data.size)) + 640] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 644] = balanceOf[address(this.address)] * marketingFee / stor14
                mem[(4 * ceil32(return_data.size)) + 676] = 0
                mem[(4 * ceil32(return_data.size)) + 708] = 160
                mem[(4 * ceil32(return_data.size)) + 804] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + 544
                t = (4 * ceil32(return_data.size)) + 836
                while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 740] = this.address
                mem[(4 * ceil32(return_data.size)) + 772] = block.timestamp
                require ext_code.size(sub_34d2da91Address)
                call sub_34d2da91Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args balanceOf[address(this.address)] * marketingFee / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_e5148bd6Address)
                staticcall sub_e5148bd6Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(sub_e5148bd6Address)
                call sub_e5148bd6Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args marketingAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                stor22 = 0
                if stor11[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 710 len 26] >> 48,
                                    0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor11[address(arg1)]:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 710 len 26] >> 48,
                                        0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if totalFees <= 0:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 710 len 26] >> 48,
                                            0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not arg2:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                    0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                    0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    emit TokenBurn(0, msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 1094 len 26] >> 48,
                                                    0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and burnFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * burnFee / arg2 != burnFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if arg2 * burnFee / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 * burnFee / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                    0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                    0
                                    if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                    if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg2 * burnFee / 100
                                    emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                    emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 1094 len 26] >> 48,
                                                    0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                    emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                            else:
                                if arg2 and stor14 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor14 / arg2 != stor14:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg2:
                                    if arg2 * stor14 / 100 > -1:
                                        revert with 'NH{q', 17
                                    if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 * stor14 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                    0
                                    if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                    if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * stor14 / 100
                                    emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                    0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    emit TokenBurn(0, msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 1094 len 26] >> 48,
                                                    0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                    emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and burnFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * burnFee / arg2 != burnFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                    0
                                    if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                    if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * stor14 / 100
                                    emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                    0
                                    if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                    if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg2 * burnFee / 100
                                    emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                    emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 1094 len 26] >> 48,
                                                    0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                    emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                return 1
            if stor14 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor14:
                revert with 'NH{q', 18
            if balanceOf[address(this.address)] * liquidityFee / stor14 / 2 > balanceOf[address(this.address)] * liquidityFee / stor14:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if balanceOf[address(this.address)] * liquidityFee / stor14 < balanceOf[address(this.address)] * liquidityFee / stor14 / 2:
                revert with 'NH{q', 17
            mem[384] = this.address
            require ext_code.size(sub_34d2da91Address)
            staticcall sub_34d2da91Address.0x73b295c2 with:
                    gas gas_remaining wei
            mem[448] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[416] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not sub_34d2da91Address:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
            allowance[address(this.address)][stor19].field_255 = 0
            emit Approval((balanceOf[address(this.address)] * liquidityFee / stor14 / 2), this.address, sub_34d2da91Address);
            mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 452] = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
            idx = 0
            s = 384
            t = ceil32(return_data.size) + 644
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(sub_34d2da91Address)
            call sub_34d2da91Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, balanceOf[address(this.address)] * liquidityFee / stor14), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 448] = 30
            mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
            if eth.balance(this.address) > eth.balance(this.address):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 'NH{q', 17
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not sub_34d2da91Address:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor19].field_0 = (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)
            emit Approval(((balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)), this.address, sub_34d2da91Address);
            mem[ceil32(return_data.size) + 580] = 0
            mem[ceil32(return_data.size) + 612] = 0
            mem[ceil32(return_data.size) + 644] = owner
            mem[ceil32(return_data.size) + 676] = block.timestamp
            require ext_code.size(sub_34d2da91Address)
            call sub_34d2da91Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args address(this.address), (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2), 0, 0, owner, block.timestamp
            mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            mem[(2 * ceil32(return_data.size)) + 512] = 3
            mem[(2 * ceil32(return_data.size)) + 544] = this.address
            require ext_code.size(sub_34d2da91Address)
            staticcall sub_34d2da91Address.0x73b295c2 with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not sub_34d2da91Address:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor19].field_0 = 0 / stor14
            emit Approval((0 / stor14), this.address, sub_34d2da91Address);
            mem[(4 * ceil32(return_data.size)) + 640] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 644] = 0 / stor14
            mem[(4 * ceil32(return_data.size)) + 676] = 0
            mem[(4 * ceil32(return_data.size)) + 708] = 160
            mem[(4 * ceil32(return_data.size)) + 804] = 3
            idx = 0
            s = (2 * ceil32(return_data.size)) + 544
            t = (4 * ceil32(return_data.size)) + 836
            while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 740] = this.address
            mem[(4 * ceil32(return_data.size)) + 772] = block.timestamp
            require ext_code.size(sub_34d2da91Address)
            call sub_34d2da91Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0 / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
        else:
            if stor14 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor14:
                revert with 'NH{q', 18
            if not balanceOf[address(this.address)]:
                if stor14 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor14:
                    revert with 'NH{q', 18
                if 0 / stor14 / 2 > 0 / stor14:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / stor14 < 0 / stor14 / 2:
                    revert with 'NH{q', 17
                mem[384] = this.address
                require ext_code.size(sub_34d2da91Address)
                staticcall sub_34d2da91Address.0x73b295c2 with:
                        gas gas_remaining wei
                mem[448] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[416] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not sub_34d2da91Address:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor19].field_0 = 0 / stor14 / 2
                allowance[address(this.address)][stor19].field_255 = 0
                emit Approval((0 / stor14 / 2), this.address, sub_34d2da91Address);
                mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 452] = 0 / stor14 / 2
                idx = 0
                s = 384
                t = ceil32(return_data.size) + 644
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_34d2da91Address)
                call sub_34d2da91Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, 0 / stor14), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 448] = 30
                mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 'NH{q', 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not sub_34d2da91Address:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor19].field_0 = (0 / stor14) - (0 / stor14 / 2)
                emit Approval(((0 / stor14) - (0 / stor14 / 2)), this.address, sub_34d2da91Address);
                mem[ceil32(return_data.size) + 580] = 0
                mem[ceil32(return_data.size) + 612] = 0
                mem[ceil32(return_data.size) + 644] = owner
                mem[ceil32(return_data.size) + 676] = block.timestamp
                require ext_code.size(sub_34d2da91Address)
                call sub_34d2da91Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args address(this.address), (0 / stor14) - (0 / stor14 / 2), 0, 0, owner, block.timestamp
                mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
                mem[(2 * ceil32(return_data.size)) + 512] = 3
                mem[(2 * ceil32(return_data.size)) + 544] = this.address
                require ext_code.size(sub_34d2da91Address)
                staticcall sub_34d2da91Address.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not sub_34d2da91Address:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor19].field_0 = 0 / stor14
                emit Approval((0 / stor14), this.address, sub_34d2da91Address);
                mem[(4 * ceil32(return_data.size)) + 640] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 644] = 0 / stor14
                mem[(4 * ceil32(return_data.size)) + 676] = 0
                mem[(4 * ceil32(return_data.size)) + 708] = 160
                mem[(4 * ceil32(return_data.size)) + 804] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + 544
                t = (4 * ceil32(return_data.size)) + 836
                while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 740] = this.address
                mem[(4 * ceil32(return_data.size)) + 772] = block.timestamp
                require ext_code.size(sub_34d2da91Address)
                call sub_34d2da91Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0 / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
            else:
                if balanceOf[address(this.address)] and marketingFee > -1 / balanceOf[address(this.address)]:
                    revert with 'NH{q', 17
                if not balanceOf[address(this.address)]:
                    revert with 'NH{q', 18
                if balanceOf[address(this.address)] * marketingFee / balanceOf[address(this.address)] != marketingFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor14 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor14:
                    revert with 'NH{q', 18
                if 0 / stor14 / 2 > 0 / stor14:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / stor14 < 0 / stor14 / 2:
                    revert with 'NH{q', 17
                mem[384] = this.address
                require ext_code.size(sub_34d2da91Address)
                staticcall sub_34d2da91Address.0x73b295c2 with:
                        gas gas_remaining wei
                mem[448] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[416] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not sub_34d2da91Address:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor19].field_0 = 0 / stor14 / 2
                allowance[address(this.address)][stor19].field_255 = 0
                emit Approval((0 / stor14 / 2), this.address, sub_34d2da91Address);
                mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 452] = 0 / stor14 / 2
                idx = 0
                s = 384
                t = ceil32(return_data.size) + 644
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_34d2da91Address)
                call sub_34d2da91Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, 0 / stor14), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 448] = 30
                mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 'NH{q', 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not sub_34d2da91Address:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor19].field_0 = (0 / stor14) - (0 / stor14 / 2)
                emit Approval(((0 / stor14) - (0 / stor14 / 2)), this.address, sub_34d2da91Address);
                mem[ceil32(return_data.size) + 580] = 0
                mem[ceil32(return_data.size) + 612] = 0
                mem[ceil32(return_data.size) + 644] = owner
                mem[ceil32(return_data.size) + 676] = block.timestamp
                require ext_code.size(sub_34d2da91Address)
                call sub_34d2da91Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args address(this.address), (0 / stor14) - (0 / stor14 / 2), 0, 0, owner, block.timestamp
                mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
                mem[(2 * ceil32(return_data.size)) + 512] = 3
                mem[(2 * ceil32(return_data.size)) + 544] = this.address
                require ext_code.size(sub_34d2da91Address)
                staticcall sub_34d2da91Address.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not sub_34d2da91Address:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * marketingFee / stor14
                emit Approval((balanceOf[address(this.address)] * marketingFee / stor14), this.address, sub_34d2da91Address);
                mem[(4 * ceil32(return_data.size)) + 640] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 644] = balanceOf[address(this.address)] * marketingFee / stor14
                mem[(4 * ceil32(return_data.size)) + 676] = 0
                mem[(4 * ceil32(return_data.size)) + 708] = 160
                mem[(4 * ceil32(return_data.size)) + 804] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + 544
                t = (4 * ceil32(return_data.size)) + 836
                while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 740] = this.address
                mem[(4 * ceil32(return_data.size)) + 772] = block.timestamp
                require ext_code.size(sub_34d2da91Address)
                call sub_34d2da91Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args balanceOf[address(this.address)] * marketingFee / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
    else:
        if arg1 == owner:
            if arg1 != uniswapV2PairAddress:
                if stor11[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor11[address(arg1)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if totalFees <= 0:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not arg2:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    emit TokenBurn(0, msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and burnFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * burnFee / arg2 != burnFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if arg2 * burnFee / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 * burnFee / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                    if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg2 * burnFee / 100
                                    emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                    emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                    emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                            else:
                                if arg2 and stor14 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor14 / arg2 != stor14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not arg2:
                                    if arg2 * stor14 / 100 > -1:
                                        revert with 'NH{q', 17
                                    if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 * stor14 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                    if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * stor14 / 100
                                    emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    emit TokenBurn(0, msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                    emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and burnFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * burnFee / arg2 != burnFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                    if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * stor14 / 100
                                    emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                    if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg2 * burnFee / 100
                                    emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                    emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                    emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                return 1
            if stor22:
                if stor11[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor11[address(arg1)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if totalFees <= 0:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not arg2:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    emit TokenBurn(0, msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and burnFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * burnFee / arg2 != burnFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if arg2 * burnFee / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 * burnFee / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                    if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg2 * burnFee / 100
                                    emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                    emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                    emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                            else:
                                if arg2 and stor14 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor14 / arg2 != stor14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not arg2:
                                    if arg2 * stor14 / 100 > -1:
                                        revert with 'NH{q', 17
                                    if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 * stor14 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                    if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * stor14 / 100
                                    emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    emit TokenBurn(0, msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                    emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and burnFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * burnFee / arg2 != burnFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                    if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * stor14 / 100
                                    emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                    if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg2 * burnFee / 100
                                    emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                    emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                    emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                return 1
            if balanceOf[address(this.address)] < liquifyThreshhold:
                if stor11[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor11[address(arg1)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if totalFees <= 0:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not arg2:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    emit TokenBurn(0, msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and burnFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * burnFee / arg2 != burnFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if arg2 * burnFee / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 * burnFee / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                    if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg2 * burnFee / 100
                                    emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                    emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                    emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                            else:
                                if arg2 and stor14 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor14 / arg2 != stor14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not arg2:
                                    if arg2 * stor14 / 100 > -1:
                                        revert with 'NH{q', 17
                                    if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 * stor14 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                    if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * stor14 / 100
                                    emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    emit TokenBurn(0, msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                    emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and burnFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * burnFee / arg2 != burnFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                    if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * stor14 / 100
                                    emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                    if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg2 * burnFee / 100
                                    emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                    emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                    emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                return 1
            if stor14 <= 0:
                if stor11[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor11[address(arg1)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if totalFees <= 0:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not arg2:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    emit TokenBurn(0, msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and burnFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * burnFee / arg2 != burnFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if arg2 * burnFee / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 * burnFee / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                    if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg2 * burnFee / 100
                                    emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                    emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                    emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                            else:
                                if arg2 and stor14 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor14 / arg2 != stor14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not arg2:
                                    if arg2 * stor14 / 100 > -1:
                                        revert with 'NH{q', 17
                                    if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 * stor14 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                    if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * stor14 / 100
                                    emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    emit TokenBurn(0, msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                    emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and burnFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * burnFee / arg2 != burnFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                    if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * stor14 / 100
                                    emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                    if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg2 * burnFee / 100
                                    emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                    emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                    emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                return 1
            if msg.sender == owner:
                if stor11[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor11[address(arg1)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if totalFees <= 0:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not arg2:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    emit TokenBurn(0, msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and burnFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * burnFee / arg2 != burnFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if arg2 * burnFee / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 * burnFee / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                    if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg2 * burnFee / 100
                                    emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                    emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                    emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                            else:
                                if arg2 and stor14 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor14 / arg2 != stor14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not arg2:
                                    if arg2 * stor14 / 100 > -1:
                                        revert with 'NH{q', 17
                                    if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 * stor14 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                    if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * stor14 / 100
                                    emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    emit TokenBurn(0, msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                    emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and burnFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * burnFee / arg2 != burnFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                    if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * stor14 / 100
                                    emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                    if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg2 * burnFee / 100
                                    emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                    emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                    emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                return 1
            if arg1 == owner:
                if stor11[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor11[address(arg1)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if totalFees <= 0:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not arg2:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    emit TokenBurn(0, msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and burnFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * burnFee / arg2 != burnFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if arg2 * burnFee / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 * burnFee / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                    if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg2 * burnFee / 100
                                    emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                    emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                    emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                            else:
                                if arg2 and stor14 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor14 / arg2 != stor14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not arg2:
                                    if arg2 * stor14 / 100 > -1:
                                        revert with 'NH{q', 17
                                    if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 * stor14 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                    if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * stor14 / 100
                                    emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    emit TokenBurn(0, msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                    emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and burnFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * burnFee / arg2 != burnFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                    if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * stor14 / 100
                                    emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                    if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg2 * burnFee / 100
                                    emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                    emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                    emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                return 1
            stor22 = 1
            if balanceOf[address(this.address)]:
                if balanceOf[address(this.address)] and liquidityFee > -1 / balanceOf[address(this.address)]:
                    revert with 'NH{q', 17
                if not balanceOf[address(this.address)]:
                    revert with 'NH{q', 18
                if balanceOf[address(this.address)] * liquidityFee / balanceOf[address(this.address)] != liquidityFee:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if stor14 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor14:
                    revert with 'NH{q', 18
                if balanceOf[address(this.address)]:
                    if balanceOf[address(this.address)] and marketingFee > -1 / balanceOf[address(this.address)]:
                        revert with 'NH{q', 17
                    if not balanceOf[address(this.address)]:
                        revert with 'NH{q', 18
                    if balanceOf[address(this.address)] * marketingFee / balanceOf[address(this.address)] != marketingFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor14 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor14:
                        revert with 'NH{q', 18
                    if balanceOf[address(this.address)] * liquidityFee / stor14 / 2 > balanceOf[address(this.address)] * liquidityFee / stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if balanceOf[address(this.address)] * liquidityFee / stor14 < balanceOf[address(this.address)] * liquidityFee / stor14 / 2:
                        revert with 'NH{q', 17
                    mem[384] = this.address
                    require ext_code.size(sub_34d2da91Address)
                    staticcall sub_34d2da91Address.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[448] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[416] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_34d2da91Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                    allowance[address(this.address)][stor19].field_255 = 0
                    emit Approval((balanceOf[address(this.address)] * liquidityFee / stor14 / 2), this.address, sub_34d2da91Address);
                    mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 452] = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                    idx = 0
                    s = 384
                    t = ceil32(return_data.size) + 644
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_34d2da91Address)
                    call sub_34d2da91Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, balanceOf[address(this.address)] * liquidityFee / stor14), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 448] = 30
                    mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 'NH{q', 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_34d2da91Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)
                    emit Approval(((balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)), this.address, sub_34d2da91Address);
                    mem[ceil32(return_data.size) + 580] = 0
                    mem[ceil32(return_data.size) + 612] = 0
                    mem[ceil32(return_data.size) + 644] = owner
                    mem[ceil32(return_data.size) + 676] = block.timestamp
                    require ext_code.size(sub_34d2da91Address)
                    call sub_34d2da91Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(this.address), (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2), 0, 0, owner, block.timestamp
                    mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    mem[(2 * ceil32(return_data.size)) + 512] = 3
                    mem[(2 * ceil32(return_data.size)) + 544] = this.address
                    require ext_code.size(sub_34d2da91Address)
                    staticcall sub_34d2da91Address.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_34d2da91Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * marketingFee / stor14
                    emit Approval((balanceOf[address(this.address)] * marketingFee / stor14), this.address, sub_34d2da91Address);
                    mem[(4 * ceil32(return_data.size)) + 640] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 644] = balanceOf[address(this.address)] * marketingFee / stor14
                    mem[(4 * ceil32(return_data.size)) + 676] = 0
                    mem[(4 * ceil32(return_data.size)) + 708] = 160
                    mem[(4 * ceil32(return_data.size)) + 804] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = (4 * ceil32(return_data.size)) + 836
                    while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 740] = this.address
                    mem[(4 * ceil32(return_data.size)) + 772] = block.timestamp
                    require ext_code.size(sub_34d2da91Address)
                    call sub_34d2da91Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args balanceOf[address(this.address)] * marketingFee / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_e5148bd6Address)
                    staticcall sub_e5148bd6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(sub_e5148bd6Address)
                    call sub_e5148bd6Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args marketingAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    stor22 = 0
                    if stor11[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 710 len 26] >> 48,
                                        0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor11[address(arg1)]:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 710 len 26] >> 48,
                                            0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if totalFees <= 0:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 710 len 26] >> 48,
                                                0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 1094 len 26] >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if arg2 * burnFee / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * burnFee / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 1094 len 26] >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and stor14 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor14 / arg2 != stor14:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not arg2:
                                        if arg2 * stor14 / 100 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * stor14 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 1094 len 26] >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 1094 len 26] >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                    return 1
                if stor14 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor14:
                    revert with 'NH{q', 18
                if balanceOf[address(this.address)] * liquidityFee / stor14 / 2 > balanceOf[address(this.address)] * liquidityFee / stor14:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if balanceOf[address(this.address)] * liquidityFee / stor14 < balanceOf[address(this.address)] * liquidityFee / stor14 / 2:
                    revert with 'NH{q', 17
                mem[384] = this.address
                require ext_code.size(sub_34d2da91Address)
                staticcall sub_34d2da91Address.0x73b295c2 with:
                        gas gas_remaining wei
                mem[448] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[416] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not sub_34d2da91Address:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                allowance[address(this.address)][stor19].field_255 = 0
                emit Approval((balanceOf[address(this.address)] * liquidityFee / stor14 / 2), this.address, sub_34d2da91Address);
                mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 452] = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                idx = 0
                s = 384
                t = ceil32(return_data.size) + 644
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_34d2da91Address)
                call sub_34d2da91Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, balanceOf[address(this.address)] * liquidityFee / stor14), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 448] = 30
                mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 'NH{q', 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not sub_34d2da91Address:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor19].field_0 = (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)
                emit Approval(((balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)), this.address, sub_34d2da91Address);
                mem[ceil32(return_data.size) + 580] = 0
                mem[ceil32(return_data.size) + 612] = 0
                mem[ceil32(return_data.size) + 644] = owner
                mem[ceil32(return_data.size) + 676] = block.timestamp
                require ext_code.size(sub_34d2da91Address)
                call sub_34d2da91Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args address(this.address), (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2), 0, 0, owner, block.timestamp
                mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
                mem[(2 * ceil32(return_data.size)) + 512] = 3
                mem[(2 * ceil32(return_data.size)) + 544] = this.address
                require ext_code.size(sub_34d2da91Address)
                staticcall sub_34d2da91Address.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not sub_34d2da91Address:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor19].field_0 = 0 / stor14
                emit Approval((0 / stor14), this.address, sub_34d2da91Address);
                mem[(4 * ceil32(return_data.size)) + 640] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 644] = 0 / stor14
                mem[(4 * ceil32(return_data.size)) + 676] = 0
                mem[(4 * ceil32(return_data.size)) + 708] = 160
                mem[(4 * ceil32(return_data.size)) + 804] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + 544
                t = (4 * ceil32(return_data.size)) + 836
                while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 740] = this.address
                mem[(4 * ceil32(return_data.size)) + 772] = block.timestamp
                require ext_code.size(sub_34d2da91Address)
                call sub_34d2da91Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0 / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
            else:
                if stor14 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor14:
                    revert with 'NH{q', 18
                if not balanceOf[address(this.address)]:
                    if stor14 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor14:
                        revert with 'NH{q', 18
                    if 0 / stor14 / 2 > 0 / stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / stor14 < 0 / stor14 / 2:
                        revert with 'NH{q', 17
                    mem[384] = this.address
                    require ext_code.size(sub_34d2da91Address)
                    staticcall sub_34d2da91Address.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[448] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[416] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_34d2da91Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = 0 / stor14 / 2
                    allowance[address(this.address)][stor19].field_255 = 0
                    emit Approval((0 / stor14 / 2), this.address, sub_34d2da91Address);
                    mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 452] = 0 / stor14 / 2
                    idx = 0
                    s = 384
                    t = ceil32(return_data.size) + 644
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_34d2da91Address)
                    call sub_34d2da91Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, 0 / stor14), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 448] = 30
                    mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 'NH{q', 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_34d2da91Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = (0 / stor14) - (0 / stor14 / 2)
                    emit Approval(((0 / stor14) - (0 / stor14 / 2)), this.address, sub_34d2da91Address);
                    mem[ceil32(return_data.size) + 580] = 0
                    mem[ceil32(return_data.size) + 612] = 0
                    mem[ceil32(return_data.size) + 644] = owner
                    mem[ceil32(return_data.size) + 676] = block.timestamp
                    require ext_code.size(sub_34d2da91Address)
                    call sub_34d2da91Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(this.address), (0 / stor14) - (0 / stor14 / 2), 0, 0, owner, block.timestamp
                    mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    mem[(2 * ceil32(return_data.size)) + 512] = 3
                    mem[(2 * ceil32(return_data.size)) + 544] = this.address
                    require ext_code.size(sub_34d2da91Address)
                    staticcall sub_34d2da91Address.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_34d2da91Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = 0 / stor14
                    emit Approval((0 / stor14), this.address, sub_34d2da91Address);
                    mem[(4 * ceil32(return_data.size)) + 640] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 644] = 0 / stor14
                    mem[(4 * ceil32(return_data.size)) + 676] = 0
                    mem[(4 * ceil32(return_data.size)) + 708] = 160
                    mem[(4 * ceil32(return_data.size)) + 804] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = (4 * ceil32(return_data.size)) + 836
                    while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 740] = this.address
                    mem[(4 * ceil32(return_data.size)) + 772] = block.timestamp
                    require ext_code.size(sub_34d2da91Address)
                    call sub_34d2da91Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0 / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                else:
                    if balanceOf[address(this.address)] and marketingFee > -1 / balanceOf[address(this.address)]:
                        revert with 'NH{q', 17
                    if not balanceOf[address(this.address)]:
                        revert with 'NH{q', 18
                    if balanceOf[address(this.address)] * marketingFee / balanceOf[address(this.address)] != marketingFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor14 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor14:
                        revert with 'NH{q', 18
                    if 0 / stor14 / 2 > 0 / stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / stor14 < 0 / stor14 / 2:
                        revert with 'NH{q', 17
                    mem[384] = this.address
                    require ext_code.size(sub_34d2da91Address)
                    staticcall sub_34d2da91Address.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[448] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[416] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_34d2da91Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = 0 / stor14 / 2
                    allowance[address(this.address)][stor19].field_255 = 0
                    emit Approval((0 / stor14 / 2), this.address, sub_34d2da91Address);
                    mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 452] = 0 / stor14 / 2
                    idx = 0
                    s = 384
                    t = ceil32(return_data.size) + 644
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_34d2da91Address)
                    call sub_34d2da91Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, 0 / stor14), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 448] = 30
                    mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 'NH{q', 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_34d2da91Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = (0 / stor14) - (0 / stor14 / 2)
                    emit Approval(((0 / stor14) - (0 / stor14 / 2)), this.address, sub_34d2da91Address);
                    mem[ceil32(return_data.size) + 580] = 0
                    mem[ceil32(return_data.size) + 612] = 0
                    mem[ceil32(return_data.size) + 644] = owner
                    mem[ceil32(return_data.size) + 676] = block.timestamp
                    require ext_code.size(sub_34d2da91Address)
                    call sub_34d2da91Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(this.address), (0 / stor14) - (0 / stor14 / 2), 0, 0, owner, block.timestamp
                    mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    mem[(2 * ceil32(return_data.size)) + 512] = 3
                    mem[(2 * ceil32(return_data.size)) + 544] = this.address
                    require ext_code.size(sub_34d2da91Address)
                    staticcall sub_34d2da91Address.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_34d2da91Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * marketingFee / stor14
                    emit Approval((balanceOf[address(this.address)] * marketingFee / stor14), this.address, sub_34d2da91Address);
                    mem[(4 * ceil32(return_data.size)) + 640] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 644] = balanceOf[address(this.address)] * marketingFee / stor14
                    mem[(4 * ceil32(return_data.size)) + 676] = 0
                    mem[(4 * ceil32(return_data.size)) + 708] = 160
                    mem[(4 * ceil32(return_data.size)) + 804] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = (4 * ceil32(return_data.size)) + 836
                    while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 740] = this.address
                    mem[(4 * ceil32(return_data.size)) + 772] = block.timestamp
                    require ext_code.size(sub_34d2da91Address)
                    call sub_34d2da91Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args balanceOf[address(this.address)] * marketingFee / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
        else:
            if stor12[address(arg1)]:
                if arg1 != uniswapV2PairAddress:
                    if stor11[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor11[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if totalFees <= 0:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if arg2 * burnFee / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * burnFee / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and stor14 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor14 / arg2 != stor14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not arg2:
                                        if arg2 * stor14 / 100 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * stor14 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                    return 1
                if stor22:
                    if stor11[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor11[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if totalFees <= 0:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if arg2 * burnFee / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * burnFee / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and stor14 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor14 / arg2 != stor14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not arg2:
                                        if arg2 * stor14 / 100 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * stor14 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                    return 1
                if balanceOf[address(this.address)] < liquifyThreshhold:
                    if stor11[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor11[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if totalFees <= 0:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if arg2 * burnFee / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * burnFee / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and stor14 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor14 / arg2 != stor14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not arg2:
                                        if arg2 * stor14 / 100 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * stor14 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                    return 1
                if stor14 <= 0:
                    if stor11[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor11[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if totalFees <= 0:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if arg2 * burnFee / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * burnFee / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and stor14 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor14 / arg2 != stor14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not arg2:
                                        if arg2 * stor14 / 100 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * stor14 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                    return 1
                if msg.sender == owner:
                    if stor11[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor11[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if totalFees <= 0:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if arg2 * burnFee / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * burnFee / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and stor14 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor14 / arg2 != stor14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not arg2:
                                        if arg2 * stor14 / 100 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * stor14 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                    return 1
                if arg1 == owner:
                    if stor11[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor11[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if totalFees <= 0:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if arg2 * burnFee / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * burnFee / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and stor14 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor14 / arg2 != stor14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not arg2:
                                        if arg2 * stor14 / 100 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * stor14 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                    return 1
                stor22 = 1
                if not balanceOf[address(this.address)]:
                    if stor14 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor14:
                        revert with 'NH{q', 18
                    if not balanceOf[address(this.address)]:
                        if stor14 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor14:
                            revert with 'NH{q', 18
                        if 0 / stor14 / 2 > 0 / stor14:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 / stor14 < 0 / stor14 / 2:
                            revert with 'NH{q', 17
                        mem[384] = this.address
                        require ext_code.size(sub_34d2da91Address)
                        staticcall sub_34d2da91Address.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[416] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not sub_34d2da91Address:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor19].field_0 = 0 / stor14 / 2
                        allowance[address(this.address)][stor19].field_255 = 0
                        emit Approval((0 / stor14 / 2), this.address, sub_34d2da91Address);
                        mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 452] = 0 / stor14 / 2
                        idx = 0
                        s = 384
                        t = ceil32(return_data.size) + 644
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(sub_34d2da91Address)
                        call sub_34d2da91Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, 0 / stor14), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 448] = 30
                        mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 'NH{q', 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not sub_34d2da91Address:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor19].field_0 = (0 / stor14) - (0 / stor14 / 2)
                        emit Approval(((0 / stor14) - (0 / stor14 / 2)), this.address, sub_34d2da91Address);
                        mem[ceil32(return_data.size) + 580] = 0
                        mem[ceil32(return_data.size) + 612] = 0
                        mem[ceil32(return_data.size) + 644] = owner
                        mem[ceil32(return_data.size) + 676] = block.timestamp
                        require ext_code.size(sub_34d2da91Address)
                        call sub_34d2da91Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(this.address), (0 / stor14) - (0 / stor14 / 2), 0, 0, owner, block.timestamp
                        mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        mem[(2 * ceil32(return_data.size)) + 512] = 3
                        mem[(2 * ceil32(return_data.size)) + 544] = this.address
                        require ext_code.size(sub_34d2da91Address)
                        staticcall sub_34d2da91Address.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not sub_34d2da91Address:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor19].field_0 = 0 / stor14
                        emit Approval((0 / stor14), this.address, sub_34d2da91Address);
                        mem[(4 * ceil32(return_data.size)) + 640] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 644] = 0 / stor14
                        mem[(4 * ceil32(return_data.size)) + 676] = 0
                        mem[(4 * ceil32(return_data.size)) + 708] = 160
                        mem[(4 * ceil32(return_data.size)) + 804] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
                        t = (4 * ceil32(return_data.size)) + 836
                        while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 740] = this.address
                        mem[(4 * ceil32(return_data.size)) + 772] = block.timestamp
                        require ext_code.size(sub_34d2da91Address)
                        call sub_34d2da91Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0 / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                    else:
                        if balanceOf[address(this.address)] and marketingFee > -1 / balanceOf[address(this.address)]:
                            revert with 'NH{q', 17
                        if not balanceOf[address(this.address)]:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] * marketingFee / balanceOf[address(this.address)] != marketingFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor14 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor14:
                            revert with 'NH{q', 18
                        if 0 / stor14 / 2 > 0 / stor14:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 / stor14 < 0 / stor14 / 2:
                            revert with 'NH{q', 17
                        mem[384] = this.address
                        require ext_code.size(sub_34d2da91Address)
                        staticcall sub_34d2da91Address.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[416] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not sub_34d2da91Address:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor19].field_0 = 0 / stor14 / 2
                        allowance[address(this.address)][stor19].field_255 = 0
                        emit Approval((0 / stor14 / 2), this.address, sub_34d2da91Address);
                        mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 452] = 0 / stor14 / 2
                        idx = 0
                        s = 384
                        t = ceil32(return_data.size) + 644
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(sub_34d2da91Address)
                        call sub_34d2da91Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, 0 / stor14), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 448] = 30
                        mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 'NH{q', 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not sub_34d2da91Address:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor19].field_0 = (0 / stor14) - (0 / stor14 / 2)
                        emit Approval(((0 / stor14) - (0 / stor14 / 2)), this.address, sub_34d2da91Address);
                        mem[ceil32(return_data.size) + 580] = 0
                        mem[ceil32(return_data.size) + 612] = 0
                        mem[ceil32(return_data.size) + 644] = owner
                        mem[ceil32(return_data.size) + 676] = block.timestamp
                        require ext_code.size(sub_34d2da91Address)
                        call sub_34d2da91Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(this.address), (0 / stor14) - (0 / stor14 / 2), 0, 0, owner, block.timestamp
                        mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        mem[(2 * ceil32(return_data.size)) + 512] = 3
                        mem[(2 * ceil32(return_data.size)) + 544] = this.address
                        require ext_code.size(sub_34d2da91Address)
                        staticcall sub_34d2da91Address.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not sub_34d2da91Address:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * marketingFee / stor14
                        emit Approval((balanceOf[address(this.address)] * marketingFee / stor14), this.address, sub_34d2da91Address);
                        mem[(4 * ceil32(return_data.size)) + 640] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 644] = balanceOf[address(this.address)] * marketingFee / stor14
                        mem[(4 * ceil32(return_data.size)) + 676] = 0
                        mem[(4 * ceil32(return_data.size)) + 708] = 160
                        mem[(4 * ceil32(return_data.size)) + 804] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
                        t = (4 * ceil32(return_data.size)) + 836
                        while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 740] = this.address
                        mem[(4 * ceil32(return_data.size)) + 772] = block.timestamp
                        require ext_code.size(sub_34d2da91Address)
                        call sub_34d2da91Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)] * marketingFee / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                else:
                    if balanceOf[address(this.address)] and liquidityFee > -1 / balanceOf[address(this.address)]:
                        revert with 'NH{q', 17
                    if not balanceOf[address(this.address)]:
                        revert with 'NH{q', 18
                    if balanceOf[address(this.address)] * liquidityFee / balanceOf[address(this.address)] != liquidityFee:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if stor14 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor14:
                        revert with 'NH{q', 18
                    if not balanceOf[address(this.address)]:
                        if stor14 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor14:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] * liquidityFee / stor14 / 2 > balanceOf[address(this.address)] * liquidityFee / stor14:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[address(this.address)] * liquidityFee / stor14 < balanceOf[address(this.address)] * liquidityFee / stor14 / 2:
                            revert with 'NH{q', 17
                        mem[384] = this.address
                        require ext_code.size(sub_34d2da91Address)
                        staticcall sub_34d2da91Address.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[416] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not sub_34d2da91Address:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                        allowance[address(this.address)][stor19].field_255 = 0
                        emit Approval((balanceOf[address(this.address)] * liquidityFee / stor14 / 2), this.address, sub_34d2da91Address);
                        mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 452] = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                        idx = 0
                        s = 384
                        t = ceil32(return_data.size) + 644
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(sub_34d2da91Address)
                        call sub_34d2da91Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, balanceOf[address(this.address)] * liquidityFee / stor14), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 448] = 30
                        mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 'NH{q', 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not sub_34d2da91Address:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor19].field_0 = (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)
                        emit Approval(((balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)), this.address, sub_34d2da91Address);
                        mem[ceil32(return_data.size) + 580] = 0
                        mem[ceil32(return_data.size) + 612] = 0
                        mem[ceil32(return_data.size) + 644] = owner
                        mem[ceil32(return_data.size) + 676] = block.timestamp
                        require ext_code.size(sub_34d2da91Address)
                        call sub_34d2da91Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(this.address), (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2), 0, 0, owner, block.timestamp
                        mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        mem[(2 * ceil32(return_data.size)) + 512] = 3
                        mem[(2 * ceil32(return_data.size)) + 544] = this.address
                        require ext_code.size(sub_34d2da91Address)
                        staticcall sub_34d2da91Address.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not sub_34d2da91Address:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor19].field_0 = 0 / stor14
                        emit Approval((0 / stor14), this.address, sub_34d2da91Address);
                        mem[(4 * ceil32(return_data.size)) + 640] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 644] = 0 / stor14
                        mem[(4 * ceil32(return_data.size)) + 676] = 0
                        mem[(4 * ceil32(return_data.size)) + 708] = 160
                        mem[(4 * ceil32(return_data.size)) + 804] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
                        t = (4 * ceil32(return_data.size)) + 836
                        while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 740] = this.address
                        mem[(4 * ceil32(return_data.size)) + 772] = block.timestamp
                        require ext_code.size(sub_34d2da91Address)
                        call sub_34d2da91Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0 / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                    else:
                        if balanceOf[address(this.address)] and marketingFee > -1 / balanceOf[address(this.address)]:
                            revert with 'NH{q', 17
                        if not balanceOf[address(this.address)]:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] * marketingFee / balanceOf[address(this.address)] != marketingFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor14 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor14:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] * liquidityFee / stor14 / 2 > balanceOf[address(this.address)] * liquidityFee / stor14:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[address(this.address)] * liquidityFee / stor14 < balanceOf[address(this.address)] * liquidityFee / stor14 / 2:
                            revert with 'NH{q', 17
                        mem[384] = this.address
                        require ext_code.size(sub_34d2da91Address)
                        staticcall sub_34d2da91Address.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[416] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not sub_34d2da91Address:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                        allowance[address(this.address)][stor19].field_255 = 0
                        emit Approval((balanceOf[address(this.address)] * liquidityFee / stor14 / 2), this.address, sub_34d2da91Address);
                        mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 452] = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                        idx = 0
                        s = 384
                        t = ceil32(return_data.size) + 644
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(sub_34d2da91Address)
                        call sub_34d2da91Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, balanceOf[address(this.address)] * liquidityFee / stor14), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 448] = 30
                        mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 'NH{q', 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not sub_34d2da91Address:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor19].field_0 = (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)
                        emit Approval(((balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)), this.address, sub_34d2da91Address);
                        mem[ceil32(return_data.size) + 580] = 0
                        mem[ceil32(return_data.size) + 612] = 0
                        mem[ceil32(return_data.size) + 644] = owner
                        mem[ceil32(return_data.size) + 676] = block.timestamp
                        require ext_code.size(sub_34d2da91Address)
                        call sub_34d2da91Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(this.address), (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2), 0, 0, owner, block.timestamp
                        mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        mem[(2 * ceil32(return_data.size)) + 512] = 3
                        mem[(2 * ceil32(return_data.size)) + 544] = this.address
                        require ext_code.size(sub_34d2da91Address)
                        staticcall sub_34d2da91Address.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not sub_34d2da91Address:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * marketingFee / stor14
                        emit Approval((balanceOf[address(this.address)] * marketingFee / stor14), this.address, sub_34d2da91Address);
                        mem[(4 * ceil32(return_data.size)) + 640] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 644] = balanceOf[address(this.address)] * marketingFee / stor14
                        mem[(4 * ceil32(return_data.size)) + 676] = 0
                        mem[(4 * ceil32(return_data.size)) + 708] = 160
                        mem[(4 * ceil32(return_data.size)) + 804] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
                        t = (4 * ceil32(return_data.size)) + 836
                        while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 740] = this.address
                        mem[(4 * ceil32(return_data.size)) + 772] = block.timestamp
                        require ext_code.size(sub_34d2da91Address)
                        call sub_34d2da91Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)] * marketingFee / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
            else:
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[address(arg1)] + arg2 > maxBalance:
                    revert with 0, 'Max Balance is reached.'
                if arg1 != uniswapV2PairAddress:
                    if stor11[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor11[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if totalFees <= 0:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if arg2 * burnFee / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * burnFee / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and stor14 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor14 / arg2 != stor14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not arg2:
                                        if arg2 * stor14 / 100 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * stor14 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                    return 1
                if stor22:
                    if stor11[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor11[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if totalFees <= 0:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if arg2 * burnFee / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * burnFee / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and stor14 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor14 / arg2 != stor14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not arg2:
                                        if arg2 * stor14 / 100 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * stor14 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                    return 1
                if balanceOf[address(this.address)] < liquifyThreshhold:
                    if stor11[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor11[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if totalFees <= 0:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if arg2 * burnFee / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * burnFee / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and stor14 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor14 / arg2 != stor14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not arg2:
                                        if arg2 * stor14 / 100 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * stor14 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                    return 1
                if stor14 <= 0:
                    if stor11[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor11[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if totalFees <= 0:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if arg2 * burnFee / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * burnFee / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and stor14 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor14 / arg2 != stor14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not arg2:
                                        if arg2 * stor14 / 100 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * stor14 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                    return 1
                if msg.sender == owner:
                    if stor11[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor11[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if totalFees <= 0:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if arg2 * burnFee / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * burnFee / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and stor14 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor14 / arg2 != stor14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not arg2:
                                        if arg2 * stor14 / 100 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * stor14 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                    return 1
                if arg1 == owner:
                    if stor11[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor11[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if totalFees <= 0:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if arg2 * burnFee / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * burnFee / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and stor14 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor14 / arg2 != stor14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not arg2:
                                        if arg2 * stor14 / 100 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * stor14 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        emit TokenBurn(0, msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                    else:
                                        if arg2 and burnFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * burnFee / arg2 != burnFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * stor14 / 100
                                        emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                        if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * burnFee / 100
                                        emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                        emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                        emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                    return 1
                stor22 = 1
                if balanceOf[address(this.address)]:
                    if balanceOf[address(this.address)] and liquidityFee > -1 / balanceOf[address(this.address)]:
                        revert with 'NH{q', 17
                    if not balanceOf[address(this.address)]:
                        revert with 'NH{q', 18
                    if balanceOf[address(this.address)] * liquidityFee / balanceOf[address(this.address)] != liquidityFee:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if stor14 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor14:
                        revert with 'NH{q', 18
                    if balanceOf[address(this.address)]:
                        if balanceOf[address(this.address)] and marketingFee > -1 / balanceOf[address(this.address)]:
                            revert with 'NH{q', 17
                        if not balanceOf[address(this.address)]:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] * marketingFee / balanceOf[address(this.address)] != marketingFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor14 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor14:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] * liquidityFee / stor14 / 2 > balanceOf[address(this.address)] * liquidityFee / stor14:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[address(this.address)] * liquidityFee / stor14 < balanceOf[address(this.address)] * liquidityFee / stor14 / 2:
                            revert with 'NH{q', 17
                        mem[384] = this.address
                        require ext_code.size(sub_34d2da91Address)
                        staticcall sub_34d2da91Address.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[416] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not sub_34d2da91Address:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                        allowance[address(this.address)][stor19].field_255 = 0
                        emit Approval((balanceOf[address(this.address)] * liquidityFee / stor14 / 2), this.address, sub_34d2da91Address);
                        mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 452] = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                        idx = 0
                        s = 384
                        t = ceil32(return_data.size) + 644
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(sub_34d2da91Address)
                        call sub_34d2da91Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, balanceOf[address(this.address)] * liquidityFee / stor14), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 448] = 30
                        mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 'NH{q', 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not sub_34d2da91Address:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor19].field_0 = (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)
                        emit Approval(((balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)), this.address, sub_34d2da91Address);
                        mem[ceil32(return_data.size) + 580] = 0
                        mem[ceil32(return_data.size) + 612] = 0
                        mem[ceil32(return_data.size) + 644] = owner
                        mem[ceil32(return_data.size) + 676] = block.timestamp
                        require ext_code.size(sub_34d2da91Address)
                        call sub_34d2da91Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(this.address), (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2), 0, 0, owner, block.timestamp
                        mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        mem[(2 * ceil32(return_data.size)) + 512] = 3
                        mem[(2 * ceil32(return_data.size)) + 544] = this.address
                        require ext_code.size(sub_34d2da91Address)
                        staticcall sub_34d2da91Address.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not sub_34d2da91Address:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * marketingFee / stor14
                        emit Approval((balanceOf[address(this.address)] * marketingFee / stor14), this.address, sub_34d2da91Address);
                        mem[(4 * ceil32(return_data.size)) + 640] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 644] = balanceOf[address(this.address)] * marketingFee / stor14
                        mem[(4 * ceil32(return_data.size)) + 676] = 0
                        mem[(4 * ceil32(return_data.size)) + 708] = 160
                        mem[(4 * ceil32(return_data.size)) + 804] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
                        t = (4 * ceil32(return_data.size)) + 836
                        while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 740] = this.address
                        mem[(4 * ceil32(return_data.size)) + 772] = block.timestamp
                        require ext_code.size(sub_34d2da91Address)
                        call sub_34d2da91Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)] * marketingFee / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_e5148bd6Address)
                        staticcall sub_e5148bd6Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(sub_e5148bd6Address)
                        call sub_e5148bd6Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args marketingAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        stor22 = 0
                        if stor11[address(msg.sender)]:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 710 len 26] >> 48,
                                            0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor11[address(arg1)]:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 710 len 26] >> 48,
                                                0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if totalFees <= 0:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 710 len 26] >> 48,
                                                    0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if not arg2:
                                        if not arg2:
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, 57005);
                                            emit TokenBurn(0, msg.sender);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 1094 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and burnFee > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if not arg2:
                                                revert with 'NH{q', 18
                                            if arg2 * burnFee / arg2 != burnFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 0 > -(arg2 * burnFee / 100) - 1:
                                                revert with 'NH{q', 17
                                            if arg2 * burnFee / 100 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 * burnFee / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < arg2 * burnFee / 100:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                            if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[57005] += arg2 * burnFee / 100
                                            emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                            emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 1094 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                            emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                                    else:
                                        if arg2 and stor14 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * stor14 / arg2 != stor14:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not arg2:
                                            if arg2 * stor14 / 100 > -1:
                                                revert with 'NH{q', 17
                                            if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 * stor14 / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < arg2 * stor14 / 100:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                            if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += arg2 * stor14 / 100
                                            emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, 57005);
                                            emit TokenBurn(0, msg.sender);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 1094 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                            emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                        else:
                                            if arg2 and burnFee > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if not arg2:
                                                revert with 'NH{q', 18
                                            if arg2 * burnFee / arg2 != burnFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                                revert with 'NH{q', 17
                                            if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                            if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += arg2 * stor14 / 100
                                            emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                            if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[57005] += arg2 * burnFee / 100
                                            emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                            emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 1094 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                            emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                        return 1
                    if stor14 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor14:
                        revert with 'NH{q', 18
                    if balanceOf[address(this.address)] * liquidityFee / stor14 / 2 > balanceOf[address(this.address)] * liquidityFee / stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if balanceOf[address(this.address)] * liquidityFee / stor14 < balanceOf[address(this.address)] * liquidityFee / stor14 / 2:
                        revert with 'NH{q', 17
                    mem[384] = this.address
                    require ext_code.size(sub_34d2da91Address)
                    staticcall sub_34d2da91Address.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[448] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[416] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_34d2da91Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                    allowance[address(this.address)][stor19].field_255 = 0
                    emit Approval((balanceOf[address(this.address)] * liquidityFee / stor14 / 2), this.address, sub_34d2da91Address);
                    mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 452] = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                    idx = 0
                    s = 384
                    t = ceil32(return_data.size) + 644
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_34d2da91Address)
                    call sub_34d2da91Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, balanceOf[address(this.address)] * liquidityFee / stor14), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 448] = 30
                    mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 'NH{q', 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_34d2da91Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)
                    emit Approval(((balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)), this.address, sub_34d2da91Address);
                    mem[ceil32(return_data.size) + 580] = 0
                    mem[ceil32(return_data.size) + 612] = 0
                    mem[ceil32(return_data.size) + 644] = owner
                    mem[ceil32(return_data.size) + 676] = block.timestamp
                    require ext_code.size(sub_34d2da91Address)
                    call sub_34d2da91Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(this.address), (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2), 0, 0, owner, block.timestamp
                    mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    mem[(2 * ceil32(return_data.size)) + 512] = 3
                    mem[(2 * ceil32(return_data.size)) + 544] = this.address
                    require ext_code.size(sub_34d2da91Address)
                    staticcall sub_34d2da91Address.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_34d2da91Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = 0 / stor14
                    emit Approval((0 / stor14), this.address, sub_34d2da91Address);
                    mem[(4 * ceil32(return_data.size)) + 640] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 644] = 0 / stor14
                    mem[(4 * ceil32(return_data.size)) + 676] = 0
                    mem[(4 * ceil32(return_data.size)) + 708] = 160
                    mem[(4 * ceil32(return_data.size)) + 804] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = (4 * ceil32(return_data.size)) + 836
                    while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 740] = this.address
                    mem[(4 * ceil32(return_data.size)) + 772] = block.timestamp
                    require ext_code.size(sub_34d2da91Address)
                    call sub_34d2da91Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0 / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                else:
                    if stor14 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor14:
                        revert with 'NH{q', 18
                    if not balanceOf[address(this.address)]:
                        if stor14 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor14:
                            revert with 'NH{q', 18
                        if 0 / stor14 / 2 > 0 / stor14:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 / stor14 < 0 / stor14 / 2:
                            revert with 'NH{q', 17
                        mem[384] = this.address
                        require ext_code.size(sub_34d2da91Address)
                        staticcall sub_34d2da91Address.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[416] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not sub_34d2da91Address:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor19].field_0 = 0 / stor14 / 2
                        allowance[address(this.address)][stor19].field_255 = 0
                        emit Approval((0 / stor14 / 2), this.address, sub_34d2da91Address);
                        mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 452] = 0 / stor14 / 2
                        idx = 0
                        s = 384
                        t = ceil32(return_data.size) + 644
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(sub_34d2da91Address)
                        call sub_34d2da91Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, 0 / stor14), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 448] = 30
                        mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 'NH{q', 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not sub_34d2da91Address:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor19].field_0 = (0 / stor14) - (0 / stor14 / 2)
                        emit Approval(((0 / stor14) - (0 / stor14 / 2)), this.address, sub_34d2da91Address);
                        mem[ceil32(return_data.size) + 580] = 0
                        mem[ceil32(return_data.size) + 612] = 0
                        mem[ceil32(return_data.size) + 644] = owner
                        mem[ceil32(return_data.size) + 676] = block.timestamp
                        require ext_code.size(sub_34d2da91Address)
                        call sub_34d2da91Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(this.address), (0 / stor14) - (0 / stor14 / 2), 0, 0, owner, block.timestamp
                        mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        mem[(2 * ceil32(return_data.size)) + 512] = 3
                        mem[(2 * ceil32(return_data.size)) + 544] = this.address
                        require ext_code.size(sub_34d2da91Address)
                        staticcall sub_34d2da91Address.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not sub_34d2da91Address:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor19].field_0 = 0 / stor14
                        emit Approval((0 / stor14), this.address, sub_34d2da91Address);
                        mem[(4 * ceil32(return_data.size)) + 640] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 644] = 0 / stor14
                        mem[(4 * ceil32(return_data.size)) + 676] = 0
                        mem[(4 * ceil32(return_data.size)) + 708] = 160
                        mem[(4 * ceil32(return_data.size)) + 804] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
                        t = (4 * ceil32(return_data.size)) + 836
                        while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 740] = this.address
                        mem[(4 * ceil32(return_data.size)) + 772] = block.timestamp
                        require ext_code.size(sub_34d2da91Address)
                        call sub_34d2da91Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0 / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_e5148bd6Address)
                        staticcall sub_e5148bd6Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(sub_e5148bd6Address)
                        call sub_e5148bd6Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args marketingAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        stor22 = 0
                        if stor11[address(msg.sender)]:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 710 len 26] >> 48,
                                            0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor11[address(arg1)]:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 710 len 26] >> 48,
                                                0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if totalFees <= 0:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 710 len 26] >> 48,
                                                    0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if not arg2:
                                        if not arg2:
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, 57005);
                                            emit TokenBurn(0, msg.sender);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 1094 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and burnFee > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if not arg2:
                                                revert with 'NH{q', 18
                                            if arg2 * burnFee / arg2 != burnFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 0 > -(arg2 * burnFee / 100) - 1:
                                                revert with 'NH{q', 17
                                            if arg2 * burnFee / 100 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 * burnFee / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < arg2 * burnFee / 100:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                            if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[57005] += arg2 * burnFee / 100
                                            emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                            emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 1094 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                                            emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                                    else:
                                        if arg2 and stor14 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * stor14 / arg2 != stor14:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not arg2:
                                            if arg2 * stor14 / 100 > -1:
                                                revert with 'NH{q', 17
                                            if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 * stor14 / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < arg2 * stor14 / 100:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                            if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += arg2 * stor14 / 100
                                            emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, 57005);
                                            emit TokenBurn(0, msg.sender);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 1094 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                                            emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                                        else:
                                            if arg2 and burnFee > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if not arg2:
                                                revert with 'NH{q', 18
                                            if arg2 * burnFee / arg2 != burnFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                                revert with 'NH{q', 17
                                            if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                            if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += arg2 * stor14 / 100
                                            emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 998 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                            if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[57005] += arg2 * burnFee / 100
                                            emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                            emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(7 * ceil32(return_data.size)) + 1094 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                            emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                        return 1
                    if balanceOf[address(this.address)] and marketingFee > -1 / balanceOf[address(this.address)]:
                        revert with 'NH{q', 17
                    if not balanceOf[address(this.address)]:
                        revert with 'NH{q', 18
                    if balanceOf[address(this.address)] * marketingFee / balanceOf[address(this.address)] != marketingFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor14 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor14:
                        revert with 'NH{q', 18
                    if 0 / stor14 / 2 > 0 / stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / stor14 < 0 / stor14 / 2:
                        revert with 'NH{q', 17
                    mem[384] = this.address
                    require ext_code.size(sub_34d2da91Address)
                    staticcall sub_34d2da91Address.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[448] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[416] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_34d2da91Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = 0 / stor14 / 2
                    allowance[address(this.address)][stor19].field_255 = 0
                    emit Approval((0 / stor14 / 2), this.address, sub_34d2da91Address);
                    mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 452] = 0 / stor14 / 2
                    idx = 0
                    s = 384
                    t = ceil32(return_data.size) + 644
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_34d2da91Address)
                    call sub_34d2da91Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, 0 / stor14), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 448] = 30
                    mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 'NH{q', 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_34d2da91Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = (0 / stor14) - (0 / stor14 / 2)
                    emit Approval(((0 / stor14) - (0 / stor14 / 2)), this.address, sub_34d2da91Address);
                    mem[ceil32(return_data.size) + 580] = 0
                    mem[ceil32(return_data.size) + 612] = 0
                    mem[ceil32(return_data.size) + 644] = owner
                    mem[ceil32(return_data.size) + 676] = block.timestamp
                    require ext_code.size(sub_34d2da91Address)
                    call sub_34d2da91Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(this.address), (0 / stor14) - (0 / stor14 / 2), 0, 0, owner, block.timestamp
                    mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    mem[(2 * ceil32(return_data.size)) + 512] = 3
                    mem[(2 * ceil32(return_data.size)) + 544] = this.address
                    require ext_code.size(sub_34d2da91Address)
                    staticcall sub_34d2da91Address.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not sub_34d2da91Address:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * marketingFee / stor14
                    emit Approval((balanceOf[address(this.address)] * marketingFee / stor14), this.address, sub_34d2da91Address);
                    mem[(4 * ceil32(return_data.size)) + 640] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 644] = balanceOf[address(this.address)] * marketingFee / stor14
                    mem[(4 * ceil32(return_data.size)) + 676] = 0
                    mem[(4 * ceil32(return_data.size)) + 708] = 160
                    mem[(4 * ceil32(return_data.size)) + 804] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = (4 * ceil32(return_data.size)) + 836
                    while idx < mem[(2 * ceil32(return_data.size)) + 512]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 740] = this.address
                    mem[(4 * ceil32(return_data.size)) + 772] = block.timestamp
                    require ext_code.size(sub_34d2da91Address)
                    call sub_34d2da91Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args balanceOf[address(this.address)] * marketingFee / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_e5148bd6Address)
    staticcall sub_e5148bd6Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 644] = marketingAddress
    mem[(4 * ceil32(return_data.size)) + 676] = ext_call.return_data[0]
    require ext_code.size(sub_e5148bd6Address)
    call sub_e5148bd6Address.0xa9059cbb with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 644 len (7 * ceil32(return_data.size)) + 64]
    mem[(4 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor22 = 0
    if stor11[address(msg.sender)]:
        if not msg.sender:
            mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 644] = 32
            mem[(8 * ceil32(return_data.size)) + 676] = 37
            mem[(8 * ceil32(return_data.size)) + 708] = 'ERC20: transfer from the zero ad'
            mem[(8 * ceil32(return_data.size)) + 740] = 'dress'
            revert with memory
              from (8 * ceil32(return_data.size)) + 640
               len (13 * ceil32(return_data.size)) + 132
        if not arg1:
            mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 644] = 32
            mem[(8 * ceil32(return_data.size)) + 676] = 35
            mem[(8 * ceil32(return_data.size)) + 708] = 'ERC20: transfer to the zero addr'
            mem[(8 * ceil32(return_data.size)) + 740] = 'ess'
            revert with memory
              from (8 * ceil32(return_data.size)) + 640
               len (13 * ceil32(return_data.size)) + 132
        if arg2 > balanceOf[address(msg.sender)]:
            mem[(8 * ceil32(return_data.size)) + 736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 740] = 32
            mem[(8 * ceil32(return_data.size)) + 772] = 38
            mem[(8 * ceil32(return_data.size)) + 804 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 710 len 26]
            mem[(8 * ceil32(return_data.size)) + 842] = 0
            revert with memory
              from (8 * ceil32(return_data.size)) + 736
               len (13 * ceil32(return_data.size)) + 132
        if balanceOf[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        mem[(8 * ceil32(return_data.size)) + 736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 740] = 32
        mem[(8 * ceil32(return_data.size)) + 772] = 27
        mem[(8 * ceil32(return_data.size)) + 804] = 'SafeMath: addition overflow'
        revert with memory
          from (8 * ceil32(return_data.size)) + 736
           len (13 * ceil32(return_data.size)) + 100
    if stor11[address(arg1)]:
        if not msg.sender:
            mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 644] = 32
            mem[(8 * ceil32(return_data.size)) + 676] = 37
            mem[(8 * ceil32(return_data.size)) + 708] = 'ERC20: transfer from the zero ad'
            mem[(8 * ceil32(return_data.size)) + 740] = 'dress'
            revert with memory
              from (8 * ceil32(return_data.size)) + 640
               len (13 * ceil32(return_data.size)) + 132
        if not arg1:
            mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 644] = 32
            mem[(8 * ceil32(return_data.size)) + 676] = 35
            mem[(8 * ceil32(return_data.size)) + 708] = 'ERC20: transfer to the zero addr'
            mem[(8 * ceil32(return_data.size)) + 740] = 'ess'
            revert with memory
              from (8 * ceil32(return_data.size)) + 640
               len (13 * ceil32(return_data.size)) + 132
        if arg2 > balanceOf[address(msg.sender)]:
            mem[(8 * ceil32(return_data.size)) + 736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 740] = 32
            mem[(8 * ceil32(return_data.size)) + 772] = 38
            mem[(8 * ceil32(return_data.size)) + 804 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 710 len 26]
            mem[(8 * ceil32(return_data.size)) + 842] = 0
            revert with memory
              from (8 * ceil32(return_data.size)) + 736
               len (13 * ceil32(return_data.size)) + 132
        if balanceOf[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        mem[(8 * ceil32(return_data.size)) + 736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 740] = 32
        mem[(8 * ceil32(return_data.size)) + 772] = 27
        mem[(8 * ceil32(return_data.size)) + 804] = 'SafeMath: addition overflow'
        revert with memory
          from (8 * ceil32(return_data.size)) + 736
           len (13 * ceil32(return_data.size)) + 100
    if totalFees <= 0:
        if not msg.sender:
            mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 644] = 32
            mem[(8 * ceil32(return_data.size)) + 676] = 37
            mem[(8 * ceil32(return_data.size)) + 708] = 'ERC20: transfer from the zero ad'
            mem[(8 * ceil32(return_data.size)) + 740] = 'dress'
            revert with memory
              from (8 * ceil32(return_data.size)) + 640
               len (13 * ceil32(return_data.size)) + 132
        if not arg1:
            mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 644] = 32
            mem[(8 * ceil32(return_data.size)) + 676] = 35
            mem[(8 * ceil32(return_data.size)) + 708] = 'ERC20: transfer to the zero addr'
            mem[(8 * ceil32(return_data.size)) + 740] = 'ess'
            revert with memory
              from (8 * ceil32(return_data.size)) + 640
               len (13 * ceil32(return_data.size)) + 132
        if arg2 > balanceOf[address(msg.sender)]:
            mem[(8 * ceil32(return_data.size)) + 736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 740] = 32
            mem[(8 * ceil32(return_data.size)) + 772] = 38
            mem[(8 * ceil32(return_data.size)) + 804 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 710 len 26]
            mem[(8 * ceil32(return_data.size)) + 842] = 0
            revert with memory
              from (8 * ceil32(return_data.size)) + 736
               len (13 * ceil32(return_data.size)) + 132
        if balanceOf[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        mem[(8 * ceil32(return_data.size)) + 736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 740] = 32
        mem[(8 * ceil32(return_data.size)) + 772] = 27
        mem[(8 * ceil32(return_data.size)) + 804] = 'SafeMath: addition overflow'
        revert with memory
          from (8 * ceil32(return_data.size)) + 736
           len (13 * ceil32(return_data.size)) + 100
    if not arg2:
        if not arg2:
            if 0 > arg2:
                mem[(8 * ceil32(return_data.size)) + 832] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 836] = 32
                mem[(8 * ceil32(return_data.size)) + 868] = 30
                mem[(8 * ceil32(return_data.size)) + 900] = 'SafeMath: subtraction overflow'
                mem[(8 * ceil32(return_data.size)) + 930] = 0
                revert with memory
                  from (8 * ceil32(return_data.size)) + 832
                   len (13 * ceil32(return_data.size)) + 100
            if arg2 < 0:
                revert with 'NH{q', 17
            if not msg.sender:
                mem[(8 * ceil32(return_data.size)) + 832] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 836] = 32
                mem[(8 * ceil32(return_data.size)) + 868] = 37
                mem[(8 * ceil32(return_data.size)) + 900] = 'ERC20: transfer from the zero ad'
                mem[(8 * ceil32(return_data.size)) + 932] = 'dress'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 832
                   len (13 * ceil32(return_data.size)) + 132
            if not this.address:
                mem[(8 * ceil32(return_data.size)) + 832] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 836] = 32
                mem[(8 * ceil32(return_data.size)) + 868] = 35
                mem[(8 * ceil32(return_data.size)) + 900] = 'ERC20: transfer to the zero addr'
                mem[(8 * ceil32(return_data.size)) + 932] = 'ess'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 832
                   len (13 * ceil32(return_data.size)) + 132
            if 0 > balanceOf[address(msg.sender)]:
                mem[(8 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 932] = 32
                mem[(8 * ceil32(return_data.size)) + 964] = 38
                mem[(8 * ceil32(return_data.size)) + 996 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 902 len 26]
                mem[(8 * ceil32(return_data.size)) + 1034] = 0
                revert with memory
                  from (8 * ceil32(return_data.size)) + 928
                   len (13 * ceil32(return_data.size)) + 132
            if balanceOf[address(msg.sender)] < 0:
                revert with 'NH{q', 17
            if balanceOf[address(this.address)] > -1:
                revert with 'NH{q', 17
            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                mem[(8 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 932] = 32
                mem[(8 * ceil32(return_data.size)) + 964] = 27
                mem[(8 * ceil32(return_data.size)) + 996] = 'SafeMath: addition overflow'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 928
                   len (13 * ceil32(return_data.size)) + 100
            emit Transfer(0, msg.sender, this.address);
            if not msg.sender:
                mem[(8 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 932] = 32
                mem[(8 * ceil32(return_data.size)) + 964] = 37
                mem[(8 * ceil32(return_data.size)) + 996] = 'ERC20: transfer from the zero ad'
                mem[(8 * ceil32(return_data.size)) + 1028] = 'dress'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 928
                   len (13 * ceil32(return_data.size)) + 132
            if 0 > balanceOf[address(msg.sender)]:
                mem[(8 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1028] = 32
                mem[(8 * ceil32(return_data.size)) + 1060] = 38
                mem[(8 * ceil32(return_data.size)) + 1092 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 998 len 26]
                mem[(8 * ceil32(return_data.size)) + 1130] = 0
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1024
                   len (13 * ceil32(return_data.size)) + 132
            if balanceOf[address(msg.sender)] < 0:
                revert with 'NH{q', 17
            if balanceOf[57005] > -1:
                revert with 'NH{q', 17
            if balanceOf[57005] < balanceOf[57005]:
                mem[(8 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1028] = 32
                mem[(8 * ceil32(return_data.size)) + 1060] = 27
                mem[(8 * ceil32(return_data.size)) + 1092] = 'SafeMath: addition overflow'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1024
                   len (13 * ceil32(return_data.size)) + 100
            emit Transfer(0, msg.sender, 57005);
            emit TokenBurn(0, msg.sender);
            if not msg.sender:
                mem[(8 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1028] = 32
                mem[(8 * ceil32(return_data.size)) + 1060] = 37
                mem[(8 * ceil32(return_data.size)) + 1092] = 'ERC20: transfer from the zero ad'
                mem[(8 * ceil32(return_data.size)) + 1124] = 'dress'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1024
                   len (13 * ceil32(return_data.size)) + 132
            if not arg1:
                mem[(8 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1028] = 32
                mem[(8 * ceil32(return_data.size)) + 1060] = 35
                mem[(8 * ceil32(return_data.size)) + 1092] = 'ERC20: transfer to the zero addr'
                mem[(8 * ceil32(return_data.size)) + 1124] = 'ess'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1024
                   len (13 * ceil32(return_data.size)) + 132
            if arg2 > balanceOf[address(msg.sender)]:
                mem[(8 * ceil32(return_data.size)) + 1120] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1124] = 32
                mem[(8 * ceil32(return_data.size)) + 1156] = 38
                mem[(8 * ceil32(return_data.size)) + 1188 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1094 len 26]
                mem[(8 * ceil32(return_data.size)) + 1226] = 0
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1120
                   len (13 * ceil32(return_data.size)) + 132
            if balanceOf[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
                return 1
        else:
            if arg2 and burnFee > -1 / arg2:
                revert with 'NH{q', 17
            if not arg2:
                revert with 'NH{q', 18
            if arg2 * burnFee / arg2 != burnFee:
                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 708] = 32
                mem[(8 * ceil32(return_data.size)) + 740] = 33
                mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: multiplication overflo'
                mem[(8 * ceil32(return_data.size)) + 804] = 'w'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 704
                   len (13 * ceil32(return_data.size)) + 132
            if 0 > -(arg2 * burnFee / 100) - 1:
                revert with 'NH{q', 17
            if arg2 * burnFee / 100 < 0:
                mem[(8 * ceil32(return_data.size)) + 768] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 772] = 32
                mem[(8 * ceil32(return_data.size)) + 804] = 27
                mem[(8 * ceil32(return_data.size)) + 836] = 'SafeMath: addition overflow'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 768
                   len (13 * ceil32(return_data.size)) + 100
            if arg2 * burnFee / 100 > arg2:
                mem[(8 * ceil32(return_data.size)) + 832] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 836] = 32
                mem[(8 * ceil32(return_data.size)) + 868] = 30
                mem[(8 * ceil32(return_data.size)) + 900] = 'SafeMath: subtraction overflow'
                mem[(8 * ceil32(return_data.size)) + 930] = 0
                revert with memory
                  from (8 * ceil32(return_data.size)) + 832
                   len (13 * ceil32(return_data.size)) + 100
            if arg2 < arg2 * burnFee / 100:
                revert with 'NH{q', 17
            if not msg.sender:
                mem[(8 * ceil32(return_data.size)) + 832] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 836] = 32
                mem[(8 * ceil32(return_data.size)) + 868] = 37
                mem[(8 * ceil32(return_data.size)) + 900] = 'ERC20: transfer from the zero ad'
                mem[(8 * ceil32(return_data.size)) + 932] = 'dress'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 832
                   len (13 * ceil32(return_data.size)) + 132
            if not this.address:
                mem[(8 * ceil32(return_data.size)) + 832] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 836] = 32
                mem[(8 * ceil32(return_data.size)) + 868] = 35
                mem[(8 * ceil32(return_data.size)) + 900] = 'ERC20: transfer to the zero addr'
                mem[(8 * ceil32(return_data.size)) + 932] = 'ess'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 832
                   len (13 * ceil32(return_data.size)) + 132
            if 0 > balanceOf[address(msg.sender)]:
                mem[(8 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 932] = 32
                mem[(8 * ceil32(return_data.size)) + 964] = 38
                mem[(8 * ceil32(return_data.size)) + 996 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 902 len 26]
                mem[(8 * ceil32(return_data.size)) + 1034] = 0
                revert with memory
                  from (8 * ceil32(return_data.size)) + 928
                   len (13 * ceil32(return_data.size)) + 132
            if balanceOf[address(msg.sender)] < 0:
                revert with 'NH{q', 17
            if balanceOf[address(this.address)] > -1:
                revert with 'NH{q', 17
            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                mem[(8 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 932] = 32
                mem[(8 * ceil32(return_data.size)) + 964] = 27
                mem[(8 * ceil32(return_data.size)) + 996] = 'SafeMath: addition overflow'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 928
                   len (13 * ceil32(return_data.size)) + 100
            emit Transfer(0, msg.sender, this.address);
            if not msg.sender:
                mem[(8 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 932] = 32
                mem[(8 * ceil32(return_data.size)) + 964] = 37
                mem[(8 * ceil32(return_data.size)) + 996] = 'ERC20: transfer from the zero ad'
                mem[(8 * ceil32(return_data.size)) + 1028] = 'dress'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 928
                   len (13 * ceil32(return_data.size)) + 132
            if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                mem[(8 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1028] = 32
                mem[(8 * ceil32(return_data.size)) + 1060] = 38
                mem[(8 * ceil32(return_data.size)) + 1092 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 998 len 26]
                mem[(8 * ceil32(return_data.size)) + 1130] = 0
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1024
                   len (13 * ceil32(return_data.size)) + 132
            if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
            if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                revert with 'NH{q', 17
            if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                mem[(8 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1028] = 32
                mem[(8 * ceil32(return_data.size)) + 1060] = 27
                mem[(8 * ceil32(return_data.size)) + 1092] = 'SafeMath: addition overflow'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1024
                   len (13 * ceil32(return_data.size)) + 100
            balanceOf[57005] += arg2 * burnFee / 100
            emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
            emit TokenBurn((arg2 * burnFee / 100), msg.sender);
            if not msg.sender:
                mem[(8 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1028] = 32
                mem[(8 * ceil32(return_data.size)) + 1060] = 37
                mem[(8 * ceil32(return_data.size)) + 1092] = 'ERC20: transfer from the zero ad'
                mem[(8 * ceil32(return_data.size)) + 1124] = 'dress'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1024
                   len (13 * ceil32(return_data.size)) + 132
            if not arg1:
                mem[(8 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1028] = 32
                mem[(8 * ceil32(return_data.size)) + 1060] = 35
                mem[(8 * ceil32(return_data.size)) + 1092] = 'ERC20: transfer to the zero addr'
                mem[(8 * ceil32(return_data.size)) + 1124] = 'ess'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1024
                   len (13 * ceil32(return_data.size)) + 132
            if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                mem[(8 * ceil32(return_data.size)) + 1120] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1124] = 32
                mem[(8 * ceil32(return_data.size)) + 1156] = 38
                mem[(8 * ceil32(return_data.size)) + 1188 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1094 len 26]
                mem[(8 * ceil32(return_data.size)) + 1226] = 0
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1120
                   len (13 * ceil32(return_data.size)) + 132
            if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnFee / 100):
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnFee / 100)
            if balanceOf[address(arg1)] > -arg2 + (arg2 * burnFee / 100) - 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100) >= balanceOf[address(arg1)]:
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * burnFee / 100)
                emit Transfer((arg2 - (arg2 * burnFee / 100)), msg.sender, arg1);
                return 1
    else:
        if arg2 and stor14 > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if arg2 * stor14 / arg2 != stor14:
            mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 644] = 32
            mem[(8 * ceil32(return_data.size)) + 676] = 33
            mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
            mem[(8 * ceil32(return_data.size)) + 740] = 'w'
            revert with memory
              from (8 * ceil32(return_data.size)) + 640
               len (13 * ceil32(return_data.size)) + 132
        if not arg2:
            if arg2 * stor14 / 100 > -1:
                revert with 'NH{q', 17
            if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                mem[(8 * ceil32(return_data.size)) + 768] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 772] = 32
                mem[(8 * ceil32(return_data.size)) + 804] = 27
                mem[(8 * ceil32(return_data.size)) + 836] = 'SafeMath: addition overflow'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 768
                   len (13 * ceil32(return_data.size)) + 100
            if arg2 * stor14 / 100 > arg2:
                mem[(8 * ceil32(return_data.size)) + 832] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 836] = 32
                mem[(8 * ceil32(return_data.size)) + 868] = 30
                mem[(8 * ceil32(return_data.size)) + 900] = 'SafeMath: subtraction overflow'
                mem[(8 * ceil32(return_data.size)) + 930] = 0
                revert with memory
                  from (8 * ceil32(return_data.size)) + 832
                   len (13 * ceil32(return_data.size)) + 100
            if arg2 < arg2 * stor14 / 100:
                revert with 'NH{q', 17
            if not msg.sender:
                mem[(8 * ceil32(return_data.size)) + 832] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 836] = 32
                mem[(8 * ceil32(return_data.size)) + 868] = 37
                mem[(8 * ceil32(return_data.size)) + 900] = 'ERC20: transfer from the zero ad'
                mem[(8 * ceil32(return_data.size)) + 932] = 'dress'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 832
                   len (13 * ceil32(return_data.size)) + 132
            if not this.address:
                mem[(8 * ceil32(return_data.size)) + 832] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 836] = 32
                mem[(8 * ceil32(return_data.size)) + 868] = 35
                mem[(8 * ceil32(return_data.size)) + 900] = 'ERC20: transfer to the zero addr'
                mem[(8 * ceil32(return_data.size)) + 932] = 'ess'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 832
                   len (13 * ceil32(return_data.size)) + 132
            if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                mem[(8 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 932] = 32
                mem[(8 * ceil32(return_data.size)) + 964] = 38
                mem[(8 * ceil32(return_data.size)) + 996 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 902 len 26]
                mem[(8 * ceil32(return_data.size)) + 1034] = 0
                revert with memory
                  from (8 * ceil32(return_data.size)) + 928
                   len (13 * ceil32(return_data.size)) + 132
            if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
            if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                revert with 'NH{q', 17
            if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                mem[(8 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 932] = 32
                mem[(8 * ceil32(return_data.size)) + 964] = 27
                mem[(8 * ceil32(return_data.size)) + 996] = 'SafeMath: addition overflow'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 928
                   len (13 * ceil32(return_data.size)) + 100
            balanceOf[address(this.address)] += arg2 * stor14 / 100
            emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
            if not msg.sender:
                mem[(8 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 932] = 32
                mem[(8 * ceil32(return_data.size)) + 964] = 37
                mem[(8 * ceil32(return_data.size)) + 996] = 'ERC20: transfer from the zero ad'
                mem[(8 * ceil32(return_data.size)) + 1028] = 'dress'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 928
                   len (13 * ceil32(return_data.size)) + 132
            if 0 > balanceOf[address(msg.sender)]:
                mem[(8 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1028] = 32
                mem[(8 * ceil32(return_data.size)) + 1060] = 38
                mem[(8 * ceil32(return_data.size)) + 1092 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 998 len 26]
                mem[(8 * ceil32(return_data.size)) + 1130] = 0
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1024
                   len (13 * ceil32(return_data.size)) + 132
            if balanceOf[address(msg.sender)] < 0:
                revert with 'NH{q', 17
            if balanceOf[57005] > -1:
                revert with 'NH{q', 17
            if balanceOf[57005] < balanceOf[57005]:
                mem[(8 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1028] = 32
                mem[(8 * ceil32(return_data.size)) + 1060] = 27
                mem[(8 * ceil32(return_data.size)) + 1092] = 'SafeMath: addition overflow'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1024
                   len (13 * ceil32(return_data.size)) + 100
            emit Transfer(0, msg.sender, 57005);
            emit TokenBurn(0, msg.sender);
            if not msg.sender:
                mem[(8 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1028] = 32
                mem[(8 * ceil32(return_data.size)) + 1060] = 37
                mem[(8 * ceil32(return_data.size)) + 1092] = 'ERC20: transfer from the zero ad'
                mem[(8 * ceil32(return_data.size)) + 1124] = 'dress'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1024
                   len (13 * ceil32(return_data.size)) + 132
            if not arg1:
                mem[(8 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1028] = 32
                mem[(8 * ceil32(return_data.size)) + 1060] = 35
                mem[(8 * ceil32(return_data.size)) + 1092] = 'ERC20: transfer to the zero addr'
                mem[(8 * ceil32(return_data.size)) + 1124] = 'ess'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1024
                   len (13 * ceil32(return_data.size)) + 132
            if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                mem[(8 * ceil32(return_data.size)) + 1120] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1124] = 32
                mem[(8 * ceil32(return_data.size)) + 1156] = 38
                mem[(8 * ceil32(return_data.size)) + 1188 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1094 len 26]
                mem[(8 * ceil32(return_data.size)) + 1226] = 0
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1120
                   len (13 * ceil32(return_data.size)) + 132
            if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100):
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
            if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) - 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) >= balanceOf[address(arg1)]:
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                return 1
        else:
            if arg2 and burnFee > -1 / arg2:
                revert with 'NH{q', 17
            if not arg2:
                revert with 'NH{q', 18
            if arg2 * burnFee / arg2 != burnFee:
                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 708] = 32
                mem[(8 * ceil32(return_data.size)) + 740] = 33
                mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: multiplication overflo'
                mem[(8 * ceil32(return_data.size)) + 804] = 'w'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 704
                   len (13 * ceil32(return_data.size)) + 132
            if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                revert with 'NH{q', 17
            if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                mem[(8 * ceil32(return_data.size)) + 768] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 772] = 32
                mem[(8 * ceil32(return_data.size)) + 804] = 27
                mem[(8 * ceil32(return_data.size)) + 836] = 'SafeMath: addition overflow'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 768
                   len (13 * ceil32(return_data.size)) + 100
            if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                mem[(8 * ceil32(return_data.size)) + 832] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 836] = 32
                mem[(8 * ceil32(return_data.size)) + 868] = 30
                mem[(8 * ceil32(return_data.size)) + 900] = 'SafeMath: subtraction overflow'
                mem[(8 * ceil32(return_data.size)) + 930] = 0
                revert with memory
                  from (8 * ceil32(return_data.size)) + 832
                   len (13 * ceil32(return_data.size)) + 100
            if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                revert with 'NH{q', 17
            if not msg.sender:
                mem[(8 * ceil32(return_data.size)) + 832] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 836] = 32
                mem[(8 * ceil32(return_data.size)) + 868] = 37
                mem[(8 * ceil32(return_data.size)) + 900] = 'ERC20: transfer from the zero ad'
                mem[(8 * ceil32(return_data.size)) + 932] = 'dress'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 832
                   len (13 * ceil32(return_data.size)) + 132
            if not this.address:
                mem[(8 * ceil32(return_data.size)) + 832] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 836] = 32
                mem[(8 * ceil32(return_data.size)) + 868] = 35
                mem[(8 * ceil32(return_data.size)) + 900] = 'ERC20: transfer to the zero addr'
                mem[(8 * ceil32(return_data.size)) + 932] = 'ess'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 832
                   len (13 * ceil32(return_data.size)) + 132
            if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                mem[(8 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 932] = 32
                mem[(8 * ceil32(return_data.size)) + 964] = 38
                mem[(8 * ceil32(return_data.size)) + 996 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 902 len 26]
                mem[(8 * ceil32(return_data.size)) + 1034] = 0
                revert with memory
                  from (8 * ceil32(return_data.size)) + 928
                   len (13 * ceil32(return_data.size)) + 132
            if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
            if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                revert with 'NH{q', 17
            if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                mem[(8 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 932] = 32
                mem[(8 * ceil32(return_data.size)) + 964] = 27
                mem[(8 * ceil32(return_data.size)) + 996] = 'SafeMath: addition overflow'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 928
                   len (13 * ceil32(return_data.size)) + 100
            balanceOf[address(this.address)] += arg2 * stor14 / 100
            emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
            if not msg.sender:
                mem[(8 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 932] = 32
                mem[(8 * ceil32(return_data.size)) + 964] = 37
                mem[(8 * ceil32(return_data.size)) + 996] = 'ERC20: transfer from the zero ad'
                mem[(8 * ceil32(return_data.size)) + 1028] = 'dress'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 928
                   len (13 * ceil32(return_data.size)) + 132
            if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                mem[(8 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1028] = 32
                mem[(8 * ceil32(return_data.size)) + 1060] = 38
                mem[(8 * ceil32(return_data.size)) + 1092 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 998 len 26]
                mem[(8 * ceil32(return_data.size)) + 1130] = 0
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1024
                   len (13 * ceil32(return_data.size)) + 132
            if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
            if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                revert with 'NH{q', 17
            if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                mem[(8 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1028] = 32
                mem[(8 * ceil32(return_data.size)) + 1060] = 27
                mem[(8 * ceil32(return_data.size)) + 1092] = 'SafeMath: addition overflow'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1024
                   len (13 * ceil32(return_data.size)) + 100
            balanceOf[57005] += arg2 * burnFee / 100
            emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
            emit TokenBurn((arg2 * burnFee / 100), msg.sender);
            if not msg.sender:
                mem[(8 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1028] = 32
                mem[(8 * ceil32(return_data.size)) + 1060] = 37
                mem[(8 * ceil32(return_data.size)) + 1092] = 'ERC20: transfer from the zero ad'
                mem[(8 * ceil32(return_data.size)) + 1124] = 'dress'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1024
                   len (13 * ceil32(return_data.size)) + 132
            if not arg1:
                mem[(8 * ceil32(return_data.size)) + 1024] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1028] = 32
                mem[(8 * ceil32(return_data.size)) + 1060] = 35
                mem[(8 * ceil32(return_data.size)) + 1092] = 'ERC20: transfer to the zero addr'
                mem[(8 * ceil32(return_data.size)) + 1124] = 'ess'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1024
                   len (13 * ceil32(return_data.size)) + 132
            if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                mem[(8 * ceil32(return_data.size)) + 1120] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1124] = 32
                mem[(8 * ceil32(return_data.size)) + 1156] = 38
                mem[(8 * ceil32(return_data.size)) + 1188 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(8 * ceil32(return_data.size)) + 1094 len 26]
                mem[(8 * ceil32(return_data.size)) + 1226] = 0
                revert with memory
                  from (8 * ceil32(return_data.size)) + 1120
                   len (13 * ceil32(return_data.size)) + 132
            if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
            if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) >= balanceOf[address(arg1)]:
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                return 1
    mem[(8 * ceil32(return_data.size)) + 1120] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 1124] = 32
    mem[(8 * ceil32(return_data.size)) + 1156] = 27
    mem[(8 * ceil32(return_data.size)) + 1188] = 'SafeMath: addition overflow'
    revert with memory
      from (8 * ceil32(return_data.size)) + 1120
       len (13 * ceil32(return_data.size)) + 100
}



}
