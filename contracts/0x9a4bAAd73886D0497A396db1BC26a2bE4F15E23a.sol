contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = 'Lonely Inu', 0

const totalSupply = 10^16

const decimals = 9

const symbol = '', 0


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint256 _maxWalletSize;
uint256 stor7;
uint256 stor8;
uint256 stor10;
uint64 stor11;
uint256 stor11; offset 56
uint256 stor11;
uint256 stor12;
uint256 stor13; offset 1
uint256 stor13;
uint256 stor14;
uint256 stor15;
address stor16;
address stor17;
uint256 stor18;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor24;

function swapThreshold() {
    return swapThreshold
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

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setTargetLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!You are not the Owner'
    stor18 = arg1
    emit 0x52b2b08b: arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!You are not the Owner'
    stor4[address(arg1)] = uint8(arg2)
    emit 0x1b92447b: address(arg1), arg2
}

function setFeeReceiver(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!You are not the Owner'
    stor16 = arg1
    stor17 = arg2
    emit 0x47ec85e8: address(arg1), arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!You are not the Owner'
    stor5[address(arg1)] = uint8(arg2)
    emit 0x6824b1d8: address(arg1), arg2
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor20] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if arg1 and 2 * balanceOf[stor20] > -1 / arg1:
        revert with 0, 17
    return (arg1 * 2 * balanceOf[stor20] / 10^16)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor20] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if arg2 and 2 * balanceOf[stor20] > -1 / arg2:
        revert with 0, 17
    return (arg2 * 2 * balanceOf[stor20] / 10^16 > arg1)
}

function ClearStuckBalance() {
    if owner != msg.sender:
        revert with 0, '!You are not the Owner'
    call stor16 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x98be19c3: eth.balance(this.address), stor16
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!You are not the Owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!You are not the Owner'
    if arg1 > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
        revert with 0, 17
    if 10^16 * arg1 / 100 < 10^14:
        revert with 0, 'Can't set MaxWallet below 1%'
    _maxWalletSize = 10^16 * arg1 / 100
    emit 0xa2c87c3e: (10^16 * arg1 / 100)
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!You are not the Owner'
    if arg2 <= 0:
        revert with 0, 'Can't set SwapThreshold to ZERO'
    swapEnabled = uint8(arg1)
    if arg2 and 10^9 > -1 / arg2:
        revert with 0, 17
    swapThreshold = 10^9 * arg2
    emit SetSwapBackSettings(bool(swapEnabled), 10^9 * arg2);
}

function transferForeignToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!You are not the Owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor16 with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x91cecbb8: address(arg1), ext_call.return_data[0]
}

function sub_fc6c167d(?) {
    require calldata.size - 4 >= 160
    require arg4 == arg4 % 72057594037927936
    if owner != msg.sender:
        revert with 0, '!You are not the Owner'
    uint256(stor13.field_0) = arg1
    stor11.field_0 % 72057594037927936 = arg4 % 72057594037927936
    Mask(200, 0, stor11.field_56) = 0
    stor12 = arg5
    if arg4 % 72057594037927936 > !arg5:
        revert with 0, 17
    if (arg4 % 72057594037927936) + arg5 > !arg1:
        revert with 0, 17
    if 2 > !((arg4 % 72057594037927936) + arg5 + arg1):
        revert with 0, 17
    stor14 = (arg4 % 72057594037927936) + arg5 + arg1 + 2
    stor7 = arg2
    stor8 = arg3
    if arg2 > !arg3:
        revert with 0, 17
    if arg2 + arg3 > !arg1:
        revert with 0, 17
    if 2 > !(arg2 + arg3 + arg1):
        revert with 0, 17
    stor10 = arg2 + arg3 + arg1 + 2
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor24:
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if owner != msg.sender:
            if owner != arg1:
                if pairAddress != arg1:
                    if not stor5[address(arg1)]:
                        if not stor5[address(msg.sender)]:
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            if balanceOf[address(arg1)] + arg2 > _maxWalletSize:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the MaxWallet size.'
        if pairAddress != msg.sender:
            if not stor24:
                if swapEnabled:
                    if balanceOf[this.address] >= swapThreshold:
                        stor24 = 1
                        if balanceOf[stor20] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 2 * balanceOf[stor20] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if stor10 > !stor14:
                            revert with 0, 17
                        if 100 * 2 * balanceOf[stor20] / 10^16 > stor18:
                            if balanceOf[this.address] and 0 > -1 / balanceOf[this.address]:
                                revert with 0, 17
                            if not stor10 + stor14:
                                revert with 0, 18
                            if balanceOf[this.address] < 0 / stor10 + stor14 / 2:
                                revert with 0, 17
                            mem[128] = this.address
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address] - (0 / stor10 + stor14 / 2)
                            idx = 0
                            s = ceil32(return_data.size) + 388
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[this.address] - (0 / stor10 + stor14 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if stor7 > !uint256(stor11.field_0):
                                revert with 0, 17
                            if stor8 > !stor12:
                                revert with 0, 17
                            if stor10 + stor14 < 0:
                                revert with 0, 17
                            if eth.balance(this.address) and 0 > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not stor10 + stor14:
                                revert with 0, 18
                            if eth.balance(this.address) and stor7 + uint256(stor11.field_0) > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not stor10 + stor14:
                                revert with 0, 18
                            if eth.balance(this.address) and stor8 + stor12 > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not stor10 + stor14:
                                revert with 0, 18
                            if eth.balance(this.address) < 0 / stor10 + stor14 / 2:
                                revert with 0, 17
                            if eth.balance(this.address) - (0 / stor10 + stor14 / 2) < (stor7 * eth.balance(this.address)) + (uint256(stor11.field_0) * eth.balance(this.address)) / stor10 + stor14:
                                revert with 0, 17
                            if eth.balance(this.address) - (0 / stor10 + stor14 / 2) - ((stor7 * eth.balance(this.address)) + (uint256(stor11.field_0) * eth.balance(this.address)) / stor10 + stor14) < (stor8 * eth.balance(this.address)) + (stor12 * eth.balance(this.address)) / stor10 + stor14:
                                revert with 0, 17
                            if Mask(255, 1, 0 / stor10 + stor14):
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / stor10 + stor14 / 2 wei
                                     gas gas_remaining wei
                                    args this.address, Mask(255, 1, 0 / stor10 + stor14), 0, 0, stor16, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit AutoLiquify(Mask(255, 1, 0 / stor10 + stor14), 0 / stor10 + stor14 / 2);
                        else:
                            if balanceOf[this.address] and uint256(stor13.field_0) > -1 / balanceOf[this.address]:
                                revert with 0, 17
                            if not stor10 + stor14:
                                revert with 0, 18
                            if balanceOf[this.address] < balanceOf[this.address] * uint256(stor13.field_0) / stor10 + stor14 / 2:
                                revert with 0, 17
                            mem[128] = this.address
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address] - (balanceOf[this.address] * uint256(stor13.field_0) / stor10 + stor14 / 2)
                            idx = 0
                            s = ceil32(return_data.size) + 388
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[this.address] - (balanceOf[this.address] * uint256(stor13.field_0) / stor10 + stor14 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if stor7 > !uint256(stor11.field_0):
                                revert with 0, 17
                            if stor8 > !stor12:
                                revert with 0, 17
                            if stor10 + stor14 < uint255(stor13.field_1):
                                revert with 0, 17
                            if eth.balance(this.address) and uint256(stor13.field_0) > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not stor10 + stor14 - uint255(stor13.field_1):
                                revert with 0, 18
                            if eth.balance(this.address) and stor7 + uint256(stor11.field_0) > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not stor10 + stor14 - uint255(stor13.field_1):
                                revert with 0, 18
                            if eth.balance(this.address) and stor8 + stor12 > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not stor10 + stor14 - uint255(stor13.field_1):
                                revert with 0, 18
                            if eth.balance(this.address) < eth.balance(this.address) * uint256(stor13.field_0) / stor10 + stor14 - uint255(stor13.field_1) / 2:
                                revert with 0, 17
                            if eth.balance(this.address) - (eth.balance(this.address) * uint256(stor13.field_0) / stor10 + stor14 - uint255(stor13.field_1) / 2) < (stor7 * eth.balance(this.address)) + (uint256(stor11.field_0) * eth.balance(this.address)) / stor10 + stor14 - uint255(stor13.field_1):
                                revert with 0, 17
                            if eth.balance(this.address) - (eth.balance(this.address) * uint256(stor13.field_0) / stor10 + stor14 - uint255(stor13.field_1) / 2) - ((stor7 * eth.balance(this.address)) + (uint256(stor11.field_0) * eth.balance(this.address)) / stor10 + stor14 - uint255(stor13.field_1)) < (stor8 * eth.balance(this.address)) + (stor12 * eth.balance(this.address)) / stor10 + stor14 - uint255(stor13.field_1):
                                revert with 0, 17
                            if Mask(255, 1, balanceOf[this.address] * uint256(stor13.field_0) / stor10 + stor14):
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value eth.balance(this.address) * uint256(stor13.field_0) / stor10 + stor14 - uint255(stor13.field_1) / 2 wei
                                     gas gas_remaining wei
                                    args this.address, Mask(255, 1, balanceOf[this.address] * uint256(stor13.field_0) / stor10 + stor14), 0, 0, stor16, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit AutoLiquify(Mask(255, 1, eth.balance(this.address) * uint256(stor13.field_0) / stor10 + stor14 - uint255(stor13.field_1)), balanceOf[this.address] * uint256(stor13.field_0) / stor10 + stor14 / 2);
                        stor24 = 0
        if not launchedAt:
            if pairAddress == arg1:
                require balanceOf[address(msg.sender)]
                launchedAt = block.timestamp
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if stor4[address(msg.sender)]:
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor4[address(arg1)]:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if pairAddress != msg.sender:
                    if 2 > !stor14:
                        revert with 0, 17
                    stor15 = stor14 + 2
                else:
                    if 2 > !stor10:
                        revert with 0, 17
                    stor15 = stor10 + 2
                if arg2 / 100 and stor15 > -1 / arg2 / 100:
                    revert with 0, 17
                if balanceOf[this.address] > !(arg2 / 100 * stor15):
                    revert with 0, 17
                balanceOf[this.address] += arg2 / 100 * stor15
                emit Transfer((arg2 / 100 * stor15), msg.sender, this.address);
                if arg2 < arg2 / 100 * stor15:
                    revert with 0, 17
                if balanceOf[address(arg1)] > !(arg2 - (arg2 / 100 * stor15)):
                    revert with 0, 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * stor15)
                emit Transfer((arg2 - (arg2 / 100 * stor15)), msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x8f9a55c0(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xdc93cf70(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xf2fde38b(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xdc93cf70(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, '!You are not the Owner'
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call stor16 with:
                       value ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x91cecbb8: address(arg1), ext_call.return_data[0]
                else:
                    if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        return allowance[address(arg1)][address(arg2)]
                    if unknown_0xdf20fd49(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == bool(arg1)
                        if owner != msg.sender:
                            revert with 0, '!You are not the Owner'
                        if arg2 <= 0:
                            revert with 0, 'Can't set SwapThreshold to ZERO'
                        swapEnabled = uint8(bool(arg1))
                        if arg2 and 10^9 > -1 / arg2:
                            revert with 0, 17
                        swapThreshold = 10^9 * arg2
                        emit SetSwapBackSettings(bool(swapEnabled), 10^9 * arg2);
                    else:
                        require unknown_0xe66db25e(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        if owner != msg.sender:
                            revert with 0, '!You are not the Owner'
                        stor16 = address(arg1)
                        stor17 = address(arg2)
                        emit 0x47ec85e8: address(arg1), address(arg2)
            else:
                if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, '!You are not the Owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    emit OwnershipTransferred(owner, address(arg1));
                    owner = address(arg1)
                else:
                    if unknown_0xf84ba65d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == bool(arg2)
                        if owner != msg.sender:
                            revert with 0, '!You are not the Owner'
                        stor5[address(arg1)] = uint8(bool(arg2))
                        emit 0x6824b1d8: address(arg1), bool(arg2)
                    else:
                        if unknown_0xf887ea40(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return routerAddress
                        require unknown_0xfc6c167d(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 160
                        require arg4 == arg4 % 72057594037927936
                        if owner != msg.sender:
                            revert with 0, '!You are not the Owner'
                        uint256(stor13.field_0) = arg1
                        stor11.field_0 % 72057594037927936 = arg4 % 72057594037927936
                        Mask(200, 0, stor11.field_56) = 0
                        stor12 = arg5
                        if arg4 % 72057594037927936 > !arg5:
                            revert with 0, 17
                        if (arg4 % 72057594037927936) + arg5 > !arg1:
                            revert with 0, 17
                        if 2 > !((arg4 % 72057594037927936) + arg5 + arg1):
                            revert with 0, 17
                        stor14 = (arg4 % 72057594037927936) + arg5 + arg1 + 2
                        stor7 = arg2
                        stor8 = arg3
                        if arg2 > !arg3:
                            revert with 0, 17
                        if arg2 + arg3 > !arg1:
                            revert with 0, 17
                        if 2 > !(arg2 + arg3 + arg1):
                            revert with 0, 17
                        stor10 = arg2 + arg3 + arg1 + 2
        if unknown_0xa8aa1b31(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x8f9a55c0(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return _maxWalletSize
            if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return '', 0
            require unknown_0x99734872(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            if owner != msg.sender:
                revert with 0, '!You are not the Owner'
            stor18 = arg1
            emit 0x52b2b08b: arg1
        if unknown_0xa8aa1b31(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return pairAddress
        if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
            if unknown_0xbf56b371(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return launchedAt
            require unknown_0xd51ed1c8(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            if balanceOf[stor20] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if arg1 and 2 * balanceOf[stor20] > -1 / arg1:
                revert with 0, 17
            return (arg1 * 2 * balanceOf[stor20] / 10^16)
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if stor24:
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, address(arg1));
        else:
            if owner != msg.sender:
                if owner != address(arg1):
                    if pairAddress != address(arg1):
                        if not stor5[address(arg1)]:
                            if not stor5[address(msg.sender)]:
                                if balanceOf[address(arg1)] > !arg2:
                                    revert with 0, 17
                                if balanceOf[address(arg1)] + arg2 > _maxWalletSize:
                                    revert with 0, 'Transfer amount exceeds the MaxWallet size.'
            if pairAddress != msg.sender:
                if not stor24:
                    if swapEnabled:
                        if balanceOf[this.address] >= swapThreshold:
                            stor24 = 1
                            if balanceOf[stor20] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if 2 * balanceOf[stor20] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if stor10 > !stor14:
                                revert with 0, 17
                            if 100 * 2 * balanceOf[stor20] / 10^16 > stor18:
                                if balanceOf[this.address] and 0 > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not stor10 + stor14:
                                    revert with 0, 18
                                if balanceOf[this.address] < 0 / stor10 + stor14 / 2:
                                    revert with 0, 17
                                mem[160] = this.address
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[192] = ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = balanceOf[this.address] - (0 / stor10 + stor14 / 2)
                                idx = 0
                                s = ceil32(return_data.size) + 420
                                t = 160
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[this.address] - (0 / stor10 + stor14 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if stor7 > !uint256(stor11.field_0):
                                    revert with 0, 17
                                if stor8 > !stor12:
                                    revert with 0, 17
                                if stor10 + stor14 < 0:
                                    revert with 0, 17
                                if eth.balance(this.address) and 0 > -1 / eth.balance(this.address):
                                    revert with 0, 17
                                if not stor10 + stor14:
                                    revert with 0, 18
                                if eth.balance(this.address) and stor7 + uint256(stor11.field_0) > -1 / eth.balance(this.address):
                                    revert with 0, 17
                                if not stor10 + stor14:
                                    revert with 0, 18
                                if eth.balance(this.address) and stor8 + stor12 > -1 / eth.balance(this.address):
                                    revert with 0, 17
                                if not stor10 + stor14:
                                    revert with 0, 18
                                if eth.balance(this.address) < 0 / stor10 + stor14 / 2:
                                    revert with 0, 17
                                if eth.balance(this.address) - (0 / stor10 + stor14 / 2) < (stor7 * eth.balance(this.address)) + (uint256(stor11.field_0) * eth.balance(this.address)) / stor10 + stor14:
                                    revert with 0, 17
                                if eth.balance(this.address) - (0 / stor10 + stor14 / 2) - ((stor7 * eth.balance(this.address)) + (uint256(stor11.field_0) * eth.balance(this.address)) / stor10 + stor14) < (stor8 * eth.balance(this.address)) + (stor12 * eth.balance(this.address)) / stor10 + stor14:
                                    revert with 0, 17
                                if Mask(255, 1, 0 / stor10 + stor14):
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / stor10 + stor14 / 2 wei
                                         gas gas_remaining wei
                                        args this.address, Mask(255, 1, 0 / stor10 + stor14), 0, 0, stor16, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit AutoLiquify(Mask(255, 1, 0 / stor10 + stor14), 0 / stor10 + stor14 / 2);
                            else:
                                if balanceOf[this.address] and uint256(stor13.field_0) > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not stor10 + stor14:
                                    revert with 0, 18
                                if balanceOf[this.address] < balanceOf[this.address] * uint256(stor13.field_0) / stor10 + stor14 / 2:
                                    revert with 0, 17
                                mem[160] = this.address
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[192] = ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = balanceOf[this.address] - (balanceOf[this.address] * uint256(stor13.field_0) / stor10 + stor14 / 2)
                                idx = 0
                                s = ceil32(return_data.size) + 420
                                t = 160
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[this.address] - (balanceOf[this.address] * uint256(stor13.field_0) / stor10 + stor14 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if stor7 > !uint256(stor11.field_0):
                                    revert with 0, 17
                                if stor8 > !stor12:
                                    revert with 0, 17
                                if stor10 + stor14 < uint255(stor13.field_1):
                                    revert with 0, 17
                                if eth.balance(this.address) and uint256(stor13.field_0) > -1 / eth.balance(this.address):
                                    revert with 0, 17
                                if not stor10 + stor14 - uint255(stor13.field_1):
                                    revert with 0, 18
                                if eth.balance(this.address) and stor7 + uint256(stor11.field_0) > -1 / eth.balance(this.address):
                                    revert with 0, 17
                                if not stor10 + stor14 - uint255(stor13.field_1):
                                    revert with 0, 18
                                if eth.balance(this.address) and stor8 + stor12 > -1 / eth.balance(this.address):
                                    revert with 0, 17
                                if not stor10 + stor14 - uint255(stor13.field_1):
                                    revert with 0, 18
                                if eth.balance(this.address) < eth.balance(this.address) * uint256(stor13.field_0) / stor10 + stor14 - uint255(stor13.field_1) / 2:
                                    revert with 0, 17
                                if eth.balance(this.address) - (eth.balance(this.address) * uint256(stor13.field_0) / stor10 + stor14 - uint255(stor13.field_1) / 2) < (stor7 * eth.balance(this.address)) + (uint256(stor11.field_0) * eth.balance(this.address)) / stor10 + stor14 - uint255(stor13.field_1):
                                    revert with 0, 17
                                if eth.balance(this.address) - (eth.balance(this.address) * uint256(stor13.field_0) / stor10 + stor14 - uint255(stor13.field_1) / 2) - ((stor7 * eth.balance(this.address)) + (uint256(stor11.field_0) * eth.balance(this.address)) / stor10 + stor14 - uint255(stor13.field_1)) < (stor8 * eth.balance(this.address)) + (stor12 * eth.balance(this.address)) / stor10 + stor14 - uint255(stor13.field_1):
                                    revert with 0, 17
                                if Mask(255, 1, balanceOf[this.address] * uint256(stor13.field_0) / stor10 + stor14):
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) * uint256(stor13.field_0) / stor10 + stor14 - uint255(stor13.field_1) / 2 wei
                                         gas gas_remaining wei
                                        args this.address, Mask(255, 1, balanceOf[this.address] * uint256(stor13.field_0) / stor10 + stor14), 0, 0, stor16, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit AutoLiquify(Mask(255, 1, eth.balance(this.address) * uint256(stor13.field_0) / stor10 + stor14 - uint255(stor13.field_1)), balanceOf[this.address] * uint256(stor13.field_0) / stor10 + stor14 / 2);
                            stor24 = 0
            if not launchedAt:
                if pairAddress == address(arg1):
                    require balanceOf[address(msg.sender)]
                    launchedAt = block.timestamp
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if stor4[address(msg.sender)]:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, address(arg1));
            else:
                if stor4[address(arg1)]:
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, address(arg1));
                else:
                    if pairAddress != msg.sender:
                        if 2 > !stor14:
                            revert with 0, 17
                        stor15 = stor14 + 2
                    else:
                        if 2 > !stor10:
                            revert with 0, 17
                        stor15 = stor10 + 2
                    if arg2 / 100 and stor15 > -1 / arg2 / 100:
                        revert with 0, 17
                    if balanceOf[this.address] > !(arg2 / 100 * stor15):
                        revert with 0, 17
                    balanceOf[this.address] += arg2 / 100 * stor15
                    emit Transfer((arg2 / 100 * stor15), msg.sender, this.address);
                    if arg2 < arg2 / 100 * stor15:
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !(arg2 - (arg2 / 100 * stor15)):
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * stor15)
                    emit Transfer((arg2 - (arg2 / 100 * stor15)), msg.sender, address(arg1));
    else:
        if unknown_0x2f54bf6e(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x658d4b7f(?????) <= uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x658d4b7f(?????):
                    if unknown_0x6ddd1713(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(swapEnabled)
                    if uint32(call.func_hash) >> 224 != unknown_0x70a08231(?????):
                        require unknown_0x893d20e8(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return owner
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return balanceOf[address(arg1)]
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == bool(arg2)
                if owner != msg.sender:
                    revert with 0, '!You are not the Owner'
                stor4[address(arg1)] = uint8(bool(arg2))
                emit 0x1b92447b: address(arg1), bool(arg2)
            else:
                if unknown_0x2f54bf6e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return (owner == address(arg1))
                if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 9
                if unknown_0x571ac8b0(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    allowance[msg.sender][address(arg1)] = -1
                    emit Approval(-1, msg.sender, address(arg1));
                    return 1
                require unknown_0x5d0044ca(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, '!You are not the Owner'
                if arg1 > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
                    revert with 0, 17
                if 10^16 * arg1 / 100 < 10^14:
                    revert with 0, 'Can't set MaxWallet below 1%'
                _maxWalletSize = 10^16 * arg1 / 100
                emit 0xa2c87c3e: (10^16 * arg1 / 100)
        if unknown_0x1161ae39(?????) > uint32(call.func_hash) >> 224:
            if swapThreshold() == uint32(call.func_hash) >> 224:
                require not msg.value
                return swapThreshold
            if name() == uint32(call.func_hash) >> 224:
                require not msg.value
                return 'Lonely Inu', 0
            require approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            allowance[msg.sender][address(arg1)] = arg2
            emit Approval(arg2, msg.sender, address(arg1));
        else:
            if unknown_0x1161ae39(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                if balanceOf[stor20] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if arg2 and 2 * balanceOf[stor20] > -1 / arg2:
                    revert with 0, 17
                return (arg2 * 2 * balanceOf[stor20] / 10^16 > arg1)
            if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 10^16
            if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                require unknown_0x25348b05(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if owner != msg.sender:
                    revert with 0, '!You are not the Owner'
                call stor16 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x98be19c3: eth.balance(this.address), stor16
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if allowance[address(arg1)][msg.sender] != -1:
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0, 17
                allowance[address(arg1)][msg.sender] -= arg3
            if stor24:
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
            else:
                if owner != address(arg1):
                    if owner != address(arg2):
                        if pairAddress != address(arg2):
                            if not stor5[address(arg2)]:
                                if not stor5[address(arg1)]:
                                    if balanceOf[address(arg2)] > !arg3:
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] + arg3 > _maxWalletSize:
                                        revert with 0, 'Transfer amount exceeds the MaxWallet size.'
                if pairAddress != msg.sender:
                    if not stor24:
                        if swapEnabled:
                            if balanceOf[this.address] >= swapThreshold:
                                stor24 = 1
                                if balanceOf[stor20] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if 2 * balanceOf[stor20] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                    revert with 0, 17
                                if stor10 > !stor14:
                                    revert with 0, 17
                                if 100 * 2 * balanceOf[stor20] / 10^16 > stor18:
                                    if balanceOf[this.address] and 0 > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not stor10 + stor14:
                                        revert with 0, 18
                                    if balanceOf[this.address] < 0 / stor10 + stor14 / 2:
                                        revert with 0, 17
                                    mem[160] = this.address
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[192] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = balanceOf[this.address] - (0 / stor10 + stor14 / 2)
                                    idx = 0
                                    s = ceil32(return_data.size) + 420
                                    t = 160
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address] - (0 / stor10 + stor14 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if stor7 > !uint256(stor11.field_0):
                                        revert with 0, 17
                                    if stor8 > !stor12:
                                        revert with 0, 17
                                    if stor10 + stor14 < 0:
                                        revert with 0, 17
                                    if eth.balance(this.address) and 0 > -1 / eth.balance(this.address):
                                        revert with 0, 17
                                    if not stor10 + stor14:
                                        revert with 0, 18
                                    if eth.balance(this.address) and stor7 + uint256(stor11.field_0) > -1 / eth.balance(this.address):
                                        revert with 0, 17
                                    if not stor10 + stor14:
                                        revert with 0, 18
                                    if eth.balance(this.address) and stor8 + stor12 > -1 / eth.balance(this.address):
                                        revert with 0, 17
                                    if not stor10 + stor14:
                                        revert with 0, 18
                                    if eth.balance(this.address) < 0 / stor10 + stor14 / 2:
                                        revert with 0, 17
                                    if eth.balance(this.address) - (0 / stor10 + stor14 / 2) < (stor7 * eth.balance(this.address)) + (uint256(stor11.field_0) * eth.balance(this.address)) / stor10 + stor14:
                                        revert with 0, 17
                                    if eth.balance(this.address) - (0 / stor10 + stor14 / 2) - ((stor7 * eth.balance(this.address)) + (uint256(stor11.field_0) * eth.balance(this.address)) / stor10 + stor14) < (stor8 * eth.balance(this.address)) + (stor12 * eth.balance(this.address)) / stor10 + stor14:
                                        revert with 0, 17
                                    if Mask(255, 1, 0 / stor10 + stor14):
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / stor10 + stor14 / 2 wei
                                             gas gas_remaining wei
                                            args this.address, Mask(255, 1, 0 / stor10 + stor14), 0, 0, stor16, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit AutoLiquify(Mask(255, 1, 0 / stor10 + stor14), 0 / stor10 + stor14 / 2);
                                else:
                                    if balanceOf[this.address] and uint256(stor13.field_0) > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not stor10 + stor14:
                                        revert with 0, 18
                                    if balanceOf[this.address] < balanceOf[this.address] * uint256(stor13.field_0) / stor10 + stor14 / 2:
                                        revert with 0, 17
                                    mem[160] = this.address
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[192] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = balanceOf[this.address] - (balanceOf[this.address] * uint256(stor13.field_0) / stor10 + stor14 / 2)
                                    idx = 0
                                    s = ceil32(return_data.size) + 420
                                    t = 160
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address] - (balanceOf[this.address] * uint256(stor13.field_0) / stor10 + stor14 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if stor7 > !uint256(stor11.field_0):
                                        revert with 0, 17
                                    if stor8 > !stor12:
                                        revert with 0, 17
                                    if stor10 + stor14 < uint255(stor13.field_1):
                                        revert with 0, 17
                                    if eth.balance(this.address) and uint256(stor13.field_0) > -1 / eth.balance(this.address):
                                        revert with 0, 17
                                    if not stor10 + stor14 - uint255(stor13.field_1):
                                        revert with 0, 18
                                    if eth.balance(this.address) and stor7 + uint256(stor11.field_0) > -1 / eth.balance(this.address):
                                        revert with 0, 17
                                    if not stor10 + stor14 - uint255(stor13.field_1):
                                        revert with 0, 18
                                    if eth.balance(this.address) and stor8 + stor12 > -1 / eth.balance(this.address):
                                        revert with 0, 17
                                    if not stor10 + stor14 - uint255(stor13.field_1):
                                        revert with 0, 18
                                    if eth.balance(this.address) < eth.balance(this.address) * uint256(stor13.field_0) / stor10 + stor14 - uint255(stor13.field_1) / 2:
                                        revert with 0, 17
                                    if eth.balance(this.address) - (eth.balance(this.address) * uint256(stor13.field_0) / stor10 + stor14 - uint255(stor13.field_1) / 2) < (stor7 * eth.balance(this.address)) + (uint256(stor11.field_0) * eth.balance(this.address)) / stor10 + stor14 - uint255(stor13.field_1):
                                        revert with 0, 17
                                    if eth.balance(this.address) - (eth.balance(this.address) * uint256(stor13.field_0) / stor10 + stor14 - uint255(stor13.field_1) / 2) - ((stor7 * eth.balance(this.address)) + (uint256(stor11.field_0) * eth.balance(this.address)) / stor10 + stor14 - uint255(stor13.field_1)) < (stor8 * eth.balance(this.address)) + (stor12 * eth.balance(this.address)) / stor10 + stor14 - uint255(stor13.field_1):
                                        revert with 0, 17
                                    if Mask(255, 1, balanceOf[this.address] * uint256(stor13.field_0) / stor10 + stor14):
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) * uint256(stor13.field_0) / stor10 + stor14 - uint255(stor13.field_1) / 2 wei
                                             gas gas_remaining wei
                                            args this.address, Mask(255, 1, balanceOf[this.address] * uint256(stor13.field_0) / stor10 + stor14), 0, 0, stor16, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit AutoLiquify(Mask(255, 1, eth.balance(this.address) * uint256(stor13.field_0) / stor10 + stor14 - uint255(stor13.field_1)), balanceOf[this.address] * uint256(stor13.field_0) / stor10 + stor14 / 2);
                                stor24 = 0
                if not launchedAt:
                    if pairAddress == address(arg2):
                        require balanceOf[address(arg1)]
                        launchedAt = block.timestamp
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)] -= arg3
                if stor4[address(arg1)]:
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, address(arg1), address(arg2));
                else:
                    if stor4[address(arg2)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, address(arg1), address(arg2));
                    else:
                        if pairAddress != address(arg1):
                            if 2 > !stor14:
                                revert with 0, 17
                            stor15 = stor14 + 2
                        else:
                            if 2 > !stor10:
                                revert with 0, 17
                            stor15 = stor10 + 2
                        if arg3 / 100 and stor15 > -1 / arg3 / 100:
                            revert with 0, 17
                        if balanceOf[this.address] > !(arg3 / 100 * stor15):
                            revert with 0, 17
                        balanceOf[this.address] += arg3 / 100 * stor15
                        emit Transfer((arg3 / 100 * stor15), address(arg1), this.address);
                        if arg3 < arg3 / 100 * stor15:
                            revert with 0, 17
                        if balanceOf[address(arg2)] > !(arg3 - (arg3 / 100 * stor15)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * stor15)
                        emit Transfer((arg3 - (arg3 / 100 * stor15)), address(arg1), address(arg2));
    return 1
}



}
