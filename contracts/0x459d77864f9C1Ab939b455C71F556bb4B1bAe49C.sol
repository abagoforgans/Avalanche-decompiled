contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = 'Pegasus Finance', 0

const decimals = 18

const symbol = 'PEGASUS', 0


address owner;
uint256 totalSupply;
uint256 maxTxAmount;
uint256 maxWallet;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address routerAddress;
address routerAddress;
address WAVAXAddress;
address pairAddress;
uint256 stor10;
uint8 stor11;
uint256 stor12;
uint256 stor13; offset 1
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint8 swapAndLiquify; offset 160
uint8 stor18; offset 168
uint128 stor18; offset 168
uint128 stor18; offset 160
address marketingWalletAddress;
address stor19;
address distributorAddress;
mapping of uint8 stor21;
mapping of uint8 stor23;
mapping of uint8 stor24;
mapping of uint8 stor26;

function totalSupply() {
    return totalSupply
}

function routerAddress() {
    return routerAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function WAVAX() {
    return WAVAXAddress
}

function marketingWallet() {
    return marketingWalletAddress
}

function maxTxAmount() {
    return maxTxAmount
}

function owner() {
    return owner
}

function distributorAddress() {
    return distributorAddress
}

function pair() {
    return pairAddress
}

function swapAndLiquify() {
    return bool(swapAndLiquify)
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

function maxWallet() {
    return maxWallet
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function launch() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor11:
        revert with 0, 'Already launched'
    stor11 = 1
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = arg1
}

function sub_aa7235c5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor26[address(arg1)] = 0
}

function updateWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingWalletAddress = arg1
}

function sub_1326f357(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxTxAmount = arg1
    maxWallet = arg2
}

function updateSwapAndLiquify(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor18.field_160) = Mask(96, 0, arg1)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_e73217f5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor26[address(arg1)] = 1
    emit 0x71ada328: address(arg1)
}

function collect() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function updateFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor13.field_0) = arg1
    stor12 = arg2
    stor15 = arg3
    if uint256(stor13.field_0) > -stor12 - 1:
        revert with 'NH{q', 17
    if uint256(stor13.field_0) + stor12 > -stor15 - 1:
        revert with 'NH{q', 17
    stor16 = uint256(stor13.field_0) + stor12 + stor15
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor26[address(msg.sender)]:
        revert with 0, 'Transfer : You are blacklisted.'
    if balanceOf[address(msg.sender)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Transfer : You can't transfer more than your balance.'
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] + arg2 >= maxWallet:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Transfer : You can't exceed the max wallet amount of tokens.'
    if arg2 >= maxTxAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Transfer : You can't transfer more than the max TX amount.'
    if balanceOf[address(msg.sender)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Transfer : You can't transfer more than your balance.'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer : Amount is null (amount > 0).'
    if arg2 > maxTxAmount:
        if not stor21[address(msg.sender)]:
            revert with 0, 'Transfer : TX Limit Exceeded'
    if not stor11:
        stor26[address(msg.sender)] = 1
        emit 0x71ada328: msg.sender
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg2
    if uint8(stor18.field_168):
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
    else:
        if stor24[address(msg.sender)]:
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
        else:
            if not stor17:
                revert with 'NH{q', 18
            if arg2 and stor16 / stor17 > -1 / arg2:
                revert with 'NH{q', 17
            if balanceOf[address(this.address)] > (-1 * arg2 * stor16 / stor17) - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] += arg2 * stor16 / stor17
            emit Transfer((arg2 * stor16 / stor17), msg.sender, this.address);
            if arg2 < arg2 * stor16 / stor17:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] > -arg2 + (arg2 * stor16 / stor17) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor16 / stor17)
        if not stor23[address(msg.sender)]:
            require ext_code.size(stor19)
            call stor19.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, balanceOf[address(msg.sender)]
        if not stor23[address(arg1)]:
            require ext_code.size(stor19)
            call stor19.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), balanceOf[address(arg1)]
        if arg1 == pairAddress:
            if arg1 == pairAddress:
                if swapAndLiquify:
                    Mask(88, 0, stor18.field_168) = 1
                    if not stor17:
                        revert with 'NH{q', 18
                    if swapAndLiquify:
                        if balanceOf[address(this.address)] and 0 / stor17 > -1 / balanceOf[address(this.address)]:
                            revert with 'NH{q', 17
                        if not stor17:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] and stor14 / stor17 > -1 / balanceOf[address(this.address)]:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] < balanceOf[address(this.address)] * 0 / stor17 / 2:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] - (balanceOf[address(this.address)] * 0 / stor17 / 2) < balanceOf[address(this.address)] * stor14 / stor17:
                            revert with 'NH{q', 17
                        mem[128] = this.address
                        mem[160] = WAVAXAddress
                        mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[196] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * 0 / stor17 / 2) - (balanceOf[address(this.address)] * stor14 / stor17)
                        idx = 0
                        s = 128
                        t = 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * 0 / stor17 / 2) - (balanceOf[address(this.address)] * stor14 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 'NH{q', 17
                        if stor16 < 0:
                            revert with 'NH{q', 17
                        if stor16 < stor14:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] < balanceOf[address(this.address)] * stor14 / stor17:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += -1 * balanceOf[address(this.address)] * stor14 / stor17
                        if balanceOf[0] > (-1 * balanceOf[address(this.address)] * stor14 / stor17) - 1:
                            revert with 'NH{q', 17
                        balanceOf[0] += balanceOf[address(this.address)] * stor14 / stor17
                        emit BurnTokens((balanceOf[address(this.address)] * stor14 / stor17), this.address, 0);
                        if not stor16 - stor14:
                            revert with 'NH{q', 18
                        if False and 0 / stor16 - stor14 > 0:
                            revert with 'NH{q', 17
                        if not stor16 - stor14:
                            revert with 'NH{q', 18
                        if False and stor12 / stor16 - stor14 > 0:
                            revert with 'NH{q', 17
                        if not stor16 - stor14:
                            revert with 'NH{q', 18
                        if False and stor15 / stor16 - stor14 > 0:
                            revert with 'NH{q', 17
                        require ext_code.size(stor19)
                        call stor19.deposit() with:
                             gas gas_remaining wei
                        call marketingWalletAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(this.address), balanceOf[address(this.address)] * 0 / stor17, 0, 0, marketingWalletAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        emit AutoLiquify(0, balanceOf[address(this.address)] * 0 / stor17);
                    else:
                        if balanceOf[address(this.address)] and uint256(stor13.field_0) / stor17 > -1 / balanceOf[address(this.address)]:
                            revert with 'NH{q', 17
                        if not stor17:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] and stor14 / stor17 > -1 / balanceOf[address(this.address)]:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] < balanceOf[address(this.address)] * uint256(stor13.field_0) / stor17 / 2:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor13.field_0) / stor17 / 2) < balanceOf[address(this.address)] * stor14 / stor17:
                            revert with 'NH{q', 17
                        mem[128] = this.address
                        mem[160] = WAVAXAddress
                        mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[196] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor13.field_0) / stor17 / 2) - (balanceOf[address(this.address)] * stor14 / stor17)
                        idx = 0
                        s = 128
                        t = 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor13.field_0) / stor17 / 2) - (balanceOf[address(this.address)] * stor14 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 'NH{q', 17
                        if stor16 < uint255(stor13.field_1):
                            revert with 'NH{q', 17
                        if stor16 - uint255(stor13.field_1) < stor14:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] < balanceOf[address(this.address)] * stor14 / stor17:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += -1 * balanceOf[address(this.address)] * stor14 / stor17
                        if balanceOf[0] > (-1 * balanceOf[address(this.address)] * stor14 / stor17) - 1:
                            revert with 'NH{q', 17
                        balanceOf[0] += balanceOf[address(this.address)] * stor14 / stor17
                        emit BurnTokens((balanceOf[address(this.address)] * stor14 / stor17), this.address, 0);
                        if not stor16 - uint255(stor13.field_1) - stor14:
                            revert with 'NH{q', 18
                        if False and uint256(stor13.field_0) / stor16 - uint255(stor13.field_1) - stor14 > 0:
                            revert with 'NH{q', 17
                        if not stor16 - uint255(stor13.field_1) - stor14:
                            revert with 'NH{q', 18
                        if False and stor12 / stor16 - uint255(stor13.field_1) - stor14 > 0:
                            revert with 'NH{q', 17
                        if not stor16 - uint255(stor13.field_1) - stor14:
                            revert with 'NH{q', 18
                        if False and stor15 / stor16 - uint255(stor13.field_1) - stor14 > 0:
                            revert with 'NH{q', 17
                        require ext_code.size(stor19)
                        call stor19.deposit() with:
                             gas gas_remaining wei
                        call marketingWalletAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(this.address), balanceOf[address(this.address)] * uint256(stor13.field_0) / stor17, 0, 0, marketingWalletAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        emit AutoLiquify(0, balanceOf[address(this.address)] * uint256(stor13.field_0) / stor17);
                    Mask(88, 0, stor18.field_168) = 0
        else:
            if arg1 == routerAddress:
                if swapAndLiquify:
                    Mask(88, 0, stor18.field_168) = 1
                    if not stor17:
                        revert with 'NH{q', 18
                    if swapAndLiquify:
                        if balanceOf[address(this.address)] and 0 / stor17 > -1 / balanceOf[address(this.address)]:
                            revert with 'NH{q', 17
                        if not stor17:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] and stor14 / stor17 > -1 / balanceOf[address(this.address)]:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] < balanceOf[address(this.address)] * 0 / stor17 / 2:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] - (balanceOf[address(this.address)] * 0 / stor17 / 2) < balanceOf[address(this.address)] * stor14 / stor17:
                            revert with 'NH{q', 17
                        mem[128] = this.address
                        mem[160] = WAVAXAddress
                        mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[196] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * 0 / stor17 / 2) - (balanceOf[address(this.address)] * stor14 / stor17)
                        idx = 0
                        s = 128
                        t = 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * 0 / stor17 / 2) - (balanceOf[address(this.address)] * stor14 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 'NH{q', 17
                        if stor16 < 0:
                            revert with 'NH{q', 17
                        if stor16 < stor14:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] < balanceOf[address(this.address)] * stor14 / stor17:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += -1 * balanceOf[address(this.address)] * stor14 / stor17
                        if balanceOf[0] > (-1 * balanceOf[address(this.address)] * stor14 / stor17) - 1:
                            revert with 'NH{q', 17
                        balanceOf[0] += balanceOf[address(this.address)] * stor14 / stor17
                        emit BurnTokens((balanceOf[address(this.address)] * stor14 / stor17), this.address, 0);
                        if not stor16 - stor14:
                            revert with 'NH{q', 18
                        if False and 0 / stor16 - stor14 > 0:
                            revert with 'NH{q', 17
                        if not stor16 - stor14:
                            revert with 'NH{q', 18
                        if False and stor12 / stor16 - stor14 > 0:
                            revert with 'NH{q', 17
                        if not stor16 - stor14:
                            revert with 'NH{q', 18
                        if False and stor15 / stor16 - stor14 > 0:
                            revert with 'NH{q', 17
                        require ext_code.size(stor19)
                        call stor19.deposit() with:
                             gas gas_remaining wei
                        call marketingWalletAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(this.address), balanceOf[address(this.address)] * 0 / stor17, 0, 0, marketingWalletAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        emit AutoLiquify(0, balanceOf[address(this.address)] * 0 / stor17);
                    else:
                        if balanceOf[address(this.address)] and uint256(stor13.field_0) / stor17 > -1 / balanceOf[address(this.address)]:
                            revert with 'NH{q', 17
                        if not stor17:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] and stor14 / stor17 > -1 / balanceOf[address(this.address)]:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] < balanceOf[address(this.address)] * uint256(stor13.field_0) / stor17 / 2:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor13.field_0) / stor17 / 2) < balanceOf[address(this.address)] * stor14 / stor17:
                            revert with 'NH{q', 17
                        mem[128] = this.address
                        mem[160] = WAVAXAddress
                        mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[196] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor13.field_0) / stor17 / 2) - (balanceOf[address(this.address)] * stor14 / stor17)
                        idx = 0
                        s = 128
                        t = 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor13.field_0) / stor17 / 2) - (balanceOf[address(this.address)] * stor14 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 'NH{q', 17
                        if stor16 < uint255(stor13.field_1):
                            revert with 'NH{q', 17
                        if stor16 - uint255(stor13.field_1) < stor14:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] < balanceOf[address(this.address)] * stor14 / stor17:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += -1 * balanceOf[address(this.address)] * stor14 / stor17
                        if balanceOf[0] > (-1 * balanceOf[address(this.address)] * stor14 / stor17) - 1:
                            revert with 'NH{q', 17
                        balanceOf[0] += balanceOf[address(this.address)] * stor14 / stor17
                        emit BurnTokens((balanceOf[address(this.address)] * stor14 / stor17), this.address, 0);
                        if not stor16 - uint255(stor13.field_1) - stor14:
                            revert with 'NH{q', 18
                        if False and uint256(stor13.field_0) / stor16 - uint255(stor13.field_1) - stor14 > 0:
                            revert with 'NH{q', 17
                        if not stor16 - uint255(stor13.field_1) - stor14:
                            revert with 'NH{q', 18
                        if False and stor12 / stor16 - uint255(stor13.field_1) - stor14 > 0:
                            revert with 'NH{q', 17
                        if not stor16 - uint255(stor13.field_1) - stor14:
                            revert with 'NH{q', 18
                        if False and stor15 / stor16 - uint255(stor13.field_1) - stor14 > 0:
                            revert with 'NH{q', 17
                        require ext_code.size(stor19)
                        call stor19.deposit() with:
                             gas gas_remaining wei
                        call marketingWalletAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(this.address), balanceOf[address(this.address)] * uint256(stor13.field_0) / stor17, 0, 0, marketingWalletAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        emit AutoLiquify(0, balanceOf[address(this.address)] * uint256(stor13.field_0) / stor17);
                    Mask(88, 0, stor18.field_168) = 0
        require ext_code.size(stor19)
        call stor19.process(uint256 arg1) with:
             gas gas_remaining wei
            args stor10
        emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
