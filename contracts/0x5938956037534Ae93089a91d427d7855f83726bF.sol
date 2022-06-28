contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = 'CordyCeps', 0

const decimals = 9

const symbol = '$CORDY', 0


address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
uint256 totalSupply;
uint256 _maxWalletSize;
uint256 sub_71d0979b;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of address referrer;
mapping of uint256 sub_c08d52af;
mapping of uint256 totalRewards;
mapping of uint8 stor14;
mapping of uint8 stor15;
uint256 stor16; offset 1
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 sub_5acbdedb;
address stor23;
address stor24;
address routerAddress;
uint8 swapEnabled; offset 160
uint128 stor26; offset 160
address pairAddress;
uint256 swapThreshold;
uint256 lastSwapTime;
uint256 sub_b5bb3466;
uint8 stor30;

function swapThreshold() {
    return swapThreshold
}

function lastSwapTime() {
    return lastSwapTime
}

function totalSupply() {
    return totalSupply
}

function referrer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referrer[arg1]
}

function sub_5acbdedb(?) {
    return sub_5acbdedb
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_71d0979b(?) {
    return sub_71d0979b
}

function getOwner() {
    return owner
}

function _maxWalletSize() {
    return _maxWalletSize
}

function pair() {
    return pairAddress
}

function totalRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalRewards[arg1]
}

function sub_b5bb3466(?) {
    return sub_b5bb3466
}

function sub_c08d52af(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c08d52af[arg1]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function isReferred(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[arg1])
}

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == owner)
}

function sub_de91b99e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sub_5acbdedb = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function setReferralFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor21 = arg1
}

function sub_ea23a2b8(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 <= 10^9
    sub_71d0979b = arg1
}

function addBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor15[address(arg1)] = 1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function removeBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor15[address(arg1)] = 0
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 >= totalSupply / 1000
    _maxWalletSize = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setFeeReceiver(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor23 = arg1
    stor24 = arg2
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor10[address(arg1)] = uint8(arg2)
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    Mask(96, 0, stor26.field_160) = Mask(96, 0, arg1)
    swapThreshold = arg2
}

function manualSend() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call stor23 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_745d67d0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No Negative Time, Pal. Thanks Shogun!'
    if arg1 and 60 > -1 / arg1:
        revert with 'NH{q', 17
    sub_b5bb3466 = 60 * arg1
}

function getCirculatingSupply() {
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 'NH{q', 17
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 'NH{q', 17
    return (totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    uint256(stor16.field_0) = arg1
    stor17 = arg2
    stor18 = arg3
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor19 = arg1 + arg2 + arg3
    stor20 = arg4
}

function transferForeignToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1 == this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't let you take all native token'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call stor23 with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 'NH{q', 17
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor26.field_0)]:
        if arg1:
            if arg1 and 0 > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if 0 / arg1:
                revert with 0, 'SafeMath: multiplication overflow'
        if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if balanceOf[address(stor26.field_0)] and 2 > -1 / balanceOf[address(stor26.field_0)]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor26.field_0)]:
        revert with 'NH{q', 18
    if 2 * balanceOf[address(stor26.field_0)] / balanceOf[address(stor26.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if arg1 and 2 * balanceOf[address(stor26.field_0)] > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if arg1 * 2 * balanceOf[address(stor26.field_0)] / arg1 != 2 * balanceOf[address(stor26.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 'NH{q', 18
    return (arg1 * 2 * balanceOf[address(stor26.field_0)] / totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 'NH{q', 17
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor26.field_0)]:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 'NH{q', 17
            if not arg2:
                revert with 'NH{q', 18
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
        if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if balanceOf[address(stor26.field_0)] and 2 > -1 / balanceOf[address(stor26.field_0)]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor26.field_0)]:
        revert with 'NH{q', 18
    if 2 * balanceOf[address(stor26.field_0)] / balanceOf[address(stor26.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if arg2 and 2 * balanceOf[address(stor26.field_0)] > -1 / arg2:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if arg2 * 2 * balanceOf[address(stor26.field_0)] / arg2 != 2 * balanceOf[address(stor26.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 'NH{q', 18
    return (arg2 * 2 * balanceOf[address(stor26.field_0)] / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor30:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance', 0
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
        if arg1 != pairAddress:
            if arg1 != stor3:
                if not stor10[address(arg1)]:
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 > _maxWalletSize:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the bag size.'
                if stor15[address(msg.sender)]:
                    revert with 0, 'Blacklisted.'
        if pairAddress != msg.sender:
            if arg1 != pairAddress:
                if not stor14[address(arg1)]:
                    if arg2 >= sub_71d0979b:
                        stor14[address(arg1)] = 1
                        referrer[address(arg1)] = msg.sender
                        emit Referred(arg1, msg.sender);
                if pairAddress != msg.sender:
                    if not stor30:
                        if swapEnabled:
                            if lastSwapTime > -sub_b5bb3466 - 1:
                                revert with 'NH{q', 17
                            if block.timestamp > lastSwapTime + sub_b5bb3466:
                                if balanceOf[address(this.address)] >= swapThreshold:
                                    stor30 = 1
                                    lastSwapTime = block.timestamp
                                    if not swapThreshold:
                                        if stor19 <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor19:
                                            revert with 'NH{q', 18
                                        if 0 / stor19 / 2 > swapThreshold:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if swapThreshold < 0 / stor19 / 2:
                                            revert with 'NH{q', 17
                                        mem[320] = this.address
                                        mem[352] = stor2
                                        mem[384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[388] = swapThreshold - (0 / stor19 / 2)
                                        idx = 0
                                        s = 320
                                        t = 580
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args swapThreshold - (0 / stor19 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 'NH{q', 17
                                        if uint255(stor16.field_1) > stor19:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if stor19 < uint255(stor16.field_1):
                                            revert with 'NH{q', 17
                                        if stor19 - uint255(stor16.field_1) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor19 - uint255(stor16.field_1):
                                            revert with 'NH{q', 18
                                        if stor19 - uint255(stor16.field_1) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor19 - uint255(stor16.field_1):
                                            revert with 'NH{q', 18
                                        if 0 < 0 / stor19 - uint255(stor16.field_1) / 2:
                                            revert with 'NH{q', 17
                                        if -0 / stor19 - uint255(stor16.field_1) / 2 < 0 / stor19 - uint255(stor16.field_1):
                                            revert with 'NH{q', 17
                                        call stor23 with:
                                           value -(0 / stor19 - uint255(stor16.field_1) / 2) - (0 / stor19 - uint255(stor16.field_1)) wei
                                             gas 30000 wei
                                        if not ext_call.success:
                                            revert with 0, 'receiver rejected AVAX transfer'
                                        call stor24 with:
                                           value 0 / stor19 - uint255(stor16.field_1) wei
                                             gas 30000 wei
                                        if not ext_call.success:
                                            revert with 0, 'receiver rejected AVAX transfer'
                                        if 0 / stor19 / 2 > 0:
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / stor19 - uint255(stor16.field_1) / 2 wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, 0 / stor19), 0, 0, address(this.address), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            require ext_call.return_data[64] == ext_call.return_data[64]
                                            emit AutoLiquify(Mask(255, 1, 0 / stor19 - uint255(stor16.field_1)), 0 / stor19 / 2);
                                    else:
                                        if swapThreshold and uint256(stor16.field_0) > -1 / swapThreshold:
                                            revert with 'NH{q', 17
                                        if not swapThreshold:
                                            revert with 'NH{q', 18
                                        if swapThreshold * uint256(stor16.field_0) / swapThreshold != uint256(stor16.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if stor19 <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor19:
                                            revert with 'NH{q', 18
                                        if swapThreshold * uint256(stor16.field_0) / stor19 / 2 > swapThreshold:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if swapThreshold < swapThreshold * uint256(stor16.field_0) / stor19 / 2:
                                            revert with 'NH{q', 17
                                        mem[320] = this.address
                                        mem[352] = stor2
                                        mem[384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[388] = swapThreshold - (swapThreshold * uint256(stor16.field_0) / stor19 / 2)
                                        idx = 0
                                        s = 320
                                        t = 580
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args swapThreshold - (swapThreshold * uint256(stor16.field_0) / stor19 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 'NH{q', 17
                                        if uint255(stor16.field_1) > stor19:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if stor19 < uint255(stor16.field_1):
                                            revert with 'NH{q', 17
                                        if stor19 - uint255(stor16.field_1) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor19 - uint255(stor16.field_1):
                                            revert with 'NH{q', 18
                                        if stor19 - uint255(stor16.field_1) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor19 - uint255(stor16.field_1):
                                            revert with 'NH{q', 18
                                        if 0 < 0 / stor19 - uint255(stor16.field_1) / 2:
                                            revert with 'NH{q', 17
                                        if -0 / stor19 - uint255(stor16.field_1) / 2 < 0 / stor19 - uint255(stor16.field_1):
                                            revert with 'NH{q', 17
                                        call stor23 with:
                                           value -(0 / stor19 - uint255(stor16.field_1) / 2) - (0 / stor19 - uint255(stor16.field_1)) wei
                                             gas 30000 wei
                                        if not ext_call.success:
                                            revert with 0, 'receiver rejected AVAX transfer'
                                        call stor24 with:
                                           value 0 / stor19 - uint255(stor16.field_1) wei
                                             gas 30000 wei
                                        if not ext_call.success:
                                            revert with 0, 'receiver rejected AVAX transfer'
                                        if swapThreshold * uint256(stor16.field_0) / stor19 / 2 > 0:
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / stor19 - uint255(stor16.field_1) / 2 wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, swapThreshold * uint256(stor16.field_0) / stor19), 0, 0, address(this.address), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            require ext_call.return_data[64] == ext_call.return_data[64]
                                            emit AutoLiquify(Mask(255, 1, 0 / stor19 - uint255(stor16.field_1)), swapThreshold * uint256(stor16.field_0) / stor19 / 2);
                                    stor30 = 0
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'Insufficient Balance', 0
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
                if stor15[address(msg.sender)]:
                    revert with 0, 'Blacklisted.'
                if stor10[address(msg.sender)]:
                    if pairAddress != msg.sender:
                        if not stor30:
                            if swapEnabled:
                                if lastSwapTime > -sub_b5bb3466 - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp > lastSwapTime + sub_b5bb3466:
                                    if balanceOf[address(this.address)] >= swapThreshold:
                                        stor30 = 1
                                        lastSwapTime = block.timestamp
                                        if not swapThreshold:
                                            if stor19 <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not stor19:
                                                revert with 'NH{q', 18
                                            if 0 / stor19 / 2 > swapThreshold:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if swapThreshold < 0 / stor19 / 2:
                                                revert with 'NH{q', 17
                                            mem[320] = this.address
                                            mem[352] = stor2
                                            mem[384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[388] = swapThreshold - (0 / stor19 / 2)
                                            idx = 0
                                            s = 320
                                            t = 580
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args swapThreshold - (0 / stor19 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 'NH{q', 17
                                            if uint255(stor16.field_1) > stor19:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if stor19 < uint255(stor16.field_1):
                                                revert with 'NH{q', 17
                                            if stor19 - uint255(stor16.field_1) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not stor19 - uint255(stor16.field_1):
                                                revert with 'NH{q', 18
                                            if stor19 - uint255(stor16.field_1) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not stor19 - uint255(stor16.field_1):
                                                revert with 'NH{q', 18
                                            if 0 < 0 / stor19 - uint255(stor16.field_1) / 2:
                                                revert with 'NH{q', 17
                                            if -0 / stor19 - uint255(stor16.field_1) / 2 < 0 / stor19 - uint255(stor16.field_1):
                                                revert with 'NH{q', 17
                                            call stor23 with:
                                               value -(0 / stor19 - uint255(stor16.field_1) / 2) - (0 / stor19 - uint255(stor16.field_1)) wei
                                                 gas 30000 wei
                                            if not ext_call.success:
                                                revert with 0, 'receiver rejected AVAX transfer'
                                            call stor24 with:
                                               value 0 / stor19 - uint255(stor16.field_1) wei
                                                 gas 30000 wei
                                            if not ext_call.success:
                                                revert with 0, 'receiver rejected AVAX transfer'
                                            if 0 / stor19 / 2 > 0:
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / stor19 - uint255(stor16.field_1) / 2 wei
                                                     gas gas_remaining wei
                                                    args address(this.address), Mask(255, 1, 0 / stor19), 0, 0, address(this.address), block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                require ext_call.return_data[64] == ext_call.return_data[64]
                                                emit AutoLiquify(Mask(255, 1, 0 / stor19 - uint255(stor16.field_1)), 0 / stor19 / 2);
                                        else:
                                            if swapThreshold and uint256(stor16.field_0) > -1 / swapThreshold:
                                                revert with 'NH{q', 17
                                            if not swapThreshold:
                                                revert with 'NH{q', 18
                                            if swapThreshold * uint256(stor16.field_0) / swapThreshold != uint256(stor16.field_0):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if stor19 <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not stor19:
                                                revert with 'NH{q', 18
                                            if swapThreshold * uint256(stor16.field_0) / stor19 / 2 > swapThreshold:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if swapThreshold < swapThreshold * uint256(stor16.field_0) / stor19 / 2:
                                                revert with 'NH{q', 17
                                            mem[320] = this.address
                                            mem[352] = stor2
                                            mem[384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[388] = swapThreshold - (swapThreshold * uint256(stor16.field_0) / stor19 / 2)
                                            idx = 0
                                            s = 320
                                            t = 580
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args swapThreshold - (swapThreshold * uint256(stor16.field_0) / stor19 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 'NH{q', 17
                                            if uint255(stor16.field_1) > stor19:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if stor19 < uint255(stor16.field_1):
                                                revert with 'NH{q', 17
                                            if stor19 - uint255(stor16.field_1) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not stor19 - uint255(stor16.field_1):
                                                revert with 'NH{q', 18
                                            if stor19 - uint255(stor16.field_1) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not stor19 - uint255(stor16.field_1):
                                                revert with 'NH{q', 18
                                            if 0 < 0 / stor19 - uint255(stor16.field_1) / 2:
                                                revert with 'NH{q', 17
                                            if -0 / stor19 - uint255(stor16.field_1) / 2 < 0 / stor19 - uint255(stor16.field_1):
                                                revert with 'NH{q', 17
                                            call stor23 with:
                                               value -(0 / stor19 - uint255(stor16.field_1) / 2) - (0 / stor19 - uint255(stor16.field_1)) wei
                                                 gas 30000 wei
                                            if not ext_call.success:
                                                revert with 0, 'receiver rejected AVAX transfer'
                                            call stor24 with:
                                               value 0 / stor19 - uint255(stor16.field_1) wei
                                                 gas 30000 wei
                                            if not ext_call.success:
                                                revert with 0, 'receiver rejected AVAX transfer'
                                            if swapThreshold * uint256(stor16.field_0) / stor19 / 2 > 0:
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / stor19 - uint255(stor16.field_1) / 2 wei
                                                     gas gas_remaining wei
                                                    args address(this.address), Mask(255, 1, swapThreshold * uint256(stor16.field_0) / stor19), 0, 0, address(this.address), block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                require ext_call.return_data[64] == ext_call.return_data[64]
                                                emit AutoLiquify(Mask(255, 1, 0 / stor19 - uint255(stor16.field_1)), swapThreshold * uint256(stor16.field_0) / stor19 / 2);
                                        stor30 = 0
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance', 0
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
                        if stor20 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor20:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] > -(0 / stor20) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] + (0 / stor20) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += 0 / stor20
                        emit Transfer((0 / stor20), msg.sender, this.address);
                        if 0 / stor20 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0 / stor20:
                            revert with 'NH{q', 17
                        if pairAddress != msg.sender:
                            if not stor30:
                                if swapEnabled:
                                    if lastSwapTime > -sub_b5bb3466 - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp > lastSwapTime + sub_b5bb3466:
                                        if balanceOf[address(this.address)] >= swapThreshold:
                                            stor30 = 1
                                            lastSwapTime = block.timestamp
                                            if not swapThreshold:
                                                if stor19 <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if not stor19:
                                                    revert with 'NH{q', 18
                                                if 0 / stor19 / 2 > swapThreshold:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if swapThreshold < 0 / stor19 / 2:
                                                    revert with 'NH{q', 17
                                                mem[448] = this.address
                                                mem[480] = stor2
                                                mem[512] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[516] = swapThreshold - (0 / stor19 / 2)
                                                idx = 0
                                                s = 448
                                                t = 708
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args swapThreshold - (0 / stor19 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[708 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 'NH{q', 17
                                                if uint255(stor16.field_1) > stor19:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if stor19 < uint255(stor16.field_1):
                                                    revert with 'NH{q', 17
                                                if stor19 - uint255(stor16.field_1) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if not stor19 - uint255(stor16.field_1):
                                                    revert with 'NH{q', 18
                                                if stor19 - uint255(stor16.field_1) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if not stor19 - uint255(stor16.field_1):
                                                    revert with 'NH{q', 18
                                                if 0 < 0 / stor19 - uint255(stor16.field_1) / 2:
                                                    revert with 'NH{q', 17
                                                if -0 / stor19 - uint255(stor16.field_1) / 2 < 0 / stor19 - uint255(stor16.field_1):
                                                    revert with 'NH{q', 17
                                                call stor23 with:
                                                   value -(0 / stor19 - uint255(stor16.field_1) / 2) - (0 / stor19 - uint255(stor16.field_1)) wei
                                                     gas 30000 wei
                                                if not ext_call.success:
                                                    revert with 0, 'receiver rejected AVAX transfer'
                                                call stor24 with:
                                                   value 0 / stor19 - uint255(stor16.field_1) wei
                                                     gas 30000 wei
                                                if not ext_call.success:
                                                    revert with 0, 'receiver rejected AVAX transfer'
                                                if 0 / stor19 / 2 > 0:
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / stor19 - uint255(stor16.field_1) / 2 wei
                                                         gas gas_remaining wei
                                                        args address(this.address), Mask(255, 1, 0 / stor19), 0, 0, address(this.address), block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                                    emit AutoLiquify(Mask(255, 1, 0 / stor19 - uint255(stor16.field_1)), 0 / stor19 / 2);
                                            else:
                                                if swapThreshold and uint256(stor16.field_0) > -1 / swapThreshold:
                                                    revert with 'NH{q', 17
                                                if not swapThreshold:
                                                    revert with 'NH{q', 18
                                                if swapThreshold * uint256(stor16.field_0) / swapThreshold != uint256(stor16.field_0):
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor19 <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if not stor19:
                                                    revert with 'NH{q', 18
                                                if swapThreshold * uint256(stor16.field_0) / stor19 / 2 > swapThreshold:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if swapThreshold < swapThreshold * uint256(stor16.field_0) / stor19 / 2:
                                                    revert with 'NH{q', 17
                                                mem[448] = this.address
                                                mem[480] = stor2
                                                mem[512] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[516] = swapThreshold - (swapThreshold * uint256(stor16.field_0) / stor19 / 2)
                                                idx = 0
                                                s = 448
                                                t = 708
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args swapThreshold - (swapThreshold * uint256(stor16.field_0) / stor19 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[708 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 'NH{q', 17
                                                if uint255(stor16.field_1) > stor19:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if stor19 < uint255(stor16.field_1):
                                                    revert with 'NH{q', 17
                                                if stor19 - uint255(stor16.field_1) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if not stor19 - uint255(stor16.field_1):
                                                    revert with 'NH{q', 18
                                                if stor19 - uint255(stor16.field_1) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if not stor19 - uint255(stor16.field_1):
                                                    revert with 'NH{q', 18
                                                if 0 < 0 / stor19 - uint255(stor16.field_1) / 2:
                                                    revert with 'NH{q', 17
                                                if -0 / stor19 - uint255(stor16.field_1) / 2 < 0 / stor19 - uint255(stor16.field_1):
                                                    revert with 'NH{q', 17
                                                call stor23 with:
                                                   value -(0 / stor19 - uint255(stor16.field_1) / 2) - (0 / stor19 - uint255(stor16.field_1)) wei
                                                     gas 30000 wei
                                                if not ext_call.success:
                                                    revert with 0, 'receiver rejected AVAX transfer'
                                                call stor24 with:
                                                   value 0 / stor19 - uint255(stor16.field_1) wei
                                                     gas 30000 wei
                                                if not ext_call.success:
                                                    revert with 0, 'receiver rejected AVAX transfer'
                                                if swapThreshold * uint256(stor16.field_0) / stor19 / 2 > 0:
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / stor19 - uint255(stor16.field_1) / 2 wei
                                                         gas gas_remaining wei
                                                        args address(this.address), Mask(255, 1, swapThreshold * uint256(stor16.field_0) / stor19), 0, 0, address(this.address), block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                                    emit AutoLiquify(Mask(255, 1, 0 / stor19 - uint255(stor16.field_1)), swapThreshold * uint256(stor16.field_0) / stor19 / 2);
                                            stor30 = 0
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Insufficient Balance', 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 + (0 / stor20) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 - (0 / stor20) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor20)
                        emit Transfer((arg2 - (0 / stor20)), msg.sender, arg1);
                    else:
                        if arg2 and stor19 > -1 / arg2:
                            revert with 'NH{q', 17
                        if not arg2:
                            revert with 'NH{q', 18
                        if arg2 * stor19 / arg2 != stor19:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if stor20 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor20:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] > -(arg2 * stor19 / stor20) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] + (arg2 * stor19 / stor20) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += arg2 * stor19 / stor20
                        emit Transfer((arg2 * stor19 / stor20), msg.sender, this.address);
                        if arg2 * stor19 / stor20 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < arg2 * stor19 / stor20:
                            revert with 'NH{q', 17
                        if pairAddress != msg.sender:
                            if not stor30:
                                if swapEnabled:
                                    if lastSwapTime > -sub_b5bb3466 - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp > lastSwapTime + sub_b5bb3466:
                                        if balanceOf[address(this.address)] >= swapThreshold:
                                            stor30 = 1
                                            lastSwapTime = block.timestamp
                                            if not swapThreshold:
                                                if stor19 <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if not stor19:
                                                    revert with 'NH{q', 18
                                                if 0 / stor19 / 2 > swapThreshold:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if swapThreshold < 0 / stor19 / 2:
                                                    revert with 'NH{q', 17
                                                mem[448] = this.address
                                                mem[480] = stor2
                                                mem[512] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[516] = swapThreshold - (0 / stor19 / 2)
                                                idx = 0
                                                s = 448
                                                t = 708
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args swapThreshold - (0 / stor19 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[708 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 'NH{q', 17
                                                if uint255(stor16.field_1) > stor19:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if stor19 < uint255(stor16.field_1):
                                                    revert with 'NH{q', 17
                                                if stor19 - uint255(stor16.field_1) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if not stor19 - uint255(stor16.field_1):
                                                    revert with 'NH{q', 18
                                                if stor19 - uint255(stor16.field_1) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if not stor19 - uint255(stor16.field_1):
                                                    revert with 'NH{q', 18
                                                if 0 < 0 / stor19 - uint255(stor16.field_1) / 2:
                                                    revert with 'NH{q', 17
                                                if -0 / stor19 - uint255(stor16.field_1) / 2 < 0 / stor19 - uint255(stor16.field_1):
                                                    revert with 'NH{q', 17
                                                call stor23 with:
                                                   value -(0 / stor19 - uint255(stor16.field_1) / 2) - (0 / stor19 - uint255(stor16.field_1)) wei
                                                     gas 30000 wei
                                                if not ext_call.success:
                                                    revert with 0, 'receiver rejected AVAX transfer'
                                                call stor24 with:
                                                   value 0 / stor19 - uint255(stor16.field_1) wei
                                                     gas 30000 wei
                                                if not ext_call.success:
                                                    revert with 0, 'receiver rejected AVAX transfer'
                                                if 0 / stor19 / 2 > 0:
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / stor19 - uint255(stor16.field_1) / 2 wei
                                                         gas gas_remaining wei
                                                        args address(this.address), Mask(255, 1, 0 / stor19), 0, 0, address(this.address), block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                                    emit AutoLiquify(Mask(255, 1, 0 / stor19 - uint255(stor16.field_1)), 0 / stor19 / 2);
                                            else:
                                                if swapThreshold and uint256(stor16.field_0) > -1 / swapThreshold:
                                                    revert with 'NH{q', 17
                                                if not swapThreshold:
                                                    revert with 'NH{q', 18
                                                if swapThreshold * uint256(stor16.field_0) / swapThreshold != uint256(stor16.field_0):
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor19 <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if not stor19:
                                                    revert with 'NH{q', 18
                                                if swapThreshold * uint256(stor16.field_0) / stor19 / 2 > swapThreshold:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if swapThreshold < swapThreshold * uint256(stor16.field_0) / stor19 / 2:
                                                    revert with 'NH{q', 17
                                                mem[448] = this.address
                                                mem[480] = stor2
                                                mem[512] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[516] = swapThreshold - (swapThreshold * uint256(stor16.field_0) / stor19 / 2)
                                                idx = 0
                                                s = 448
                                                t = 708
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args swapThreshold - (swapThreshold * uint256(stor16.field_0) / stor19 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[708 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 'NH{q', 17
                                                if uint255(stor16.field_1) > stor19:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if stor19 < uint255(stor16.field_1):
                                                    revert with 'NH{q', 17
                                                if stor19 - uint255(stor16.field_1) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if not stor19 - uint255(stor16.field_1):
                                                    revert with 'NH{q', 18
                                                if stor19 - uint255(stor16.field_1) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if not stor19 - uint255(stor16.field_1):
                                                    revert with 'NH{q', 18
                                                if 0 < 0 / stor19 - uint255(stor16.field_1) / 2:
                                                    revert with 'NH{q', 17
                                                if -0 / stor19 - uint255(stor16.field_1) / 2 < 0 / stor19 - uint255(stor16.field_1):
                                                    revert with 'NH{q', 17
                                                call stor23 with:
                                                   value -(0 / stor19 - uint255(stor16.field_1) / 2) - (0 / stor19 - uint255(stor16.field_1)) wei
                                                     gas 30000 wei
                                                if not ext_call.success:
                                                    revert with 0, 'receiver rejected AVAX transfer'
                                                call stor24 with:
                                                   value 0 / stor19 - uint255(stor16.field_1) wei
                                                     gas 30000 wei
                                                if not ext_call.success:
                                                    revert with 0, 'receiver rejected AVAX transfer'
                                                if swapThreshold * uint256(stor16.field_0) / stor19 / 2 > 0:
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / stor19 - uint255(stor16.field_1) / 2 wei
                                                         gas gas_remaining wei
                                                        args address(this.address), Mask(255, 1, swapThreshold * uint256(stor16.field_0) / stor19), 0, 0, address(this.address), block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                                    emit AutoLiquify(Mask(255, 1, 0 / stor19 - uint255(stor16.field_1)), swapThreshold * uint256(stor16.field_0) / stor19 / 2);
                                            stor30 = 0
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Insufficient Balance', 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor19 / stor20) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor19 / stor20) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor19 / stor20)
                        emit Transfer((arg2 - (arg2 * stor19 / stor20)), msg.sender, arg1);
        else:
            if stor10[address(arg1)]:
                if pairAddress != msg.sender:
                    if not stor30:
                        if swapEnabled:
                            if lastSwapTime > -sub_b5bb3466 - 1:
                                revert with 'NH{q', 17
                            if block.timestamp > lastSwapTime + sub_b5bb3466:
                                if balanceOf[address(this.address)] >= swapThreshold:
                                    stor30 = 1
                                    lastSwapTime = block.timestamp
                                    if not swapThreshold:
                                        if stor19 <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor19:
                                            revert with 'NH{q', 18
                                        if 0 / stor19 / 2 > swapThreshold:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if swapThreshold < 0 / stor19 / 2:
                                            revert with 'NH{q', 17
                                        mem[320] = this.address
                                        mem[352] = stor2
                                        mem[384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[388] = swapThreshold - (0 / stor19 / 2)
                                        idx = 0
                                        s = 320
                                        t = 580
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args swapThreshold - (0 / stor19 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 'NH{q', 17
                                        if uint255(stor16.field_1) > stor19:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if stor19 < uint255(stor16.field_1):
                                            revert with 'NH{q', 17
                                        if stor19 - uint255(stor16.field_1) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor19 - uint255(stor16.field_1):
                                            revert with 'NH{q', 18
                                        if stor19 - uint255(stor16.field_1) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor19 - uint255(stor16.field_1):
                                            revert with 'NH{q', 18
                                        if 0 < 0 / stor19 - uint255(stor16.field_1) / 2:
                                            revert with 'NH{q', 17
                                        if -0 / stor19 - uint255(stor16.field_1) / 2 < 0 / stor19 - uint255(stor16.field_1):
                                            revert with 'NH{q', 17
                                        call stor23 with:
                                           value -(0 / stor19 - uint255(stor16.field_1) / 2) - (0 / stor19 - uint255(stor16.field_1)) wei
                                             gas 30000 wei
                                        if not ext_call.success:
                                            revert with 0, 'receiver rejected AVAX transfer'
                                        call stor24 with:
                                           value 0 / stor19 - uint255(stor16.field_1) wei
                                             gas 30000 wei
                                        if not ext_call.success:
                                            revert with 0, 'receiver rejected AVAX transfer'
                                        if 0 / stor19 / 2 > 0:
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / stor19 - uint255(stor16.field_1) / 2 wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, 0 / stor19), 0, 0, address(this.address), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            require ext_call.return_data[64] == ext_call.return_data[64]
                                            emit AutoLiquify(Mask(255, 1, 0 / stor19 - uint255(stor16.field_1)), 0 / stor19 / 2);
                                    else:
                                        if swapThreshold and uint256(stor16.field_0) > -1 / swapThreshold:
                                            revert with 'NH{q', 17
                                        if not swapThreshold:
                                            revert with 'NH{q', 18
                                        if swapThreshold * uint256(stor16.field_0) / swapThreshold != uint256(stor16.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if stor19 <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor19:
                                            revert with 'NH{q', 18
                                        if swapThreshold * uint256(stor16.field_0) / stor19 / 2 > swapThreshold:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if swapThreshold < swapThreshold * uint256(stor16.field_0) / stor19 / 2:
                                            revert with 'NH{q', 17
                                        mem[320] = this.address
                                        mem[352] = stor2
                                        mem[384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[388] = swapThreshold - (swapThreshold * uint256(stor16.field_0) / stor19 / 2)
                                        idx = 0
                                        s = 320
                                        t = 580
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args swapThreshold - (swapThreshold * uint256(stor16.field_0) / stor19 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 'NH{q', 17
                                        if uint255(stor16.field_1) > stor19:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if stor19 < uint255(stor16.field_1):
                                            revert with 'NH{q', 17
                                        if stor19 - uint255(stor16.field_1) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor19 - uint255(stor16.field_1):
                                            revert with 'NH{q', 18
                                        if stor19 - uint255(stor16.field_1) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor19 - uint255(stor16.field_1):
                                            revert with 'NH{q', 18
                                        if 0 < 0 / stor19 - uint255(stor16.field_1) / 2:
                                            revert with 'NH{q', 17
                                        if -0 / stor19 - uint255(stor16.field_1) / 2 < 0 / stor19 - uint255(stor16.field_1):
                                            revert with 'NH{q', 17
                                        call stor23 with:
                                           value -(0 / stor19 - uint255(stor16.field_1) / 2) - (0 / stor19 - uint255(stor16.field_1)) wei
                                             gas 30000 wei
                                        if not ext_call.success:
                                            revert with 0, 'receiver rejected AVAX transfer'
                                        call stor24 with:
                                           value 0 / stor19 - uint255(stor16.field_1) wei
                                             gas 30000 wei
                                        if not ext_call.success:
                                            revert with 0, 'receiver rejected AVAX transfer'
                                        if swapThreshold * uint256(stor16.field_0) / stor19 / 2 > 0:
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / stor19 - uint255(stor16.field_1) / 2 wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, swapThreshold * uint256(stor16.field_0) / stor19), 0, 0, address(this.address), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            require ext_call.return_data[64] == ext_call.return_data[64]
                                            emit AutoLiquify(Mask(255, 1, 0 / stor19 - uint255(stor16.field_1)), swapThreshold * uint256(stor16.field_0) / stor19 / 2);
                                    stor30 = 0
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'Insufficient Balance', 0
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
                if not stor14[address(arg1)]:
                    revert with 0, 'Not referred'
                if stor21 and arg2 > -1 / stor21:
                    revert with 'NH{q', 17
                if not stor20:
                    revert with 'NH{q', 18
                if balanceOf[stor11[address(arg1)]] <= sub_5acbdedb:
                    if balanceOf[stor23] > -(stor21 * arg2 / stor20) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[stor23] + (stor21 * arg2 / stor20) < balanceOf[stor23]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor23] += stor21 * arg2 / stor20
                    emit ReferralBonus((stor21 * arg2 / stor20), stor23, arg1);
                else:
                    if balanceOf[stor11[address(arg1)]] > -(stor21 * arg2 / stor20) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[stor11[address(arg1)]] + (stor21 * arg2 / stor20) < balanceOf[stor11[address(arg1)]]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor11[address(arg1)]] += stor21 * arg2 / stor20
                    if totalRewards[stor11[address(arg1)]] > -(stor21 * arg2 / stor20) - 1:
                        revert with 'NH{q', 17
                    if totalRewards[stor11[address(arg1)]] + (stor21 * arg2 / stor20) < totalRewards[stor11[address(arg1)]]:
                        revert with 0, 'SafeMath: addition overflow'
                    totalRewards[stor11[address(arg1)]] += stor21 * arg2 / stor20
                    if balanceOf[address(arg1)] <= 10^9:
                        if sub_c08d52af[stor11[address(arg1)]] > -2:
                            revert with 'NH{q', 17
                        if sub_c08d52af[stor11[address(arg1)]] + 1 < sub_c08d52af[stor11[address(arg1)]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c08d52af[stor11[address(arg1)]]++
                    emit ReferralBonus((stor21 * arg2 / stor20), referrer[address(arg1)], arg1);
                if arg2 < stor21 * arg2 / stor20:
                    revert with 'NH{q', 17
                if pairAddress != msg.sender:
                    if not stor30:
                        if swapEnabled:
                            if lastSwapTime > -sub_b5bb3466 - 1:
                                revert with 'NH{q', 17
                            if block.timestamp > lastSwapTime + sub_b5bb3466:
                                if balanceOf[address(this.address)] >= swapThreshold:
                                    stor30 = 1
                                    lastSwapTime = block.timestamp
                                    if not swapThreshold:
                                        if stor19 <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor19:
                                            revert with 'NH{q', 18
                                        if 0 / stor19 / 2 > swapThreshold:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if swapThreshold < 0 / stor19 / 2:
                                            revert with 'NH{q', 17
                                        mem[320] = this.address
                                        mem[352] = stor2
                                        mem[384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[388] = swapThreshold - (0 / stor19 / 2)
                                        idx = 0
                                        s = 320
                                        t = 580
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args swapThreshold - (0 / stor19 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 'NH{q', 17
                                        if uint255(stor16.field_1) > stor19:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if stor19 < uint255(stor16.field_1):
                                            revert with 'NH{q', 17
                                        if stor19 - uint255(stor16.field_1) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor19 - uint255(stor16.field_1):
                                            revert with 'NH{q', 18
                                        if stor19 - uint255(stor16.field_1) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor19 - uint255(stor16.field_1):
                                            revert with 'NH{q', 18
                                        if 0 < 0 / stor19 - uint255(stor16.field_1) / 2:
                                            revert with 'NH{q', 17
                                        if -0 / stor19 - uint255(stor16.field_1) / 2 < 0 / stor19 - uint255(stor16.field_1):
                                            revert with 'NH{q', 17
                                        call stor23 with:
                                           value -(0 / stor19 - uint255(stor16.field_1) / 2) - (0 / stor19 - uint255(stor16.field_1)) wei
                                             gas 30000 wei
                                        if not ext_call.success:
                                            revert with 0, 'receiver rejected AVAX transfer'
                                        call stor24 with:
                                           value 0 / stor19 - uint255(stor16.field_1) wei
                                             gas 30000 wei
                                        if not ext_call.success:
                                            revert with 0, 'receiver rejected AVAX transfer'
                                        if 0 / stor19 / 2 > 0:
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / stor19 - uint255(stor16.field_1) / 2 wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, 0 / stor19), 0, 0, address(this.address), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            require ext_call.return_data[64] == ext_call.return_data[64]
                                            emit AutoLiquify(Mask(255, 1, 0 / stor19 - uint255(stor16.field_1)), 0 / stor19 / 2);
                                    else:
                                        if swapThreshold and uint256(stor16.field_0) > -1 / swapThreshold:
                                            revert with 'NH{q', 17
                                        if not swapThreshold:
                                            revert with 'NH{q', 18
                                        if swapThreshold * uint256(stor16.field_0) / swapThreshold != uint256(stor16.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if stor19 <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor19:
                                            revert with 'NH{q', 18
                                        if swapThreshold * uint256(stor16.field_0) / stor19 / 2 > swapThreshold:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if swapThreshold < swapThreshold * uint256(stor16.field_0) / stor19 / 2:
                                            revert with 'NH{q', 17
                                        mem[320] = this.address
                                        mem[352] = stor2
                                        mem[384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[388] = swapThreshold - (swapThreshold * uint256(stor16.field_0) / stor19 / 2)
                                        idx = 0
                                        s = 320
                                        t = 580
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args swapThreshold - (swapThreshold * uint256(stor16.field_0) / stor19 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 'NH{q', 17
                                        if uint255(stor16.field_1) > stor19:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if stor19 < uint255(stor16.field_1):
                                            revert with 'NH{q', 17
                                        if stor19 - uint255(stor16.field_1) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor19 - uint255(stor16.field_1):
                                            revert with 'NH{q', 18
                                        if stor19 - uint255(stor16.field_1) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor19 - uint255(stor16.field_1):
                                            revert with 'NH{q', 18
                                        if 0 < 0 / stor19 - uint255(stor16.field_1) / 2:
                                            revert with 'NH{q', 17
                                        if -0 / stor19 - uint255(stor16.field_1) / 2 < 0 / stor19 - uint255(stor16.field_1):
                                            revert with 'NH{q', 17
                                        call stor23 with:
                                           value -(0 / stor19 - uint255(stor16.field_1) / 2) - (0 / stor19 - uint255(stor16.field_1)) wei
                                             gas 30000 wei
                                        if not ext_call.success:
                                            revert with 0, 'receiver rejected AVAX transfer'
                                        call stor24 with:
                                           value 0 / stor19 - uint255(stor16.field_1) wei
                                             gas 30000 wei
                                        if not ext_call.success:
                                            revert with 0, 'receiver rejected AVAX transfer'
                                        if swapThreshold * uint256(stor16.field_0) / stor19 / 2 > 0:
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / stor19 - uint255(stor16.field_1) / 2 wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, swapThreshold * uint256(stor16.field_0) / stor19), 0, 0, address(this.address), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            require ext_call.return_data[64] == ext_call.return_data[64]
                                            emit AutoLiquify(Mask(255, 1, 0 / stor19 - uint255(stor16.field_1)), swapThreshold * uint256(stor16.field_0) / stor19 / 2);
                                    stor30 = 0
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'Insufficient Balance', 0
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 + (stor21 * arg2 / stor20) - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 - (stor21 * arg2 / stor20) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (stor21 * arg2 / stor20)
                emit Transfer((arg2 - (stor21 * arg2 / stor20)), msg.sender, arg1);
    return 1
}



}
