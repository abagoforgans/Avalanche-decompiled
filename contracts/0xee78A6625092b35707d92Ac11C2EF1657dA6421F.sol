contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const deadAddress = 57005

const maxFees = 10


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
uint256 burnFee;
uint256 liquidityFee;
uint256 marketingFee;
uint256 maxBalance;
address joeRouterAddress;
address joePairAddress;
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

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[address(arg1)])
}

function joeRouter() {
    return joeRouterAddress
}

function liquifyThreshhold() {
    return liquifyThreshhold
}

function marketingFee() {
    return marketingFee
}

function joePair() {
    return joePairAddress
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
    if liquidityFee + arg1 + marketingFee > 10:
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
    if arg1 + burnFee + marketingFee > 10:
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
    if liquidityFee + burnFee + arg1 > 10:
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
        if arg1 != joePairAddress:
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
        else:
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
            else:
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
                else:
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
                    else:
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
                        else:
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
                            else:
                                stor22 = 1
                                if not balanceOf[address(this.address)]:
                                    mem[96] = 26
                                    mem[128] = 'SafeMath: division by zero'
                                    if stor14 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor14:
                                        revert with 'NH{q', 18
                                    if not balanceOf[address(this.address)]:
                                        mem[160] = 26
                                        mem[192] = 'SafeMath: division by zero'
                                        if stor14 <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor14:
                                            revert with 'NH{q', 18
                                        mem[224] = 26
                                        mem[256] = 'SafeMath: division by zero'
                                        mem[288] = 30
                                        mem[320] = 'SafeMath: subtraction overflow'
                                        if 0 / stor14 / 2 > 0 / stor14:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if 0 / stor14 < 0 / stor14 / 2:
                                            revert with 'NH{q', 17
                                        mem[352] = 2
                                        mem[384] = this.address
                                        require ext_code.size(joeRouterAddress)
                                        staticcall joeRouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[448] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[416] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not joeRouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor19].field_0 = 0 / stor14 / 2
                                        allowance[address(this.address)][stor19].field_255 = 0
                                        emit Approval((0 / stor14 / 2), this.address, joeRouterAddress);
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
                                        require ext_code.size(joeRouterAddress)
                                        call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                                        if not joeRouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor19].field_0 = (0 / stor14) - (0 / stor14 / 2)
                                        emit Approval(((0 / stor14) - (0 / stor14 / 2)), this.address, joeRouterAddress);
                                        mem[ceil32(return_data.size) + 580] = 0
                                        mem[ceil32(return_data.size) + 612] = 0
                                        mem[ceil32(return_data.size) + 644] = 0
                                        mem[ceil32(return_data.size) + 676] = block.timestamp
                                        require ext_code.size(joeRouterAddress)
                                        call joeRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args address(this.address), (0 / stor14) - (0 / stor14 / 2), 0, 0, 0, block.timestamp
                                        mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        mem[(2 * ceil32(return_data.size)) + 512] = 3
                                        mem[(2 * ceil32(return_data.size)) + 544] = this.address
                                        require ext_code.size(joeRouterAddress)
                                        staticcall joeRouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not joeRouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = joeRouterAddress
                                        mem[32] = sha3(address(this.address), 10)
                                        allowance[address(this.address)][stor19].field_0 = 0 / stor14
                                        emit Approval((0 / stor14), this.address, joeRouterAddress);
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
                                        require ext_code.size(joeRouterAddress)
                                        call joeRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0 / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                                    else:
                                        if balanceOf[address(this.address)] and marketingFee > -1 / balanceOf[address(this.address)]:
                                            revert with 'NH{q', 17
                                        if not balanceOf[address(this.address)]:
                                            revert with 'NH{q', 18
                                        if balanceOf[address(this.address)] * marketingFee / balanceOf[address(this.address)] != marketingFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        mem[160] = 26
                                        mem[192] = 'SafeMath: division by zero'
                                        if stor14 <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor14:
                                            revert with 'NH{q', 18
                                        mem[224] = 26
                                        mem[256] = 'SafeMath: division by zero'
                                        mem[288] = 30
                                        mem[320] = 'SafeMath: subtraction overflow'
                                        if 0 / stor14 / 2 > 0 / stor14:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if 0 / stor14 < 0 / stor14 / 2:
                                            revert with 'NH{q', 17
                                        mem[352] = 2
                                        mem[384] = this.address
                                        require ext_code.size(joeRouterAddress)
                                        staticcall joeRouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[448] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[416] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not joeRouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor19].field_0 = 0 / stor14 / 2
                                        allowance[address(this.address)][stor19].field_255 = 0
                                        emit Approval((0 / stor14 / 2), this.address, joeRouterAddress);
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
                                        require ext_code.size(joeRouterAddress)
                                        call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                                        if not joeRouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor19].field_0 = (0 / stor14) - (0 / stor14 / 2)
                                        emit Approval(((0 / stor14) - (0 / stor14 / 2)), this.address, joeRouterAddress);
                                        mem[ceil32(return_data.size) + 580] = 0
                                        mem[ceil32(return_data.size) + 612] = 0
                                        mem[ceil32(return_data.size) + 644] = 0
                                        mem[ceil32(return_data.size) + 676] = block.timestamp
                                        require ext_code.size(joeRouterAddress)
                                        call joeRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args address(this.address), (0 / stor14) - (0 / stor14 / 2), 0, 0, 0, block.timestamp
                                        mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        mem[(2 * ceil32(return_data.size)) + 512] = 3
                                        mem[(2 * ceil32(return_data.size)) + 544] = this.address
                                        require ext_code.size(joeRouterAddress)
                                        staticcall joeRouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not joeRouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = joeRouterAddress
                                        mem[32] = sha3(address(this.address), 10)
                                        allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * marketingFee / stor14
                                        emit Approval((balanceOf[address(this.address)] * marketingFee / stor14), this.address, joeRouterAddress);
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
                                        require ext_code.size(joeRouterAddress)
                                        call joeRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                                if balanceOf[address(this.address)] and liquidityFee > -1 / balanceOf[address(this.address)]:
                                    revert with 'NH{q', 17
                                if not balanceOf[address(this.address)]:
                                    revert with 'NH{q', 18
                                if balanceOf[address(this.address)] * liquidityFee / balanceOf[address(this.address)] != liquidityFee:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                mem[96] = 26
                                mem[128] = 'SafeMath: division by zero'
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
                                    mem[160] = 26
                                    mem[192] = 'SafeMath: division by zero'
                                    if stor14 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor14:
                                        revert with 'NH{q', 18
                                    mem[224] = 26
                                    mem[256] = 'SafeMath: division by zero'
                                    mem[288] = 30
                                    mem[320] = 'SafeMath: subtraction overflow'
                                    if balanceOf[address(this.address)] * liquidityFee / stor14 / 2 > balanceOf[address(this.address)] * liquidityFee / stor14:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(this.address)] * liquidityFee / stor14 < balanceOf[address(this.address)] * liquidityFee / stor14 / 2:
                                        revert with 'NH{q', 17
                                    mem[352] = 2
                                    mem[384] = this.address
                                    require ext_code.size(joeRouterAddress)
                                    staticcall joeRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[448] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[416] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not joeRouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                                    allowance[address(this.address)][stor19].field_255 = 0
                                    emit Approval((balanceOf[address(this.address)] * liquidityFee / stor14 / 2), this.address, joeRouterAddress);
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
                                    require ext_code.size(joeRouterAddress)
                                    call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                                    if not joeRouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor19].field_0 = (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)
                                    emit Approval(((balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)), this.address, joeRouterAddress);
                                    mem[ceil32(return_data.size) + 580] = 0
                                    mem[ceil32(return_data.size) + 612] = 0
                                    mem[ceil32(return_data.size) + 644] = 0
                                    mem[ceil32(return_data.size) + 676] = block.timestamp
                                    require ext_code.size(joeRouterAddress)
                                    call joeRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args address(this.address), (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2), 0, 0, 0, block.timestamp
                                    mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    mem[(2 * ceil32(return_data.size)) + 512] = 3
                                    mem[(2 * ceil32(return_data.size)) + 544] = this.address
                                    require ext_code.size(joeRouterAddress)
                                    staticcall joeRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 640
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not joeRouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = joeRouterAddress
                                    mem[32] = sha3(address(this.address), 10)
                                    allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * marketingFee / stor14
                                    emit Approval((balanceOf[address(this.address)] * marketingFee / stor14), this.address, joeRouterAddress);
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
                                    require ext_code.size(joeRouterAddress)
                                    call joeRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                                mem[160] = 26
                                mem[192] = 'SafeMath: division by zero'
                                if stor14 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not stor14:
                                    revert with 'NH{q', 18
                                mem[224] = 26
                                mem[256] = 'SafeMath: division by zero'
                                mem[288] = 30
                                mem[320] = 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] * liquidityFee / stor14 / 2 > balanceOf[address(this.address)] * liquidityFee / stor14:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if balanceOf[address(this.address)] * liquidityFee / stor14 < balanceOf[address(this.address)] * liquidityFee / stor14 / 2:
                                    revert with 'NH{q', 17
                                mem[352] = 2
                                mem[384] = this.address
                                require ext_code.size(joeRouterAddress)
                                staticcall joeRouterAddress.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[448] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[416] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not joeRouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                                allowance[address(this.address)][stor19].field_255 = 0
                                emit Approval((balanceOf[address(this.address)] * liquidityFee / stor14 / 2), this.address, joeRouterAddress);
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
                                require ext_code.size(joeRouterAddress)
                                call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                                if not joeRouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor19].field_0 = (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)
                                emit Approval(((balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)), this.address, joeRouterAddress);
                                mem[ceil32(return_data.size) + 580] = 0
                                mem[ceil32(return_data.size) + 612] = 0
                                mem[ceil32(return_data.size) + 644] = 0
                                mem[ceil32(return_data.size) + 676] = block.timestamp
                                require ext_code.size(joeRouterAddress)
                                call joeRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args address(this.address), (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2), 0, 0, 0, block.timestamp
                                mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                mem[(2 * ceil32(return_data.size)) + 512] = 3
                                mem[(2 * ceil32(return_data.size)) + 544] = this.address
                                require ext_code.size(joeRouterAddress)
                                staticcall joeRouterAddress.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 640
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not joeRouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = joeRouterAddress
                                mem[32] = sha3(address(this.address), 10)
                                allowance[address(this.address)][stor19].field_0 = 0 / stor14
                                emit Approval((0 / stor14), this.address, joeRouterAddress);
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
                                require ext_code.size(joeRouterAddress)
                                call joeRouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 512]) + -mem[64] + 832]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_e5148bd6Address)
                                staticcall sub_e5148bd6Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10835 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10851 = mem[_10835]
                                require mem[_10835] == mem[_10835]
                                mem[mem[64] + 4] = marketingAddress
                                mem[mem[64] + 36] = _10851
                                require ext_code.size(sub_e5148bd6Address)
                                call sub_e5148bd6Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args marketingAddress, _10851
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10947 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_10947] == bool(mem[_10947])
                                stor22 = 0
                                mem[0] = msg.sender
                                mem[32] = 11
                                if stor11[address(msg.sender)]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    _10998 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_10998] = 38
                                    mem[_10998 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_10998 + 70 len 26]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                    mem[0] = arg1
                                    mem[32] = 11
                                    if stor11[address(arg1)]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        _11043 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_11043] = 38
                                        mem[_11043 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_11043 + 70 len 26]
                                            revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                            _11085 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_11085] = 38
                                            mem[_11085 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 38
                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_11085 + 70 len 26]
                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                _11140 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_11140] = 26
                                                mem[_11140 + 32] = 'SafeMath: division by zero'
                                                if not arg2:
                                                    _11441 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_11441] = 26
                                                    mem[_11441 + 32] = 'SafeMath: division by zero'
                                                    _11743 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_11743] = 30
                                                    mem[_11743 + 32] = 'SafeMath: subtraction overflow'
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _11885 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_11885] = 38
                                                    mem[_11885 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_11885 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(this.address)] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = this.address
                                                    mem[32] = 9
                                                    emit Transfer(0, msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    _12554 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_12554] = 38
                                                    mem[_12554 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12554 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[57005] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[57005] < balanceOf[57005]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = 57005
                                                    mem[32] = 9
                                                    emit Transfer(0, msg.sender, 57005);
                                                    emit TokenBurn(0, msg.sender);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _13428 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_13428] = 38
                                                    mem[_13428 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_13428 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                    _11673 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_11673] = 26
                                                    mem[_11673 + 32] = 'SafeMath: division by zero'
                                                    if 0 > -(arg2 * burnFee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if arg2 * burnFee / 100 < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _11916 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_11916] = 30
                                                    mem[_11916 + 32] = 'SafeMath: subtraction overflow'
                                                    if arg2 * burnFee / 100 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if arg2 < arg2 * burnFee / 100:
                                                        revert with 'NH{q', 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _12162 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_12162] = 38
                                                    mem[_12162 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12162 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(this.address)] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = this.address
                                                    mem[32] = 9
                                                    emit Transfer(0, msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    _12925 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_12925] = 38
                                                    mem[_12925 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12925 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                                    if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = 57005
                                                    mem[32] = 9
                                                    balanceOf[57005] += arg2 * burnFee / 100
                                                    emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                                    emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _14164 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_14164] = 38
                                                    mem[_14164 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_14164 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                _11395 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_11395] = 26
                                                mem[_11395 + 32] = 'SafeMath: division by zero'
                                                if not arg2:
                                                    _11672 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_11672] = 26
                                                    mem[_11672 + 32] = 'SafeMath: division by zero'
                                                    if arg2 * stor14 / 100 > -1:
                                                        revert with 'NH{q', 17
                                                    if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _11915 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_11915] = 30
                                                    mem[_11915 + 32] = 'SafeMath: subtraction overflow'
                                                    if arg2 * stor14 / 100 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if arg2 < arg2 * stor14 / 100:
                                                        revert with 'NH{q', 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _12159 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_12159] = 38
                                                    mem[_12159 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12159 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                                    if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = this.address
                                                    mem[32] = 9
                                                    balanceOf[address(this.address)] += arg2 * stor14 / 100
                                                    emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    _12923 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_12923] = 38
                                                    mem[_12923 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12923 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[57005] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[57005] < balanceOf[57005]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = 57005
                                                    mem[32] = 9
                                                    emit Transfer(0, msg.sender, 57005);
                                                    emit TokenBurn(0, msg.sender);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _14161 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_14161] = 38
                                                    mem[_14161 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_14161 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                    _11795 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_11795] = 26
                                                    mem[_11795 + 32] = 'SafeMath: division by zero'
                                                    if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _12219 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_12219] = 30
                                                    mem[_12219 + 32] = 'SafeMath: subtraction overflow'
                                                    if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                                        revert with 'NH{q', 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _12551 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_12551] = 38
                                                    mem[_12551 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12551 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                                    if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = this.address
                                                    mem[32] = 9
                                                    balanceOf[address(this.address)] += arg2 * stor14 / 100
                                                    emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    _13267 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_13267] = 38
                                                    mem[_13267 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_13267 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                                    if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = 57005
                                                    mem[32] = 9
                                                    balanceOf[57005] += arg2 * burnFee / 100
                                                    emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                                    emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _14510 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_14510] = 38
                                                    mem[_14510 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_14510 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                                    emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
    else:
        if arg1 != owner:
            if not stor12[address(arg1)]:
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[address(arg1)] + arg2 > maxBalance:
                    revert with 0, 'Max Balance is reached.'
            if arg1 != joePairAddress:
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
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                if stor14 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor14:
                    revert with 'NH{q', 18
                if not balanceOf[address(this.address)]:
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    if stor14 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor14:
                        revert with 'NH{q', 18
                    mem[224] = 26
                    mem[256] = 'SafeMath: division by zero'
                    mem[288] = 30
                    mem[320] = 'SafeMath: subtraction overflow'
                    if 0 / stor14 / 2 > 0 / stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / stor14 < 0 / stor14 / 2:
                        revert with 'NH{q', 17
                    mem[352] = 2
                    mem[384] = this.address
                    require ext_code.size(joeRouterAddress)
                    staticcall joeRouterAddress.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[448] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[416] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = 0 / stor14 / 2
                    allowance[address(this.address)][stor19].field_255 = 0
                    emit Approval((0 / stor14 / 2), this.address, joeRouterAddress);
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
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = (0 / stor14) - (0 / stor14 / 2)
                    emit Approval(((0 / stor14) - (0 / stor14 / 2)), this.address, joeRouterAddress);
                    mem[ceil32(return_data.size) + 580] = 0
                    mem[ceil32(return_data.size) + 612] = 0
                    mem[ceil32(return_data.size) + 644] = 0
                    mem[ceil32(return_data.size) + 676] = block.timestamp
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(this.address), (0 / stor14) - (0 / stor14 / 2), 0, 0, 0, block.timestamp
                    mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    mem[(2 * ceil32(return_data.size)) + 512] = 3
                    mem[(2 * ceil32(return_data.size)) + 544] = this.address
                    require ext_code.size(joeRouterAddress)
                    staticcall joeRouterAddress.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 640
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = joeRouterAddress
                    mem[32] = sha3(address(this.address), 10)
                    allowance[address(this.address)][stor19].field_0 = 0 / stor14
                    emit Approval((0 / stor14), this.address, joeRouterAddress);
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
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0 / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                else:
                    if balanceOf[address(this.address)] and marketingFee > -1 / balanceOf[address(this.address)]:
                        revert with 'NH{q', 17
                    if not balanceOf[address(this.address)]:
                        revert with 'NH{q', 18
                    if balanceOf[address(this.address)] * marketingFee / balanceOf[address(this.address)] != marketingFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    if stor14 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor14:
                        revert with 'NH{q', 18
                    mem[224] = 26
                    mem[256] = 'SafeMath: division by zero'
                    mem[288] = 30
                    mem[320] = 'SafeMath: subtraction overflow'
                    if 0 / stor14 / 2 > 0 / stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / stor14 < 0 / stor14 / 2:
                        revert with 'NH{q', 17
                    mem[352] = 2
                    mem[384] = this.address
                    require ext_code.size(joeRouterAddress)
                    staticcall joeRouterAddress.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[448] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[416] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = 0 / stor14 / 2
                    allowance[address(this.address)][stor19].field_255 = 0
                    emit Approval((0 / stor14 / 2), this.address, joeRouterAddress);
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
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = (0 / stor14) - (0 / stor14 / 2)
                    emit Approval(((0 / stor14) - (0 / stor14 / 2)), this.address, joeRouterAddress);
                    mem[ceil32(return_data.size) + 580] = 0
                    mem[ceil32(return_data.size) + 612] = 0
                    mem[ceil32(return_data.size) + 644] = 0
                    mem[ceil32(return_data.size) + 676] = block.timestamp
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(this.address), (0 / stor14) - (0 / stor14 / 2), 0, 0, 0, block.timestamp
                    mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    mem[(2 * ceil32(return_data.size)) + 512] = 3
                    mem[(2 * ceil32(return_data.size)) + 544] = this.address
                    require ext_code.size(joeRouterAddress)
                    staticcall joeRouterAddress.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 640
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = joeRouterAddress
                    mem[32] = sha3(address(this.address), 10)
                    allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * marketingFee / stor14
                    emit Approval((balanceOf[address(this.address)] * marketingFee / stor14), this.address, joeRouterAddress);
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
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args balanceOf[address(this.address)] * marketingFee / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
            else:
                if balanceOf[address(this.address)] and liquidityFee > -1 / balanceOf[address(this.address)]:
                    revert with 'NH{q', 17
                if not balanceOf[address(this.address)]:
                    revert with 'NH{q', 18
                if balanceOf[address(this.address)] * liquidityFee / balanceOf[address(this.address)] != liquidityFee:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                if stor14 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor14:
                    revert with 'NH{q', 18
                if not balanceOf[address(this.address)]:
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    if stor14 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor14:
                        revert with 'NH{q', 18
                    mem[224] = 26
                    mem[256] = 'SafeMath: division by zero'
                    mem[288] = 30
                    mem[320] = 'SafeMath: subtraction overflow'
                    if balanceOf[address(this.address)] * liquidityFee / stor14 / 2 > balanceOf[address(this.address)] * liquidityFee / stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if balanceOf[address(this.address)] * liquidityFee / stor14 < balanceOf[address(this.address)] * liquidityFee / stor14 / 2:
                        revert with 'NH{q', 17
                    mem[352] = 2
                    mem[384] = this.address
                    require ext_code.size(joeRouterAddress)
                    staticcall joeRouterAddress.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[448] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[416] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                    allowance[address(this.address)][stor19].field_255 = 0
                    emit Approval((balanceOf[address(this.address)] * liquidityFee / stor14 / 2), this.address, joeRouterAddress);
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
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)
                    emit Approval(((balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)), this.address, joeRouterAddress);
                    mem[ceil32(return_data.size) + 580] = 0
                    mem[ceil32(return_data.size) + 612] = 0
                    mem[ceil32(return_data.size) + 644] = 0
                    mem[ceil32(return_data.size) + 676] = block.timestamp
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(this.address), (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2), 0, 0, 0, block.timestamp
                    mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    mem[(2 * ceil32(return_data.size)) + 512] = 3
                    mem[(2 * ceil32(return_data.size)) + 544] = this.address
                    require ext_code.size(joeRouterAddress)
                    staticcall joeRouterAddress.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 640
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = joeRouterAddress
                    mem[32] = sha3(address(this.address), 10)
                    allowance[address(this.address)][stor19].field_0 = 0 / stor14
                    emit Approval((0 / stor14), this.address, joeRouterAddress);
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
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0 / stor14, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 804 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
                else:
                    if balanceOf[address(this.address)] and marketingFee > -1 / balanceOf[address(this.address)]:
                        revert with 'NH{q', 17
                    if not balanceOf[address(this.address)]:
                        revert with 'NH{q', 18
                    if balanceOf[address(this.address)] * marketingFee / balanceOf[address(this.address)] != marketingFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    if stor14 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor14:
                        revert with 'NH{q', 18
                    mem[224] = 26
                    mem[256] = 'SafeMath: division by zero'
                    mem[288] = 30
                    mem[320] = 'SafeMath: subtraction overflow'
                    if balanceOf[address(this.address)] * liquidityFee / stor14 / 2 > balanceOf[address(this.address)] * liquidityFee / stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if balanceOf[address(this.address)] * liquidityFee / stor14 < balanceOf[address(this.address)] * liquidityFee / stor14 / 2:
                        revert with 'NH{q', 17
                    mem[352] = 2
                    mem[384] = this.address
                    require ext_code.size(joeRouterAddress)
                    staticcall joeRouterAddress.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[448] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[416] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                    allowance[address(this.address)][stor19].field_255 = 0
                    emit Approval((balanceOf[address(this.address)] * liquidityFee / stor14 / 2), this.address, joeRouterAddress);
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
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor19].field_0 = (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)
                    emit Approval(((balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)), this.address, joeRouterAddress);
                    mem[ceil32(return_data.size) + 580] = 0
                    mem[ceil32(return_data.size) + 612] = 0
                    mem[ceil32(return_data.size) + 644] = 0
                    mem[ceil32(return_data.size) + 676] = block.timestamp
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(this.address), (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2), 0, 0, 0, block.timestamp
                    mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    mem[(2 * ceil32(return_data.size)) + 512] = 3
                    mem[(2 * ceil32(return_data.size)) + 544] = this.address
                    require ext_code.size(joeRouterAddress)
                    staticcall joeRouterAddress.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 640
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not joeRouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = joeRouterAddress
                    mem[32] = sha3(address(this.address), 10)
                    allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * marketingFee / stor14
                    emit Approval((balanceOf[address(this.address)] * marketingFee / stor14), this.address, joeRouterAddress);
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
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
        if arg1 != joePairAddress:
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
        else:
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
            else:
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
                else:
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
                    else:
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
                        else:
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
                            else:
                                stor22 = 1
                                if not balanceOf[address(this.address)]:
                                    mem[96] = 26
                                    mem[128] = 'SafeMath: division by zero'
                                    if stor14 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor14:
                                        revert with 'NH{q', 18
                                    if not balanceOf[address(this.address)]:
                                        mem[160] = 26
                                        mem[192] = 'SafeMath: division by zero'
                                        if stor14 <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor14:
                                            revert with 'NH{q', 18
                                        mem[224] = 26
                                        mem[256] = 'SafeMath: division by zero'
                                        mem[288] = 30
                                        mem[320] = 'SafeMath: subtraction overflow'
                                        if 0 / stor14 / 2 > 0 / stor14:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if 0 / stor14 < 0 / stor14 / 2:
                                            revert with 'NH{q', 17
                                        mem[352] = 2
                                        mem[384] = this.address
                                        require ext_code.size(joeRouterAddress)
                                        staticcall joeRouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[448] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[416] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not joeRouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor19].field_0 = 0 / stor14 / 2
                                        allowance[address(this.address)][stor19].field_255 = 0
                                        emit Approval((0 / stor14 / 2), this.address, joeRouterAddress);
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
                                        require ext_code.size(joeRouterAddress)
                                        call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                                        if not joeRouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor19].field_0 = (0 / stor14) - (0 / stor14 / 2)
                                        emit Approval(((0 / stor14) - (0 / stor14 / 2)), this.address, joeRouterAddress);
                                        mem[ceil32(return_data.size) + 580] = 0
                                        mem[ceil32(return_data.size) + 612] = 0
                                        mem[ceil32(return_data.size) + 644] = 0
                                        mem[ceil32(return_data.size) + 676] = block.timestamp
                                        require ext_code.size(joeRouterAddress)
                                        call joeRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args address(this.address), (0 / stor14) - (0 / stor14 / 2), 0, 0, 0, block.timestamp
                                        mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        mem[(2 * ceil32(return_data.size)) + 512] = 3
                                        mem[(2 * ceil32(return_data.size)) + 544] = this.address
                                        require ext_code.size(joeRouterAddress)
                                        staticcall joeRouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not joeRouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = joeRouterAddress
                                        mem[32] = sha3(address(this.address), 10)
                                        allowance[address(this.address)][stor19].field_0 = 0 / stor14
                                        emit Approval((0 / stor14), this.address, joeRouterAddress);
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
                                        require ext_code.size(joeRouterAddress)
                                        call joeRouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 512]) + -mem[64] + 832]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_e5148bd6Address)
                                        staticcall sub_e5148bd6Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10840 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10856 = mem[_10840]
                                        require mem[_10840] == mem[_10840]
                                        mem[mem[64] + 4] = marketingAddress
                                        mem[mem[64] + 36] = _10856
                                        require ext_code.size(sub_e5148bd6Address)
                                        call sub_e5148bd6Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args marketingAddress, _10856
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10952 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10952] == bool(mem[_10952])
                                        stor22 = 0
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        if stor11[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            _11019 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_11019] = 38
                                            mem[_11019 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 38
                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_11019 + 70 len 26]
                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                            mem[0] = arg1
                                            mem[32] = 11
                                            if stor11[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                _11063 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_11063] = 38
                                                mem[_11063 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_11063 + 70 len 26]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                    _11106 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_11106] = 38
                                                    mem[_11106 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_11106 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                        _11150 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_11150] = 26
                                                        mem[_11150 + 32] = 'SafeMath: division by zero'
                                                        if not arg2:
                                                            _11466 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11466] = 26
                                                            mem[_11466 + 32] = 'SafeMath: division by zero'
                                                            _11748 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11748] = 30
                                                            mem[_11748 + 32] = 'SafeMath: subtraction overflow'
                                                            if 0 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < 0:
                                                                revert with 'NH{q', 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _11900 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_11900] = 38
                                                            mem[_11900 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_11900 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = this.address
                                                            mem[32] = 9
                                                            emit Transfer(0, msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            _12579 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_12579] = 38
                                                            mem[_12579 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12579 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = 57005
                                                            mem[32] = 9
                                                            emit Transfer(0, msg.sender, 57005);
                                                            emit TokenBurn(0, msg.sender);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _13448 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_13448] = 38
                                                            mem[_13448 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_13448 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                            _11688 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11688] = 26
                                                            mem[_11688 + 32] = 'SafeMath: division by zero'
                                                            if 0 > -(arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if arg2 * burnFee / 100 < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            _11926 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11926] = 30
                                                            mem[_11926 + 32] = 'SafeMath: subtraction overflow'
                                                            if arg2 * burnFee / 100 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < arg2 * burnFee / 100:
                                                                revert with 'NH{q', 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _12192 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_12192] = 38
                                                            mem[_12192 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12192 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = this.address
                                                            mem[32] = 9
                                                            emit Transfer(0, msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            _12945 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_12945] = 38
                                                            mem[_12945 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12945 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                                            if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = 57005
                                                            mem[32] = 9
                                                            balanceOf[57005] += arg2 * burnFee / 100
                                                            emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                                            emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _14194 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_14194] = 38
                                                            mem[_14194 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_14194 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                        _11416 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_11416] = 26
                                                        mem[_11416 + 32] = 'SafeMath: division by zero'
                                                        if not arg2:
                                                            _11687 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11687] = 26
                                                            mem[_11687 + 32] = 'SafeMath: division by zero'
                                                            if arg2 * stor14 / 100 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            _11925 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11925] = 30
                                                            mem[_11925 + 32] = 'SafeMath: subtraction overflow'
                                                            if arg2 * stor14 / 100 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < arg2 * stor14 / 100:
                                                                revert with 'NH{q', 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _12189 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_12189] = 38
                                                            mem[_12189 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12189 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                                            if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = this.address
                                                            mem[32] = 9
                                                            balanceOf[address(this.address)] += arg2 * stor14 / 100
                                                            emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            _12943 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_12943] = 38
                                                            mem[_12943 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12943 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = 57005
                                                            mem[32] = 9
                                                            emit Transfer(0, msg.sender, 57005);
                                                            emit TokenBurn(0, msg.sender);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _14191 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_14191] = 38
                                                            mem[_14191 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_14191 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                            _11800 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11800] = 26
                                                            mem[_11800 + 32] = 'SafeMath: division by zero'
                                                            if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            _12224 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_12224] = 30
                                                            mem[_12224 + 32] = 'SafeMath: subtraction overflow'
                                                            if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                                                revert with 'NH{q', 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _12576 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_12576] = 38
                                                            mem[_12576 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12576 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                                            if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = this.address
                                                            mem[32] = 9
                                                            balanceOf[address(this.address)] += arg2 * stor14 / 100
                                                            emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            _13277 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_13277] = 38
                                                            mem[_13277 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_13277 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                                            if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = 57005
                                                            mem[32] = 9
                                                            balanceOf[57005] += arg2 * burnFee / 100
                                                            emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                                            emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _14526 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_14526] = 38
                                                            mem[_14526 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_14526 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                                            emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                                    else:
                                        if balanceOf[address(this.address)] and marketingFee > -1 / balanceOf[address(this.address)]:
                                            revert with 'NH{q', 17
                                        if not balanceOf[address(this.address)]:
                                            revert with 'NH{q', 18
                                        if balanceOf[address(this.address)] * marketingFee / balanceOf[address(this.address)] != marketingFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        mem[160] = 26
                                        mem[192] = 'SafeMath: division by zero'
                                        if stor14 <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor14:
                                            revert with 'NH{q', 18
                                        mem[224] = 26
                                        mem[256] = 'SafeMath: division by zero'
                                        mem[288] = 30
                                        mem[320] = 'SafeMath: subtraction overflow'
                                        if 0 / stor14 / 2 > 0 / stor14:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if 0 / stor14 < 0 / stor14 / 2:
                                            revert with 'NH{q', 17
                                        mem[352] = 2
                                        mem[384] = this.address
                                        require ext_code.size(joeRouterAddress)
                                        staticcall joeRouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[448] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[416] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not joeRouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor19].field_0 = 0 / stor14 / 2
                                        allowance[address(this.address)][stor19].field_255 = 0
                                        emit Approval((0 / stor14 / 2), this.address, joeRouterAddress);
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
                                        require ext_code.size(joeRouterAddress)
                                        call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                                        if not joeRouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor19].field_0 = (0 / stor14) - (0 / stor14 / 2)
                                        emit Approval(((0 / stor14) - (0 / stor14 / 2)), this.address, joeRouterAddress);
                                        mem[ceil32(return_data.size) + 580] = 0
                                        mem[ceil32(return_data.size) + 612] = 0
                                        mem[ceil32(return_data.size) + 644] = 0
                                        mem[ceil32(return_data.size) + 676] = block.timestamp
                                        require ext_code.size(joeRouterAddress)
                                        call joeRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args address(this.address), (0 / stor14) - (0 / stor14 / 2), 0, 0, 0, block.timestamp
                                        mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        mem[(2 * ceil32(return_data.size)) + 512] = 3
                                        mem[(2 * ceil32(return_data.size)) + 544] = this.address
                                        require ext_code.size(joeRouterAddress)
                                        staticcall joeRouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not joeRouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = joeRouterAddress
                                        mem[32] = sha3(address(this.address), 10)
                                        allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * marketingFee / stor14
                                        emit Approval((balanceOf[address(this.address)] * marketingFee / stor14), this.address, joeRouterAddress);
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
                                        require ext_code.size(joeRouterAddress)
                                        call joeRouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 512]) + -mem[64] + 832]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_e5148bd6Address)
                                        staticcall sub_e5148bd6Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10839 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10855 = mem[_10839]
                                        require mem[_10839] == mem[_10839]
                                        mem[mem[64] + 4] = marketingAddress
                                        mem[mem[64] + 36] = _10855
                                        require ext_code.size(sub_e5148bd6Address)
                                        call sub_e5148bd6Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args marketingAddress, _10855
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10951 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10951] == bool(mem[_10951])
                                        stor22 = 0
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        if stor11[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            _11015 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_11015] = 38
                                            mem[_11015 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 38
                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_11015 + 70 len 26]
                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                            mem[0] = arg1
                                            mem[32] = 11
                                            if stor11[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                _11059 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_11059] = 38
                                                mem[_11059 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_11059 + 70 len 26]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                    _11102 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_11102] = 38
                                                    mem[_11102 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_11102 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                        _11148 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_11148] = 26
                                                        mem[_11148 + 32] = 'SafeMath: division by zero'
                                                        if not arg2:
                                                            _11461 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11461] = 26
                                                            mem[_11461 + 32] = 'SafeMath: division by zero'
                                                            _11747 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11747] = 30
                                                            mem[_11747 + 32] = 'SafeMath: subtraction overflow'
                                                            if 0 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < 0:
                                                                revert with 'NH{q', 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _11897 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_11897] = 38
                                                            mem[_11897 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_11897 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = this.address
                                                            mem[32] = 9
                                                            emit Transfer(0, msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            _12574 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_12574] = 38
                                                            mem[_12574 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12574 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = 57005
                                                            mem[32] = 9
                                                            emit Transfer(0, msg.sender, 57005);
                                                            emit TokenBurn(0, msg.sender);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _13444 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_13444] = 38
                                                            mem[_13444 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_13444 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                            _11685 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11685] = 26
                                                            mem[_11685 + 32] = 'SafeMath: division by zero'
                                                            if 0 > -(arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if arg2 * burnFee / 100 < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            _11924 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11924] = 30
                                                            mem[_11924 + 32] = 'SafeMath: subtraction overflow'
                                                            if arg2 * burnFee / 100 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < arg2 * burnFee / 100:
                                                                revert with 'NH{q', 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _12186 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_12186] = 38
                                                            mem[_12186 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12186 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = this.address
                                                            mem[32] = 9
                                                            emit Transfer(0, msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            _12941 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_12941] = 38
                                                            mem[_12941 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12941 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                                            if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = 57005
                                                            mem[32] = 9
                                                            balanceOf[57005] += arg2 * burnFee / 100
                                                            emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                                            emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _14188 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_14188] = 38
                                                            mem[_14188 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_14188 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                        _11412 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_11412] = 26
                                                        mem[_11412 + 32] = 'SafeMath: division by zero'
                                                        if not arg2:
                                                            _11684 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11684] = 26
                                                            mem[_11684 + 32] = 'SafeMath: division by zero'
                                                            if arg2 * stor14 / 100 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            _11923 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11923] = 30
                                                            mem[_11923 + 32] = 'SafeMath: subtraction overflow'
                                                            if arg2 * stor14 / 100 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < arg2 * stor14 / 100:
                                                                revert with 'NH{q', 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _12183 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_12183] = 38
                                                            mem[_12183 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12183 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                                            if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = this.address
                                                            mem[32] = 9
                                                            balanceOf[address(this.address)] += arg2 * stor14 / 100
                                                            emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            _12939 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_12939] = 38
                                                            mem[_12939 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12939 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = 57005
                                                            mem[32] = 9
                                                            emit Transfer(0, msg.sender, 57005);
                                                            emit TokenBurn(0, msg.sender);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _14185 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_14185] = 38
                                                            mem[_14185 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_14185 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                            _11799 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11799] = 26
                                                            mem[_11799 + 32] = 'SafeMath: division by zero'
                                                            if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            _12223 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_12223] = 30
                                                            mem[_12223 + 32] = 'SafeMath: subtraction overflow'
                                                            if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                                                revert with 'NH{q', 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _12571 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_12571] = 38
                                                            mem[_12571 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12571 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                                            if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = this.address
                                                            mem[32] = 9
                                                            balanceOf[address(this.address)] += arg2 * stor14 / 100
                                                            emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            _13275 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_13275] = 38
                                                            mem[_13275 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_13275 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                                            if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = 57005
                                                            mem[32] = 9
                                                            balanceOf[57005] += arg2 * burnFee / 100
                                                            emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                                            emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _14523 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_14523] = 38
                                                            mem[_14523 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_14523 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                                            emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                                else:
                                    if balanceOf[address(this.address)] and liquidityFee > -1 / balanceOf[address(this.address)]:
                                        revert with 'NH{q', 17
                                    if not balanceOf[address(this.address)]:
                                        revert with 'NH{q', 18
                                    if balanceOf[address(this.address)] * liquidityFee / balanceOf[address(this.address)] != liquidityFee:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    mem[96] = 26
                                    mem[128] = 'SafeMath: division by zero'
                                    if stor14 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor14:
                                        revert with 'NH{q', 18
                                    if not balanceOf[address(this.address)]:
                                        mem[160] = 26
                                        mem[192] = 'SafeMath: division by zero'
                                        if stor14 <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor14:
                                            revert with 'NH{q', 18
                                        mem[224] = 26
                                        mem[256] = 'SafeMath: division by zero'
                                        mem[288] = 30
                                        mem[320] = 'SafeMath: subtraction overflow'
                                        if balanceOf[address(this.address)] * liquidityFee / stor14 / 2 > balanceOf[address(this.address)] * liquidityFee / stor14:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if balanceOf[address(this.address)] * liquidityFee / stor14 < balanceOf[address(this.address)] * liquidityFee / stor14 / 2:
                                            revert with 'NH{q', 17
                                        mem[352] = 2
                                        mem[384] = this.address
                                        require ext_code.size(joeRouterAddress)
                                        staticcall joeRouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[448] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[416] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not joeRouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                                        allowance[address(this.address)][stor19].field_255 = 0
                                        emit Approval((balanceOf[address(this.address)] * liquidityFee / stor14 / 2), this.address, joeRouterAddress);
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
                                        require ext_code.size(joeRouterAddress)
                                        call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                                        if not joeRouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor19].field_0 = (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)
                                        emit Approval(((balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)), this.address, joeRouterAddress);
                                        mem[ceil32(return_data.size) + 580] = 0
                                        mem[ceil32(return_data.size) + 612] = 0
                                        mem[ceil32(return_data.size) + 644] = 0
                                        mem[ceil32(return_data.size) + 676] = block.timestamp
                                        require ext_code.size(joeRouterAddress)
                                        call joeRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args address(this.address), (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2), 0, 0, 0, block.timestamp
                                        mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        mem[(2 * ceil32(return_data.size)) + 512] = 3
                                        mem[(2 * ceil32(return_data.size)) + 544] = this.address
                                        require ext_code.size(joeRouterAddress)
                                        staticcall joeRouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not joeRouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = joeRouterAddress
                                        mem[32] = sha3(address(this.address), 10)
                                        allowance[address(this.address)][stor19].field_0 = 0 / stor14
                                        emit Approval((0 / stor14), this.address, joeRouterAddress);
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
                                        require ext_code.size(joeRouterAddress)
                                        call joeRouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 512]) + -mem[64] + 832]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_e5148bd6Address)
                                        staticcall sub_e5148bd6Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10838 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10854 = mem[_10838]
                                        require mem[_10838] == mem[_10838]
                                        mem[mem[64] + 4] = marketingAddress
                                        mem[mem[64] + 36] = _10854
                                        require ext_code.size(sub_e5148bd6Address)
                                        call sub_e5148bd6Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args marketingAddress, _10854
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10950 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10950] == bool(mem[_10950])
                                        stor22 = 0
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        if stor11[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            _11011 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_11011] = 38
                                            mem[_11011 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 38
                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_11011 + 70 len 26]
                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                            mem[0] = arg1
                                            mem[32] = 11
                                            if stor11[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                _11055 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_11055] = 38
                                                mem[_11055 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_11055 + 70 len 26]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                    _11098 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_11098] = 38
                                                    mem[_11098 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_11098 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                        _11146 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_11146] = 26
                                                        mem[_11146 + 32] = 'SafeMath: division by zero'
                                                        if not arg2:
                                                            _11456 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11456] = 26
                                                            mem[_11456 + 32] = 'SafeMath: division by zero'
                                                            _11746 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11746] = 30
                                                            mem[_11746 + 32] = 'SafeMath: subtraction overflow'
                                                            if 0 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < 0:
                                                                revert with 'NH{q', 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _11894 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_11894] = 38
                                                            mem[_11894 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_11894 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = this.address
                                                            mem[32] = 9
                                                            emit Transfer(0, msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            _12569 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_12569] = 38
                                                            mem[_12569 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12569 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = 57005
                                                            mem[32] = 9
                                                            emit Transfer(0, msg.sender, 57005);
                                                            emit TokenBurn(0, msg.sender);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _13440 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_13440] = 38
                                                            mem[_13440 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_13440 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                            _11682 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11682] = 26
                                                            mem[_11682 + 32] = 'SafeMath: division by zero'
                                                            if 0 > -(arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if arg2 * burnFee / 100 < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            _11922 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11922] = 30
                                                            mem[_11922 + 32] = 'SafeMath: subtraction overflow'
                                                            if arg2 * burnFee / 100 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < arg2 * burnFee / 100:
                                                                revert with 'NH{q', 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _12180 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_12180] = 38
                                                            mem[_12180 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12180 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = this.address
                                                            mem[32] = 9
                                                            emit Transfer(0, msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            _12937 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_12937] = 38
                                                            mem[_12937 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12937 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                                            if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = 57005
                                                            mem[32] = 9
                                                            balanceOf[57005] += arg2 * burnFee / 100
                                                            emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                                            emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _14182 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_14182] = 38
                                                            mem[_14182 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_14182 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                        _11408 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_11408] = 26
                                                        mem[_11408 + 32] = 'SafeMath: division by zero'
                                                        if not arg2:
                                                            _11681 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11681] = 26
                                                            mem[_11681 + 32] = 'SafeMath: division by zero'
                                                            if arg2 * stor14 / 100 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            _11921 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11921] = 30
                                                            mem[_11921 + 32] = 'SafeMath: subtraction overflow'
                                                            if arg2 * stor14 / 100 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < arg2 * stor14 / 100:
                                                                revert with 'NH{q', 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _12177 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_12177] = 38
                                                            mem[_12177 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12177 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                                            if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = this.address
                                                            mem[32] = 9
                                                            balanceOf[address(this.address)] += arg2 * stor14 / 100
                                                            emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            _12935 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_12935] = 38
                                                            mem[_12935 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12935 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = 57005
                                                            mem[32] = 9
                                                            emit Transfer(0, msg.sender, 57005);
                                                            emit TokenBurn(0, msg.sender);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _14179 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_14179] = 38
                                                            mem[_14179 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_14179 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                            _11798 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_11798] = 26
                                                            mem[_11798 + 32] = 'SafeMath: division by zero'
                                                            if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            _12222 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_12222] = 30
                                                            mem[_12222 + 32] = 'SafeMath: subtraction overflow'
                                                            if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                                                revert with 'NH{q', 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _12566 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_12566] = 38
                                                            mem[_12566 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_12566 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                                            if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = this.address
                                                            mem[32] = 9
                                                            balanceOf[address(this.address)] += arg2 * stor14 / 100
                                                            emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            _13273 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_13273] = 38
                                                            mem[_13273 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_13273 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                                            if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = 57005
                                                            mem[32] = 9
                                                            balanceOf[57005] += arg2 * burnFee / 100
                                                            emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                                            emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _14520 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_14520] = 38
                                                            mem[_14520 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_14520 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100):
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100)
                                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * stor14 / 100) + (arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)
                                                            emit Transfer((arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100)), msg.sender, arg1);
                                    else:
                                        if balanceOf[address(this.address)] and marketingFee > -1 / balanceOf[address(this.address)]:
                                            revert with 'NH{q', 17
                                        if not balanceOf[address(this.address)]:
                                            revert with 'NH{q', 18
                                        if balanceOf[address(this.address)] * marketingFee / balanceOf[address(this.address)] != marketingFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        mem[160] = 26
                                        mem[192] = 'SafeMath: division by zero'
                                        if stor14 <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor14:
                                            revert with 'NH{q', 18
                                        mem[224] = 26
                                        mem[256] = 'SafeMath: division by zero'
                                        mem[288] = 30
                                        mem[320] = 'SafeMath: subtraction overflow'
                                        if balanceOf[address(this.address)] * liquidityFee / stor14 / 2 > balanceOf[address(this.address)] * liquidityFee / stor14:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if balanceOf[address(this.address)] * liquidityFee / stor14 < balanceOf[address(this.address)] * liquidityFee / stor14 / 2:
                                            revert with 'NH{q', 17
                                        mem[352] = 2
                                        mem[384] = this.address
                                        require ext_code.size(joeRouterAddress)
                                        staticcall joeRouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[448] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[416] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not joeRouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * liquidityFee / stor14 / 2
                                        allowance[address(this.address)][stor19].field_255 = 0
                                        emit Approval((balanceOf[address(this.address)] * liquidityFee / stor14 / 2), this.address, joeRouterAddress);
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
                                        require ext_code.size(joeRouterAddress)
                                        call joeRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                                        if not joeRouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor19].field_0 = (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)
                                        emit Approval(((balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2)), this.address, joeRouterAddress);
                                        mem[ceil32(return_data.size) + 580] = 0
                                        mem[ceil32(return_data.size) + 612] = 0
                                        mem[ceil32(return_data.size) + 644] = 0
                                        mem[ceil32(return_data.size) + 676] = block.timestamp
                                        require ext_code.size(joeRouterAddress)
                                        call joeRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args address(this.address), (balanceOf[address(this.address)] * liquidityFee / stor14) - (balanceOf[address(this.address)] * liquidityFee / stor14 / 2), 0, 0, 0, block.timestamp
                                        mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        mem[(2 * ceil32(return_data.size)) + 512] = 3
                                        mem[(2 * ceil32(return_data.size)) + 544] = this.address
                                        require ext_code.size(joeRouterAddress)
                                        staticcall joeRouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 608] = sub_e5148bd6Address
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not joeRouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = joeRouterAddress
                                        mem[32] = sha3(address(this.address), 10)
                                        allowance[address(this.address)][stor19].field_0 = balanceOf[address(this.address)] * marketingFee / stor14
                                        emit Approval((balanceOf[address(this.address)] * marketingFee / stor14), this.address, joeRouterAddress);
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
                                        require ext_code.size(joeRouterAddress)
                                        call joeRouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 512]) + -mem[64] + 832]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_e5148bd6Address)
                                        staticcall sub_e5148bd6Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _14519 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _14582 = mem[_14519]
                                        require mem[_14519] == mem[_14519]
                                        mem[mem[64] + 4] = marketingAddress
                                        mem[mem[64] + 36] = _14582
                                        require ext_code.size(sub_e5148bd6Address)
                                        call sub_e5148bd6Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args marketingAddress, _14582
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _14894 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_14894] == bool(mem[_14894])
                                        stor22 = 0
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        if stor11[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            _14947 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_14947] = 38
                                            mem[_14947 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 38
                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_14947 + 70 len 26]
                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                            mem[0] = arg1
                                            mem[32] = 11
                                            if stor11[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                _14971 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_14971] = 38
                                                mem[_14971 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_14971 + 70 len 26]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                    _14996 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_14996] = 38
                                                    mem[_14996 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_14996 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                        _15024 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_15024] = 26
                                                        mem[_15024 + 32] = 'SafeMath: division by zero'
                                                        if not arg2:
                                                            _15198 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_15198] = 26
                                                            mem[_15198 + 32] = 'SafeMath: division by zero'
                                                            _15352 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_15352] = 30
                                                            mem[_15352 + 32] = 'SafeMath: subtraction overflow'
                                                            if 0 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < 0:
                                                                revert with 'NH{q', 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _15414 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_15414] = 38
                                                            mem[_15414 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_15414 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = this.address
                                                            mem[32] = 9
                                                            emit Transfer(0, msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            _15797 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_15797] = 38
                                                            mem[_15797 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_15797 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = 57005
                                                            mem[32] = 9
                                                            emit Transfer(0, msg.sender, 57005);
                                                            emit TokenBurn(0, msg.sender);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _16298 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_16298] = 38
                                                            mem[_16298 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_16298 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                            _15320 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_15320] = 26
                                                            mem[_15320 + 32] = 'SafeMath: division by zero'
                                                            if 0 > -(arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if arg2 * burnFee / 100 < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            _15432 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_15432] = 30
                                                            mem[_15432 + 32] = 'SafeMath: subtraction overflow'
                                                            if arg2 * burnFee / 100 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < arg2 * burnFee / 100:
                                                                revert with 'NH{q', 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _15570 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_15570] = 38
                                                            mem[_15570 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_15570 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = this.address
                                                            mem[32] = 9
                                                            emit Transfer(0, msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            _16011 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_16011] = 38
                                                            mem[_16011 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_16011 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                                            if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = 57005
                                                            mem[32] = 9
                                                            balanceOf[57005] += arg2 * burnFee / 100
                                                            emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                                            emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _16878 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_16878] = 38
                                                            mem[_16878 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_16878 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                        _15172 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_15172] = 26
                                                        mem[_15172 + 32] = 'SafeMath: division by zero'
                                                        if not arg2:
                                                            _15319 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_15319] = 26
                                                            mem[_15319 + 32] = 'SafeMath: division by zero'
                                                            if arg2 * stor14 / 100 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 * stor14 / 100 < arg2 * stor14 / 100:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            _15431 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_15431] = 30
                                                            mem[_15431 + 32] = 'SafeMath: subtraction overflow'
                                                            if arg2 * stor14 / 100 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < arg2 * stor14 / 100:
                                                                revert with 'NH{q', 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _15567 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_15567] = 38
                                                            mem[_15567 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_15567 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                                            if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = this.address
                                                            mem[32] = 9
                                                            balanceOf[address(this.address)] += arg2 * stor14 / 100
                                                            emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            _16009 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_16009] = 38
                                                            mem[_16009 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_16009 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = 57005
                                                            mem[32] = 9
                                                            emit Transfer(0, msg.sender, 57005);
                                                            emit TokenBurn(0, msg.sender);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _16875 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_16875] = 38
                                                            mem[_16875 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 - (arg2 * stor14 / 100) > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_16875 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                            _15376 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_15376] = 26
                                                            mem[_15376 + 32] = 'SafeMath: division by zero'
                                                            if arg2 * stor14 / 100 > -(arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) < arg2 * stor14 / 100:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            _15598 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_15598] = 30
                                                            mem[_15598 + 32] = 'SafeMath: subtraction overflow'
                                                            if (arg2 * stor14 / 100) + (arg2 * burnFee / 100) > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < (arg2 * stor14 / 100) + (arg2 * burnFee / 100):
                                                                revert with 'NH{q', 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _15794 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_15794] = 38
                                                            mem[_15794 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 * stor14 / 100 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_15794 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 * stor14 / 100:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * stor14 / 100
                                                            if balanceOf[address(this.address)] > -(arg2 * stor14 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (arg2 * stor14 / 100) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = this.address
                                                            mem[32] = 9
                                                            balanceOf[address(this.address)] += arg2 * stor14 / 100
                                                            emit Transfer((arg2 * stor14 / 100), msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            _16199 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_16199] = 38
                                                            mem[_16199 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 * burnFee / 100 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_16199 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2 * burnFee / 100:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * burnFee / 100
                                                            if balanceOf[57005] > -(arg2 * burnFee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] + (arg2 * burnFee / 100) < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            mem[0] = 57005
                                                            mem[32] = 9
                                                            balanceOf[57005] += arg2 * burnFee / 100
                                                            emit Transfer((arg2 * burnFee / 100), msg.sender, 57005);
                                                            emit TokenBurn((arg2 * burnFee / 100), msg.sender);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _17070 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_17070] = 38
                                                            mem[_17070 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 - (arg2 * stor14 / 100) - (arg2 * burnFee / 100) > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_17070 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
}



}
