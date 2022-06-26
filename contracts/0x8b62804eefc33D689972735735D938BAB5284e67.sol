contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = 'PeacefulJoe', 0

const decimals = 9

const symbol = 'PJ', 0


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint256 totalSupply;
uint256 _maxWalletSize;
uint256 stor8; offset 1
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;
address stor13;
uint256 stor14;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint256 sub_aa2264b2;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor21;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
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

function sub_aa2264b2(?) {
    return sub_aa2264b2
}

function launchedAt() {
    return launchedAt
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

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == owner)
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor4[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor5[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function ClearStuckBalance() {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    call stor12 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg2 <= 0:
        revert with 0, 'Can't set SwapThreshold to ZERO'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balanceOf[stor16] and 2 > -1 / balanceOf[stor16]:
        revert with 'NH{q', 17
    if arg1 and 2 * balanceOf[stor16] > -1 / arg1:
        revert with 'NH{q', 17
    if not totalSupply:
        revert with 'NH{q', 18
    return (arg1 * 2 * balanceOf[stor16] / totalSupply)
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 'NH{q', 17
    if totalSupply * arg1 / 100 < totalSupply / 100:
        revert with 0, 'Can't set MaxWallet below 1%'
    _maxWalletSize = totalSupply * arg1 / 100
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if balanceOf[stor16] and 2 > -1 / balanceOf[stor16]:
        revert with 'NH{q', 17
    if arg2 and 2 * balanceOf[stor16] > -1 / arg2:
        revert with 'NH{q', 17
    if not totalSupply:
        revert with 'NH{q', 18
    return (arg2 * 2 * balanceOf[stor16] / totalSupply > arg1)
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < launchedAt:
        revert with 'NH{q', 17
    if block.timestamp - launchedAt <= 120:
        if not arg1:
            return stor11
        if stor11 and 4 > -1 / stor11:
            revert with 'NH{q', 17
        return (4 * stor11)
    if arg1:
        if stor11 and 1 > -1 / stor11:
            revert with 'NH{q', 17
    return stor11
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 >= 33:
        revert with 0, 'Total fees must be below 33%'
    uint256(stor8.field_0) = arg1
    stor9 = arg2
    stor10 = arg3
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    stor11 = arg1 + arg2 + arg3
}

function transferForeignToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call stor12 with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor21:
        if balanceOf[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if owner != msg.sender:
            if arg1 != owner:
                if arg1 != pairAddress:
                    if not stor5[address(arg1)]:
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 > _maxWalletSize:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the MaxWallet size.'
        if pairAddress != msg.sender:
            if not stor21:
                if swapEnabled:
                    if balanceOf[address(this.address)] >= swapThreshold:
                        stor21 = 1
                        if balanceOf[stor16] and 2 > -1 / balanceOf[stor16]:
                            revert with 'NH{q', 17
                        if 2 * balanceOf[stor16] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 'NH{q', 17
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if 100 * 2 * balanceOf[stor16] / totalSupply > stor14:
                            if balanceOf[address(this.address)] and 0 > -1 / balanceOf[address(this.address)]:
                                revert with 'NH{q', 17
                            if not stor11:
                                revert with 'NH{q', 18
                            if balanceOf[address(this.address)] < 0 / stor11 / 2:
                                revert with 'NH{q', 17
                            mem[128] = this.address
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.0x73b295c2 with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)] - (0 / stor11 / 2)
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)] - (0 / stor11 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if stor11 < 0:
                                revert with 'NH{q', 17
                            if eth.balance(this.address) and 0 > -1 / eth.balance(this.address):
                                revert with 'NH{q', 17
                            if not stor11:
                                revert with 'NH{q', 18
                            if eth.balance(this.address) and stor9 > -1 / eth.balance(this.address):
                                revert with 'NH{q', 17
                            if not stor11:
                                revert with 'NH{q', 18
                            if eth.balance(this.address) < 0 / stor11 / 2:
                                revert with 'NH{q', 17
                            if eth.balance(this.address) - (0 / stor11 / 2) < eth.balance(this.address) * stor9 / stor11:
                                revert with 'NH{q', 17
                            call stor12 with:
                               value eth.balance(this.address) * stor9 / stor11 wei
                                 gas 30000 wei
                            if not ext_call.success:
                                revert with 0, 'receiver rejected BNB transfer'
                            call stor13 with:
                               value eth.balance(this.address) - (0 / stor11 / 2) - (eth.balance(this.address) * stor9 / stor11) wei
                                 gas 30000 wei
                            if not ext_call.success:
                                revert with 0, 'receiver rejected BNB transfer'
                            if 0 / stor11 / 2 > 0:
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / stor11 / 2 wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, 0 / stor11), 0, 0, stor12, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                        else:
                            if balanceOf[address(this.address)] and uint256(stor8.field_0) > -1 / balanceOf[address(this.address)]:
                                revert with 'NH{q', 17
                            if not stor11:
                                revert with 'NH{q', 18
                            if balanceOf[address(this.address)] < balanceOf[address(this.address)] * uint256(stor8.field_0) / stor11 / 2:
                                revert with 'NH{q', 17
                            mem[128] = this.address
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.0x73b295c2 with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor8.field_0) / stor11 / 2)
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor8.field_0) / stor11 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if stor11 < uint255(stor8.field_1):
                                revert with 'NH{q', 17
                            if eth.balance(this.address) and uint256(stor8.field_0) > -1 / eth.balance(this.address):
                                revert with 'NH{q', 17
                            if not stor11 - uint255(stor8.field_1):
                                revert with 'NH{q', 18
                            if eth.balance(this.address) and stor9 > -1 / eth.balance(this.address):
                                revert with 'NH{q', 17
                            if not stor11 - uint255(stor8.field_1):
                                revert with 'NH{q', 18
                            if eth.balance(this.address) < eth.balance(this.address) * uint256(stor8.field_0) / stor11 - uint255(stor8.field_1) / 2:
                                revert with 'NH{q', 17
                            if eth.balance(this.address) - (eth.balance(this.address) * uint256(stor8.field_0) / stor11 - uint255(stor8.field_1) / 2) < eth.balance(this.address) * stor9 / stor11 - uint255(stor8.field_1):
                                revert with 'NH{q', 17
                            call stor12 with:
                               value eth.balance(this.address) * stor9 / stor11 - uint255(stor8.field_1) wei
                                 gas 30000 wei
                            if not ext_call.success:
                                revert with 0, 'receiver rejected BNB transfer'
                            call stor13 with:
                               value eth.balance(this.address) - (eth.balance(this.address) * uint256(stor8.field_0) / stor11 - uint255(stor8.field_1) / 2) - (eth.balance(this.address) * stor9 / stor11 - uint255(stor8.field_1)) wei
                                 gas 30000 wei
                            if not ext_call.success:
                                revert with 0, 'receiver rejected BNB transfer'
                            if balanceOf[address(this.address)] * uint256(stor8.field_0) / stor11 / 2 > 0:
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value eth.balance(this.address) * uint256(stor8.field_0) / stor11 - uint255(stor8.field_1) / 2 wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, balanceOf[address(this.address)] * uint256(stor8.field_0) / stor11), 0, 0, stor12, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                        stor21 = 0
        if not launchedAt:
            if arg1 == pairAddress:
                require balanceOf[address(msg.sender)] > 0
                launchedAt = block.number
        if balanceOf[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg2
        if stor4[address(msg.sender)]:
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor4[address(arg1)]:
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if block.timestamp < launchedAt:
                    revert with 'NH{q', 17
                if block.timestamp - launchedAt <= 120:
                    if arg1 != pairAddress:
                        if arg2 / 100 and stor11 > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] > (-1 * arg2 / 100 * stor11) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg2 / 100 * stor11
                        emit Transfer((arg2 / 100 * stor11), msg.sender, this.address);
                        if arg2 < arg2 / 100 * stor11:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] > -arg2 + (arg2 / 100 * stor11) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * stor11)
                        emit Transfer((arg2 - (arg2 / 100 * stor11)), msg.sender, arg1);
                    else:
                        if stor11 and 4 > -1 / stor11:
                            revert with 'NH{q', 17
                        if arg2 / 100 and 4 * stor11 > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] > (-1 * arg2 / 100 * 4 * stor11) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg2 / 100 * 4 * stor11
                        emit Transfer((arg2 / 100 * 4 * stor11), msg.sender, this.address);
                        if arg2 < arg2 / 100 * 4 * stor11:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] > -arg2 + (arg2 / 100 * 4 * stor11) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * 4 * stor11)
                        emit Transfer((arg2 - (arg2 / 100 * 4 * stor11)), msg.sender, arg1);
                else:
                    if arg1 == pairAddress:
                        if stor11 and 1 > -1 / stor11:
                            revert with 'NH{q', 17
                    if arg2 / 100 and stor11 > -1 / arg2 / 100:
                        revert with 'NH{q', 17
                    if balanceOf[address(this.address)] > (-1 * arg2 / 100 * stor11) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)] += arg2 / 100 * stor11
                    emit Transfer((arg2 / 100 * stor11), msg.sender, this.address);
                    if arg2 < arg2 / 100 * stor11:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] > -arg2 + (arg2 / 100 * stor11) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * stor11)
                    emit Transfer((arg2 - (arg2 / 100 * stor11)), msg.sender, arg1);
    return 1
}



}
