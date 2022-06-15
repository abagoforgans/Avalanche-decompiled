contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_36790a84(?)
#  - sub_9c318202(?)
#
address owner;
address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct stor6;
array of struct stor7;
uint8 decimals;
uint256 _totalSupply;
mapping of uint8 stor10;
mapping of uint8 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19; offset 1
uint256 stor19;
uint256 stor20;
uint256 stor21;
address stor22;
address stor23;
address routerAddress;
address stor25;
address dividendTrackerAddress;
uint256 stor27;
uint256 stor28;
uint8 swapEnabled;
uint8 stor29; offset 8
uint8 stor29; offset 16
uint256 stor29; offset 16
uint256 stor29; offset 8
uint256 swapThreshold;
uint8 stor31;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return _totalSupply
}

function dividendTracker() {
    return dividendTrackerAddress
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function buyFees() {
    return stor13, stor14, stor15, stor16
}

function sellFees() {
    return stor17, stor18, uint256(stor19.field_0), stor20
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function openTrade(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor29.field_16) = Mask(240, 0, arg1)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setReceiver(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22 = arg1
    stor23 = arg2
}

function claim() {
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.claimDividend(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0df4adc6(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f15cd8bd(?) {
    require calldata.size - 4 >= 128
    require arg1 == bool(arg1)
    require arg2 == arg2
    require arg3 == bool(arg3)
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapEnabled = uint8(bool(arg1))
    swapThreshold = arg2
    Mask(248, 0, stor29.field_8) = Mask(248, 0, bool(arg3))
    stor28 = arg4
}

function setBuyFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    stor13 = arg1
    stor14 = arg2
    stor15 = arg3
    stor16 = arg1 + arg2 + arg3
}

function manualSendDividend(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0x8e126944 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setSellFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    stor17 = arg1
    stor18 = arg2
    uint256(stor19.field_0) = arg3
    stor20 = arg1 + arg2 + arg3
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setDistributionCriteria(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.setDistributionCriteria(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setExcludeDividend(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != this.address
    require arg1 != stor25
    stor12[address(arg1)] = uint8(arg2)
    require ext_code.size(dividendTrackerAddress)
    if not arg2:
        call dividendTrackerAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call dividendTrackerAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getAccountDividendsInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.getAccount(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192]
}

function setName(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307() or ceil32(arg2.length) + 160 < 128:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor6[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor6.length = 0
            idx = 0
            while stor6.length.field_1 + 31 / 32 > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor6[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor6.length = 0
            idx = 0
            while stor6.length.field_1 + 31 / 32 > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor7[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor7.length = 0
            idx = 0
            while stor7.length.field_1 + 31 / 32 > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor7[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor7.length = 0
            idx = 0
            while stor7.length.field_1 + 31 / 32 > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function name() {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function symbol() {
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor29.field_16):
        if owner != msg.sender:
            if arg1 != owner:
                revert with 0, 'Not Open'
    if stor31:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance', 0
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor27 > -stor28 - 1:
            revert with 'NH{q', 17
        if stor27 + stor28 <= block.timestamp:
            if stor25 != msg.sender:
                if not stor31:
                    if swapEnabled:
                        if balanceOf[address(this.address)] >= swapThreshold:
                            stor31 = 1
                            stor27 = block.timestamp
                            if uint8(stor29.field_8):
                                if balanceOf[address(this.address)] and uint256(stor19.field_0) > -1 / balanceOf[address(this.address)]:
                                    revert with 'NH{q', 17
                                if not stor20:
                                    revert with 'NH{q', 18
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)] * uint256(stor19.field_0) / stor20 / 2:
                                    revert with 'NH{q', 17
                                mem[256] = this.address
                                mem[288] = stor1
                                mem[320] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[324] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor19.field_0) / stor20 / 2)
                                idx = 0
                                s = 256
                                t = 516
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor19.field_0) / stor20 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[516 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if stor20 < uint255(stor19.field_1):
                                    revert with 'NH{q', 17
                                if False and uint256(stor19.field_0) > 0:
                                    revert with 'NH{q', 17
                                if not stor20 - uint255(stor19.field_1):
                                    revert with 'NH{q', 18
                                if balanceOf[address(this.address)] * uint256(stor19.field_0) / stor20 / 2 > 0:
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / stor20 - uint255(stor19.field_1) / 2 wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, balanceOf[address(this.address)] * uint256(stor19.field_0) / stor20), 0, 0, stor23, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                            else:
                                if swapThreshold and uint256(stor19.field_0) > -1 / swapThreshold:
                                    revert with 'NH{q', 17
                                if not stor20:
                                    revert with 'NH{q', 18
                                if swapThreshold < swapThreshold * uint256(stor19.field_0) / stor20 / 2:
                                    revert with 'NH{q', 17
                                mem[256] = this.address
                                mem[288] = stor1
                                mem[320] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[324] = swapThreshold - (swapThreshold * uint256(stor19.field_0) / stor20 / 2)
                                idx = 0
                                s = 256
                                t = 516
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args swapThreshold - (swapThreshold * uint256(stor19.field_0) / stor20 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[516 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if stor20 < uint255(stor19.field_1):
                                    revert with 'NH{q', 17
                                if False and uint256(stor19.field_0) > 0:
                                    revert with 'NH{q', 17
                                if not stor20 - uint255(stor19.field_1):
                                    revert with 'NH{q', 18
                                if swapThreshold * uint256(stor19.field_0) / stor20 / 2 > 0:
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / stor20 - uint255(stor19.field_1) / 2 wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, swapThreshold * uint256(stor19.field_0) / stor20), 0, 0, stor23, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                            if False and stor17 > 0:
                                revert with 'NH{q', 17
                            if not stor20 - uint255(stor19.field_1):
                                revert with 'NH{q', 18
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.0xd0e30db0 with:
                               value 0 / stor20 - uint255(stor19.field_1) wei
                                 gas gas_remaining wei
                            call stor22 with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor31 = 0
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance', 0
        balanceOf[address(msg.sender)] -= arg2
        if stor10[address(msg.sender)]:
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            if not stor12[address(msg.sender)]:
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[address(msg.sender)]
            if not stor12[address(arg1)]:
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), balanceOf[address(arg1)]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor10[address(arg1)]:
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                if not stor12[address(msg.sender)]:
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, balanceOf[address(msg.sender)]
                if not stor12[address(arg1)]:
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor25 != msg.sender:
                    if arg2 and stor20 > -1 / arg2:
                        revert with 'NH{q', 17
                    if not stor21:
                        revert with 'NH{q', 18
                    if balanceOf[address(this.address)] > -(arg2 * stor20 / stor21) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)] += arg2 * stor20 / stor21
                    emit Transfer((arg2 * stor20 / stor21), msg.sender, this.address);
                    if arg2 < arg2 * stor20 / stor21:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor20 / stor21) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor20 / stor21)
                    if not stor12[address(msg.sender)]:
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                    if not stor12[address(arg1)]:
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                    emit Transfer((arg2 - (arg2 * stor20 / stor21)), msg.sender, arg1);
                else:
                    if arg2 and stor16 > -1 / arg2:
                        revert with 'NH{q', 17
                    if not stor21:
                        revert with 'NH{q', 18
                    if balanceOf[address(this.address)] > -(arg2 * stor16 / stor21) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)] += arg2 * stor16 / stor21
                    emit Transfer((arg2 * stor16 / stor21), msg.sender, this.address);
                    if arg2 < arg2 * stor16 / stor21:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor16 / stor21) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor16 / stor21)
                    if not stor12[address(msg.sender)]:
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                    if not stor12[address(arg1)]:
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                    emit Transfer((arg2 - (arg2 * stor16 / stor21)), msg.sender, arg1);
    return 1
}



}
