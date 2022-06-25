contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = 'Viravax', 0

const decimals = 4

const symbol = 'VAX', 0


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
mapping of uint8 stor12;
uint256 stor13; offset 1
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 sub_5acbdedb;
address stor20;
address stor21;
address routerAddress;
uint8 swapEnabled; offset 160
uint128 stor23; offset 160
address pairAddress;
uint256 swapThreshold;
uint8 stor25;

function swapThreshold() {
    return swapThreshold
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

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function isReferred(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
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
    stor18 = arg1
}

function sub_ea23a2b8(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 <= 10000
    sub_71d0979b = arg1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
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
    stor20 = arg1
    stor21 = arg2
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
    Mask(96, 0, stor23.field_160) = Mask(96, 0, arg1)
    swapThreshold = arg2
}

function manualSend() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call stor20 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    uint256(stor13.field_0) = arg1
    stor14 = arg2
    stor15 = arg3
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor16 = arg1 + arg2 + arg3
    stor17 = arg4
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
    call stor20 with:
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
    if not balanceOf[address(stor23.field_0)]:
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
    if balanceOf[address(stor23.field_0)] and 2 > -1 / balanceOf[address(stor23.field_0)]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor23.field_0)]:
        revert with 'NH{q', 18
    if 2 * balanceOf[address(stor23.field_0)] / balanceOf[address(stor23.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if arg1 and 2 * balanceOf[address(stor23.field_0)] > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if arg1 * 2 * balanceOf[address(stor23.field_0)] / arg1 != 2 * balanceOf[address(stor23.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 'NH{q', 18
    return (arg1 * 2 * balanceOf[address(stor23.field_0)] / totalSupply - balanceOf[stor3] - balanceOf[stor4])
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
    if not balanceOf[address(stor23.field_0)]:
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
    if balanceOf[address(stor23.field_0)] and 2 > -1 / balanceOf[address(stor23.field_0)]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor23.field_0)]:
        revert with 'NH{q', 18
    if 2 * balanceOf[address(stor23.field_0)] / balanceOf[address(stor23.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if arg2 and 2 * balanceOf[address(stor23.field_0)] > -1 / arg2:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if arg2 * 2 * balanceOf[address(stor23.field_0)] / arg2 != 2 * balanceOf[address(stor23.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 'NH{q', 18
    return (arg2 * 2 * balanceOf[address(stor23.field_0)] / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor25:
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
        if msg.sender == pairAddress:
            if stor10[address(arg1)]:
                if pairAddress != msg.sender:
                    if not stor25:
                        if swapEnabled:
                            if balanceOf[address(this.address)] >= swapThreshold:
                                stor25 = 1
                                if not balanceOf[address(this.address)]:
                                    if stor16 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor16:
                                        revert with 'NH{q', 18
                                    if 0 / stor16 / 2 > balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(this.address)] < 0 / stor16 / 2:
                                        revert with 'NH{q', 17
                                    mem[320] = this.address
                                    mem[352] = stor2
                                    mem[384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[388] = balanceOf[address(this.address)] - (0 / stor16 / 2)
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
                                        args balanceOf[address(this.address)] - (0 / stor16 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 'NH{q', 17
                                    if uint255(stor13.field_1) > stor16:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if stor16 < uint255(stor13.field_1):
                                        revert with 'NH{q', 17
                                    if stor16 - uint255(stor13.field_1) <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor16 - uint255(stor13.field_1):
                                        revert with 'NH{q', 18
                                    if stor16 - uint255(stor13.field_1) <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor16 - uint255(stor13.field_1):
                                        revert with 'NH{q', 18
                                    if 0 < 0 / stor16 - uint255(stor13.field_1) / 2:
                                        revert with 'NH{q', 17
                                    if -0 / stor16 - uint255(stor13.field_1) / 2 < 0 / stor16 - uint255(stor13.field_1):
                                        revert with 'NH{q', 17
                                    call stor20 with:
                                       value -(0 / stor16 - uint255(stor13.field_1) / 2) - (0 / stor16 - uint255(stor13.field_1)) wei
                                         gas 30000 wei
                                    if not ext_call.success:
                                        revert with 0, 'receiver rejected AVAX transfer'
                                    call stor21 with:
                                       value 0 / stor16 - uint255(stor13.field_1) wei
                                         gas 30000 wei
                                    if not ext_call.success:
                                        revert with 0, 'receiver rejected AVAX transfer'
                                    if 0 / stor16 / 2 > 0:
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / stor16 - uint255(stor13.field_1) / 2 wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, 0 / stor16), 0, 0, address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        emit AutoLiquify(Mask(255, 1, 0 / stor16 - uint255(stor13.field_1)), 0 / stor16 / 2);
                                else:
                                    if balanceOf[address(this.address)] and uint256(stor13.field_0) > -1 / balanceOf[address(this.address)]:
                                        revert with 'NH{q', 17
                                    if not balanceOf[address(this.address)]:
                                        revert with 'NH{q', 18
                                    if balanceOf[address(this.address)] * uint256(stor13.field_0) / balanceOf[address(this.address)] != uint256(stor13.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if stor16 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor16:
                                        revert with 'NH{q', 18
                                    if balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2 > balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2:
                                        revert with 'NH{q', 17
                                    mem[320] = this.address
                                    mem[352] = stor2
                                    mem[384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[388] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2)
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
                                        args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 'NH{q', 17
                                    if uint255(stor13.field_1) > stor16:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if stor16 < uint255(stor13.field_1):
                                        revert with 'NH{q', 17
                                    if stor16 - uint255(stor13.field_1) <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor16 - uint255(stor13.field_1):
                                        revert with 'NH{q', 18
                                    if stor16 - uint255(stor13.field_1) <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor16 - uint255(stor13.field_1):
                                        revert with 'NH{q', 18
                                    if 0 < 0 / stor16 - uint255(stor13.field_1) / 2:
                                        revert with 'NH{q', 17
                                    if -0 / stor16 - uint255(stor13.field_1) / 2 < 0 / stor16 - uint255(stor13.field_1):
                                        revert with 'NH{q', 17
                                    call stor20 with:
                                       value -(0 / stor16 - uint255(stor13.field_1) / 2) - (0 / stor16 - uint255(stor13.field_1)) wei
                                         gas 30000 wei
                                    if not ext_call.success:
                                        revert with 0, 'receiver rejected AVAX transfer'
                                    call stor21 with:
                                       value 0 / stor16 - uint255(stor13.field_1) wei
                                         gas 30000 wei
                                    if not ext_call.success:
                                        revert with 0, 'receiver rejected AVAX transfer'
                                    if balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2 > 0:
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / stor16 - uint255(stor13.field_1) / 2 wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16), 0, 0, address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        emit AutoLiquify(Mask(255, 1, 0 / stor16 - uint255(stor13.field_1)), balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2);
                                stor25 = 0
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
                if not stor12[address(arg1)]:
                    revert with 0, 'Not referred'
                if stor18 and arg2 > -1 / stor18:
                    revert with 'NH{q', 17
                if not stor17:
                    revert with 'NH{q', 18
                if balanceOf[stor11[address(arg1)]] <= sub_5acbdedb:
                    if balanceOf[stor20] > -(stor18 * arg2 / stor17) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[stor20] + (stor18 * arg2 / stor17) < balanceOf[stor20]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor20] += stor18 * arg2 / stor17
                    emit ReferralBonus((stor18 * arg2 / stor17), stor20, arg1);
                else:
                    if balanceOf[stor11[address(arg1)]] > -(stor18 * arg2 / stor17) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[stor11[address(arg1)]] + (stor18 * arg2 / stor17) < balanceOf[stor11[address(arg1)]]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor11[address(arg1)]] += stor18 * arg2 / stor17
                    emit ReferralBonus((stor18 * arg2 / stor17), referrer[address(arg1)], arg1);
                if arg2 < stor18 * arg2 / stor17:
                    revert with 'NH{q', 17
                if pairAddress != msg.sender:
                    if not stor25:
                        if swapEnabled:
                            if balanceOf[address(this.address)] >= swapThreshold:
                                stor25 = 1
                                if not balanceOf[address(this.address)]:
                                    if stor16 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor16:
                                        revert with 'NH{q', 18
                                    if 0 / stor16 / 2 > balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(this.address)] < 0 / stor16 / 2:
                                        revert with 'NH{q', 17
                                    mem[320] = this.address
                                    mem[352] = stor2
                                    mem[384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[388] = balanceOf[address(this.address)] - (0 / stor16 / 2)
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
                                        args balanceOf[address(this.address)] - (0 / stor16 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 'NH{q', 17
                                    if uint255(stor13.field_1) > stor16:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if stor16 < uint255(stor13.field_1):
                                        revert with 'NH{q', 17
                                    if stor16 - uint255(stor13.field_1) <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor16 - uint255(stor13.field_1):
                                        revert with 'NH{q', 18
                                    if stor16 - uint255(stor13.field_1) <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor16 - uint255(stor13.field_1):
                                        revert with 'NH{q', 18
                                    if 0 < 0 / stor16 - uint255(stor13.field_1) / 2:
                                        revert with 'NH{q', 17
                                    if -0 / stor16 - uint255(stor13.field_1) / 2 < 0 / stor16 - uint255(stor13.field_1):
                                        revert with 'NH{q', 17
                                    call stor20 with:
                                       value -(0 / stor16 - uint255(stor13.field_1) / 2) - (0 / stor16 - uint255(stor13.field_1)) wei
                                         gas 30000 wei
                                    if not ext_call.success:
                                        revert with 0, 'receiver rejected AVAX transfer'
                                    call stor21 with:
                                       value 0 / stor16 - uint255(stor13.field_1) wei
                                         gas 30000 wei
                                    if not ext_call.success:
                                        revert with 0, 'receiver rejected AVAX transfer'
                                    if 0 / stor16 / 2 > 0:
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / stor16 - uint255(stor13.field_1) / 2 wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, 0 / stor16), 0, 0, address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        emit AutoLiquify(Mask(255, 1, 0 / stor16 - uint255(stor13.field_1)), 0 / stor16 / 2);
                                else:
                                    if balanceOf[address(this.address)] and uint256(stor13.field_0) > -1 / balanceOf[address(this.address)]:
                                        revert with 'NH{q', 17
                                    if not balanceOf[address(this.address)]:
                                        revert with 'NH{q', 18
                                    if balanceOf[address(this.address)] * uint256(stor13.field_0) / balanceOf[address(this.address)] != uint256(stor13.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if stor16 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor16:
                                        revert with 'NH{q', 18
                                    if balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2 > balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2:
                                        revert with 'NH{q', 17
                                    mem[320] = this.address
                                    mem[352] = stor2
                                    mem[384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[388] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2)
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
                                        args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 'NH{q', 17
                                    if uint255(stor13.field_1) > stor16:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if stor16 < uint255(stor13.field_1):
                                        revert with 'NH{q', 17
                                    if stor16 - uint255(stor13.field_1) <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor16 - uint255(stor13.field_1):
                                        revert with 'NH{q', 18
                                    if stor16 - uint255(stor13.field_1) <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor16 - uint255(stor13.field_1):
                                        revert with 'NH{q', 18
                                    if 0 < 0 / stor16 - uint255(stor13.field_1) / 2:
                                        revert with 'NH{q', 17
                                    if -0 / stor16 - uint255(stor13.field_1) / 2 < 0 / stor16 - uint255(stor13.field_1):
                                        revert with 'NH{q', 17
                                    call stor20 with:
                                       value -(0 / stor16 - uint255(stor13.field_1) / 2) - (0 / stor16 - uint255(stor13.field_1)) wei
                                         gas 30000 wei
                                    if not ext_call.success:
                                        revert with 0, 'receiver rejected AVAX transfer'
                                    call stor21 with:
                                       value 0 / stor16 - uint255(stor13.field_1) wei
                                         gas 30000 wei
                                    if not ext_call.success:
                                        revert with 0, 'receiver rejected AVAX transfer'
                                    if balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2 > 0:
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / stor16 - uint255(stor13.field_1) / 2 wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16), 0, 0, address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        emit AutoLiquify(Mask(255, 1, 0 / stor16 - uint255(stor13.field_1)), balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2);
                                stor25 = 0
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'Insufficient Balance', 0
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 + (stor18 * arg2 / stor17) - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 - (stor18 * arg2 / stor17) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (stor18 * arg2 / stor17)
                emit Transfer((arg2 - (stor18 * arg2 / stor17)), msg.sender, arg1);
        else:
            if arg1 != pairAddress:
                if not stor12[address(arg1)]:
                    if arg2 >= sub_71d0979b:
                        stor12[address(arg1)] = 1
                        referrer[address(arg1)] = msg.sender
                        emit Referred(arg1, msg.sender);
                if pairAddress != msg.sender:
                    if not stor25:
                        if swapEnabled:
                            if balanceOf[address(this.address)] >= swapThreshold:
                                stor25 = 1
                                if not balanceOf[address(this.address)]:
                                    if stor16 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor16:
                                        revert with 'NH{q', 18
                                    if 0 / stor16 / 2 > balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(this.address)] < 0 / stor16 / 2:
                                        revert with 'NH{q', 17
                                    mem[320] = this.address
                                    mem[352] = stor2
                                    mem[384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[388] = balanceOf[address(this.address)] - (0 / stor16 / 2)
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
                                        args balanceOf[address(this.address)] - (0 / stor16 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 'NH{q', 17
                                    if uint255(stor13.field_1) > stor16:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if stor16 < uint255(stor13.field_1):
                                        revert with 'NH{q', 17
                                    if stor16 - uint255(stor13.field_1) <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor16 - uint255(stor13.field_1):
                                        revert with 'NH{q', 18
                                    if stor16 - uint255(stor13.field_1) <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor16 - uint255(stor13.field_1):
                                        revert with 'NH{q', 18
                                    if 0 < 0 / stor16 - uint255(stor13.field_1) / 2:
                                        revert with 'NH{q', 17
                                    if -0 / stor16 - uint255(stor13.field_1) / 2 < 0 / stor16 - uint255(stor13.field_1):
                                        revert with 'NH{q', 17
                                    call stor20 with:
                                       value -(0 / stor16 - uint255(stor13.field_1) / 2) - (0 / stor16 - uint255(stor13.field_1)) wei
                                         gas 30000 wei
                                    if not ext_call.success:
                                        revert with 0, 'receiver rejected AVAX transfer'
                                    call stor21 with:
                                       value 0 / stor16 - uint255(stor13.field_1) wei
                                         gas 30000 wei
                                    if not ext_call.success:
                                        revert with 0, 'receiver rejected AVAX transfer'
                                    if 0 / stor16 / 2 > 0:
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / stor16 - uint255(stor13.field_1) / 2 wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, 0 / stor16), 0, 0, address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        emit AutoLiquify(Mask(255, 1, 0 / stor16 - uint255(stor13.field_1)), 0 / stor16 / 2);
                                else:
                                    if balanceOf[address(this.address)] and uint256(stor13.field_0) > -1 / balanceOf[address(this.address)]:
                                        revert with 'NH{q', 17
                                    if not balanceOf[address(this.address)]:
                                        revert with 'NH{q', 18
                                    if balanceOf[address(this.address)] * uint256(stor13.field_0) / balanceOf[address(this.address)] != uint256(stor13.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if stor16 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor16:
                                        revert with 'NH{q', 18
                                    if balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2 > balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2:
                                        revert with 'NH{q', 17
                                    mem[320] = this.address
                                    mem[352] = stor2
                                    mem[384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[388] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2)
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
                                        args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 'NH{q', 17
                                    if uint255(stor13.field_1) > stor16:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if stor16 < uint255(stor13.field_1):
                                        revert with 'NH{q', 17
                                    if stor16 - uint255(stor13.field_1) <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor16 - uint255(stor13.field_1):
                                        revert with 'NH{q', 18
                                    if stor16 - uint255(stor13.field_1) <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not stor16 - uint255(stor13.field_1):
                                        revert with 'NH{q', 18
                                    if 0 < 0 / stor16 - uint255(stor13.field_1) / 2:
                                        revert with 'NH{q', 17
                                    if -0 / stor16 - uint255(stor13.field_1) / 2 < 0 / stor16 - uint255(stor13.field_1):
                                        revert with 'NH{q', 17
                                    call stor20 with:
                                       value -(0 / stor16 - uint255(stor13.field_1) / 2) - (0 / stor16 - uint255(stor13.field_1)) wei
                                         gas 30000 wei
                                    if not ext_call.success:
                                        revert with 0, 'receiver rejected AVAX transfer'
                                    call stor21 with:
                                       value 0 / stor16 - uint255(stor13.field_1) wei
                                         gas 30000 wei
                                    if not ext_call.success:
                                        revert with 0, 'receiver rejected AVAX transfer'
                                    if balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2 > 0:
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / stor16 - uint255(stor13.field_1) / 2 wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16), 0, 0, address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        emit AutoLiquify(Mask(255, 1, 0 / stor16 - uint255(stor13.field_1)), balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2);
                                stor25 = 0
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
                if stor10[address(msg.sender)]:
                    if pairAddress != msg.sender:
                        if not stor25:
                            if swapEnabled:
                                if balanceOf[address(this.address)] >= swapThreshold:
                                    stor25 = 1
                                    if not balanceOf[address(this.address)]:
                                        if stor16 <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor16:
                                            revert with 'NH{q', 18
                                        if 0 / stor16 / 2 > balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if balanceOf[address(this.address)] < 0 / stor16 / 2:
                                            revert with 'NH{q', 17
                                        mem[320] = this.address
                                        mem[352] = stor2
                                        mem[384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[388] = balanceOf[address(this.address)] - (0 / stor16 / 2)
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
                                            args balanceOf[address(this.address)] - (0 / stor16 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 'NH{q', 17
                                        if uint255(stor13.field_1) > stor16:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if stor16 < uint255(stor13.field_1):
                                            revert with 'NH{q', 17
                                        if stor16 - uint255(stor13.field_1) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor16 - uint255(stor13.field_1):
                                            revert with 'NH{q', 18
                                        if stor16 - uint255(stor13.field_1) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor16 - uint255(stor13.field_1):
                                            revert with 'NH{q', 18
                                        if 0 < 0 / stor16 - uint255(stor13.field_1) / 2:
                                            revert with 'NH{q', 17
                                        if -0 / stor16 - uint255(stor13.field_1) / 2 < 0 / stor16 - uint255(stor13.field_1):
                                            revert with 'NH{q', 17
                                        call stor20 with:
                                           value -(0 / stor16 - uint255(stor13.field_1) / 2) - (0 / stor16 - uint255(stor13.field_1)) wei
                                             gas 30000 wei
                                        if not ext_call.success:
                                            revert with 0, 'receiver rejected AVAX transfer'
                                        call stor21 with:
                                           value 0 / stor16 - uint255(stor13.field_1) wei
                                             gas 30000 wei
                                        if not ext_call.success:
                                            revert with 0, 'receiver rejected AVAX transfer'
                                        if 0 / stor16 / 2 > 0:
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / stor16 - uint255(stor13.field_1) / 2 wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, 0 / stor16), 0, 0, address(this.address), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            require ext_call.return_data[64] == ext_call.return_data[64]
                                            emit AutoLiquify(Mask(255, 1, 0 / stor16 - uint255(stor13.field_1)), 0 / stor16 / 2);
                                    else:
                                        if balanceOf[address(this.address)] and uint256(stor13.field_0) > -1 / balanceOf[address(this.address)]:
                                            revert with 'NH{q', 17
                                        if not balanceOf[address(this.address)]:
                                            revert with 'NH{q', 18
                                        if balanceOf[address(this.address)] * uint256(stor13.field_0) / balanceOf[address(this.address)] != uint256(stor13.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if stor16 <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor16:
                                            revert with 'NH{q', 18
                                        if balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2 > balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2:
                                            revert with 'NH{q', 17
                                        mem[320] = this.address
                                        mem[352] = stor2
                                        mem[384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[388] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2)
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
                                            args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 'NH{q', 17
                                        if uint255(stor13.field_1) > stor16:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if stor16 < uint255(stor13.field_1):
                                            revert with 'NH{q', 17
                                        if stor16 - uint255(stor13.field_1) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor16 - uint255(stor13.field_1):
                                            revert with 'NH{q', 18
                                        if stor16 - uint255(stor13.field_1) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not stor16 - uint255(stor13.field_1):
                                            revert with 'NH{q', 18
                                        if 0 < 0 / stor16 - uint255(stor13.field_1) / 2:
                                            revert with 'NH{q', 17
                                        if -0 / stor16 - uint255(stor13.field_1) / 2 < 0 / stor16 - uint255(stor13.field_1):
                                            revert with 'NH{q', 17
                                        call stor20 with:
                                           value -(0 / stor16 - uint255(stor13.field_1) / 2) - (0 / stor16 - uint255(stor13.field_1)) wei
                                             gas 30000 wei
                                        if not ext_call.success:
                                            revert with 0, 'receiver rejected AVAX transfer'
                                        call stor21 with:
                                           value 0 / stor16 - uint255(stor13.field_1) wei
                                             gas 30000 wei
                                        if not ext_call.success:
                                            revert with 0, 'receiver rejected AVAX transfer'
                                        if balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2 > 0:
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / stor16 - uint255(stor13.field_1) / 2 wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16), 0, 0, address(this.address), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            require ext_call.return_data[64] == ext_call.return_data[64]
                                            emit AutoLiquify(Mask(255, 1, 0 / stor16 - uint255(stor13.field_1)), balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2);
                                    stor25 = 0
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
                        if stor17 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor17:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] > -(0 / stor17) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] + (0 / stor17) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += 0 / stor17
                        emit Transfer((0 / stor17), msg.sender, this.address);
                        if 0 / stor17 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0 / stor17:
                            revert with 'NH{q', 17
                        if pairAddress != msg.sender:
                            if not stor25:
                                if swapEnabled:
                                    if balanceOf[address(this.address)] >= swapThreshold:
                                        stor25 = 1
                                        if not balanceOf[address(this.address)]:
                                            if stor16 <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not stor16:
                                                revert with 'NH{q', 18
                                            if 0 / stor16 / 2 > balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if balanceOf[address(this.address)] < 0 / stor16 / 2:
                                                revert with 'NH{q', 17
                                            mem[448] = this.address
                                            mem[480] = stor2
                                            mem[512] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[516] = balanceOf[address(this.address)] - (0 / stor16 / 2)
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
                                                args balanceOf[address(this.address)] - (0 / stor16 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[708 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 'NH{q', 17
                                            if uint255(stor13.field_1) > stor16:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if stor16 < uint255(stor13.field_1):
                                                revert with 'NH{q', 17
                                            if stor16 - uint255(stor13.field_1) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not stor16 - uint255(stor13.field_1):
                                                revert with 'NH{q', 18
                                            if stor16 - uint255(stor13.field_1) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not stor16 - uint255(stor13.field_1):
                                                revert with 'NH{q', 18
                                            if 0 < 0 / stor16 - uint255(stor13.field_1) / 2:
                                                revert with 'NH{q', 17
                                            if -0 / stor16 - uint255(stor13.field_1) / 2 < 0 / stor16 - uint255(stor13.field_1):
                                                revert with 'NH{q', 17
                                            call stor20 with:
                                               value -(0 / stor16 - uint255(stor13.field_1) / 2) - (0 / stor16 - uint255(stor13.field_1)) wei
                                                 gas 30000 wei
                                            if not ext_call.success:
                                                revert with 0, 'receiver rejected AVAX transfer'
                                            call stor21 with:
                                               value 0 / stor16 - uint255(stor13.field_1) wei
                                                 gas 30000 wei
                                            if not ext_call.success:
                                                revert with 0, 'receiver rejected AVAX transfer'
                                            if 0 / stor16 / 2 > 0:
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / stor16 - uint255(stor13.field_1) / 2 wei
                                                     gas gas_remaining wei
                                                    args address(this.address), Mask(255, 1, 0 / stor16), 0, 0, address(this.address), block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                require ext_call.return_data[64] == ext_call.return_data[64]
                                                emit AutoLiquify(Mask(255, 1, 0 / stor16 - uint255(stor13.field_1)), 0 / stor16 / 2);
                                        else:
                                            if balanceOf[address(this.address)] and uint256(stor13.field_0) > -1 / balanceOf[address(this.address)]:
                                                revert with 'NH{q', 17
                                            if not balanceOf[address(this.address)]:
                                                revert with 'NH{q', 18
                                            if balanceOf[address(this.address)] * uint256(stor13.field_0) / balanceOf[address(this.address)] != uint256(stor13.field_0):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if stor16 <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not stor16:
                                                revert with 'NH{q', 18
                                            if balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2 > balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2:
                                                revert with 'NH{q', 17
                                            mem[448] = this.address
                                            mem[480] = stor2
                                            mem[512] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[516] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2)
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
                                                args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[708 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 'NH{q', 17
                                            if uint255(stor13.field_1) > stor16:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if stor16 < uint255(stor13.field_1):
                                                revert with 'NH{q', 17
                                            if stor16 - uint255(stor13.field_1) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not stor16 - uint255(stor13.field_1):
                                                revert with 'NH{q', 18
                                            if stor16 - uint255(stor13.field_1) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not stor16 - uint255(stor13.field_1):
                                                revert with 'NH{q', 18
                                            if 0 < 0 / stor16 - uint255(stor13.field_1) / 2:
                                                revert with 'NH{q', 17
                                            if -0 / stor16 - uint255(stor13.field_1) / 2 < 0 / stor16 - uint255(stor13.field_1):
                                                revert with 'NH{q', 17
                                            call stor20 with:
                                               value -(0 / stor16 - uint255(stor13.field_1) / 2) - (0 / stor16 - uint255(stor13.field_1)) wei
                                                 gas 30000 wei
                                            if not ext_call.success:
                                                revert with 0, 'receiver rejected AVAX transfer'
                                            call stor21 with:
                                               value 0 / stor16 - uint255(stor13.field_1) wei
                                                 gas 30000 wei
                                            if not ext_call.success:
                                                revert with 0, 'receiver rejected AVAX transfer'
                                            if balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2 > 0:
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / stor16 - uint255(stor13.field_1) / 2 wei
                                                     gas gas_remaining wei
                                                    args address(this.address), Mask(255, 1, balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16), 0, 0, address(this.address), block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                require ext_call.return_data[64] == ext_call.return_data[64]
                                                emit AutoLiquify(Mask(255, 1, 0 / stor16 - uint255(stor13.field_1)), balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2);
                                        stor25 = 0
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Insufficient Balance', 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 + (0 / stor17) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 - (0 / stor17) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor17)
                        emit Transfer((arg2 - (0 / stor17)), msg.sender, arg1);
                    else:
                        if arg2 and stor16 > -1 / arg2:
                            revert with 'NH{q', 17
                        if not arg2:
                            revert with 'NH{q', 18
                        if arg2 * stor16 / arg2 != stor16:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if stor17 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor17:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] > -(arg2 * stor16 / stor17) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] + (arg2 * stor16 / stor17) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += arg2 * stor16 / stor17
                        emit Transfer((arg2 * stor16 / stor17), msg.sender, this.address);
                        if arg2 * stor16 / stor17 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < arg2 * stor16 / stor17:
                            revert with 'NH{q', 17
                        if pairAddress != msg.sender:
                            if not stor25:
                                if swapEnabled:
                                    if balanceOf[address(this.address)] >= swapThreshold:
                                        stor25 = 1
                                        if not balanceOf[address(this.address)]:
                                            if stor16 <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not stor16:
                                                revert with 'NH{q', 18
                                            if 0 / stor16 / 2 > balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if balanceOf[address(this.address)] < 0 / stor16 / 2:
                                                revert with 'NH{q', 17
                                            mem[448] = this.address
                                            mem[480] = stor2
                                            mem[512] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[516] = balanceOf[address(this.address)] - (0 / stor16 / 2)
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
                                                args balanceOf[address(this.address)] - (0 / stor16 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[708 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 'NH{q', 17
                                            if uint255(stor13.field_1) > stor16:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if stor16 < uint255(stor13.field_1):
                                                revert with 'NH{q', 17
                                            if stor16 - uint255(stor13.field_1) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not stor16 - uint255(stor13.field_1):
                                                revert with 'NH{q', 18
                                            if stor16 - uint255(stor13.field_1) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not stor16 - uint255(stor13.field_1):
                                                revert with 'NH{q', 18
                                            if 0 < 0 / stor16 - uint255(stor13.field_1) / 2:
                                                revert with 'NH{q', 17
                                            if -0 / stor16 - uint255(stor13.field_1) / 2 < 0 / stor16 - uint255(stor13.field_1):
                                                revert with 'NH{q', 17
                                            call stor20 with:
                                               value -(0 / stor16 - uint255(stor13.field_1) / 2) - (0 / stor16 - uint255(stor13.field_1)) wei
                                                 gas 30000 wei
                                            if not ext_call.success:
                                                revert with 0, 'receiver rejected AVAX transfer'
                                            call stor21 with:
                                               value 0 / stor16 - uint255(stor13.field_1) wei
                                                 gas 30000 wei
                                            if not ext_call.success:
                                                revert with 0, 'receiver rejected AVAX transfer'
                                            if 0 / stor16 / 2 > 0:
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / stor16 - uint255(stor13.field_1) / 2 wei
                                                     gas gas_remaining wei
                                                    args address(this.address), Mask(255, 1, 0 / stor16), 0, 0, address(this.address), block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                require ext_call.return_data[64] == ext_call.return_data[64]
                                                emit AutoLiquify(Mask(255, 1, 0 / stor16 - uint255(stor13.field_1)), 0 / stor16 / 2);
                                        else:
                                            if balanceOf[address(this.address)] and uint256(stor13.field_0) > -1 / balanceOf[address(this.address)]:
                                                revert with 'NH{q', 17
                                            if not balanceOf[address(this.address)]:
                                                revert with 'NH{q', 18
                                            if balanceOf[address(this.address)] * uint256(stor13.field_0) / balanceOf[address(this.address)] != uint256(stor13.field_0):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if stor16 <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not stor16:
                                                revert with 'NH{q', 18
                                            if balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2 > balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2:
                                                revert with 'NH{q', 17
                                            mem[448] = this.address
                                            mem[480] = stor2
                                            mem[512] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[516] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2)
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
                                                args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[708 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 'NH{q', 17
                                            if uint255(stor13.field_1) > stor16:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if stor16 < uint255(stor13.field_1):
                                                revert with 'NH{q', 17
                                            if stor16 - uint255(stor13.field_1) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not stor16 - uint255(stor13.field_1):
                                                revert with 'NH{q', 18
                                            if stor16 - uint255(stor13.field_1) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not stor16 - uint255(stor13.field_1):
                                                revert with 'NH{q', 18
                                            if 0 < 0 / stor16 - uint255(stor13.field_1) / 2:
                                                revert with 'NH{q', 17
                                            if -0 / stor16 - uint255(stor13.field_1) / 2 < 0 / stor16 - uint255(stor13.field_1):
                                                revert with 'NH{q', 17
                                            call stor20 with:
                                               value -(0 / stor16 - uint255(stor13.field_1) / 2) - (0 / stor16 - uint255(stor13.field_1)) wei
                                                 gas 30000 wei
                                            if not ext_call.success:
                                                revert with 0, 'receiver rejected AVAX transfer'
                                            call stor21 with:
                                               value 0 / stor16 - uint255(stor13.field_1) wei
                                                 gas 30000 wei
                                            if not ext_call.success:
                                                revert with 0, 'receiver rejected AVAX transfer'
                                            if balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2 > 0:
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / stor16 - uint255(stor13.field_1) / 2 wei
                                                     gas gas_remaining wei
                                                    args address(this.address), Mask(255, 1, balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16), 0, 0, address(this.address), block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                require ext_call.return_data[64] == ext_call.return_data[64]
                                                emit AutoLiquify(Mask(255, 1, 0 / stor16 - uint255(stor13.field_1)), balanceOf[address(this.address)] * uint256(stor13.field_0) / stor16 / 2);
                                        stor25 = 0
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Insufficient Balance', 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor16 / stor17) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 - (arg2 * stor16 / stor17) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor16 / stor17)
                        emit Transfer((arg2 - (arg2 * stor16 / stor17)), msg.sender, arg1);
    return 1
}



}
