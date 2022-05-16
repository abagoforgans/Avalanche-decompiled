contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = 'DONTBUY', 0

const totalSupply = 1000000000 * 10^18

const decimals = 9

const symbol = 'DONTBUY', 0


address owner;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint256 stor7;
uint256 stor8;
uint256 stor10;
uint256 stor11;
address stor12;
address stor13;
address stor14;
uint8 stor15; offset 160
uint8 stor15; offset 168
uint8 stor15; offset 176
uint8 stor15; offset 184
uint128 stor15; offset 184
address stor15;
uint256 stor15;
uint256 sub_5a94a02a;
uint256 sub_bb70e46c;
uint256 sub_7d84e378;
uint256 sub_b1d19bf7;
uint8 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;

function sub_029d377a(?) {
    return bool(stor20)
}

function sub_2c3a825f(?) {
    return bool(stor20)
}

function sub_5a94a02a(?) {
    return sub_5a94a02a
}

function sub_7d84e378(?) {
    return sub_7d84e378
}

function owner() {
    return owner
}

function sub_b1d19bf7(?) {
    return sub_b1d19bf7
}

function sub_bb70e46c(?) {
    return sub_bb70e46c
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22 = arg1
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21 = arg1
}

function setTokensToSwap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23 = arg1
}

function delBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function setCooldownEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(72, 0, stor15.field_184) = Mask(72, 0, arg1)
}

function sub_5a16db81(?) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5a94a02a = arg1
    sub_bb70e46c = arg2
    sub_7d84e378 = arg3
    sub_b1d19bf7 = arg4
    if arg1:
        stor20 = 0
    if not sub_5a94a02a:
        stor20 = 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)] > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not stor8 / 1000000000 * 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor2[address(arg1)] / stor8 / 1000000000 * 10^18)
}

function manualsend() {
    require msg.sender == stor12
    call stor12 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor13 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setBots(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function manualswap() {
    require msg.sender == stor12
    if stor2[address(this.address)] > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not stor8 / 1000000000 * 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    uint8(stor15.field_168) = 1
    mem[320] = this.address
    require ext_code.size(stor14)
    staticcall stor14.0x73b295c2 with:
            gas gas_remaining wei
    mem[384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[352] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not stor14:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor14] = stor2[address(this.address)] / stor8 / 1000000000 * 10^18
    emit Approval((stor2[address(this.address)] / stor8 / 1000000000 * 10^18), this.address, stor14);
    mem[ceil32(return_data.size) + 384] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 388] = stor2[address(this.address)] / stor8 / 1000000000 * 10^18
    idx = 0
    s = ceil32(return_data.size) + 580
    t = 320
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor14)
    call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args stor2[address(this.address)] / stor8 / 1000000000 * 10^18, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor15.field_168) = 0
}

function openTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor15.field_160):
        revert with 0, 'trading is already open'
    stor14 = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4] = 1000000000 * 10^18
    emit Approval(1000000000 * 10^18, this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0x73b295c2 with:
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
    address(stor15.field_0) = ext_call.return_data[12 len 20]
    if stor2[address(this.address)] > stor8:
        revert with 0, 'Amount must be less than total reflections'
    if not stor8 / 1000000000 * 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(stor14)
    call stor14.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args address(this.address), stor2[address(this.address)] / stor8 / 1000000000 * 10^18, 0, 0, owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    stor21 = 20000000 * 10^18
    stor22 = 20000000 * 10^18
    uint256(stor15.field_0) = 16842753
    require ext_code.size(address(stor15.field_0))
    call address(stor15.field_0).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor14, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    stor10 = 1
    stor11 = 9
    if owner != msg.sender:
        if owner != arg1:
            require not stor6[address(msg.sender)]
            require not stor6[address(arg1)]
            if address(stor15.field_0) != msg.sender:
                if address(stor15.field_0) == arg1:
                    if stor14 != msg.sender:
                        if not stor5[address(msg.sender)]:
                            stor10 = sub_bb70e46c
                            stor11 = sub_b1d19bf7
                            require arg2 <= stor21
                if stor2[address(this.address)] > stor8:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
                if not stor8 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                if not uint8(stor15.field_168):
                    if address(stor15.field_0) != msg.sender:
                        if uint8(stor15.field_176):
                            if stor2[address(this.address)] / stor8 / 1000000000 * 10^18 > stor23:
                                stor10 = sub_bb70e46c
                                stor11 = sub_b1d19bf7
                                uint8(stor15.field_168) = 1
                                mem[320] = this.address
                                require ext_code.size(stor14)
                                staticcall stor14.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[384] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[352] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not stor14:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor14] = stor23
                                emit Approval(stor23, this.address, stor14);
                                mem[ceil32(return_data.size) + 384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 388] = stor23
                                idx = 0
                                s = ceil32(return_data.size) + 580
                                t = 320
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args stor23, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor15.field_168) = 0
                                if eth.balance(this.address):
                                    call stor12 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call stor13 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if stor14 == arg1:
                    if address(stor15.field_0) == arg1:
                        if stor14 != msg.sender:
                            if not stor5[address(msg.sender)]:
                                stor10 = sub_bb70e46c
                                stor11 = sub_b1d19bf7
                                require arg2 <= stor21
                    if stor2[address(this.address)] > stor8:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
                    if not stor8 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not uint8(stor15.field_168):
                        if address(stor15.field_0) != msg.sender:
                            if uint8(stor15.field_176):
                                if stor2[address(this.address)] / stor8 / 1000000000 * 10^18 > stor23:
                                    stor10 = sub_bb70e46c
                                    stor11 = sub_b1d19bf7
                                    uint8(stor15.field_168) = 1
                                    mem[320] = this.address
                                    require ext_code.size(stor14)
                                    staticcall stor14.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[384] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[352] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not stor14:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor14] = stor23
                                    emit Approval(stor23, this.address, stor14);
                                    mem[ceil32(return_data.size) + 384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 388] = stor23
                                    idx = 0
                                    s = ceil32(return_data.size) + 580
                                    t = 320
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor14)
                                    call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args stor23, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor15.field_168) = 0
                                    if eth.balance(this.address):
                                        call stor12 with:
                                           value eth.balance(this.address) / 2 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call stor13 with:
                                           value eth.balance(this.address) / 2 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if stor5[address(arg1)]:
                        if address(stor15.field_0) == arg1:
                            if stor14 != msg.sender:
                                if not stor5[address(msg.sender)]:
                                    stor10 = sub_bb70e46c
                                    stor11 = sub_b1d19bf7
                                    require arg2 <= stor21
                        if stor2[address(this.address)] > stor8:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
                        if not stor8 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not uint8(stor15.field_168):
                            if address(stor15.field_0) != msg.sender:
                                if uint8(stor15.field_176):
                                    if stor2[address(this.address)] / stor8 / 1000000000 * 10^18 > stor23:
                                        stor10 = sub_bb70e46c
                                        stor11 = sub_b1d19bf7
                                        uint8(stor15.field_168) = 1
                                        mem[320] = this.address
                                        require ext_code.size(stor14)
                                        staticcall stor14.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[384] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[352] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not stor14:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14] = stor23
                                        emit Approval(stor23, this.address, stor14);
                                        mem[ceil32(return_data.size) + 384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 388] = stor23
                                        idx = 0
                                        s = ceil32(return_data.size) + 580
                                        t = 320
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor14)
                                        call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor23, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor15.field_168) = 0
                                        if eth.balance(this.address):
                                            call stor12 with:
                                               value eth.balance(this.address) / 2 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            call stor13 with:
                                               value eth.balance(this.address) / 2 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if this.address == msg.sender:
                            if address(stor15.field_0) == arg1:
                                if stor14 != msg.sender:
                                    if not stor5[address(msg.sender)]:
                                        stor10 = sub_bb70e46c
                                        stor11 = sub_b1d19bf7
                                        require arg2 <= stor21
                            if stor2[address(this.address)] > stor8:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
                            if not stor8 / 1000000000 * 10^18:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not uint8(stor15.field_168):
                                if address(stor15.field_0) != msg.sender:
                                    if uint8(stor15.field_176):
                                        if stor2[address(this.address)] / stor8 / 1000000000 * 10^18 > stor23:
                                            stor10 = sub_bb70e46c
                                            stor11 = sub_b1d19bf7
                                            uint8(stor15.field_168) = 1
                                            mem[320] = this.address
                                            require ext_code.size(stor14)
                                            staticcall stor14.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[384] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[352] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not stor14:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor14] = stor23
                                            emit Approval(stor23, this.address, stor14);
                                            mem[ceil32(return_data.size) + 384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 388] = stor23
                                            idx = 0
                                            s = ceil32(return_data.size) + 580
                                            t = 320
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor14)
                                            call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor23, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            uint8(stor15.field_168) = 0
                                            if eth.balance(this.address):
                                                call stor12 with:
                                                   value eth.balance(this.address) / 2 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call stor13 with:
                                                   value eth.balance(this.address) / 2 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not uint8(stor15.field_184):
                                if address(stor15.field_0) == arg1:
                                    if stor14 != msg.sender:
                                        if not stor5[address(msg.sender)]:
                                            stor10 = sub_bb70e46c
                                            stor11 = sub_b1d19bf7
                                            require arg2 <= stor21
                                if stor2[address(this.address)] > stor8:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
                                if not stor8 / 1000000000 * 10^18:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not uint8(stor15.field_168):
                                    if address(stor15.field_0) != msg.sender:
                                        if uint8(stor15.field_176):
                                            if stor2[address(this.address)] / stor8 / 1000000000 * 10^18 > stor23:
                                                stor10 = sub_bb70e46c
                                                stor11 = sub_b1d19bf7
                                                uint8(stor15.field_168) = 1
                                                mem[320] = this.address
                                                require ext_code.size(stor14)
                                                staticcall stor14.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[384] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[352] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not stor14:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                allowance[address(this.address)][stor14] = stor23
                                                emit Approval(stor23, this.address, stor14);
                                                mem[ceil32(return_data.size) + 384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 388] = stor23
                                                idx = 0
                                                s = ceil32(return_data.size) + 580
                                                t = 320
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor14)
                                                call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args stor23, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                uint8(stor15.field_168) = 0
                                                if eth.balance(this.address):
                                                    call stor12 with:
                                                       value eth.balance(this.address) / 2 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call stor13 with:
                                                       value eth.balance(this.address) / 2 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                stor10 = sub_5a94a02a
                                stor11 = sub_7d84e378
                                if stor2[address(arg1)] > stor8:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
                                if not stor8 / 1000000000 * 10^18:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if stor2[address(arg1)] / stor8 / 1000000000 * 10^18 > !arg2:
                                    revert with 0, 17
                                require (stor2[address(arg1)] / stor8 / 1000000000 * 10^18) + arg2 <= stor22
                                require block.timestamp > stor7[address(arg1)]
                                require arg2 <= stor21
                                if 30 > !block.timestamp:
                                    revert with 0, 17
                                stor7[address(arg1)] = block.timestamp + 30
                                if address(stor15.field_0) == arg1:
                                    if stor14 != msg.sender:
                                        if not stor5[address(msg.sender)]:
                                            stor10 = sub_bb70e46c
                                            stor11 = sub_b1d19bf7
                                            require arg2 <= stor21
                                if stor2[address(this.address)] > stor8:
                                    revert with 0, 'Amount must be less than total reflections'
                                if not stor8 / 1000000000 * 10^18:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not uint8(stor15.field_168):
                                    if address(stor15.field_0) != msg.sender:
                                        if uint8(stor15.field_176):
                                            if stor2[address(this.address)] / stor8 / 1000000000 * 10^18 > stor23:
                                                stor10 = sub_bb70e46c
                                                stor11 = sub_b1d19bf7
                                                uint8(stor15.field_168) = 1
                                                mem[512] = this.address
                                                require ext_code.size(stor14)
                                                staticcall stor14.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[576] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[544] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not stor14:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                allowance[address(this.address)][stor14] = stor23
                                                emit Approval(stor23, this.address, stor14);
                                                mem[ceil32(return_data.size) + 576] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 580] = stor23
                                                idx = 0
                                                s = ceil32(return_data.size) + 772
                                                t = 512
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor14)
                                                call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args stor23, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                uint8(stor15.field_168) = 0
                                                if eth.balance(this.address):
                                                    call stor12 with:
                                                       value eth.balance(this.address) / 2 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call stor13 with:
                                                       value eth.balance(this.address) / 2 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
    if stor10 > !stor11:
        revert with 0, 17
    if arg2 and stor10 + stor11 > -1 / arg2:
        revert with 0, 17
    if arg2 < (stor10 * arg2) + (stor11 * arg2) / 100:
        revert with 0, 17
    if arg2 - ((stor10 * arg2) + (stor11 * arg2) / 100) > !((stor10 * arg2) + (stor11 * arg2) / 100):
        revert with 0, 17
    if arg2 > arg2:
        if arg2 - ((stor10 * arg2) + (stor11 * arg2) / 100) > !((stor10 * arg2) + (stor11 * arg2) / 100):
            revert with 0, 17
        if arg2 < arg2:
            revert with 0, 17
        if 0 > (stor10 * arg2) + (stor11 * arg2) / 100:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (stor10 * arg2) + (stor11 * arg2) / 100 < 0:
            revert with 0, 17
    if arg2 - ((stor10 * arg2) + (stor11 * arg2) / 100) > stor2[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor2[address(msg.sender)] < arg2 - ((stor10 * arg2) + (stor11 * arg2) / 100):
        revert with 0, 17
    stor2[address(msg.sender)] = stor2[address(msg.sender)] - arg2 + ((stor10 * arg2) + (stor11 * arg2) / 100)
    if stor2[arg1] > !(arg2 - ((stor10 * arg2) + (stor11 * arg2) / 100)):
        revert with 0, 17
    if stor2[arg1] + arg2 - ((stor10 * arg2) + (stor11 * arg2) / 100) < stor2[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    stor2[address(arg1)] = stor2[arg1] + arg2 - ((stor10 * arg2) + (stor11 * arg2) / 100)
    if stor2[this.address] > !((stor10 * arg2) + (stor11 * arg2) / 100):
        revert with 0, 17
    if stor2[this.address] + ((stor10 * arg2) + (stor11 * arg2) / 100) < stor2[this.address]:
        revert with 0, 'SafeMath: addition overflow'
    stor2[this.address] += (stor10 * arg2) + (stor11 * arg2) / 100
    emit Transfer((arg2 - ((stor10 * arg2) + (stor11 * arg2) / 100)), msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x6fc3eaec(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xb1d19bf7(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xc3c8cd80(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xb1d19bf7(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_b1d19bf7
                if uint32(call.func_hash) >> 224 != unknown_0xb515566a(?????):
                    require unknown_0xbb70e46c(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_bb70e46c
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 > test266151307() or ceil32(32 * ('cd', 4).length) + 129 < 128:
                    revert with 0, 65
                require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
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
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 172 len 20]
                    mem[32] = 6
                    stor6[mem[(32 * idx) + 172 len 20]] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if unknown_0xc3c8cd80(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require msg.sender == stor12
                    if stor2[address(this.address)] > stor8:
                        revert with 0, 'Amount must be less than total reflections'
                    if not stor8 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: division by zero', 0
                    uint8(stor15.field_168) = 1
                    mem[352] = this.address
                    require ext_code.size(stor14)
                    staticcall stor14.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[384] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not stor14:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor14] = stor2[address(this.address)] / stor8 / 1000000000 * 10^18
                    emit Approval((stor2[address(this.address)] / stor8 / 1000000000 * 10^18), this.address, stor14);
                    mem[ceil32(return_data.size) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 420] = stor2[address(this.address)] / stor8 / 1000000000 * 10^18
                    idx = 0
                    s = ceil32(return_data.size) + 612
                    t = 352
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor14)
                    call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args stor2[address(this.address)] / stor8 / 1000000000 * 10^18, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 612 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uint8(stor15.field_168) = 0
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xc9567bf9(?????):
                        if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            require cd[36] == address(cd[36])
                            return allowance[address(cd[4])][address(cd[36])]
                        require unknown_0xec28438a(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor21 = cd[4]
                    else:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if uint8(stor15.field_160):
                            revert with 0, 'trading is already open'
                        stor14 = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4] = 1000000000 * 10^18
                        emit Approval(1000000000 * 10^18, this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0x73b295c2 with:
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
                        address(stor15.field_0) = ext_call.return_data[12 len 20]
                        if stor2[address(this.address)] > stor8:
                            revert with 0, 'Amount must be less than total reflections'
                        if not stor8 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(stor14)
                        call stor14.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args address(this.address), stor2[address(this.address)] / stor8 / 1000000000 * 10^18, 0, 0, owner, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        stor21 = 20000000 * 10^18
                        stor22 = 20000000 * 10^18
                        uint256(stor15.field_0) = 16842753
                        require ext_code.size(address(stor15.field_0))
                        call address(stor15.field_0).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor14, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if unknown_0x7d84e378(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x6fc3eaec(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require msg.sender == stor12
                call stor12 with:
                   value eth.balance(this.address) / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor13 with:
                   value eth.balance(this.address) / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if uint32(call.func_hash) >> 224 != unknown_0x70a08231(?????):
                require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                emit OwnershipTransferred(owner, 0);
                owner = 0
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if stor2[address(cd[4])] > stor8:
                revert with 0, 'Amount must be less than total reflections'
            if not stor8 / 1000000000 * 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            return (stor2[address(cd[4])] / stor8 / 1000000000 * 10^18)
        if unknown_0x7d84e378(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return sub_7d84e378
        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return owner
        if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return 'DONTBUY', 0
        require unknown_0xa9059cbb(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 64
        require cd[4] == address(cd[4])
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not address(cd[4]):
            revert with 0, 'ERC20: transfer to the zero address'
        if cd[36] <= 0:
            revert with 0, 'Transfer amount must be greater than zero'
        stor10 = 1
        stor11 = 9
        if owner != msg.sender:
            if owner != address(cd[4]):
                require not stor6[address(msg.sender)]
                require not stor6[address(cd[4])]
                if address(stor15.field_0) != msg.sender:
                    if address(stor15.field_0) == address(cd[4]):
                        if stor14 != msg.sender:
                            if not stor5[address(msg.sender)]:
                                stor10 = sub_bb70e46c
                                stor11 = sub_b1d19bf7
                                require cd[36] <= stor21
                    if stor2[address(this.address)] > stor8:
                        revert with 0, 'Amount must be less than total reflections'
                    if not stor8 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not uint8(stor15.field_168):
                        if address(stor15.field_0) != msg.sender:
                            if uint8(stor15.field_176):
                                if stor2[address(this.address)] / stor8 / 1000000000 * 10^18 > stor23:
                                    stor10 = sub_bb70e46c
                                    stor11 = sub_b1d19bf7
                                    uint8(stor15.field_168) = 1
                                    mem[352] = this.address
                                    require ext_code.size(stor14)
                                    staticcall stor14.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[416] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[384] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not stor14:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor14] = stor23
                                    emit Approval(stor23, this.address, stor14);
                                    mem[ceil32(return_data.size) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 420] = stor23
                                    idx = 0
                                    s = ceil32(return_data.size) + 612
                                    t = 352
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor14)
                                    call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args stor23, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 612 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor15.field_168) = 0
                                    if eth.balance(this.address):
                                        call stor12 with:
                                           value eth.balance(this.address) / 2 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call stor13 with:
                                           value eth.balance(this.address) / 2 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if stor14 == address(cd[4]):
                        if address(stor15.field_0) == address(cd[4]):
                            if stor14 != msg.sender:
                                if not stor5[address(msg.sender)]:
                                    stor10 = sub_bb70e46c
                                    stor11 = sub_b1d19bf7
                                    require cd[36] <= stor21
                        if stor2[address(this.address)] > stor8:
                            revert with 0, 'Amount must be less than total reflections'
                        if not stor8 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not uint8(stor15.field_168):
                            if address(stor15.field_0) != msg.sender:
                                if uint8(stor15.field_176):
                                    if stor2[address(this.address)] / stor8 / 1000000000 * 10^18 > stor23:
                                        stor10 = sub_bb70e46c
                                        stor11 = sub_b1d19bf7
                                        uint8(stor15.field_168) = 1
                                        mem[352] = this.address
                                        require ext_code.size(stor14)
                                        staticcall stor14.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[416] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[384] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not stor14:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14] = stor23
                                        emit Approval(stor23, this.address, stor14);
                                        mem[ceil32(return_data.size) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 420] = stor23
                                        idx = 0
                                        s = ceil32(return_data.size) + 612
                                        t = 352
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor14)
                                        call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor23, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 612 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor15.field_168) = 0
                                        if eth.balance(this.address):
                                            call stor12 with:
                                               value eth.balance(this.address) / 2 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            call stor13 with:
                                               value eth.balance(this.address) / 2 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if stor5[address(cd[4])]:
                            if address(stor15.field_0) == address(cd[4]):
                                if stor14 != msg.sender:
                                    if not stor5[address(msg.sender)]:
                                        stor10 = sub_bb70e46c
                                        stor11 = sub_b1d19bf7
                                        require cd[36] <= stor21
                            if stor2[address(this.address)] > stor8:
                                revert with 0, 'Amount must be less than total reflections'
                            if not stor8 / 1000000000 * 10^18:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not uint8(stor15.field_168):
                                if address(stor15.field_0) != msg.sender:
                                    if uint8(stor15.field_176):
                                        if stor2[address(this.address)] / stor8 / 1000000000 * 10^18 > stor23:
                                            stor10 = sub_bb70e46c
                                            stor11 = sub_b1d19bf7
                                            uint8(stor15.field_168) = 1
                                            mem[352] = this.address
                                            require ext_code.size(stor14)
                                            staticcall stor14.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[416] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[384] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not stor14:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor14] = stor23
                                            emit Approval(stor23, this.address, stor14);
                                            mem[ceil32(return_data.size) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 420] = stor23
                                            idx = 0
                                            s = ceil32(return_data.size) + 612
                                            t = 352
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor14)
                                            call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor23, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 612 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            uint8(stor15.field_168) = 0
                                            if eth.balance(this.address):
                                                call stor12 with:
                                                   value eth.balance(this.address) / 2 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call stor13 with:
                                                   value eth.balance(this.address) / 2 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if this.address == msg.sender:
                                if address(stor15.field_0) == address(cd[4]):
                                    if stor14 != msg.sender:
                                        if not stor5[address(msg.sender)]:
                                            stor10 = sub_bb70e46c
                                            stor11 = sub_b1d19bf7
                                            require cd[36] <= stor21
                                if stor2[address(this.address)] > stor8:
                                    revert with 0, 'Amount must be less than total reflections'
                                if not stor8 / 1000000000 * 10^18:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not uint8(stor15.field_168):
                                    if address(stor15.field_0) != msg.sender:
                                        if uint8(stor15.field_176):
                                            if stor2[address(this.address)] / stor8 / 1000000000 * 10^18 > stor23:
                                                stor10 = sub_bb70e46c
                                                stor11 = sub_b1d19bf7
                                                uint8(stor15.field_168) = 1
                                                mem[352] = this.address
                                                require ext_code.size(stor14)
                                                staticcall stor14.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[416] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[384] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not stor14:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                allowance[address(this.address)][stor14] = stor23
                                                emit Approval(stor23, this.address, stor14);
                                                mem[ceil32(return_data.size) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 420] = stor23
                                                idx = 0
                                                s = ceil32(return_data.size) + 612
                                                t = 352
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor14)
                                                call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args stor23, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 612 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                uint8(stor15.field_168) = 0
                                                if eth.balance(this.address):
                                                    call stor12 with:
                                                       value eth.balance(this.address) / 2 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call stor13 with:
                                                       value eth.balance(this.address) / 2 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not uint8(stor15.field_184):
                                    if address(stor15.field_0) == address(cd[4]):
                                        if stor14 != msg.sender:
                                            if not stor5[address(msg.sender)]:
                                                stor10 = sub_bb70e46c
                                                stor11 = sub_b1d19bf7
                                                require cd[36] <= stor21
                                    if stor2[address(this.address)] > stor8:
                                        revert with 0, 'Amount must be less than total reflections'
                                    if not stor8 / 1000000000 * 10^18:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not uint8(stor15.field_168):
                                        if address(stor15.field_0) != msg.sender:
                                            if uint8(stor15.field_176):
                                                if stor2[address(this.address)] / stor8 / 1000000000 * 10^18 > stor23:
                                                    stor10 = sub_bb70e46c
                                                    stor11 = sub_b1d19bf7
                                                    uint8(stor15.field_168) = 1
                                                    mem[352] = this.address
                                                    require ext_code.size(stor14)
                                                    staticcall stor14.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[416] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[384] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not stor14:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor14] = stor23
                                                    emit Approval(stor23, this.address, stor14);
                                                    mem[ceil32(return_data.size) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 420] = stor23
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 612
                                                    t = 352
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor14)
                                                    call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args stor23, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 612 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor15.field_168) = 0
                                                    if eth.balance(this.address):
                                                        call stor12 with:
                                                           value eth.balance(this.address) / 2 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call stor13 with:
                                                           value eth.balance(this.address) / 2 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor10 = sub_5a94a02a
                                    stor11 = sub_7d84e378
                                    if stor2[address(cd[4])] > stor8:
                                        revert with 0, 'Amount must be less than total reflections'
                                    if not stor8 / 1000000000 * 10^18:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if stor2[address(cd[4])] / stor8 / 1000000000 * 10^18 > !cd[36]:
                                        revert with 0, 17
                                    require (stor2[address(cd[4])] / stor8 / 1000000000 * 10^18) + cd[36] <= stor22
                                    require block.timestamp > stor7[address(cd[4])]
                                    require cd[36] <= stor21
                                    if 30 > !block.timestamp:
                                        revert with 0, 17
                                    stor7[address(cd[4])] = block.timestamp + 30
                                    if address(stor15.field_0) == address(cd[4]):
                                        if stor14 != msg.sender:
                                            if not stor5[address(msg.sender)]:
                                                stor10 = sub_bb70e46c
                                                stor11 = sub_b1d19bf7
                                                require cd[36] <= stor21
                                    if stor2[address(this.address)] > stor8:
                                        revert with 0, 'Amount must be less than total reflections'
                                    if not stor8 / 1000000000 * 10^18:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if not uint8(stor15.field_168):
                                        if address(stor15.field_0) != msg.sender:
                                            if uint8(stor15.field_176):
                                                if stor2[address(this.address)] / stor8 / 1000000000 * 10^18 > stor23:
                                                    stor10 = sub_bb70e46c
                                                    stor11 = sub_b1d19bf7
                                                    uint8(stor15.field_168) = 1
                                                    mem[544] = this.address
                                                    require ext_code.size(stor14)
                                                    staticcall stor14.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[608] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[576] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not stor14:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor14] = stor23
                                                    emit Approval(stor23, this.address, stor14);
                                                    mem[ceil32(return_data.size) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 612] = stor23
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 804
                                                    t = 544
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor14)
                                                    call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args stor23, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 804 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor15.field_168) = 0
                                                    if eth.balance(this.address):
                                                        call stor12 with:
                                                           value eth.balance(this.address) / 2 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call stor13 with:
                                                           value eth.balance(this.address) / 2 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
        if stor10 > !stor11:
            revert with 0, 17
        if cd[36] and stor10 + stor11 > -1 / cd[36]:
            revert with 0, 17
        if cd[36] < (stor10 * cd[36]) + (stor11 * cd[36]) / 100:
            revert with 0, 17
        if cd[36] - ((stor10 * cd[36]) + (stor11 * cd[36]) / 100) > !((stor10 * cd[36]) + (stor11 * cd[36]) / 100):
            revert with 0, 17
        if cd[36] > cd[36]:
            if cd[36] - ((stor10 * cd[36]) + (stor11 * cd[36]) / 100) > !((stor10 * cd[36]) + (stor11 * cd[36]) / 100):
                revert with 0, 17
            if cd[36] < cd[36]:
                revert with 0, 17
            if 0 > (stor10 * cd[36]) + (stor11 * cd[36]) / 100:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (stor10 * cd[36]) + (stor11 * cd[36]) / 100 < 0:
                revert with 0, 17
        if cd[36] - ((stor10 * cd[36]) + (stor11 * cd[36]) / 100) > stor2[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor2[address(msg.sender)] < cd[36] - ((stor10 * cd[36]) + (stor11 * cd[36]) / 100):
            revert with 0, 17
        stor2[address(msg.sender)] = stor2[address(msg.sender)] - cd[36] + ((stor10 * cd[36]) + (stor11 * cd[36]) / 100)
        if stor2[address(cd[4])] > !(cd[36] - ((stor10 * cd[36]) + (stor11 * cd[36]) / 100)):
            revert with 0, 17
        if stor2[address(cd[4])] + cd[36] - ((stor10 * cd[36]) + (stor11 * cd[36]) / 100) < stor2[address(cd[4])]:
            revert with 0, 'SafeMath: addition overflow'
        stor2[address(cd[4])] = stor2[address(cd[4])] + cd[36] - ((stor10 * cd[36]) + (stor11 * cd[36]) / 100)
        if stor2[this.address] > !((stor10 * cd[36]) + (stor11 * cd[36]) / 100):
            revert with 0, 17
        if stor2[this.address] + ((stor10 * cd[36]) + (stor11 * cd[36]) / 100) < stor2[this.address]:
            revert with 0, 'SafeMath: addition overflow'
        stor2[this.address] += (stor10 * cd[36]) + (stor11 * cd[36]) / 100
        emit Transfer((cd[36] - ((stor10 * cd[36]) + (stor11 * cd[36]) / 100)), msg.sender, address(cd[4]));
    else:
        if unknown_0x2c3a825f(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x5932ead1(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x2c3a825f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(stor20)
                if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 9
                require unknown_0x461d9476(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor23 = cd[4]
            else:
                if unknown_0x5932ead1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == bool(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    Mask(72, 0, stor15.field_184) = Mask(72, 0, bool(cd[4]))
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x5a16db81(?????):
                        if unknown_0x5a94a02a(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_5a94a02a
                        require unknown_0x5d0044ca(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor22 = cd[4]
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_5a94a02a = cd[4]
                        sub_bb70e46c = cd[36]
                        sub_7d84e378 = cd[68]
                        sub_b1d19bf7 = cd[100]
                        if cd[4]:
                            stor20 = 0
                        if not sub_5a94a02a:
                            stor20 = 1
        if unknown_0x029d377a(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return bool(stor20)
        if name() == uint32(call.func_hash) >> 224:
            require not msg.value
            return 'DONTBUY', 0
        if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(cd[4])] = cd[36]
            emit Approval(cd[36], msg.sender, address(cd[4]));
        else:
            if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 1000000000 * 10^18
            if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                require unknown_0x273123b7(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor6[address(cd[4])] = 0
            require not msg.value
            require calldata.size - 4 >= 96
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            if not address(cd[4]):
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(cd[36]):
                revert with 0, 'ERC20: transfer to the zero address'
            if cd[68] <= 0:
                revert with 0, 'Transfer amount must be greater than zero'
            stor10 = 1
            stor11 = 9
            if owner == address(cd[4]):
                if stor10 > !stor11:
                    revert with 0, 17
                if cd[68] and stor10 + stor11 > -1 / cd[68]:
                    revert with 0, 17
                if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                    revert with 0, 17
                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                    revert with 0, 17
                if cd[68] <= cd[68]:
                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                        revert with 0, 17
                    stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                    if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                        revert with 0, 17
                    if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                    if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                        revert with 0, 17
                    if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                    emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                        revert with 0, 17
                    if cd[68] < cd[68]:
                        revert with 0, 17
                    if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                        revert with 0, 17
                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                        revert with 0, 17
                    stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                    if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                        revert with 0, 17
                    if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                    if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                        revert with 0, 17
                    if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                    emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[328 len 24] >> 64, 0
            else:
                if owner == address(cd[36]):
                    if stor10 > !stor11:
                        revert with 0, 17
                    if cd[68] and stor10 + stor11 > -1 / cd[68]:
                        revert with 0, 17
                    if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                        revert with 0, 17
                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                        revert with 0, 17
                    if cd[68] <= cd[68]:
                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                            revert with 0, 17
                        stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                        if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                            revert with 0, 17
                        if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                        if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                            revert with 0, 17
                        if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                        emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                            revert with 0, 17
                        if cd[68] < cd[68]:
                            revert with 0, 17
                        if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                            revert with 0, 17
                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                            revert with 0, 17
                        stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                        if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                            revert with 0, 17
                        if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                        if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                            revert with 0, 17
                        if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                        emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[328 len 24] >> 64, 0
                else:
                    require not stor6[address(cd[4])]
                    require not stor6[address(cd[36])]
                    if address(stor15.field_0) != address(cd[4]):
                        if address(stor15.field_0) == address(cd[36]):
                            if stor14 != address(cd[4]):
                                if not stor5[address(cd[4])]:
                                    stor10 = sub_bb70e46c
                                    stor11 = sub_b1d19bf7
                                    require cd[68] <= stor21
                        if stor2[address(this.address)] > stor8:
                            revert with 0, 'Amount must be less than total reflections'
                        if not stor8 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: division by zero', 0
                        if uint8(stor15.field_168):
                            if stor10 > !stor11:
                                revert with 0, 17
                            if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                revert with 0, 17
                            if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                revert with 0, 17
                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                revert with 0, 17
                            if cd[68] <= cd[68]:
                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                    revert with 0, 17
                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                    revert with 0, 17
                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                    revert with 0, 17
                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                            else:
                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                    revert with 0, 17
                                if cd[68] < cd[68]:
                                    revert with 0, 17
                                if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                    revert with 0, 17
                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                    revert with 0, 17
                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                    revert with 0, 17
                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                    revert with 0, 17
                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                        else:
                            if address(stor15.field_0) == address(cd[4]):
                                if stor10 > !stor11:
                                    revert with 0, 17
                                if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                    revert with 0, 17
                                if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                    revert with 0, 17
                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                    revert with 0, 17
                                if cd[68] <= cd[68]:
                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                        revert with 0, 17
                                    stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                    if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                        revert with 0, 17
                                    if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                    if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                        revert with 0, 17
                                    if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                    emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                else:
                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                        revert with 0, 17
                                    if cd[68] < cd[68]:
                                        revert with 0, 17
                                    if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                        revert with 0, 17
                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                        revert with 0, 17
                                    stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                    if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                        revert with 0, 17
                                    if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                    if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                        revert with 0, 17
                                    if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                    emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                            else:
                                if not uint8(stor15.field_176):
                                    if stor10 > !stor11:
                                        revert with 0, 17
                                    if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                        revert with 0, 17
                                    if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                        revert with 0, 17
                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                        revert with 0, 17
                                    if cd[68] <= cd[68]:
                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                        if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                            revert with 0, 17
                                        if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                        if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                        emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                    else:
                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        if cd[68] < cd[68]:
                                            revert with 0, 17
                                        if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                            revert with 0, 17
                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                        if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                            revert with 0, 17
                                        if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                        if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                        emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                else:
                                    if stor2[address(this.address)] / stor8 / 1000000000 * 10^18 <= stor23:
                                        if stor10 > !stor11:
                                            revert with 0, 17
                                        if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                            revert with 0, 17
                                        if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                            revert with 0, 17
                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        if cd[68] <= cd[68]:
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                            if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                revert with 0, 17
                                            if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                            if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                            emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                        else:
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if cd[68] < cd[68]:
                                                revert with 0, 17
                                            if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                revert with 0, 17
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                            if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                revert with 0, 17
                                            if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                            if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                            emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                    else:
                                        stor10 = sub_bb70e46c
                                        stor11 = sub_b1d19bf7
                                        uint8(stor15.field_168) = 1
                                        mem[352] = this.address
                                        require ext_code.size(stor14)
                                        staticcall stor14.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[416] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[384] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not stor14:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14] = stor23
                                        emit Approval(stor23, this.address, stor14);
                                        mem[ceil32(return_data.size) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 420] = stor23
                                        idx = 0
                                        s = ceil32(return_data.size) + 612
                                        t = 352
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor14)
                                        call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor23, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 612 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor15.field_168) = 0
                                        if not eth.balance(this.address):
                                            if stor10 > !stor11:
                                                revert with 0, 17
                                            if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                revert with 0, 17
                                            if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                revert with 0, 17
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if cd[68] <= cd[68]:
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                    revert with 0, 17
                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 32, block.timestamp) >> 32 >> 64,
                                                                0
                                            else:
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if cd[68] < cd[68]:
                                                    revert with 0, 17
                                                if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                    revert with 0, 17
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                    revert with 0, 17
                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 616 len 24] >> 64,
                                                                0
                                        else:
                                            call stor12 with:
                                               value eth.balance(this.address) / 2 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            call stor13 with:
                                               value eth.balance(this.address) / 2 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if stor10 > !stor11:
                                                revert with 0, 17
                                            if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                revert with 0, 17
                                            if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                revert with 0, 17
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if cd[68] <= cd[68]:
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                    revert with 0, 17
                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 680 len 24] >> 64,
                                                                0
                                            else:
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if cd[68] < cd[68]:
                                                    revert with 0, 17
                                                if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                    revert with 0, 17
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                    revert with 0, 17
                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 744 len 24] >> 64,
                                                                0
                    else:
                        if stor14 == address(cd[36]):
                            if address(stor15.field_0) == address(cd[36]):
                                if stor14 != address(cd[4]):
                                    if not stor5[address(cd[4])]:
                                        stor10 = sub_bb70e46c
                                        stor11 = sub_b1d19bf7
                                        require cd[68] <= stor21
                            if stor2[address(this.address)] > stor8:
                                revert with 0, 'Amount must be less than total reflections'
                            if not stor8 / 1000000000 * 10^18:
                                revert with 0, 'SafeMath: division by zero', 0
                            if uint8(stor15.field_168):
                                if stor10 > !stor11:
                                    revert with 0, 17
                                if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                    revert with 0, 17
                                if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                    revert with 0, 17
                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                    revert with 0, 17
                                if cd[68] <= cd[68]:
                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                        revert with 0, 17
                                    stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                    if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                        revert with 0, 17
                                    if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                    if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                        revert with 0, 17
                                    if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                    emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                else:
                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                        revert with 0, 17
                                    if cd[68] < cd[68]:
                                        revert with 0, 17
                                    if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                        revert with 0, 17
                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                        revert with 0, 17
                                    stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                    if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                        revert with 0, 17
                                    if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                    if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                        revert with 0, 17
                                    if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                    emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                            else:
                                if address(stor15.field_0) == address(cd[4]):
                                    if stor10 > !stor11:
                                        revert with 0, 17
                                    if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                        revert with 0, 17
                                    if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                        revert with 0, 17
                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                        revert with 0, 17
                                    if cd[68] <= cd[68]:
                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                        if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                            revert with 0, 17
                                        if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                        if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                        emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                    else:
                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        if cd[68] < cd[68]:
                                            revert with 0, 17
                                        if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                            revert with 0, 17
                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                        if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                            revert with 0, 17
                                        if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                        if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                        emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                else:
                                    if not uint8(stor15.field_176):
                                        if stor10 > !stor11:
                                            revert with 0, 17
                                        if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                            revert with 0, 17
                                        if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                            revert with 0, 17
                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        if cd[68] <= cd[68]:
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                            if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                revert with 0, 17
                                            if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                            if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                            emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                        else:
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if cd[68] < cd[68]:
                                                revert with 0, 17
                                            if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                revert with 0, 17
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                            if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                revert with 0, 17
                                            if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                            if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                            emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                    else:
                                        if stor2[address(this.address)] / stor8 / 1000000000 * 10^18 <= stor23:
                                            if stor10 > !stor11:
                                                revert with 0, 17
                                            if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                revert with 0, 17
                                            if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                revert with 0, 17
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if cd[68] <= cd[68]:
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                    revert with 0, 17
                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                            else:
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if cd[68] < cd[68]:
                                                    revert with 0, 17
                                                if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                    revert with 0, 17
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                    revert with 0, 17
                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                        else:
                                            stor10 = sub_bb70e46c
                                            stor11 = sub_b1d19bf7
                                            uint8(stor15.field_168) = 1
                                            mem[352] = this.address
                                            require ext_code.size(stor14)
                                            staticcall stor14.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[416] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[384] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not stor14:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor14] = stor23
                                            emit Approval(stor23, this.address, stor14);
                                            mem[ceil32(return_data.size) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 420] = stor23
                                            idx = 0
                                            s = ceil32(return_data.size) + 612
                                            t = 352
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor14)
                                            call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor23, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 612 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            uint8(stor15.field_168) = 0
                                            if not eth.balance(this.address):
                                                if stor10 > !stor11:
                                                    revert with 0, 17
                                                if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                    revert with 0, 17
                                                if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                    revert with 0, 17
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if cd[68] <= cd[68]:
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                        revert with 0, 17
                                                    if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                    emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 32, block.timestamp) >> 32 >> 64,
                                                                    0
                                                else:
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if cd[68] < cd[68]:
                                                        revert with 0, 17
                                                    if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                        revert with 0, 17
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                        revert with 0, 17
                                                    if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                    emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 616 len 24] >> 64,
                                                                    0
                                            else:
                                                call stor12 with:
                                                   value eth.balance(this.address) / 2 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call stor13 with:
                                                   value eth.balance(this.address) / 2 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if stor10 > !stor11:
                                                    revert with 0, 17
                                                if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                    revert with 0, 17
                                                if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                    revert with 0, 17
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if cd[68] <= cd[68]:
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                        revert with 0, 17
                                                    if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                    emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 680 len 24] >> 64,
                                                                    0
                                                else:
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if cd[68] < cd[68]:
                                                        revert with 0, 17
                                                    if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                        revert with 0, 17
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                        revert with 0, 17
                                                    if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                    emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 744 len 24] >> 64,
                                                                    0
                        else:
                            if stor5[address(cd[36])]:
                                if address(stor15.field_0) == address(cd[36]):
                                    if stor14 != address(cd[4]):
                                        if not stor5[address(cd[4])]:
                                            stor10 = sub_bb70e46c
                                            stor11 = sub_b1d19bf7
                                            require cd[68] <= stor21
                                if stor2[address(this.address)] > stor8:
                                    revert with 0, 'Amount must be less than total reflections'
                                if not stor8 / 1000000000 * 10^18:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if uint8(stor15.field_168):
                                    if stor10 > !stor11:
                                        revert with 0, 17
                                    if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                        revert with 0, 17
                                    if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                        revert with 0, 17
                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                        revert with 0, 17
                                    if cd[68] <= cd[68]:
                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                        if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                            revert with 0, 17
                                        if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                        if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                        emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                    else:
                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        if cd[68] < cd[68]:
                                            revert with 0, 17
                                        if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                            revert with 0, 17
                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                        if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                            revert with 0, 17
                                        if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                        if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                        emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                else:
                                    if address(stor15.field_0) == address(cd[4]):
                                        if stor10 > !stor11:
                                            revert with 0, 17
                                        if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                            revert with 0, 17
                                        if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                            revert with 0, 17
                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        if cd[68] <= cd[68]:
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                            if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                revert with 0, 17
                                            if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                            if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                            emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                        else:
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if cd[68] < cd[68]:
                                                revert with 0, 17
                                            if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                revert with 0, 17
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                            if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                revert with 0, 17
                                            if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                            if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                            emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                    else:
                                        if not uint8(stor15.field_176):
                                            if stor10 > !stor11:
                                                revert with 0, 17
                                            if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                revert with 0, 17
                                            if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                revert with 0, 17
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if cd[68] <= cd[68]:
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                    revert with 0, 17
                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                            else:
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if cd[68] < cd[68]:
                                                    revert with 0, 17
                                                if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                    revert with 0, 17
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                    revert with 0, 17
                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                        else:
                                            if stor2[address(this.address)] / stor8 / 1000000000 * 10^18 <= stor23:
                                                if stor10 > !stor11:
                                                    revert with 0, 17
                                                if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                    revert with 0, 17
                                                if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                    revert with 0, 17
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if cd[68] <= cd[68]:
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                        revert with 0, 17
                                                    if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                    emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                                else:
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if cd[68] < cd[68]:
                                                        revert with 0, 17
                                                    if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                        revert with 0, 17
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                        revert with 0, 17
                                                    if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                    emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                            else:
                                                stor10 = sub_bb70e46c
                                                stor11 = sub_b1d19bf7
                                                uint8(stor15.field_168) = 1
                                                mem[352] = this.address
                                                require ext_code.size(stor14)
                                                staticcall stor14.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[416] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[384] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not stor14:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                allowance[address(this.address)][stor14] = stor23
                                                emit Approval(stor23, this.address, stor14);
                                                mem[ceil32(return_data.size) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 420] = stor23
                                                idx = 0
                                                s = ceil32(return_data.size) + 612
                                                t = 352
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor14)
                                                call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args stor23, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 612 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                uint8(stor15.field_168) = 0
                                                if not eth.balance(this.address):
                                                    if stor10 > !stor11:
                                                        revert with 0, 17
                                                    if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                        revert with 0, 17
                                                    if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                        revert with 0, 17
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if cd[68] <= cd[68]:
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                            revert with 0, 17
                                                        if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                        emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 32, block.timestamp) >> 32 >> 64,
                                                                        0
                                                    else:
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if cd[68] < cd[68]:
                                                            revert with 0, 17
                                                        if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                            revert with 0, 17
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                            revert with 0, 17
                                                        if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                        emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 616 len 24] >> 64,
                                                                        0
                                                else:
                                                    call stor12 with:
                                                       value eth.balance(this.address) / 2 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call stor13 with:
                                                       value eth.balance(this.address) / 2 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if stor10 > !stor11:
                                                        revert with 0, 17
                                                    if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                        revert with 0, 17
                                                    if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                        revert with 0, 17
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if cd[68] <= cd[68]:
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                            revert with 0, 17
                                                        if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                        emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 680 len 24] >> 64,
                                                                        0
                                                    else:
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if cd[68] < cd[68]:
                                                            revert with 0, 17
                                                        if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                            revert with 0, 17
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                            revert with 0, 17
                                                        if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                        emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 744 len 24] >> 64,
                                                                        0
                            else:
                                if this.address == address(cd[4]):
                                    if address(stor15.field_0) == address(cd[36]):
                                        if stor14 != address(cd[4]):
                                            if not stor5[address(cd[4])]:
                                                stor10 = sub_bb70e46c
                                                stor11 = sub_b1d19bf7
                                                require cd[68] <= stor21
                                    if stor2[address(this.address)] > stor8:
                                        revert with 0, 'Amount must be less than total reflections'
                                    if not stor8 / 1000000000 * 10^18:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if uint8(stor15.field_168):
                                        if stor10 > !stor11:
                                            revert with 0, 17
                                        if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                            revert with 0, 17
                                        if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                            revert with 0, 17
                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                            revert with 0, 17
                                        if cd[68] <= cd[68]:
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                            if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                revert with 0, 17
                                            if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                            if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                            emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                        else:
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if cd[68] < cd[68]:
                                                revert with 0, 17
                                            if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                revert with 0, 17
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                            if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                revert with 0, 17
                                            if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                            if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                            emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                    else:
                                        if address(stor15.field_0) == address(cd[4]):
                                            if stor10 > !stor11:
                                                revert with 0, 17
                                            if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                revert with 0, 17
                                            if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                revert with 0, 17
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if cd[68] <= cd[68]:
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                    revert with 0, 17
                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                            else:
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if cd[68] < cd[68]:
                                                    revert with 0, 17
                                                if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                    revert with 0, 17
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                    revert with 0, 17
                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                        else:
                                            if not uint8(stor15.field_176):
                                                if stor10 > !stor11:
                                                    revert with 0, 17
                                                if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                    revert with 0, 17
                                                if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                    revert with 0, 17
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if cd[68] <= cd[68]:
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                        revert with 0, 17
                                                    if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                    emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                                else:
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if cd[68] < cd[68]:
                                                        revert with 0, 17
                                                    if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                        revert with 0, 17
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                        revert with 0, 17
                                                    if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                    emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                            else:
                                                if stor2[address(this.address)] / stor8 / 1000000000 * 10^18 <= stor23:
                                                    if stor10 > !stor11:
                                                        revert with 0, 17
                                                    if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                        revert with 0, 17
                                                    if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                        revert with 0, 17
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if cd[68] <= cd[68]:
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                            revert with 0, 17
                                                        if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                        emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                                    else:
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if cd[68] < cd[68]:
                                                            revert with 0, 17
                                                        if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                            revert with 0, 17
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                            revert with 0, 17
                                                        if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                        emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                                else:
                                                    stor10 = sub_bb70e46c
                                                    stor11 = sub_b1d19bf7
                                                    uint8(stor15.field_168) = 1
                                                    mem[352] = this.address
                                                    require ext_code.size(stor14)
                                                    staticcall stor14.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[416] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[384] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not stor14:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor14] = stor23
                                                    emit Approval(stor23, this.address, stor14);
                                                    mem[ceil32(return_data.size) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 420] = stor23
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 612
                                                    t = 352
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor14)
                                                    call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args stor23, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 612 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor15.field_168) = 0
                                                    if not eth.balance(this.address):
                                                        if stor10 > !stor11:
                                                            revert with 0, 17
                                                        if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                            revert with 0, 17
                                                        if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                            revert with 0, 17
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if cd[68] <= cd[68]:
                                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                            if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                                revert with 0, 17
                                                            if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                            if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                            emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 32, block.timestamp) >> 32 >> 64,
                                                                            0
                                                        else:
                                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            if cd[68] < cd[68]:
                                                                revert with 0, 17
                                                            if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                                revert with 0, 17
                                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                            if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                                revert with 0, 17
                                                            if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                            if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                            emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 616 len 24] >> 64,
                                                                            0
                                                    else:
                                                        call stor12 with:
                                                           value eth.balance(this.address) / 2 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call stor13 with:
                                                           value eth.balance(this.address) / 2 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if stor10 > !stor11:
                                                            revert with 0, 17
                                                        if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                            revert with 0, 17
                                                        if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                            revert with 0, 17
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if cd[68] <= cd[68]:
                                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                            if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                                revert with 0, 17
                                                            if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                            if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                            emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 680 len 24] >> 64,
                                                                            0
                                                        else:
                                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            if cd[68] < cd[68]:
                                                                revert with 0, 17
                                                            if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                                revert with 0, 17
                                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                            if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                                revert with 0, 17
                                                            if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                            if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                            emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 744 len 24] >> 64,
                                                                            0
                                else:
                                    if not uint8(stor15.field_184):
                                        if address(stor15.field_0) == address(cd[36]):
                                            if stor14 != address(cd[4]):
                                                if not stor5[address(cd[4])]:
                                                    stor10 = sub_bb70e46c
                                                    stor11 = sub_b1d19bf7
                                                    require cd[68] <= stor21
                                        if stor2[address(this.address)] > stor8:
                                            revert with 0, 'Amount must be less than total reflections'
                                        if not stor8 / 1000000000 * 10^18:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if uint8(stor15.field_168):
                                            if stor10 > !stor11:
                                                revert with 0, 17
                                            if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                revert with 0, 17
                                            if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                revert with 0, 17
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if cd[68] <= cd[68]:
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                    revert with 0, 17
                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                            else:
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if cd[68] < cd[68]:
                                                    revert with 0, 17
                                                if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                    revert with 0, 17
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                    revert with 0, 17
                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                        else:
                                            if address(stor15.field_0) == address(cd[4]):
                                                if stor10 > !stor11:
                                                    revert with 0, 17
                                                if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                    revert with 0, 17
                                                if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                    revert with 0, 17
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if cd[68] <= cd[68]:
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                        revert with 0, 17
                                                    if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                    emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                                else:
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if cd[68] < cd[68]:
                                                        revert with 0, 17
                                                    if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                        revert with 0, 17
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                        revert with 0, 17
                                                    if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                    emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                            else:
                                                if not uint8(stor15.field_176):
                                                    if stor10 > !stor11:
                                                        revert with 0, 17
                                                    if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                        revert with 0, 17
                                                    if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                        revert with 0, 17
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if cd[68] <= cd[68]:
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                            revert with 0, 17
                                                        if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                        emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                                    else:
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if cd[68] < cd[68]:
                                                            revert with 0, 17
                                                        if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                            revert with 0, 17
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                            revert with 0, 17
                                                        if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                        emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                                else:
                                                    if stor2[address(this.address)] / stor8 / 1000000000 * 10^18 <= stor23:
                                                        if stor10 > !stor11:
                                                            revert with 0, 17
                                                        if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                            revert with 0, 17
                                                        if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                            revert with 0, 17
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if cd[68] <= cd[68]:
                                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                            if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                                revert with 0, 17
                                                            if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                            if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                            emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                                        else:
                                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            if cd[68] < cd[68]:
                                                                revert with 0, 17
                                                            if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                                revert with 0, 17
                                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                            if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                                revert with 0, 17
                                                            if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                            if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                            emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                                    else:
                                                        stor10 = sub_bb70e46c
                                                        stor11 = sub_b1d19bf7
                                                        uint8(stor15.field_168) = 1
                                                        mem[352] = this.address
                                                        require ext_code.size(stor14)
                                                        staticcall stor14.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[416] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[384] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not stor14:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        allowance[address(this.address)][stor14] = stor23
                                                        emit Approval(stor23, this.address, stor14);
                                                        mem[ceil32(return_data.size) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(return_data.size) + 420] = stor23
                                                        idx = 0
                                                        s = ceil32(return_data.size) + 612
                                                        t = 352
                                                        while idx < 2:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(stor14)
                                                        call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args stor23, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 612 len 64]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor15.field_168) = 0
                                                        if not eth.balance(this.address):
                                                            if stor10 > !stor11:
                                                                revert with 0, 17
                                                            if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                                revert with 0, 17
                                                            if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                                revert with 0, 17
                                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            if cd[68] <= cd[68]:
                                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                                    revert with 0, 17
                                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 32, block.timestamp) >> 32 >> 64,
                                                                                0
                                                            else:
                                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                if cd[68] < cd[68]:
                                                                    revert with 0, 17
                                                                if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                                    revert with 0, 17
                                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                                    revert with 0, 17
                                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 616 len 24] >> 64,
                                                                                0
                                                        else:
                                                            call stor12 with:
                                                               value eth.balance(this.address) / 2 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call stor13 with:
                                                               value eth.balance(this.address) / 2 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if stor10 > !stor11:
                                                                revert with 0, 17
                                                            if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                                revert with 0, 17
                                                            if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                                revert with 0, 17
                                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            if cd[68] <= cd[68]:
                                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                                    revert with 0, 17
                                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 680 len 24] >> 64,
                                                                                0
                                                            else:
                                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                if cd[68] < cd[68]:
                                                                    revert with 0, 17
                                                                if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                                    revert with 0, 17
                                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                                    revert with 0, 17
                                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 744 len 24] >> 64,
                                                                                0
                                    else:
                                        stor10 = sub_5a94a02a
                                        stor11 = sub_7d84e378
                                        if stor2[address(cd[36])] > stor8:
                                            revert with 0, 'Amount must be less than total reflections'
                                        if not stor8 / 1000000000 * 10^18:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if stor2[address(cd[36])] / stor8 / 1000000000 * 10^18 > !cd[68]:
                                            revert with 0, 17
                                        require (stor2[address(cd[36])] / stor8 / 1000000000 * 10^18) + cd[68] <= stor22
                                        require block.timestamp > stor7[address(cd[36])]
                                        require cd[68] <= stor21
                                        if 30 > !block.timestamp:
                                            revert with 0, 17
                                        stor7[address(cd[36])] = block.timestamp + 30
                                        if address(stor15.field_0) == address(cd[36]):
                                            if stor14 != address(cd[4]):
                                                if not stor5[address(cd[4])]:
                                                    stor10 = sub_bb70e46c
                                                    stor11 = sub_b1d19bf7
                                                    require cd[68] <= stor21
                                        if stor2[address(this.address)] > stor8:
                                            revert with 0, 'Amount must be less than total reflections'
                                        if not stor8 / 1000000000 * 10^18:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if uint8(stor15.field_168):
                                            if stor10 > !stor11:
                                                revert with 0, 17
                                            if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                revert with 0, 17
                                            if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                revert with 0, 17
                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                revert with 0, 17
                                            if cd[68] <= cd[68]:
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                    revert with 0, 17
                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[648 len 24] >> 64, 0
                                            else:
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if cd[68] < cd[68]:
                                                    revert with 0, 17
                                                if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                    revert with 0, 17
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                    revert with 0, 17
                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[712 len 24] >> 64, 0
                                        else:
                                            if address(stor15.field_0) == address(cd[4]):
                                                if stor10 > !stor11:
                                                    revert with 0, 17
                                                if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                    revert with 0, 17
                                                if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                    revert with 0, 17
                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                    revert with 0, 17
                                                if cd[68] <= cd[68]:
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                        revert with 0, 17
                                                    if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                    emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[648 len 24] >> 64, 0
                                                else:
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if cd[68] < cd[68]:
                                                        revert with 0, 17
                                                    if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                        revert with 0, 17
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                        revert with 0, 17
                                                    if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                    if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                    emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[712 len 24] >> 64, 0
                                            else:
                                                if not uint8(stor15.field_176):
                                                    if stor10 > !stor11:
                                                        revert with 0, 17
                                                    if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                        revert with 0, 17
                                                    if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                        revert with 0, 17
                                                    if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                        revert with 0, 17
                                                    if cd[68] <= cd[68]:
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                            revert with 0, 17
                                                        if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                        emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[648 len 24] >> 64, 0
                                                    else:
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if cd[68] < cd[68]:
                                                            revert with 0, 17
                                                        if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                            revert with 0, 17
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                            revert with 0, 17
                                                        if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                        if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                        emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[712 len 24] >> 64, 0
                                                else:
                                                    if stor2[address(this.address)] / stor8 / 1000000000 * 10^18 <= stor23:
                                                        if stor10 > !stor11:
                                                            revert with 0, 17
                                                        if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                            revert with 0, 17
                                                        if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                            revert with 0, 17
                                                        if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                            revert with 0, 17
                                                        if cd[68] <= cd[68]:
                                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                            if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                                revert with 0, 17
                                                            if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                            if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                            emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[648 len 24] >> 64, 0
                                                        else:
                                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            if cd[68] < cd[68]:
                                                                revert with 0, 17
                                                            if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                                revert with 0, 17
                                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                            if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                                revert with 0, 17
                                                            if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                            if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                            emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[712 len 24] >> 64, 0
                                                    else:
                                                        stor10 = sub_bb70e46c
                                                        stor11 = sub_b1d19bf7
                                                        uint8(stor15.field_168) = 1
                                                        mem[544] = this.address
                                                        require ext_code.size(stor14)
                                                        staticcall stor14.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[608] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[576] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not stor14:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        allowance[address(this.address)][stor14] = stor23
                                                        emit Approval(stor23, this.address, stor14);
                                                        mem[ceil32(return_data.size) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(return_data.size) + 612] = stor23
                                                        idx = 0
                                                        s = ceil32(return_data.size) + 804
                                                        t = 544
                                                        while idx < 2:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(stor14)
                                                        call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args stor23, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 804 len 64]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor15.field_168) = 0
                                                        if not eth.balance(this.address):
                                                            if stor10 > !stor11:
                                                                revert with 0, 17
                                                            if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                                revert with 0, 17
                                                            if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                                revert with 0, 17
                                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            if cd[68] <= cd[68]:
                                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                                    revert with 0, 17
                                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 32, block.timestamp) >> 32 >> 64,
                                                                                0
                                                            else:
                                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                if cd[68] < cd[68]:
                                                                    revert with 0, 17
                                                                if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                                    revert with 0, 17
                                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                                    revert with 0, 17
                                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 808 len 24] >> 64,
                                                                                0
                                                        else:
                                                            call stor12 with:
                                                               value eth.balance(this.address) / 2 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call stor13 with:
                                                               value eth.balance(this.address) / 2 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if stor10 > !stor11:
                                                                revert with 0, 17
                                                            if cd[68] and stor10 + stor11 > -1 / cd[68]:
                                                                revert with 0, 17
                                                            if cd[68] < (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                                revert with 0, 17
                                                            if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                revert with 0, 17
                                                            if cd[68] <= cd[68]:
                                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                                    revert with 0, 17
                                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 872 len 24] >> 64,
                                                                                0
                                                            else:
                                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                if cd[68] < cd[68]:
                                                                    revert with 0, 17
                                                                if 0 > (stor10 * cd[68]) + (stor11 * cd[68]) / 100:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if (stor10 * cd[68]) + (stor11 * cd[68]) / 100 < 0:
                                                                    revert with 0, 17
                                                                if cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) > stor2[address(cd[4])]:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if stor2[address(cd[4])] < cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                stor2[address(cd[4])] = stor2[address(cd[4])] - cd[68] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                                if stor2[address(cd[36])] > !(cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)):
                                                                    revert with 0, 17
                                                                if stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[address(cd[36])]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor2[address(cd[36])] = stor2[address(cd[36])] + cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)
                                                                if stor2[this.address] > !((stor10 * cd[68]) + (stor11 * cd[68]) / 100):
                                                                    revert with 0, 17
                                                                if stor2[this.address] + ((stor10 * cd[68]) + (stor11 * cd[68]) / 100) < stor2[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                stor2[this.address] += (stor10 * cd[68]) + (stor11 * cd[68]) / 100
                                                                emit Transfer((cd[68] - ((stor10 * cd[68]) + (stor11 * cd[68]) / 100)), address(cd[4]), address(cd[36]));
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 936 len 24] >> 64,
                                                                                0
            ('le', ('cd', 68), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('cd', 4)), ('name', 'allowance', 4)))))
            if allowance[address(cd[4])][msg.sender] < cd[68]:
                revert with 0, 17
            if not address(cd[4]):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(cd[4])][address(msg.sender)] = allowance[address(cd[4])][msg.sender] - cd[68]
            emit Approval((allowance[address(cd[4])][msg.sender] - cd[68]), address(cd[4]), msg.sender);
    return 1
}



}
