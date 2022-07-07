contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const name = '', 0

const decimals = 18

const symbol = '', 0


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of struct allowance;
address nodeRewardManagementAddress;
address routerAddress;
address pairAddress;
address deadWalletAddress;
uint256 rewardsFee;
uint256 liquidityPoolFee;
uint256 devFee;
uint256 totalFees;
uint256 buyFee;
uint256 sellFee;
uint256 marketingFee;
uint256 sub_4d005dcd;
uint256 sub_fa2e1249;
uint256 sub_839400f0;
uint256 sub_3db9ca35;
address routerAddress;
address stor20;
address stor21;
address marketingPoolAddress;
address distributionPoolAddress;
address devPoolAddress;
address autoLiquidityReceiverAddress;
uint256 cashoutFee;
uint8 stor28;
uint8 stor28; offset 8
uint256 stor28; offset 8
uint256 startTime;
uint256 interval;
mapping of uint8 stor31;
mapping of uint8 stor32;
mapping of uint256 sub_6d29ab70;
mapping of uint256 sub_6d79210f;

function totalFees() {
    return totalFees
}

function totalSupply() {
    return totalSupply
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor31[arg1])
}

function sellFee() {
    return sellFee
}

function rewardsFee() {
    return rewardsFee
}

function routerAddress() {
    return routerAddress
}

function sub_3db9ca35(?) {
    return sub_3db9ca35
}

function buyFee() {
    return buyFee
}

function sub_4d005dcd(?) {
    return sub_4d005dcd
}

function liquidityPoolFee() {
    return liquidityPoolFee
}

function devFee() {
    return devFee
}

function nodeRewardManagement() {
    return nodeRewardManagementAddress
}

function marketingFee() {
    return marketingFee
}

function sub_6d29ab70(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6d29ab70[arg1]
}

function sub_6d79210f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6d79210f[arg1]
}

function cashoutFee() {
    return cashoutFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function sub_839400f0(?) {
    return sub_839400f0
}

function deadWallet() {
    return deadWalletAddress
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function interval() {
    return interval
}

function pair() {
    return pairAddress
}

function devPool() {
    return devPoolAddress
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor32[arg1])
}

function marketingPool() {
    return marketingPoolAddress
}

function distributionPool() {
    return distributionPoolAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function router() {
    return routerAddress
}

function sub_fa2e1249(?) {
    return sub_fa2e1249
}

function updateInterval(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    interval = arg1
}

function sub_454b0cd0(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    sub_839400f0 = arg1
    sub_3db9ca35 = arg2
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'OWN'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function changeSwapLiquify(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    Mask(248, 0, stor28.field_8) = Mask(248, 0, arg1)
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)].field_0 = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function blacklistMalicious(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    stor31[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function recoverLostETH() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'OWN'
    if not arg1:
        revert with 0, 'OWN'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function publiDistriRewards() {
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress._distributeRewards() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}

function sub_f9c9fdf5(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require msg.sender == owner
    devPoolAddress = address(arg1)
    distributionPoolAddress = address(arg2)
    marketingPoolAddress = address(arg3)
}

function sub_9c4f762f(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require msg.sender == owner
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0x3be92e1b with:
         gas gas_remaining wei
        args bool(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if balanceOf[stor20] > totalSupply:
        revert with 0, '', 0
    if totalSupply < balanceOf[stor20]:
        revert with 0, 17
    if balanceOf[stor21] > totalSupply - balanceOf[stor20]:
        revert with 0, '', 0
    if totalSupply - balanceOf[stor20] < balanceOf[stor21]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor20] - balanceOf[stor21])
}

function sub_9922b4c9(?) {
    require calldata.size - 4 >= 224
    require arg1 == uint8(arg1)
    require msg.sender == owner
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0x9867ae29 with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, arg4, arg5, arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function distributeRewards() {
    require owner == msg.sender
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress._distributeRewards() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function sub_a0b5d66c(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == bool(arg2)
    require msg.sender == owner
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0x27c7179e with:
         gas gas_remaining wei
        args arg1 << 248, bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getNodeNumberOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x4491a7e4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getRewardAmountOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x619a635e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function updateFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    require msg.sender == owner
    rewardsFee = arg3
    liquidityPoolFee = arg1
    devFee = arg2
    cashoutFee = arg4
    if arg3 > !arg1:
        revert with 0, 17
    if arg3 + arg1 < arg3:
        revert with 0, 'AOF'
    if arg3 + arg1 > !arg2:
        revert with 0, 17
    if arg2 < 0:
        revert with 0, 'AOF'
    totalFees = arg3 + arg1 + arg2
    buyFee = arg6
    sellFee = arg7
    marketingFee = arg5
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'F0'
    if not arg1:
        revert with 0, 'T0'
    if stor31[address(msg.sender)]:
        revert with 0, 'BL'
    if stor31[address(arg1)]:
        revert with 0, 'BL'
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'AOF'
    balanceOf[address(arg1)] += arg2
    if arg2 > balanceOf[msg.sender]:
        revert with 0, '', 0
    if balanceOf[msg.sender] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_9725cd5b(?) {
    require msg.sender == owner
    if not this.address:
        revert with 0, 'F0'
    if not owner:
        revert with 0, 'T0'
    if stor31[address(this.address)]:
        revert with 0, 'BL'
    if stor31[stor0]:
        revert with 0, 'BL'
    if balanceOf[stor0] > !balanceOf[this.address]:
        revert with 0, 17
    if balanceOf[stor0] + balanceOf[this.address] < balanceOf[stor0]:
        revert with 0, 'AOF'
    balanceOf[stor0] += balanceOf[this.address]
    if balanceOf[this.address] > balanceOf[this.address]:
        revert with 0, '', 0
    if balanceOf[this.address] < balanceOf[this.address]:
        revert with 0, 17
    balanceOf[address(this.address)] = balanceOf[this.address] - balanceOf[this.address]
    emit Transfer(balanceOf[this.address], this.address, owner);
}

function getRewardAmount() {
    if not msg.sender:
        revert with 0, 'S0'
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x41ac82b0 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '0N'
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x619a635e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][msg.sender].field_0 != -1:
        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
            revert with 0, '', 0
        if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
            revert with 0, 17
        allowance[address(arg1)][msg.sender].field_0 = allowance[address(arg1)][address(msg.sender)].field_0 - arg3
    if not arg1:
        revert with 0, 'F0'
    if not arg2:
        revert with 0, 'T0'
    if stor31[address(arg1)]:
        revert with 0, 'BL'
    if stor31[address(arg2)]:
        revert with 0, 'BL'
    if balanceOf[address(arg2)] > !arg3:
        revert with 0, 17
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'AOF'
    balanceOf[address(arg2)] += arg3
    if arg3 > balanceOf[arg1]:
        revert with 0, '', 0
    if balanceOf[arg1] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_0406c49c(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] == address(cd[36])
    require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _14 = mem[(32 * idx) + 128]
        mem[ceil32(32 * ('cd', 4).length) + 97] = 0x37696eec00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 4).length) + 101] = address(cd[36])
        mem[ceil32(32 * ('cd', 4).length) + 133] = uint8(_14)
        require ext_code.size(nodeRewardManagementAddress)
        call nodeRewardManagementAddress.0x37696eec with:
             gas gas_remaining wei
            args address(cd[36]), uint8(_14)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function cashoutAll() {
    require not stor31[msg.sender]
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x619a635e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    if not distributionPoolAddress:
        revert with 0, 'F0'
    if not msg.sender:
        revert with 0, 'T0'
    if stor31[stor23]:
        revert with 0, 'BL'
    if stor31[address(msg.sender)]:
        revert with 0, 'BL'
    if balanceOf[address(msg.sender)] > !ext_call.return_data[0]:
        revert with 0, 17
    if balanceOf[address(msg.sender)] + ext_call.return_data[0] < balanceOf[address(msg.sender)]:
        revert with 0, 'AOF'
    balanceOf[address(msg.sender)] += ext_call.return_data[0]
    if ext_call.return_data[0] > balanceOf[stor23]:
        revert with 0, '', 0
    if balanceOf[stor23] < ext_call.return_data[0]:
        revert with 0, 17
    balanceOf[stor23] -= ext_call.return_data[0]
    emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0x5c298b1c with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_480738ad(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    require not stor31[msg.sender]
    require devPoolAddress != msg.sender
    require distributionPoolAddress != msg.sender
    mem[100] = uint8(arg1)
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xd04375ed with:
            gas gas_remaining wei
           args uint8(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require balanceOf[address(msg.sender)] >= ext_call.return_data[0]
    if not msg.sender:
        revert with 0, 'F0'
    if not this.address:
        revert with 0, 'T0'
    if stor31[address(msg.sender)]:
        revert with 0, 'BL'
    if stor31[address(this.address)]:
        revert with 0, 'BL'
    if balanceOf[address(this.address)] > !ext_call.return_data[0]:
        revert with 0, 17
    if balanceOf[address(this.address)] + ext_call.return_data[0] < balanceOf[address(this.address)]:
        revert with 0, 'AOF'
    balanceOf[address(this.address)] += ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 3
    mem[ceil32(return_data.size) + 128] = 0x534f460000000000000000000000000000000000000000000000000000000000
    if ext_call.return_data[0] > balanceOf[msg.sender]:
        revert with 0, '', 0
    if balanceOf[msg.sender] < ext_call.return_data[0]:
        revert with 0, 17
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - ext_call.return_data[0]
    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
    mem[ceil32(return_data.size) + 160] = 3
    mem[ceil32(return_data.size) + 192] = 0x534f460000000000000000000000000000000000000000000000000000000000
    if sub_fa2e1249 > balanceOf[this.address]:
        revert with 0, '', 0
    if balanceOf[this.address] < sub_fa2e1249:
        revert with 0, 17
    if balanceOf[this.address] - sub_fa2e1249 < sub_839400f0:
        require ext_code.size(nodeRewardManagementAddress)
        call nodeRewardManagementAddress.0x37696eec with:
             gas gas_remaining wei
            args msg.sender, uint8(arg1)
    else:
        if not uint8(stor28.field_8):
            require ext_code.size(nodeRewardManagementAddress)
            call nodeRewardManagementAddress.0x37696eec with:
                 gas gas_remaining wei
                args msg.sender, uint8(arg1)
        else:
            if uint8(stor28.field_0):
                require ext_code.size(nodeRewardManagementAddress)
                call nodeRewardManagementAddress.0x37696eec with:
                     gas gas_remaining wei
                    args msg.sender, uint8(arg1)
            else:
                if owner == msg.sender:
                    require ext_code.size(nodeRewardManagementAddress)
                    call nodeRewardManagementAddress.0x37696eec with:
                         gas gas_remaining wei
                        args msg.sender, uint8(arg1)
                else:
                    if pairAddress == msg.sender:
                        require ext_code.size(nodeRewardManagementAddress)
                        call nodeRewardManagementAddress.0x37696eec with:
                             gas gas_remaining wei
                            args msg.sender, uint8(arg1)
                    else:
                        uint8(stor28.field_0) = 1
                        if not sub_839400f0:
                            mem[ceil32(return_data.size) + 224] = 4
                            mem[ceil32(return_data.size) + 256] = 0x4449563000000000000000000000000000000000000000000000000000000000
                            if not totalFees:
                                revert with 0, '', 0
                            if not 0 / totalFees:
                                if not sub_839400f0:
                                    if not totalFees:
                                        revert with 0, '', 0
                                    if not this.address:
                                        revert with 0, 'F0'
                                    if not distributionPoolAddress:
                                        revert with 0, 'T0'
                                    if stor31[address(this.address)]:
                                        revert with 0, 'BL'
                                    if stor31[stor23]:
                                        revert with 0, 'BL'
                                    if balanceOf[stor23] > !(0 / totalFees):
                                        revert with 0, 17
                                    if balanceOf[stor23] + (0 / totalFees) < balanceOf[stor23]:
                                        revert with 0, 'AOF'
                                    balanceOf[stor23] += 0 / totalFees
                                    if 0 / totalFees > balanceOf[this.address]:
                                        revert with 0, '', 0
                                    if balanceOf[this.address] < 0 / totalFees:
                                        revert with 0, 17
                                    balanceOf[address(this.address)] = balanceOf[this.address] - (0 / totalFees)
                                    emit Transfer((0 / totalFees), this.address, distributionPoolAddress);
                                else:
                                    if sub_839400f0 and rewardsFee > -1 / sub_839400f0:
                                        revert with 0, 17
                                    if not sub_839400f0:
                                        revert with 0, 18
                                    if sub_839400f0 * rewardsFee / sub_839400f0 != rewardsFee:
                                        revert with 0, 'MOF'
                                    if not totalFees:
                                        revert with 0, '', 0
                                    if not this.address:
                                        revert with 0, 'F0'
                                    if not distributionPoolAddress:
                                        revert with 0, 'T0'
                                    if stor31[address(this.address)]:
                                        revert with 0, 'BL'
                                    if stor31[stor23]:
                                        revert with 0, 'BL'
                                    if balanceOf[stor23] > !(sub_839400f0 * rewardsFee / totalFees):
                                        revert with 0, 17
                                    if balanceOf[stor23] + (sub_839400f0 * rewardsFee / totalFees) < balanceOf[stor23]:
                                        revert with 0, 'AOF'
                                    balanceOf[stor23] += sub_839400f0 * rewardsFee / totalFees
                                    if sub_839400f0 * rewardsFee / totalFees > balanceOf[this.address]:
                                        revert with 0, '', 0
                                    if balanceOf[this.address] < sub_839400f0 * rewardsFee / totalFees:
                                        revert with 0, 17
                                    balanceOf[address(this.address)] = balanceOf[this.address] - (sub_839400f0 * rewardsFee / totalFees)
                                    emit Transfer((sub_839400f0 * rewardsFee / totalFees), this.address, distributionPoolAddress);
                                if not sub_839400f0:
                                    if not totalFees:
                                        revert with 0, '', 0
                                    if 0 / totalFees:
                                        if 0 / totalFees / 2 > 0 / totalFees:
                                            revert with 0, '', 0
                                        if 0 / totalFees < 0 / totalFees / 2:
                                            revert with 0, 17
                                        mem[ceil32(return_data.size) + 608] = 2
                                        mem[ceil32(return_data.size) + 640] = this.address
                                        require ext_code.size(routerAddress)
                                        staticcall routerAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 704] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 672] = ext_call.return_data[12 len 20]
                                        allowance[msg.sender][stor19].field_0 = 0 / totalFees / 2
                                        allowance[msg.sender][stor19].field_255 = 0
                                        mem[(2 * ceil32(return_data.size)) + 704] = 0 / totalFees / 2
                                        emit Approval(mem[(2 * ceil32(return_data.size)) + 704 len ceil32(return_data.size) + 32], msg.sender, routerAddress);
                                        mem[(2 * ceil32(return_data.size)) + 704] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 708] = 0 / totalFees / 2
                                        mem[(2 * ceil32(return_data.size)) + 740] = 0
                                        mem[(2 * ceil32(return_data.size)) + 772] = 160
                                        mem[(2 * ceil32(return_data.size)) + 868] = 2
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 900
                                        t = ceil32(return_data.size) + 640
                                        while idx < mem[ceil32(return_data.size) + 608]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 804] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 868 len (32 * mem[ceil32(return_data.size) + 608]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, '', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        allowance[msg.sender][stor19].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                        emit Approval(((0 / totalFees) - (0 / totalFees / 2)), msg.sender, routerAddress);
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (0 / totalFees) - (0 / totalFees / 2), 0, 0, 0, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(Mask(255, 1, 0 / totalFees), 0, (0 / totalFees) - (0 / totalFees / 2));
                                else:
                                    if sub_839400f0 and liquidityPoolFee > -1 / sub_839400f0:
                                        revert with 0, 17
                                    if not sub_839400f0:
                                        revert with 0, 18
                                    if sub_839400f0 * liquidityPoolFee / sub_839400f0 != liquidityPoolFee:
                                        revert with 0, 'MOF'
                                    if not totalFees:
                                        revert with 0, '', 0
                                    if sub_839400f0 * liquidityPoolFee / totalFees:
                                        if sub_839400f0 * liquidityPoolFee / totalFees / 2 > sub_839400f0 * liquidityPoolFee / totalFees:
                                            revert with 0, '', 0
                                        if sub_839400f0 * liquidityPoolFee / totalFees < sub_839400f0 * liquidityPoolFee / totalFees / 2:
                                            revert with 0, 17
                                        mem[ceil32(return_data.size) + 608] = 2
                                        mem[ceil32(return_data.size) + 640] = this.address
                                        require ext_code.size(routerAddress)
                                        staticcall routerAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 704] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 672] = ext_call.return_data[12 len 20]
                                        allowance[msg.sender][stor19].field_0 = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                        allowance[msg.sender][stor19].field_255 = 0
                                        mem[(2 * ceil32(return_data.size)) + 704] = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                        emit Approval(mem[(2 * ceil32(return_data.size)) + 704 len ceil32(return_data.size) + 32], msg.sender, routerAddress);
                                        mem[(2 * ceil32(return_data.size)) + 704] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 708] = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                        mem[(2 * ceil32(return_data.size)) + 740] = 0
                                        mem[(2 * ceil32(return_data.size)) + 772] = 160
                                        mem[(2 * ceil32(return_data.size)) + 868] = 2
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 900
                                        t = ceil32(return_data.size) + 640
                                        while idx < mem[ceil32(return_data.size) + 608]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 804] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, sub_839400f0 * liquidityPoolFee / totalFees), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 868 len (32 * mem[ceil32(return_data.size) + 608]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, '', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        allowance[msg.sender][stor19].field_0 = (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)
                                        emit Approval(((sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)), msg.sender, routerAddress);
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2), 0, 0, 0, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(Mask(255, 1, sub_839400f0 * liquidityPoolFee / totalFees), 0, (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2));
                                uint8(stor28.field_0) = 0
                                require ext_code.size(nodeRewardManagementAddress)
                                call nodeRewardManagementAddress.0x37696eec with:
                                     gas gas_remaining wei
                                    args msg.sender, uint8(arg1)
                            else:
                                mem[ceil32(return_data.size) + 288] = 2
                                mem[ceil32(return_data.size) + 320] = this.address
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 352] = ext_call.return_data[12 len 20]
                                allowance[msg.sender][stor19].field_0 = 0 / totalFees
                                mem[(2 * ceil32(return_data.size)) + 384] = 0 / totalFees
                                emit Approval(mem[(2 * ceil32(return_data.size)) + 384 len ceil32(return_data.size) + 32], msg.sender, routerAddress);
                                mem[(2 * ceil32(return_data.size)) + 384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 388] = 0 / totalFees
                                mem[(2 * ceil32(return_data.size)) + 420] = 0
                                mem[(2 * ceil32(return_data.size)) + 452] = 160
                                mem[(2 * ceil32(return_data.size)) + 548] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 580
                                t = ceil32(return_data.size) + 320
                                while idx < mem[ceil32(return_data.size) + 288]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 484] = this.address
                                mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 0 / totalFees, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 548 len (32 * mem[ceil32(return_data.size) + 288]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, '', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call devPoolAddress with:
                                     gas 30000 wei
                                if return_data.size:
                                    if sub_839400f0:
                                        if sub_839400f0 and rewardsFee > -1 / sub_839400f0:
                                            revert with 0, 17
                                        if not sub_839400f0:
                                            revert with 0, 18
                                        if sub_839400f0 * rewardsFee / sub_839400f0 != rewardsFee:
                                            revert with 0, 'MOF'
                                        if not totalFees:
                                            revert with 0, '', 0
                                        if not this.address:
                                            revert with 0, 'F0'
                                        if not distributionPoolAddress:
                                            revert with 0, 'T0'
                                        if stor31[address(this.address)]:
                                            revert with 0, 'BL'
                                        if stor31[stor23]:
                                            revert with 0, 'BL'
                                        if balanceOf[stor23] > !(sub_839400f0 * rewardsFee / totalFees):
                                            revert with 0, 17
                                        if balanceOf[stor23] + (sub_839400f0 * rewardsFee / totalFees) < balanceOf[stor23]:
                                            revert with 0, 'AOF'
                                        balanceOf[stor23] += sub_839400f0 * rewardsFee / totalFees
                                        if sub_839400f0 * rewardsFee / totalFees > balanceOf[this.address]:
                                            revert with 0, '', 0
                                        if balanceOf[this.address] < sub_839400f0 * rewardsFee / totalFees:
                                            revert with 0, 17
                                        balanceOf[address(this.address)] = balanceOf[this.address] - (sub_839400f0 * rewardsFee / totalFees)
                                        emit Transfer((sub_839400f0 * rewardsFee / totalFees), this.address, distributionPoolAddress);
                                        if not sub_839400f0:
                                            if not totalFees:
                                                revert with 0, '', 0
                                            if 0 / totalFees:
                                                if 0 / totalFees / 2 > 0 / totalFees:
                                                    revert with 0, '', 0
                                                if 0 / totalFees < 0 / totalFees / 2:
                                                    revert with 0, 17
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 769] = 2
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = this.address
                                                require ext_code.size(routerAddress)
                                                staticcall routerAddress.WETH() with:
                                                        gas gas_remaining wei
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 833] = ext_call.return_data[12 len 20]
                                                allowance[msg.sender][stor19].field_0 = 0 / totalFees / 2
                                                allowance[msg.sender][stor19].field_255 = 0
                                                emit Approval((0 / totalFees / 2), msg.sender, routerAddress);
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 865] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 0 / totalFees / 2
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 160
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 2
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061
                                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                                while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 769]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = this.address
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args Mask(255, 1, 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 769]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, '', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                allowance[msg.sender][stor19].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                                emit Approval(((0 / totalFees) - (0 / totalFees / 2)), msg.sender, routerAddress);
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args this.address, (0 / totalFees) - (0 / totalFees / 2), 0, 0, 0, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                emit SwapAndLiquify(Mask(255, 1, 0 / totalFees), 0, (0 / totalFees) - (0 / totalFees / 2));
                                        else:
                                            if sub_839400f0 and liquidityPoolFee > -1 / sub_839400f0:
                                                revert with 0, 17
                                            if not sub_839400f0:
                                                revert with 0, 18
                                            if sub_839400f0 * liquidityPoolFee / sub_839400f0 != liquidityPoolFee:
                                                revert with 0, 'MOF'
                                            if not totalFees:
                                                revert with 0, '', 0
                                            if sub_839400f0 * liquidityPoolFee / totalFees:
                                                if sub_839400f0 * liquidityPoolFee / totalFees / 2 > sub_839400f0 * liquidityPoolFee / totalFees:
                                                    revert with 0, '', 0
                                                if sub_839400f0 * liquidityPoolFee / totalFees < sub_839400f0 * liquidityPoolFee / totalFees / 2:
                                                    revert with 0, 17
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 769] = 2
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = this.address
                                                require ext_code.size(routerAddress)
                                                staticcall routerAddress.WETH() with:
                                                        gas gas_remaining wei
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 833] = ext_call.return_data[12 len 20]
                                                allowance[msg.sender][stor19].field_0 = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                                allowance[msg.sender][stor19].field_255 = 0
                                                emit Approval((sub_839400f0 * liquidityPoolFee / totalFees / 2), msg.sender, routerAddress);
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 865] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 160
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 2
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061
                                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                                while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 769]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = this.address
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args Mask(255, 1, sub_839400f0 * liquidityPoolFee / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 769]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, '', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                allowance[msg.sender][stor19].field_0 = (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)
                                                emit Approval(((sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)), msg.sender, routerAddress);
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args this.address, (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2), 0, 0, 0, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                emit SwapAndLiquify(Mask(255, 1, sub_839400f0 * liquidityPoolFee / totalFees), 0, (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2));
                                        uint8(stor28.field_0) = 0
                                        require ext_code.size(nodeRewardManagementAddress)
                                        call nodeRewardManagementAddress.0x37696eec with:
                                             gas gas_remaining wei
                                            args msg.sender, uint8(arg1)
                                    else:
                                        if not totalFees:
                                            revert with 0, '', 0
                                        if not this.address:
                                            revert with 0, 'F0'
                                        if not distributionPoolAddress:
                                            revert with 0, 'T0'
                                        if stor31[address(this.address)]:
                                            revert with 0, 'BL'
                                        if stor31[stor23]:
                                            revert with 0, 'BL'
                                        if balanceOf[stor23] > !(0 / totalFees):
                                            revert with 0, 17
                                        if balanceOf[stor23] + (0 / totalFees) < balanceOf[stor23]:
                                            revert with 0, 'AOF'
                                        balanceOf[stor23] += 0 / totalFees
                                        if 0 / totalFees > balanceOf[this.address]:
                                            revert with 0, '', 0
                                        if balanceOf[this.address] < 0 / totalFees:
                                            revert with 0, 17
                                        balanceOf[address(this.address)] = balanceOf[this.address] - (0 / totalFees)
                                        emit Transfer((0 / totalFees), this.address, distributionPoolAddress);
                                        if not sub_839400f0:
                                            if not totalFees:
                                                revert with 0, '', 0
                                            if not 0 / totalFees:
                                                uint8(stor28.field_0) = 0
                                                require ext_code.size(nodeRewardManagementAddress)
                                                call nodeRewardManagementAddress.0x37696eec with:
                                                     gas gas_remaining wei
                                                    args msg.sender, uint8(arg1)
                                            else:
                                                if 0 / totalFees / 2 > 0 / totalFees:
                                                    revert with 0, '', 0
                                                if 0 / totalFees < 0 / totalFees / 2:
                                                    revert with 0, 17
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 769] = 2
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = this.address
                                                require ext_code.size(routerAddress)
                                                staticcall routerAddress.WETH() with:
                                                        gas gas_remaining wei
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 833] = ext_call.return_data[12 len 20]
                                                allowance[msg.sender][stor19].field_0 = 0 / totalFees / 2
                                                allowance[msg.sender][stor19].field_255 = 0
                                                emit Approval((0 / totalFees / 2), msg.sender, routerAddress);
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 865] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 0 / totalFees / 2
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 160
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 2
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061
                                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                                while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 769]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = this.address
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args Mask(255, 1, 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 769]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 3
                                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 0x534f460000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1000] = 0
                                                    revert with memory
                                                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                allowance[msg.sender][stor19].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                                emit Approval(((0 / totalFees) - (0 / totalFees / 2)), msg.sender, routerAddress);
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = this.address
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = (0 / totalFees) - (0 / totalFees / 2)
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 0
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 0
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933 len (5 * ceil32(return_data.size)) + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0 / totalFees / 2
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 961] = 0
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 993] = (0 / totalFees) - (0 / totalFees / 2)
                                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929 len (7 * ceil32(return_data.size)) + 96],
                                                uint8(stor28.field_0) = 0
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = msg.sender
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = uint8(arg1)
                                                require ext_code.size(nodeRewardManagementAddress)
                                                call nodeRewardManagementAddress.0x37696eec with:
                                                     gas gas_remaining wei
                                                    args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933 len (7 * ceil32(return_data.size)) + 64]
                                        else:
                                            if sub_839400f0 and liquidityPoolFee > -1 / sub_839400f0:
                                                revert with 0, 17
                                            if not sub_839400f0:
                                                revert with 0, 18
                                            if sub_839400f0 * liquidityPoolFee / sub_839400f0 != liquidityPoolFee:
                                                revert with 0, 'MOF'
                                            if not totalFees:
                                                revert with 0, '', 0
                                            if not sub_839400f0 * liquidityPoolFee / totalFees:
                                                uint8(stor28.field_0) = 0
                                                require ext_code.size(nodeRewardManagementAddress)
                                                call nodeRewardManagementAddress.0x37696eec with:
                                                     gas gas_remaining wei
                                                    args msg.sender, uint8(arg1)
                                            else:
                                                if sub_839400f0 * liquidityPoolFee / totalFees / 2 > sub_839400f0 * liquidityPoolFee / totalFees:
                                                    revert with 0, '', 0
                                                if sub_839400f0 * liquidityPoolFee / totalFees < sub_839400f0 * liquidityPoolFee / totalFees / 2:
                                                    revert with 0, 17
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 769] = 2
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = this.address
                                                require ext_code.size(routerAddress)
                                                staticcall routerAddress.WETH() with:
                                                        gas gas_remaining wei
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 833] = ext_call.return_data[12 len 20]
                                                allowance[msg.sender][stor19].field_0 = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                                allowance[msg.sender][stor19].field_255 = 0
                                                emit Approval((sub_839400f0 * liquidityPoolFee / totalFees / 2), msg.sender, routerAddress);
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 865] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 160
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 2
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061
                                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                                while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 769]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = this.address
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args Mask(255, 1, sub_839400f0 * liquidityPoolFee / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 769]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 3
                                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 0x534f460000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1000] = 0
                                                    revert with memory
                                                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                allowance[msg.sender][stor19].field_0 = (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)
                                                emit Approval(((sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)), msg.sender, routerAddress);
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = this.address
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 0
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 0
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933 len (5 * ceil32(return_data.size)) + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 961] = 0
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 993] = (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)
                                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929 len (7 * ceil32(return_data.size)) + 96],
                                                uint8(stor28.field_0) = 0
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = msg.sender
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = uint8(arg1)
                                                require ext_code.size(nodeRewardManagementAddress)
                                                call nodeRewardManagementAddress.0x37696eec with:
                                                     gas gas_remaining wei
                                                    args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933 len (7 * ceil32(return_data.size)) + 64]
                                else:
                                    if not sub_839400f0:
                                        if not totalFees:
                                            revert with 0, '', 0
                                        if not this.address:
                                            revert with 0, 'F0'
                                        if not distributionPoolAddress:
                                            revert with 0, 'T0'
                                        if stor31[address(this.address)]:
                                            revert with 0, 'BL'
                                        if stor31[stor23]:
                                            revert with 0, 'BL'
                                        if balanceOf[stor23] > !(0 / totalFees):
                                            revert with 0, 17
                                        if balanceOf[stor23] + (0 / totalFees) < balanceOf[stor23]:
                                            revert with 0, 'AOF'
                                        balanceOf[stor23] += 0 / totalFees
                                        if 0 / totalFees > balanceOf[this.address]:
                                            revert with 0, '', 0
                                        if balanceOf[this.address] < 0 / totalFees:
                                            revert with 0, 17
                                        balanceOf[address(this.address)] = balanceOf[this.address] - (0 / totalFees)
                                        emit Transfer((0 / totalFees), this.address, distributionPoolAddress);
                                    else:
                                        if sub_839400f0 and rewardsFee > -1 / sub_839400f0:
                                            revert with 0, 17
                                        if not sub_839400f0:
                                            revert with 0, 18
                                        if sub_839400f0 * rewardsFee / sub_839400f0 != rewardsFee:
                                            revert with 0, 'MOF'
                                        if not totalFees:
                                            revert with 0, '', 0
                                        if not this.address:
                                            revert with 0, 'F0'
                                        if not distributionPoolAddress:
                                            revert with 0, 'T0'
                                        if stor31[address(this.address)]:
                                            revert with 0, 'BL'
                                        if stor31[stor23]:
                                            revert with 0, 'BL'
                                        if balanceOf[stor23] > !(sub_839400f0 * rewardsFee / totalFees):
                                            revert with 0, 17
                                        if balanceOf[stor23] + (sub_839400f0 * rewardsFee / totalFees) < balanceOf[stor23]:
                                            revert with 0, 'AOF'
                                        balanceOf[stor23] += sub_839400f0 * rewardsFee / totalFees
                                        if sub_839400f0 * rewardsFee / totalFees > balanceOf[this.address]:
                                            revert with 0, '', 0
                                        if balanceOf[this.address] < sub_839400f0 * rewardsFee / totalFees:
                                            revert with 0, 17
                                        balanceOf[address(this.address)] = balanceOf[this.address] - (sub_839400f0 * rewardsFee / totalFees)
                                        emit Transfer((sub_839400f0 * rewardsFee / totalFees), this.address, distributionPoolAddress);
                                    if not sub_839400f0:
                                        if not totalFees:
                                            revert with 0, '', 0
                                        if not 0 / totalFees:
                                            uint8(stor28.field_0) = 0
                                            require ext_code.size(nodeRewardManagementAddress)
                                            call nodeRewardManagementAddress.0x37696eec with:
                                                 gas gas_remaining wei
                                                args msg.sender, uint8(arg1)
                                        else:
                                            if 0 / totalFees / 2 > 0 / totalFees:
                                                revert with 0, '', 0
                                            if 0 / totalFees < 0 / totalFees / 2:
                                                revert with 0, 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = 2
                                            mem[(2 * ceil32(return_data.size)) + 800] = this.address
                                            require ext_code.size(routerAddress)
                                            staticcall routerAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(2 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (4 * ceil32(return_data.size)) + 864
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + 832] = ext_call.return_data[12 len 20]
                                            mem[0] = routerAddress
                                            mem[32] = sha3(msg.sender, 3)
                                            allowance[msg.sender][stor19].field_0 = 0 / totalFees / 2
                                            allowance[msg.sender][stor19].field_255 = 0
                                            emit Approval((0 / totalFees / 2), msg.sender, routerAddress);
                                            mem[(4 * ceil32(return_data.size)) + 864] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + 868] = 0 / totalFees / 2
                                            mem[(4 * ceil32(return_data.size)) + 900] = 0
                                            mem[(4 * ceil32(return_data.size)) + 932] = 160
                                            mem[(4 * ceil32(return_data.size)) + 1028] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 1060
                                            t = (2 * ceil32(return_data.size)) + 800
                                            while idx < mem[(2 * ceil32(return_data.size)) + 768]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(4 * ceil32(return_data.size)) + 964] = this.address
                                            mem[(4 * ceil32(return_data.size)) + 996] = block.timestamp
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 1028 len (32 * mem[(2 * ceil32(return_data.size)) + 768]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + 932] = 32
                                                mem[(4 * ceil32(return_data.size)) + 964] = 3
                                                mem[(4 * ceil32(return_data.size)) + 996] = 0x534f460000000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + 999] = 0
                                                revert with memory
                                                  from (4 * ceil32(return_data.size)) + 928
                                                   len (5 * ceil32(return_data.size)) + 100
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            allowance[msg.sender][stor19].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                            emit Approval(((0 / totalFees) - (0 / totalFees / 2)), msg.sender, routerAddress);
                                            mem[(4 * ceil32(return_data.size)) + 932] = this.address
                                            mem[(4 * ceil32(return_data.size)) + 964] = (0 / totalFees) - (0 / totalFees / 2)
                                            mem[(4 * ceil32(return_data.size)) + 996] = 0
                                            mem[(4 * ceil32(return_data.size)) + 1028] = 0
                                            mem[(4 * ceil32(return_data.size)) + 1060] = 0
                                            mem[(4 * ceil32(return_data.size)) + 1092] = block.timestamp
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + 932 len (5 * ceil32(return_data.size)) + 192]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            mem[(4 * ceil32(return_data.size)) + 928] = 0 / totalFees / 2
                                            mem[(4 * ceil32(return_data.size)) + 960] = 0
                                            mem[(4 * ceil32(return_data.size)) + 992] = (0 / totalFees) - (0 / totalFees / 2)
                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                mem[(4 * ceil32(return_data.size)) + 928 len (7 * ceil32(return_data.size)) + 96],
                                            uint8(stor28.field_0) = 0
                                            mem[(4 * ceil32(return_data.size)) + 932] = msg.sender
                                            mem[(4 * ceil32(return_data.size)) + 964] = uint8(arg1)
                                            require ext_code.size(nodeRewardManagementAddress)
                                            call nodeRewardManagementAddress.0x37696eec with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + 932 len (7 * ceil32(return_data.size)) + 64]
                                    else:
                                        if sub_839400f0 and liquidityPoolFee > -1 / sub_839400f0:
                                            revert with 0, 17
                                        if not sub_839400f0:
                                            revert with 0, 18
                                        if sub_839400f0 * liquidityPoolFee / sub_839400f0 != liquidityPoolFee:
                                            revert with 0, 'MOF'
                                        if not totalFees:
                                            revert with 0, '', 0
                                        if not sub_839400f0 * liquidityPoolFee / totalFees:
                                            uint8(stor28.field_0) = 0
                                            require ext_code.size(nodeRewardManagementAddress)
                                            call nodeRewardManagementAddress.0x37696eec with:
                                                 gas gas_remaining wei
                                                args msg.sender, uint8(arg1)
                                        else:
                                            if sub_839400f0 * liquidityPoolFee / totalFees / 2 > sub_839400f0 * liquidityPoolFee / totalFees:
                                                revert with 0, '', 0
                                            if sub_839400f0 * liquidityPoolFee / totalFees < sub_839400f0 * liquidityPoolFee / totalFees / 2:
                                                revert with 0, 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = 2
                                            mem[(2 * ceil32(return_data.size)) + 800] = this.address
                                            require ext_code.size(routerAddress)
                                            staticcall routerAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(2 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (4 * ceil32(return_data.size)) + 864
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + 832] = ext_call.return_data[12 len 20]
                                            mem[0] = routerAddress
                                            mem[32] = sha3(msg.sender, 3)
                                            allowance[msg.sender][stor19].field_0 = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                            allowance[msg.sender][stor19].field_255 = 0
                                            emit Approval((sub_839400f0 * liquidityPoolFee / totalFees / 2), msg.sender, routerAddress);
                                            mem[(4 * ceil32(return_data.size)) + 864] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + 868] = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                            mem[(4 * ceil32(return_data.size)) + 900] = 0
                                            mem[(4 * ceil32(return_data.size)) + 932] = 160
                                            mem[(4 * ceil32(return_data.size)) + 1028] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 1060
                                            t = (2 * ceil32(return_data.size)) + 800
                                            while idx < mem[(2 * ceil32(return_data.size)) + 768]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(4 * ceil32(return_data.size)) + 964] = this.address
                                            mem[(4 * ceil32(return_data.size)) + 996] = block.timestamp
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, sub_839400f0 * liquidityPoolFee / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 1028 len (32 * mem[(2 * ceil32(return_data.size)) + 768]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + 932] = 32
                                                mem[(4 * ceil32(return_data.size)) + 964] = 3
                                                mem[(4 * ceil32(return_data.size)) + 996] = 0x534f460000000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + 999] = 0
                                                revert with memory
                                                  from (4 * ceil32(return_data.size)) + 928
                                                   len (5 * ceil32(return_data.size)) + 100
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            allowance[msg.sender][stor19].field_0 = (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)
                                            emit Approval(((sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)), msg.sender, routerAddress);
                                            mem[(4 * ceil32(return_data.size)) + 932] = this.address
                                            mem[(4 * ceil32(return_data.size)) + 964] = (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)
                                            mem[(4 * ceil32(return_data.size)) + 996] = 0
                                            mem[(4 * ceil32(return_data.size)) + 1028] = 0
                                            mem[(4 * ceil32(return_data.size)) + 1060] = 0
                                            mem[(4 * ceil32(return_data.size)) + 1092] = block.timestamp
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + 932 len (5 * ceil32(return_data.size)) + 192]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            mem[(4 * ceil32(return_data.size)) + 928] = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                            mem[(4 * ceil32(return_data.size)) + 960] = 0
                                            mem[(4 * ceil32(return_data.size)) + 992] = (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)
                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                mem[(4 * ceil32(return_data.size)) + 928 len (7 * ceil32(return_data.size)) + 96],
                                            uint8(stor28.field_0) = 0
                                            mem[(4 * ceil32(return_data.size)) + 932] = msg.sender
                                            mem[(4 * ceil32(return_data.size)) + 964] = uint8(arg1)
                                            require ext_code.size(nodeRewardManagementAddress)
                                            call nodeRewardManagementAddress.0x37696eec with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + 932 len (7 * ceil32(return_data.size)) + 64]
                        else:
                            if sub_839400f0 and devFee > -1 / sub_839400f0:
                                revert with 0, 17
                            if not sub_839400f0:
                                revert with 0, 18
                            if sub_839400f0 * devFee / sub_839400f0 != devFee:
                                revert with 0, 'MOF'
                            mem[ceil32(return_data.size) + 224] = 4
                            mem[ceil32(return_data.size) + 256] = 0x4449563000000000000000000000000000000000000000000000000000000000
                            if not totalFees:
                                revert with 0, '', 0
                            if not sub_839400f0 * devFee / totalFees:
                                if not sub_839400f0:
                                    if not totalFees:
                                        revert with 0, '', 0
                                    if not this.address:
                                        revert with 0, 'F0'
                                    if not distributionPoolAddress:
                                        revert with 0, 'T0'
                                    if stor31[address(this.address)]:
                                        revert with 0, 'BL'
                                    if stor31[stor23]:
                                        revert with 0, 'BL'
                                    if balanceOf[stor23] > !(0 / totalFees):
                                        revert with 0, 17
                                    if balanceOf[stor23] + (0 / totalFees) < balanceOf[stor23]:
                                        revert with 0, 'AOF'
                                    balanceOf[stor23] += 0 / totalFees
                                    if 0 / totalFees > balanceOf[this.address]:
                                        revert with 0, '', 0
                                    if balanceOf[this.address] < 0 / totalFees:
                                        revert with 0, 17
                                    balanceOf[address(this.address)] = balanceOf[this.address] - (0 / totalFees)
                                    emit Transfer((0 / totalFees), this.address, distributionPoolAddress);
                                else:
                                    if sub_839400f0 and rewardsFee > -1 / sub_839400f0:
                                        revert with 0, 17
                                    if not sub_839400f0:
                                        revert with 0, 18
                                    if sub_839400f0 * rewardsFee / sub_839400f0 != rewardsFee:
                                        revert with 0, 'MOF'
                                    if not totalFees:
                                        revert with 0, '', 0
                                    if not this.address:
                                        revert with 0, 'F0'
                                    if not distributionPoolAddress:
                                        revert with 0, 'T0'
                                    if stor31[address(this.address)]:
                                        revert with 0, 'BL'
                                    if stor31[stor23]:
                                        revert with 0, 'BL'
                                    if balanceOf[stor23] > !(sub_839400f0 * rewardsFee / totalFees):
                                        revert with 0, 17
                                    if balanceOf[stor23] + (sub_839400f0 * rewardsFee / totalFees) < balanceOf[stor23]:
                                        revert with 0, 'AOF'
                                    balanceOf[stor23] += sub_839400f0 * rewardsFee / totalFees
                                    if sub_839400f0 * rewardsFee / totalFees > balanceOf[this.address]:
                                        revert with 0, '', 0
                                    if balanceOf[this.address] < sub_839400f0 * rewardsFee / totalFees:
                                        revert with 0, 17
                                    balanceOf[address(this.address)] = balanceOf[this.address] - (sub_839400f0 * rewardsFee / totalFees)
                                    emit Transfer((sub_839400f0 * rewardsFee / totalFees), this.address, distributionPoolAddress);
                                if not sub_839400f0:
                                    if not totalFees:
                                        revert with 0, '', 0
                                    if 0 / totalFees:
                                        if 0 / totalFees / 2 > 0 / totalFees:
                                            revert with 0, '', 0
                                        if 0 / totalFees < 0 / totalFees / 2:
                                            revert with 0, 17
                                        mem[ceil32(return_data.size) + 608] = 2
                                        mem[ceil32(return_data.size) + 640] = this.address
                                        require ext_code.size(routerAddress)
                                        staticcall routerAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 704] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 672] = ext_call.return_data[12 len 20]
                                        allowance[msg.sender][stor19].field_0 = 0 / totalFees / 2
                                        allowance[msg.sender][stor19].field_255 = 0
                                        mem[(2 * ceil32(return_data.size)) + 704] = 0 / totalFees / 2
                                        emit Approval(mem[(2 * ceil32(return_data.size)) + 704 len ceil32(return_data.size) + 32], msg.sender, routerAddress);
                                        mem[(2 * ceil32(return_data.size)) + 704] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 708] = 0 / totalFees / 2
                                        mem[(2 * ceil32(return_data.size)) + 740] = 0
                                        mem[(2 * ceil32(return_data.size)) + 772] = 160
                                        mem[(2 * ceil32(return_data.size)) + 868] = 2
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 900
                                        t = ceil32(return_data.size) + 640
                                        while idx < mem[ceil32(return_data.size) + 608]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 804] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 868 len (32 * mem[ceil32(return_data.size) + 608]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, '', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        allowance[msg.sender][stor19].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                        emit Approval(((0 / totalFees) - (0 / totalFees / 2)), msg.sender, routerAddress);
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (0 / totalFees) - (0 / totalFees / 2), 0, 0, 0, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(Mask(255, 1, 0 / totalFees), 0, (0 / totalFees) - (0 / totalFees / 2));
                                else:
                                    if sub_839400f0 and liquidityPoolFee > -1 / sub_839400f0:
                                        revert with 0, 17
                                    if not sub_839400f0:
                                        revert with 0, 18
                                    if sub_839400f0 * liquidityPoolFee / sub_839400f0 != liquidityPoolFee:
                                        revert with 0, 'MOF'
                                    if not totalFees:
                                        revert with 0, '', 0
                                    if sub_839400f0 * liquidityPoolFee / totalFees:
                                        if sub_839400f0 * liquidityPoolFee / totalFees / 2 > sub_839400f0 * liquidityPoolFee / totalFees:
                                            revert with 0, '', 0
                                        if sub_839400f0 * liquidityPoolFee / totalFees < sub_839400f0 * liquidityPoolFee / totalFees / 2:
                                            revert with 0, 17
                                        mem[ceil32(return_data.size) + 608] = 2
                                        mem[ceil32(return_data.size) + 640] = this.address
                                        require ext_code.size(routerAddress)
                                        staticcall routerAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 704] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 672] = ext_call.return_data[12 len 20]
                                        allowance[msg.sender][stor19].field_0 = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                        allowance[msg.sender][stor19].field_255 = 0
                                        mem[(2 * ceil32(return_data.size)) + 704] = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                        emit Approval(mem[(2 * ceil32(return_data.size)) + 704 len ceil32(return_data.size) + 32], msg.sender, routerAddress);
                                        mem[(2 * ceil32(return_data.size)) + 704] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 708] = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                        mem[(2 * ceil32(return_data.size)) + 740] = 0
                                        mem[(2 * ceil32(return_data.size)) + 772] = 160
                                        mem[(2 * ceil32(return_data.size)) + 868] = 2
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 900
                                        t = ceil32(return_data.size) + 640
                                        while idx < mem[ceil32(return_data.size) + 608]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 804] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, sub_839400f0 * liquidityPoolFee / totalFees), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 868 len (32 * mem[ceil32(return_data.size) + 608]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, '', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        allowance[msg.sender][stor19].field_0 = (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)
                                        emit Approval(((sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)), msg.sender, routerAddress);
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2), 0, 0, 0, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(Mask(255, 1, sub_839400f0 * liquidityPoolFee / totalFees), 0, (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2));
                                uint8(stor28.field_0) = 0
                                require ext_code.size(nodeRewardManagementAddress)
                                call nodeRewardManagementAddress.0x37696eec with:
                                     gas gas_remaining wei
                                    args msg.sender, uint8(arg1)
                            else:
                                mem[ceil32(return_data.size) + 288] = 2
                                mem[ceil32(return_data.size) + 320] = this.address
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 352] = ext_call.return_data[12 len 20]
                                allowance[msg.sender][stor19].field_0 = sub_839400f0 * devFee / totalFees
                                mem[(2 * ceil32(return_data.size)) + 384] = sub_839400f0 * devFee / totalFees
                                emit Approval(mem[(2 * ceil32(return_data.size)) + 384 len ceil32(return_data.size) + 32], msg.sender, routerAddress);
                                mem[(2 * ceil32(return_data.size)) + 384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 388] = sub_839400f0 * devFee / totalFees
                                mem[(2 * ceil32(return_data.size)) + 420] = 0
                                mem[(2 * ceil32(return_data.size)) + 452] = 160
                                mem[(2 * ceil32(return_data.size)) + 548] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 580
                                t = ceil32(return_data.size) + 320
                                while idx < mem[ceil32(return_data.size) + 288]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 484] = this.address
                                mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args sub_839400f0 * devFee / totalFees, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 548 len (32 * mem[ceil32(return_data.size) + 288]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 384] = 3
                                mem[(2 * ceil32(return_data.size)) + 416] = 0x534f460000000000000000000000000000000000000000000000000000000000
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, '', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call devPoolAddress with:
                                     gas 30000 wei
                                if return_data.size:
                                    if not sub_839400f0:
                                        if not totalFees:
                                            revert with 0, '', 0
                                        if not this.address:
                                            revert with 0, 'F0'
                                        if not distributionPoolAddress:
                                            revert with 0, 'T0'
                                        if stor31[address(this.address)]:
                                            revert with 0, 'BL'
                                        if stor31[stor23]:
                                            revert with 0, 'BL'
                                        if balanceOf[stor23] > !(0 / totalFees):
                                            revert with 0, 17
                                        if balanceOf[stor23] + (0 / totalFees) < balanceOf[stor23]:
                                            revert with 0, 'AOF'
                                        balanceOf[stor23] += 0 / totalFees
                                        if 0 / totalFees > balanceOf[this.address]:
                                            revert with 0, '', 0
                                        if balanceOf[this.address] < 0 / totalFees:
                                            revert with 0, 17
                                        balanceOf[address(this.address)] = balanceOf[this.address] - (0 / totalFees)
                                        emit Transfer((0 / totalFees), this.address, distributionPoolAddress);
                                    else:
                                        if sub_839400f0 and rewardsFee > -1 / sub_839400f0:
                                            revert with 0, 17
                                        if not sub_839400f0:
                                            revert with 0, 18
                                        if sub_839400f0 * rewardsFee / sub_839400f0 != rewardsFee:
                                            revert with 0, 'MOF'
                                        if not totalFees:
                                            revert with 0, '', 0
                                        if not this.address:
                                            revert with 0, 'F0'
                                        if not distributionPoolAddress:
                                            revert with 0, 'T0'
                                        if stor31[address(this.address)]:
                                            revert with 0, 'BL'
                                        if stor31[stor23]:
                                            revert with 0, 'BL'
                                        if balanceOf[stor23] > !(sub_839400f0 * rewardsFee / totalFees):
                                            revert with 0, 17
                                        if balanceOf[stor23] + (sub_839400f0 * rewardsFee / totalFees) < balanceOf[stor23]:
                                            revert with 0, 'AOF'
                                        balanceOf[stor23] += sub_839400f0 * rewardsFee / totalFees
                                        if sub_839400f0 * rewardsFee / totalFees > balanceOf[this.address]:
                                            revert with 0, '', 0
                                        if balanceOf[this.address] < sub_839400f0 * rewardsFee / totalFees:
                                            revert with 0, 17
                                        balanceOf[address(this.address)] = balanceOf[this.address] - (sub_839400f0 * rewardsFee / totalFees)
                                        emit Transfer((sub_839400f0 * rewardsFee / totalFees), this.address, distributionPoolAddress);
                                    if sub_839400f0:
                                        if sub_839400f0 and liquidityPoolFee > -1 / sub_839400f0:
                                            revert with 0, 17
                                        if not sub_839400f0:
                                            revert with 0, 18
                                        if sub_839400f0 * liquidityPoolFee / sub_839400f0 != liquidityPoolFee:
                                            revert with 0, 'MOF'
                                        if not totalFees:
                                            revert with 0, '', 0
                                        if sub_839400f0 * liquidityPoolFee / totalFees:
                                            if sub_839400f0 * liquidityPoolFee / totalFees / 2 > sub_839400f0 * liquidityPoolFee / totalFees:
                                                revert with 0, '', 0
                                            if sub_839400f0 * liquidityPoolFee / totalFees < sub_839400f0 * liquidityPoolFee / totalFees / 2:
                                                revert with 0, 17
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 769] = 2
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = this.address
                                            require ext_code.size(routerAddress)
                                            staticcall routerAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 833] = ext_call.return_data[12 len 20]
                                            allowance[msg.sender][stor19].field_0 = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                            allowance[msg.sender][stor19].field_255 = 0
                                            emit Approval((sub_839400f0 * liquidityPoolFee / totalFees / 2), msg.sender, routerAddress);
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 865] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 160
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061
                                            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                            while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 769]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = this.address
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = block.timestamp
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, sub_839400f0 * liquidityPoolFee / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 769]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, '', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            allowance[msg.sender][stor19].field_0 = (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)
                                            emit Approval(((sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)), msg.sender, routerAddress);
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args this.address, (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2), 0, 0, 0, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(Mask(255, 1, sub_839400f0 * liquidityPoolFee / totalFees), 0, (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2));
                                        uint8(stor28.field_0) = 0
                                        require ext_code.size(nodeRewardManagementAddress)
                                        call nodeRewardManagementAddress.0x37696eec with:
                                             gas gas_remaining wei
                                            args msg.sender, uint8(arg1)
                                    else:
                                        if not totalFees:
                                            revert with 0, '', 0
                                        if not 0 / totalFees:
                                            uint8(stor28.field_0) = 0
                                            require ext_code.size(nodeRewardManagementAddress)
                                            call nodeRewardManagementAddress.0x37696eec with:
                                                 gas gas_remaining wei
                                                args msg.sender, uint8(arg1)
                                        else:
                                            if 0 / totalFees / 2 > 0 / totalFees:
                                                revert with 0, '', 0
                                            if 0 / totalFees < 0 / totalFees / 2:
                                                revert with 0, 17
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 769] = 2
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 801] = this.address
                                            require ext_code.size(routerAddress)
                                            staticcall routerAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 833] = ext_call.return_data[12 len 20]
                                            allowance[msg.sender][stor19].field_0 = 0 / totalFees / 2
                                            allowance[msg.sender][stor19].field_255 = 0
                                            emit Approval((0 / totalFees / 2), msg.sender, routerAddress);
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 865] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 869] = 0 / totalFees / 2
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 160
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061
                                            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 801
                                            while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 769]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = this.address
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = block.timestamp
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 769]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = 32
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = 3
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 0x534f460000000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1000] = 0
                                                revert with memory
                                                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929
                                                   len (5 * ceil32(return_data.size)) + 100
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            allowance[msg.sender][stor19].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                            emit Approval(((0 / totalFees) - (0 / totalFees / 2)), msg.sender, routerAddress);
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = this.address
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = (0 / totalFees) - (0 / totalFees / 2)
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 997] = 0
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029] = 0
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061] = 0
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1093] = block.timestamp
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933 len (5 * ceil32(return_data.size)) + 192]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929] = 0 / totalFees / 2
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 961] = 0
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 993] = (0 / totalFees) - (0 / totalFees / 2)
                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 929 len (7 * ceil32(return_data.size)) + 96],
                                            uint8(stor28.field_0) = 0
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933] = msg.sender
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 965] = uint8(arg1)
                                            require ext_code.size(nodeRewardManagementAddress)
                                            call nodeRewardManagementAddress.0x37696eec with:
                                                 gas gas_remaining wei
                                                args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 933 len (7 * ceil32(return_data.size)) + 64]
                                else:
                                    if not sub_839400f0:
                                        if not totalFees:
                                            revert with 0, '', 0
                                        if not this.address:
                                            revert with 0, 'F0'
                                        if not distributionPoolAddress:
                                            revert with 0, 'T0'
                                        if stor31[address(this.address)]:
                                            revert with 0, 'BL'
                                        if stor31[stor23]:
                                            revert with 0, 'BL'
                                        if balanceOf[stor23] > !(0 / totalFees):
                                            revert with 0, 17
                                        if balanceOf[stor23] + (0 / totalFees) < balanceOf[stor23]:
                                            revert with 0, 'AOF'
                                        balanceOf[stor23] += 0 / totalFees
                                        if 0 / totalFees > balanceOf[this.address]:
                                            revert with 0, '', 0
                                        if balanceOf[this.address] < 0 / totalFees:
                                            revert with 0, 17
                                        balanceOf[address(this.address)] = balanceOf[this.address] - (0 / totalFees)
                                        emit Transfer((0 / totalFees), this.address, distributionPoolAddress);
                                        if not sub_839400f0:
                                            if not totalFees:
                                                revert with 0, '', 0
                                            if not 0 / totalFees:
                                                uint8(stor28.field_0) = 0
                                                require ext_code.size(nodeRewardManagementAddress)
                                                call nodeRewardManagementAddress.0x37696eec with:
                                                     gas gas_remaining wei
                                                    args msg.sender, uint8(arg1)
                                            else:
                                                if 0 / totalFees / 2 > 0 / totalFees:
                                                    revert with 0, '', 0
                                                if 0 / totalFees < 0 / totalFees / 2:
                                                    revert with 0, 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = 2
                                                mem[(2 * ceil32(return_data.size)) + 800] = this.address
                                                require ext_code.size(routerAddress)
                                                staticcall routerAddress.WETH() with:
                                                        gas gas_remaining wei
                                                mem[(2 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = (4 * ceil32(return_data.size)) + 864
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 832] = ext_call.return_data[12 len 20]
                                                mem[0] = routerAddress
                                                mem[32] = sha3(msg.sender, 3)
                                                allowance[msg.sender][stor19].field_0 = 0 / totalFees / 2
                                                allowance[msg.sender][stor19].field_255 = 0
                                                emit Approval((0 / totalFees / 2), msg.sender, routerAddress);
                                                mem[(4 * ceil32(return_data.size)) + 864] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + 868] = 0 / totalFees / 2
                                                mem[(4 * ceil32(return_data.size)) + 900] = 0
                                                mem[(4 * ceil32(return_data.size)) + 932] = 160
                                                mem[(4 * ceil32(return_data.size)) + 1028] = 2
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + 1060
                                                t = (2 * ceil32(return_data.size)) + 800
                                                while idx < mem[(2 * ceil32(return_data.size)) + 768]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(4 * ceil32(return_data.size)) + 964] = this.address
                                                mem[(4 * ceil32(return_data.size)) + 996] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args Mask(255, 1, 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 1028 len (32 * mem[(2 * ceil32(return_data.size)) + 768]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + 932] = 32
                                                    mem[(4 * ceil32(return_data.size)) + 964] = 3
                                                    mem[(4 * ceil32(return_data.size)) + 996] = 0x534f460000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + 999] = 0
                                                    revert with memory
                                                      from (4 * ceil32(return_data.size)) + 928
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                allowance[msg.sender][stor19].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                                emit Approval(((0 / totalFees) - (0 / totalFees / 2)), msg.sender, routerAddress);
                                                mem[(4 * ceil32(return_data.size)) + 932] = this.address
                                                mem[(4 * ceil32(return_data.size)) + 964] = (0 / totalFees) - (0 / totalFees / 2)
                                                mem[(4 * ceil32(return_data.size)) + 996] = 0
                                                mem[(4 * ceil32(return_data.size)) + 1028] = 0
                                                mem[(4 * ceil32(return_data.size)) + 1060] = 0
                                                mem[(4 * ceil32(return_data.size)) + 1092] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args mem[(4 * ceil32(return_data.size)) + 932 len (5 * ceil32(return_data.size)) + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[(4 * ceil32(return_data.size)) + 928] = 0 / totalFees / 2
                                                mem[(4 * ceil32(return_data.size)) + 960] = 0
                                                mem[(4 * ceil32(return_data.size)) + 992] = (0 / totalFees) - (0 / totalFees / 2)
                                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                    mem[(4 * ceil32(return_data.size)) + 928 len (7 * ceil32(return_data.size)) + 96],
                                                uint8(stor28.field_0) = 0
                                                mem[(4 * ceil32(return_data.size)) + 932] = msg.sender
                                                mem[(4 * ceil32(return_data.size)) + 964] = uint8(arg1)
                                                require ext_code.size(nodeRewardManagementAddress)
                                                call nodeRewardManagementAddress.0x37696eec with:
                                                     gas gas_remaining wei
                                                    args mem[(4 * ceil32(return_data.size)) + 932 len (7 * ceil32(return_data.size)) + 64]
                                        else:
                                            if sub_839400f0 and liquidityPoolFee > -1 / sub_839400f0:
                                                revert with 0, 17
                                            if not sub_839400f0:
                                                revert with 0, 18
                                            if sub_839400f0 * liquidityPoolFee / sub_839400f0 != liquidityPoolFee:
                                                revert with 0, 'MOF'
                                            if not totalFees:
                                                revert with 0, '', 0
                                            if not sub_839400f0 * liquidityPoolFee / totalFees:
                                                uint8(stor28.field_0) = 0
                                                require ext_code.size(nodeRewardManagementAddress)
                                                call nodeRewardManagementAddress.0x37696eec with:
                                                     gas gas_remaining wei
                                                    args msg.sender, uint8(arg1)
                                            else:
                                                if sub_839400f0 * liquidityPoolFee / totalFees / 2 > sub_839400f0 * liquidityPoolFee / totalFees:
                                                    revert with 0, '', 0
                                                if sub_839400f0 * liquidityPoolFee / totalFees < sub_839400f0 * liquidityPoolFee / totalFees / 2:
                                                    revert with 0, 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = 2
                                                mem[(2 * ceil32(return_data.size)) + 800] = this.address
                                                require ext_code.size(routerAddress)
                                                staticcall routerAddress.WETH() with:
                                                        gas gas_remaining wei
                                                mem[(2 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = (4 * ceil32(return_data.size)) + 864
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 832] = ext_call.return_data[12 len 20]
                                                mem[0] = routerAddress
                                                mem[32] = sha3(msg.sender, 3)
                                                allowance[msg.sender][stor19].field_0 = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                                allowance[msg.sender][stor19].field_255 = 0
                                                emit Approval((sub_839400f0 * liquidityPoolFee / totalFees / 2), msg.sender, routerAddress);
                                                mem[(4 * ceil32(return_data.size)) + 864] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + 868] = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                                mem[(4 * ceil32(return_data.size)) + 900] = 0
                                                mem[(4 * ceil32(return_data.size)) + 932] = 160
                                                mem[(4 * ceil32(return_data.size)) + 1028] = 2
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + 1060
                                                t = (2 * ceil32(return_data.size)) + 800
                                                while idx < mem[(2 * ceil32(return_data.size)) + 768]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(4 * ceil32(return_data.size)) + 964] = this.address
                                                mem[(4 * ceil32(return_data.size)) + 996] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args Mask(255, 1, sub_839400f0 * liquidityPoolFee / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 1028 len (32 * mem[(2 * ceil32(return_data.size)) + 768]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + 932] = 32
                                                    mem[(4 * ceil32(return_data.size)) + 964] = 3
                                                    mem[(4 * ceil32(return_data.size)) + 996] = 0x534f460000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + 999] = 0
                                                    revert with memory
                                                      from (4 * ceil32(return_data.size)) + 928
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                allowance[msg.sender][stor19].field_0 = (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)
                                                emit Approval(((sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)), msg.sender, routerAddress);
                                                mem[(4 * ceil32(return_data.size)) + 932] = this.address
                                                mem[(4 * ceil32(return_data.size)) + 964] = (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)
                                                mem[(4 * ceil32(return_data.size)) + 996] = 0
                                                mem[(4 * ceil32(return_data.size)) + 1028] = 0
                                                mem[(4 * ceil32(return_data.size)) + 1060] = 0
                                                mem[(4 * ceil32(return_data.size)) + 1092] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args mem[(4 * ceil32(return_data.size)) + 932 len (5 * ceil32(return_data.size)) + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[(4 * ceil32(return_data.size)) + 928] = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                                mem[(4 * ceil32(return_data.size)) + 960] = 0
                                                mem[(4 * ceil32(return_data.size)) + 992] = (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)
                                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                    mem[(4 * ceil32(return_data.size)) + 928 len (7 * ceil32(return_data.size)) + 96],
                                                uint8(stor28.field_0) = 0
                                                mem[(4 * ceil32(return_data.size)) + 932] = msg.sender
                                                mem[(4 * ceil32(return_data.size)) + 964] = uint8(arg1)
                                                require ext_code.size(nodeRewardManagementAddress)
                                                call nodeRewardManagementAddress.0x37696eec with:
                                                     gas gas_remaining wei
                                                    args mem[(4 * ceil32(return_data.size)) + 932 len (7 * ceil32(return_data.size)) + 64]
                                    else:
                                        if sub_839400f0 and rewardsFee > -1 / sub_839400f0:
                                            revert with 0, 17
                                        if not sub_839400f0:
                                            revert with 0, 18
                                        if sub_839400f0 * rewardsFee / sub_839400f0 != rewardsFee:
                                            revert with 0, 'MOF'
                                        mem[(2 * ceil32(return_data.size)) + 448] = 4
                                        mem[(2 * ceil32(return_data.size)) + 480] = 0x4449563000000000000000000000000000000000000000000000000000000000
                                        if not totalFees:
                                            revert with 0, '', 0
                                        if not this.address:
                                            revert with 0, 'F0'
                                        if not distributionPoolAddress:
                                            revert with 0, 'T0'
                                        if stor31[address(this.address)]:
                                            revert with 0, 'BL'
                                        if stor31[stor23]:
                                            revert with 0, 'BL'
                                        if balanceOf[stor23] > !(sub_839400f0 * rewardsFee / totalFees):
                                            revert with 0, 17
                                        if balanceOf[stor23] + (sub_839400f0 * rewardsFee / totalFees) < balanceOf[stor23]:
                                            revert with 0, 'AOF'
                                        balanceOf[stor23] += sub_839400f0 * rewardsFee / totalFees
                                        mem[(2 * ceil32(return_data.size)) + 512] = 3
                                        mem[(2 * ceil32(return_data.size)) + 544] = 0x534f460000000000000000000000000000000000000000000000000000000000
                                        if sub_839400f0 * rewardsFee / totalFees > balanceOf[this.address]:
                                            revert with 0, '', 0
                                        if balanceOf[this.address] < sub_839400f0 * rewardsFee / totalFees:
                                            revert with 0, 17
                                        balanceOf[address(this.address)] = balanceOf[this.address] - (sub_839400f0 * rewardsFee / totalFees)
                                        emit Transfer((sub_839400f0 * rewardsFee / totalFees), this.address, distributionPoolAddress);
                                        if sub_839400f0:
                                            if sub_839400f0 and liquidityPoolFee > -1 / sub_839400f0:
                                                revert with 0, 17
                                            if not sub_839400f0:
                                                revert with 0, 18
                                            if sub_839400f0 * liquidityPoolFee / sub_839400f0 != liquidityPoolFee:
                                                revert with 0, 'MOF'
                                            mem[(2 * ceil32(return_data.size)) + 576] = 4
                                            mem[(2 * ceil32(return_data.size)) + 608] = 0x4449563000000000000000000000000000000000000000000000000000000000
                                            if not totalFees:
                                                revert with 0, '', 0
                                            if sub_839400f0 * liquidityPoolFee / totalFees:
                                                mem[(2 * ceil32(return_data.size)) + 640] = 4
                                                mem[(2 * ceil32(return_data.size)) + 672] = 0x4449563000000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 704] = 3
                                                mem[(2 * ceil32(return_data.size)) + 736] = 0x534f460000000000000000000000000000000000000000000000000000000000
                                                if sub_839400f0 * liquidityPoolFee / totalFees / 2 > sub_839400f0 * liquidityPoolFee / totalFees:
                                                    revert with 0, '', 0
                                                if sub_839400f0 * liquidityPoolFee / totalFees < sub_839400f0 * liquidityPoolFee / totalFees / 2:
                                                    revert with 0, 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = 2
                                                mem[(2 * ceil32(return_data.size)) + 800] = this.address
                                                require ext_code.size(routerAddress)
                                                staticcall routerAddress.WETH() with:
                                                        gas gas_remaining wei
                                                mem[(2 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = (4 * ceil32(return_data.size)) + 864
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 832] = ext_call.return_data[12 len 20]
                                                mem[0] = routerAddress
                                                mem[32] = sha3(msg.sender, 3)
                                                allowance[msg.sender][stor19].field_0 = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                                allowance[msg.sender][stor19].field_255 = 0
                                                emit Approval((sub_839400f0 * liquidityPoolFee / totalFees / 2), msg.sender, routerAddress);
                                                mem[(4 * ceil32(return_data.size)) + 864] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + 868] = sub_839400f0 * liquidityPoolFee / totalFees / 2
                                                mem[(4 * ceil32(return_data.size)) + 900] = 0
                                                mem[(4 * ceil32(return_data.size)) + 932] = 160
                                                mem[(4 * ceil32(return_data.size)) + 1028] = 2
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + 1060
                                                t = (2 * ceil32(return_data.size)) + 800
                                                while idx < mem[(2 * ceil32(return_data.size)) + 768]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(4 * ceil32(return_data.size)) + 964] = this.address
                                                mem[(4 * ceil32(return_data.size)) + 996] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 768]) + -mem[64] + 1056]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, '', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                allowance[msg.sender][stor19].field_0 = (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)
                                                emit Approval(((sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2)), msg.sender, routerAddress);
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args this.address, (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2), 0, 0, 0, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                emit SwapAndLiquify(Mask(255, 1, sub_839400f0 * liquidityPoolFee / totalFees), 0, (sub_839400f0 * liquidityPoolFee / totalFees) - (sub_839400f0 * liquidityPoolFee / totalFees / 2));
                                            uint8(stor28.field_0) = 0
                                            require ext_code.size(nodeRewardManagementAddress)
                                            call nodeRewardManagementAddress.0x37696eec with:
                                                 gas gas_remaining wei
                                                args msg.sender, uint8(arg1)
                                        else:
                                            if not totalFees:
                                                revert with 0, '', 0
                                            if not 0 / totalFees:
                                                uint8(stor28.field_0) = 0
                                                require ext_code.size(nodeRewardManagementAddress)
                                                call nodeRewardManagementAddress.0x37696eec with:
                                                     gas gas_remaining wei
                                                    args msg.sender, uint8(arg1)
                                            else:
                                                if 0 / totalFees / 2 > 0 / totalFees:
                                                    revert with 0, '', 0
                                                if 0 / totalFees < 0 / totalFees / 2:
                                                    revert with 0, 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = 2
                                                mem[(2 * ceil32(return_data.size)) + 800] = this.address
                                                require ext_code.size(routerAddress)
                                                staticcall routerAddress.WETH() with:
                                                        gas gas_remaining wei
                                                mem[(2 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = (4 * ceil32(return_data.size)) + 864
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 832] = ext_call.return_data[12 len 20]
                                                mem[0] = routerAddress
                                                mem[32] = sha3(msg.sender, 3)
                                                allowance[msg.sender][stor19].field_0 = 0 / totalFees / 2
                                                allowance[msg.sender][stor19].field_255 = 0
                                                emit Approval((0 / totalFees / 2), msg.sender, routerAddress);
                                                mem[(4 * ceil32(return_data.size)) + 864] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + 868] = 0 / totalFees / 2
                                                mem[(4 * ceil32(return_data.size)) + 900] = 0
                                                mem[(4 * ceil32(return_data.size)) + 932] = 160
                                                mem[(4 * ceil32(return_data.size)) + 1028] = 2
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + 1060
                                                t = (2 * ceil32(return_data.size)) + 800
                                                while idx < mem[(2 * ceil32(return_data.size)) + 768]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(4 * ceil32(return_data.size)) + 964] = this.address
                                                mem[(4 * ceil32(return_data.size)) + 996] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args Mask(255, 1, 0 / totalFees), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 1028 len (32 * mem[(2 * ceil32(return_data.size)) + 768]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    mem[(4 * ceil32(return_data.size)) + 928] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + 932] = 32
                                                    mem[(4 * ceil32(return_data.size)) + 964] = 3
                                                    mem[(4 * ceil32(return_data.size)) + 996] = 0x534f460000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + 999] = 0
                                                    revert with memory
                                                      from (4 * ceil32(return_data.size)) + 928
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                allowance[msg.sender][stor19].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                                emit Approval(((0 / totalFees) - (0 / totalFees / 2)), msg.sender, routerAddress);
                                                mem[(4 * ceil32(return_data.size)) + 932] = this.address
                                                mem[(4 * ceil32(return_data.size)) + 964] = (0 / totalFees) - (0 / totalFees / 2)
                                                mem[(4 * ceil32(return_data.size)) + 996] = 0
                                                mem[(4 * ceil32(return_data.size)) + 1028] = 0
                                                mem[(4 * ceil32(return_data.size)) + 1060] = 0
                                                mem[(4 * ceil32(return_data.size)) + 1092] = block.timestamp
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args mem[(4 * ceil32(return_data.size)) + 932 len (5 * ceil32(return_data.size)) + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[(4 * ceil32(return_data.size)) + 928] = 0 / totalFees / 2
                                                mem[(4 * ceil32(return_data.size)) + 960] = 0
                                                mem[(4 * ceil32(return_data.size)) + 992] = (0 / totalFees) - (0 / totalFees / 2)
                                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                    mem[(4 * ceil32(return_data.size)) + 928 len (7 * ceil32(return_data.size)) + 96],
                                                uint8(stor28.field_0) = 0
                                                mem[(4 * ceil32(return_data.size)) + 932] = msg.sender
                                                mem[(4 * ceil32(return_data.size)) + 964] = uint8(arg1)
                                                require ext_code.size(nodeRewardManagementAddress)
                                                call nodeRewardManagementAddress.0x37696eec with:
                                                     gas gas_remaining wei
                                                    args mem[(4 * ceil32(return_data.size)) + 932 len (7 * ceil32(return_data.size)) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
