contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor2;
uint256 totalSupply;
uint256 stor4; offset 1
uint256 wethBalance;
uint256 sub_ba0607c3;
uint256 sub_1e64971b;
uint256 sub_470561e9;
array of struct stor8;
array of struct stor9;
address stor10;
address stor11;
address sub_6bd3d45bAddress;
address stor13;
address stor14;
uint8 stor15; offset 160
address stor15;
address stor16;
address stor17;
address stor18;
uint256 stor19;
address stor20;

function totalSupply() {
    return totalSupply
}

function sub_1e64971b(?) {
    return sub_1e64971b
}

function sub_470561e9(?) {
    return sub_470561e9
}

function sub_6bd3d45b(?) {
    return sub_6bd3d45bAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function firstTimeBuy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function getWethBalance() {
    return wethBalance
}

function sub_ba0607c3(?) {
    return sub_ba0607c3
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function record() {
    return stor16, stor17, stor18, stor19
}

function sub_d93ebeca(?) {
    return balanceOf[this.address] >= totalSupply / 10000
}

function roundPrice() {
    if stor19 > 0xb877aa3236a4b44909befeb9fad487c2ff8df0157db98d374f:
        revert with 'NH{q', 17
    if 10^17 > !(10^17 * stor19):
        revert with 'NH{q', 17
    return ((10^17 * stor19) + 10^17 / 100 * 10^6)
}

function sub_29b2b366(?) {
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getThreshold() {
    if stor19 > 0x5c3bd5191b525a2484df7f5cfd6a43e17fc6f80abedcc69ba7:
        revert with 'NH{q', 17
    if 10^17 > !(2 * 10^17 * stor19):
        revert with 'NH{q', 17
    if (2 * 10^17 * stor19) + 10^17 >= 10 * 10^18:
        return 10 * 10^18
    if stor19 > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
        revert with 'NH{q', 17
    if 10^17 > !(10^16 * stor19):
        revert with 'NH{q', 17
    return ((10^16 * stor19) + 10^17)
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

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function addLP() payable {
    call stor20.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, uint32(this.address), 100000 * 10^18, 0, 0, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    sub_ba0607c3 = msg.value
    call stor10.0xa9059cbb with:
         gas gas_remaining wei
        args stor14, ext_call.return_data[64] / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_76012729(?) {
    require msg.sender == stor14
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0] / 100:
        revert with 'NH{q', 17
    call stor10.0xa9059cbb with:
         gas gas_remaining wei
        args stor14, ext_call.return_data[0] - (ext_call.return_data[0] / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function name() {
    if bool(stor8.length):
        if not bool(stor8.length) - (uint255(stor8.length) * 0.5 < 32):
            revert with 'NH{q', 34
        if bool(stor8.length):
            if not bool(stor8.length) - (uint255(stor8.length) * 0.5 < 32):
                revert with 'NH{q', 34
            if Mask(256, -1, stor8.length):
                if 31 < uint255(stor8.length) * 0.5:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor8.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if not bool(stor8.length) - (stor8.length.field_1 < 32):
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(uint255(stor8.length) * 0.5) + 192 len ceil32(uint255(stor8.length) * 0.5)] = mem[128 len ceil32(uint255(stor8.length) * 0.5)]
        if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
            mem[ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)], mem[(2 * ceil32(uint255(stor8.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor8.length) * 0.5)]), 
    if not bool(stor8.length) - (stor8.length.field_1 < 32):
        revert with 'NH{q', 34
    if bool(stor8.length):
        if not bool(stor8.length) - (uint255(stor8.length) * 0.5 < 32):
            revert with 'NH{q', 34
        if Mask(256, -1, stor8.length):
            if 31 < uint255(stor8.length) * 0.5:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while (uint255(stor8.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if not bool(stor8.length) - (stor8.length.field_1 < 32):
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
}

function symbol() {
    if bool(stor9.length):
        if not bool(stor9.length) - (uint255(stor9.length) * 0.5 < 32):
            revert with 'NH{q', 34
        if bool(stor9.length):
            if not bool(stor9.length) - (uint255(stor9.length) * 0.5 < 32):
                revert with 'NH{q', 34
            if Mask(256, -1, stor9.length):
                if 31 < uint255(stor9.length) * 0.5:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor9.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if not bool(stor9.length) - (stor9.length.field_1 < 32):
                revert with 'NH{q', 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
        if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
            mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)], mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor9.length) * 0.5)]), 
    if not bool(stor9.length) - (stor9.length.field_1 < 32):
        revert with 'NH{q', 34
    if bool(stor9.length):
        if not bool(stor9.length) - (uint255(stor9.length) * 0.5 < 32):
            revert with 'NH{q', 34
        if Mask(256, -1, stor9.length):
            if 31 < uint255(stor9.length) * 0.5:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while (uint255(stor9.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    else:
        if not bool(stor9.length) - (stor9.length.field_1 < 32):
            revert with 'NH{q', 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
}

function swapBack() {
    uint8(stor15.field_160) = 1
    mem[128] = this.address
    mem[160] = stor11
    if not this.address:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(this.address)] < balanceOf[this.address] / 10:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(this.address)] -= balanceOf[this.address] / 10
    if totalSupply < balanceOf[this.address] / 10:
        revert with 'NH{q', 17
    totalSupply -= balanceOf[this.address] / 10
    emit Transfer((balanceOf[this.address] / 10), this.address, 0);
    mem[192] = 0x4a3167ca00000000000000000000000000000000000000000000000000000000
    mem[196] = balanceOf[this.address]
    mem[228] = 0
    mem[260] = 160
    mem[356] = 2
    idx = 0
    s = 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[292] = this.address
    mem[324] = block.timestamp
    require ext_code.size(stor20)
    call stor20.0x4a3167ca with:
         gas gas_remaining wei
        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor11)
    call stor11.deposit() with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    require return_data.size >= 32
    wethBalance = ext_call.return_data[0]
    if 5 * 10^17 < sub_1e64971b:
        if sub_1e64971b < sub_1e64971b / 3:
            revert with 'NH{q', 17
        sub_1e64971b -= sub_1e64971b / 3
        mem[ceil32(return_data.size) + 224] = stor11
        mem[ceil32(return_data.size) + 256] = this.address
        mem[ceil32(return_data.size) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 292] = sub_1e64971b / 3 / 2
        idx = 0
        s = ceil32(return_data.size) + 484
        t = ceil32(return_data.size) + 224
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor20)
        call stor20.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(255, 1, sub_1e64971b / 3), 0, 160, stor13, block.timestamp, 2, mem[ceil32(return_data.size) + 484 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        balanceOf[stor13] = 0
        if sub_1e64971b / 3 < sub_1e64971b / 3 / 2:
            revert with 'NH{q', 17
        call stor11.0xa9059cbb with:
             gas gas_remaining wei
            args stor10, (sub_1e64971b / 3) - (sub_1e64971b / 3 / 2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if balanceOf[stor10] > !balanceOf[stor13]:
            revert with 'NH{q', 17
        balanceOf[stor10] += balanceOf[stor13]
        emit Transfer(balanceOf[stor13], stor13, stor10);
        require ext_code.size(stor10)
        call stor10.'jbxB' with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        require return_data.size >= 32
        call stor10.0xa9059cbb with:
             gas gas_remaining wei
            args stor10, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor10)
        call stor10.burn(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor11.0xa9059cbb with:
             gas gas_remaining wei
            args stor10, sub_1e64971b
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor10)
        call stor10.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if wethBalance < sub_1e64971b:
            revert with 'NH{q', 17
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < wethBalance - sub_1e64971b:
            revert with 'NH{q', 17
        call stor11.0xa9059cbb with:
             gas gas_remaining wei
            args stor10, ext_call.return_data[0] - wethBalance + sub_1e64971b
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if balanceOf[this.address] < balanceOf[this.address]:
            revert with 'NH{q', 17
        if balanceOf[stor10] > !0:
            revert with 'NH{q', 17
        if balanceOf[this.address] < 0:
            revert with 'NH{q', 17
        emit Transfer(0, this.address, stor10);
        require ext_code.size(stor10)
        call stor10.'jbxB' with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args stor10
        require return_data.size >= 32
        sub_ba0607c3 = ext_call.return_data[0]
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        wethBalance = ext_call.return_data[0]
        if sub_470561e9 > !sub_1e64971b:
            revert with 'NH{q', 17
        sub_470561e9 += sub_1e64971b
        sub_1e64971b = 0
        if balanceOf[msg.sender] > -5000000000000000001:
            revert with 'NH{q', 17
        balanceOf[msg.sender] += 5 * 10^18
        emit Transfer(10 * 10^18, 0, msg.sender);
    uint8(stor15.field_160) = 0
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require address(stor15.field_0) - arg1
    if uint8(stor15.field_160):
        if balanceOf[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if this.address == msg.sender:
            if balanceOf[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if this.address == arg1:
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor13 == arg1:
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor10 != msg.sender:
                        if not uint8(stor15.field_160):
                            if balanceOf[this.address] >= totalSupply / 10000:
                                require ext_code.size(this.address)
                                call this.address.0x6ac5eeee with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 < arg2 / 10:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] > !(arg2 - (arg2 / 10)):
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 10)
                    if arg2 < arg2 - (arg2 / 10):
                        revert with 'NH{q', 17
                    if balanceOf[this.address] > !(arg2 / 10):
                        revert with 'NH{q', 17
                    balanceOf[this.address] += arg2 / 10
                    emit Transfer((arg2 - (arg2 / 10)), msg.sender, arg1);
                    if arg2 < arg2 - (arg2 / 10):
                        revert with 'NH{q', 17
                    emit Transfer((arg2 / 10), msg.sender, this.address);
                    if not msg.sender - stor10:
                        if not stor2[address(arg1)]:
                            allowance[address(arg1)][stor13] = -1
                            stor2[address(arg1)] = 1
                        staticcall stor11.0x70a08231 with:
                                gas gas_remaining wei
                               args stor10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > sub_ba0607c3:
                            if ext_call.return_data[0] < sub_ba0607c3:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] - sub_ba0607c3 >= 2 * 10^18:
                                sub_6bd3d45bAddress = arg1
                            if ext_call.return_data[0] - sub_ba0607c3 >= 2 * 10^17:
                                if sub_6bd3d45bAddress != arg1:
                                    if stor16 != arg1:
                                        if stor17 != arg1:
                                            stor18 = stor17
                                            stor17 = stor16
                                            stor16 = arg1
                        sub_ba0607c3 = ext_call.return_data[0]
                    if not arg1 - stor10:
                        staticcall stor11.0x70a08231 with:
                                gas gas_remaining wei
                               args stor10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor19 > 0x5c3bd5191b525a2484df7f5cfd6a43e17fc6f80abedcc69ba7:
                            revert with 'NH{q', 17
                        if 10^17 > !(2 * 10^17 * stor19):
                            revert with 'NH{q', 17
                        if (2 * 10^17 * stor19) + 10^17 >= 10 * 10^18:
                            if stor18:
                                if wethBalance >= 10 * 10^18:
                                    if sub_1e64971b > !stor4:
                                        revert with 'NH{q', 17
                                    sub_1e64971b += stor4
                                    call stor11.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor16, wethBalance / 20
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    call stor11.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor17, wethBalance / 25
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    call stor11.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor18, wethBalance / 50
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if sub_6bd3d45bAddress:
                                        call stor11.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args sub_6bd3d45bAddress, wethBalance / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_1e64971b:
                                        revert with 'NH{q', 17
                                    wethBalance = ext_call.return_data[0] - sub_1e64971b
                                    stor16 = 0
                                    stor17 = 0
                                    stor18 = 0
                                    if not stor19 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    stor19++
                                    sub_6bd3d45bAddress = 0
                                    if balanceOf[address(msg.sender)] > -10000000000000000001:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] += 10 * 10^18
                                    emit Transfer(20 * 10^18, 0, msg.sender);
                        else:
                            if stor19 > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
                                revert with 'NH{q', 17
                            if 10^17 > !(10^16 * stor19):
                                revert with 'NH{q', 17
                            if stor18:
                                if wethBalance >= (10^16 * stor19) + 10^17:
                                    if sub_1e64971b > !stor4:
                                        revert with 'NH{q', 17
                                    sub_1e64971b += stor4
                                    call stor11.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor16, wethBalance / 20
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    call stor11.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor17, wethBalance / 25
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    call stor11.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor18, wethBalance / 50
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if sub_6bd3d45bAddress:
                                        call stor11.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args sub_6bd3d45bAddress, wethBalance / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_1e64971b:
                                        revert with 'NH{q', 17
                                    wethBalance = ext_call.return_data[0] - sub_1e64971b
                                    stor16 = 0
                                    stor17 = 0
                                    stor18 = 0
                                    if not stor19 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    stor19++
                                    sub_6bd3d45bAddress = 0
                                    if balanceOf[address(msg.sender)] > -10000000000000000001:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] += 10 * 10^18
                                    emit Transfer(20 * 10^18, 0, msg.sender);
                        sub_ba0607c3 = ext_call.return_data[0]
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x6bd3d45b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xa457c2d7(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x95d89b41(?????) <= uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0x95d89b41(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x9b1ad7fc(?????):
                            require unknown_0x9dd58b58(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return wethBalance
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor2[arg1])
                    require not msg.value
                    if bool(stor9.length):
                        if not bool(stor9.length) - (uint255(stor9.length) * 0.5 < 32):
                            revert with 'NH{q', 34
                        if bool(stor9.length):
                            if not bool(stor9.length) - (uint255(stor9.length) * 0.5 < 32):
                                revert with 'NH{q', 34
                            if Mask(256, -1, stor9.length):
                                if 31 < uint255(stor9.length) * 0.5:
                                    mem[160] = uint256(stor9.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor9.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor9[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[160 len ceil32(uint255(stor9.length) * 0.5)])
                                mem[160] = 256 * stor9.length.field_8
                        else:
                            if not bool(stor9.length) - (stor9.length.field_1 < 32):
                                revert with 'NH{q', 34
                            if stor9.length.field_1:
                                if 31 < stor9.length.field_1:
                                    mem[160] = uint256(stor9.field_0)
                                    idx = 160
                                    s = 0
                                    while stor9.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor9[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[160 len ceil32(uint255(stor9.length) * 0.5)])
                                mem[160] = 256 * stor9.length.field_8
                        mem[ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor9.length) * 0.5)] = mem[160 len ceil32(uint255(stor9.length) * 0.5)]
                        if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                            mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = 0
                        return Array(len=2 * Mask(256, -1, stor9.length), data=mem[160 len ceil32(uint255(stor9.length) * 0.5)], mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor9.length) * 0.5)]), 
                    if not bool(stor9.length) - (stor9.length.field_1 < 32):
                        revert with 'NH{q', 34
                    if bool(stor9.length):
                        if not bool(stor9.length) - (uint255(stor9.length) * 0.5 < 32):
                            revert with 'NH{q', 34
                        if Mask(256, -1, stor9.length):
                            if 31 < uint255(stor9.length) * 0.5:
                                mem[160] = uint256(stor9.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor9.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor9.length % 128, data=mem[160 len ceil32(stor9.length.field_1)])
                            mem[160] = 256 * stor9.length.field_8
                    else:
                        if not bool(stor9.length) - (stor9.length.field_1 < 32):
                            revert with 'NH{q', 34
                        if stor9.length.field_1:
                            if 31 < stor9.length.field_1:
                                mem[160] = uint256(stor9.field_0)
                                idx = 160
                                s = 0
                                while stor9.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor9.length % 128, data=mem[160 len ceil32(stor9.length.field_1)])
                            mem[160] = 256 * stor9.length.field_8
                    mem[ceil32(stor9.length.field_1) + 224 len ceil32(stor9.length.field_1)] = mem[160 len ceil32(stor9.length.field_1)]
                    if ceil32(stor9.length.field_1) > stor9.length.field_1:
                        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 224] = 0
                    return Array(len=stor9.length % 128, data=mem[160 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 224 len 2 * ceil32(stor9.length.field_1)]), 
                if unknown_0x6bd3d45b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_6bd3d45bAddress
                if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return balanceOf[address(arg1)]
                require unknown_0x76012729(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require msg.sender == stor14
                staticcall stor10.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                staticcall stor10.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] / 100:
                    revert with 'NH{q', 17
                call stor10.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0] - (ext_call.return_data[0] / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if unknown_0xbc37e1a3(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xbc37e1a3(?????) == uint32(call.func_hash) >> 224:
                    call stor20.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args 0, uint32(this.address), 100000 * 10^18, 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    sub_ba0607c3 = msg.value
                    call stor10.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor14, ext_call.return_data[64] / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if unknown_0xd93ebeca(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return balanceOf[this.address] >= totalSupply / 10000
                if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    return allowance[address(arg1)][address(arg2)]
                require unknown_0xe75235b8(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if stor19 > 0x5c3bd5191b525a2484df7f5cfd6a43e17fc6f80abedcc69ba7:
                    revert with 'NH{q', 17
                if 10^17 > !(2 * 10^17 * stor19):
                    revert with 'NH{q', 17
                if (2 * 10^17 * stor19) + 10^17 >= 10 * 10^18:
                    return 10 * 10^18
                if stor19 > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
                    revert with 'NH{q', 17
                if 10^17 > !(10^16 * stor19):
                    revert with 'NH{q', 17
                return ((10^16 * stor19) + 10^17)
            if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if allowance[msg.sender][address(arg1)] < arg2:
                    revert with 0, 'ERC20: decreased allowance below zero'
                if not msg.sender:
                    revert with 0, 'ERC20: approve from the zero address'
                if not address(arg1):
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, address(arg1));
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                    require unknown_0xba0607c3(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_ba0607c3
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require address(stor15.field_0) - address(arg1)
                if uint8(stor15.field_160):
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, address(arg1));
                else:
                    if this.address == msg.sender:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, address(arg1));
                    else:
                        if this.address == address(arg1):
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, address(arg1));
                        else:
                            if stor13 == address(arg1):
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > !arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, address(arg1));
                            else:
                                if stor10 != msg.sender:
                                    if not uint8(stor15.field_160):
                                        if balanceOf[this.address] >= totalSupply / 10000:
                                            require ext_code.size(this.address)
                                            call this.address.0x6ac5eeee with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 < arg2 / 10:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] > !(arg2 - (arg2 / 10)):
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 10)
                                if arg2 < arg2 - (arg2 / 10):
                                    revert with 'NH{q', 17
                                if balanceOf[this.address] > !(arg2 / 10):
                                    revert with 'NH{q', 17
                                balanceOf[this.address] += arg2 / 10
                                emit Transfer((arg2 - (arg2 / 10)), msg.sender, address(arg1));
                                if arg2 < arg2 - (arg2 / 10):
                                    revert with 'NH{q', 17
                                emit Transfer((arg2 / 10), msg.sender, this.address);
                                if not msg.sender - stor10:
                                    if not stor2[address(arg1)]:
                                        allowance[address(arg1)][stor13] = -1
                                        stor2[address(arg1)] = 1
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args stor10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > sub_ba0607c3:
                                        if ext_call.return_data[0] < sub_ba0607c3:
                                            revert with 'NH{q', 17
                                        if ext_call.return_data[0] - sub_ba0607c3 >= 2 * 10^18:
                                            sub_6bd3d45bAddress = address(arg1)
                                        if ext_call.return_data[0] - sub_ba0607c3 >= 2 * 10^17:
                                            if sub_6bd3d45bAddress != address(arg1):
                                                if stor16 != address(arg1):
                                                    if stor17 != address(arg1):
                                                        stor18 = stor17
                                                        stor17 = stor16
                                                        stor16 = address(arg1)
                                    sub_ba0607c3 = ext_call.return_data[0]
                                if not address(arg1) - stor10:
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args stor10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if stor19 > 0x5c3bd5191b525a2484df7f5cfd6a43e17fc6f80abedcc69ba7:
                                        revert with 'NH{q', 17
                                    if 10^17 > !(2 * 10^17 * stor19):
                                        revert with 'NH{q', 17
                                    if (2 * 10^17 * stor19) + 10^17 >= 10 * 10^18:
                                        if stor18:
                                            if wethBalance >= 10 * 10^18:
                                                if sub_1e64971b > !stor4:
                                                    revert with 'NH{q', 17
                                                sub_1e64971b += stor4
                                                call stor11.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args stor16, wethBalance / 20
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                call stor11.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args stor17, wethBalance / 25
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                call stor11.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args stor18, wethBalance / 50
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if sub_6bd3d45bAddress:
                                                    call stor11.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args sub_6bd3d45bAddress, wethBalance / 10
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                staticcall stor11.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < sub_1e64971b:
                                                    revert with 'NH{q', 17
                                                wethBalance = ext_call.return_data[0] - sub_1e64971b
                                                stor16 = 0
                                                stor17 = 0
                                                stor18 = 0
                                                if not stor19 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                stor19++
                                                sub_6bd3d45bAddress = 0
                                                if balanceOf[address(msg.sender)] > -10000000000000000001:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] += 10 * 10^18
                                                emit Transfer(20 * 10^18, 0, msg.sender);
                                    else:
                                        if stor19 > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
                                            revert with 'NH{q', 17
                                        if 10^17 > !(10^16 * stor19):
                                            revert with 'NH{q', 17
                                        if stor18:
                                            if wethBalance >= (10^16 * stor19) + 10^17:
                                                if sub_1e64971b > !stor4:
                                                    revert with 'NH{q', 17
                                                sub_1e64971b += stor4
                                                call stor11.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args stor16, wethBalance / 20
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                call stor11.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args stor17, wethBalance / 25
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                call stor11.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args stor18, wethBalance / 50
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if sub_6bd3d45bAddress:
                                                    call stor11.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args sub_6bd3d45bAddress, wethBalance / 10
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                staticcall stor11.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < sub_1e64971b:
                                                    revert with 'NH{q', 17
                                                wethBalance = ext_call.return_data[0] - sub_1e64971b
                                                stor16 = 0
                                                stor17 = 0
                                                stor18 = 0
                                                if not stor19 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                stor19++
                                                sub_6bd3d45bAddress = 0
                                                if balanceOf[address(msg.sender)] > -10000000000000000001:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] += 10 * 10^18
                                                emit Transfer(20 * 10^18, 0, msg.sender);
                                    sub_ba0607c3 = ext_call.return_data[0]
            return 1
        if unknown_0x296cc401(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x1e64971b(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != name():
                    if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
                        require unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return totalSupply
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(arg1)] = arg2
                    emit Approval(arg2, msg.sender, address(arg1));
                    return 1
                require not msg.value
                if bool(stor8.length):
                    if not bool(stor8.length) - (uint255(stor8.length) * 0.5 < 32):
                        revert with 'NH{q', 34
                    if bool(stor8.length):
                        if not bool(stor8.length) - (uint255(stor8.length) * 0.5 < 32):
                            revert with 'NH{q', 34
                        if Mask(256, -1, stor8.length):
                            if 31 < uint255(stor8.length) * 0.5:
                                mem[160] = uint256(stor8.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor8.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor8[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor8.length), data=mem[160 len ceil32(uint255(stor8.length) * 0.5)])
                            mem[160] = 256 * stor8.length.field_8
                    else:
                        if not bool(stor8.length) - (stor8.length.field_1 < 32):
                            revert with 'NH{q', 34
                        if stor8.length.field_1:
                            if 31 < stor8.length.field_1:
                                mem[160] = uint256(stor8.field_0)
                                idx = 160
                                s = 0
                                while stor8.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor8[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor8.length), data=mem[160 len ceil32(uint255(stor8.length) * 0.5)])
                            mem[160] = 256 * stor8.length.field_8
                    mem[ceil32(uint255(stor8.length) * 0.5) + 224 len ceil32(uint255(stor8.length) * 0.5)] = mem[160 len ceil32(uint255(stor8.length) * 0.5)]
                    if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
                        mem[ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor8.length), data=mem[160 len ceil32(uint255(stor8.length) * 0.5)], mem[(2 * ceil32(uint255(stor8.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor8.length) * 0.5)]), 
                if not bool(stor8.length) - (stor8.length.field_1 < 32):
                    revert with 'NH{q', 34
                if bool(stor8.length):
                    if not bool(stor8.length) - (uint255(stor8.length) * 0.5 < 32):
                        revert with 'NH{q', 34
                    if Mask(256, -1, stor8.length):
                        if 31 < uint255(stor8.length) * 0.5:
                            mem[160] = uint256(stor8.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor8.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor8[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor8.length % 128, data=mem[160 len ceil32(stor8.length.field_1)])
                        mem[160] = 256 * stor8.length.field_8
                else:
                    if not bool(stor8.length) - (stor8.length.field_1 < 32):
                        revert with 'NH{q', 34
                    if stor8.length.field_1:
                        if 31 < stor8.length.field_1:
                            mem[160] = uint256(stor8.field_0)
                            idx = 160
                            s = 0
                            while stor8.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor8[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor8.length % 128, data=mem[160 len ceil32(stor8.length.field_1)])
                        mem[160] = 256 * stor8.length.field_8
                mem[ceil32(stor8.length.field_1) + 224 len ceil32(stor8.length.field_1)] = mem[160 len ceil32(stor8.length.field_1)]
                if ceil32(stor8.length.field_1) > stor8.length.field_1:
                    mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 224] = 0
                return Array(len=stor8.length % 128, data=mem[160 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 224 len 2 * ceil32(stor8.length.field_1)]), 
            if unknown_0x1e64971b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_1e64971b
            if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                require unknown_0x266cf109(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return stor16, stor17, stor18, stor19
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0, 'ERC20: insufficient allowance'
            if not address(arg1):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
            emit Approval((allowance[address(arg1)][msg.sender] - arg3), address(arg1), msg.sender);
            require address(stor15.field_0) - address(arg2)
            if uint8(stor15.field_160):
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > !arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
            else:
                if this.address == address(arg1):
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, address(arg1), address(arg2));
                else:
                    if this.address == address(arg2):
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, address(arg1), address(arg2));
                    else:
                        if stor13 == address(arg2):
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, address(arg1), address(arg2));
                        else:
                            if stor10 != address(arg1):
                                if not uint8(stor15.field_160):
                                    if balanceOf[this.address] >= totalSupply / 10000:
                                        require ext_code.size(this.address)
                                        call this.address.0x6ac5eeee with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if arg3 < arg3 / 10:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 / 10)):
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 10)
                            if arg3 < arg3 - (arg3 / 10):
                                revert with 'NH{q', 17
                            if balanceOf[this.address] > !(arg3 / 10):
                                revert with 'NH{q', 17
                            balanceOf[this.address] += arg3 / 10
                            emit Transfer((arg3 - (arg3 / 10)), address(arg1), address(arg2));
                            if arg3 < arg3 - (arg3 / 10):
                                revert with 'NH{q', 17
                            emit Transfer((arg3 / 10), address(arg1), this.address);
                            if not address(arg1) - stor10:
                                if not stor2[address(arg2)]:
                                    allowance[address(arg2)][stor13] = -1
                                    stor2[address(arg2)] = 1
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > sub_ba0607c3:
                                    if ext_call.return_data[0] < sub_ba0607c3:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[0] - sub_ba0607c3 >= 2 * 10^18:
                                        sub_6bd3d45bAddress = address(arg2)
                                    if ext_call.return_data[0] - sub_ba0607c3 >= 2 * 10^17:
                                        if sub_6bd3d45bAddress != address(arg2):
                                            if stor16 != address(arg2):
                                                if stor17 != address(arg2):
                                                    stor18 = stor17
                                                    stor17 = stor16
                                                    stor16 = address(arg2)
                                sub_ba0607c3 = ext_call.return_data[0]
                            if not address(arg2) - stor10:
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if stor19 > 0x5c3bd5191b525a2484df7f5cfd6a43e17fc6f80abedcc69ba7:
                                    revert with 'NH{q', 17
                                if 10^17 > !(2 * 10^17 * stor19):
                                    revert with 'NH{q', 17
                                if (2 * 10^17 * stor19) + 10^17 >= 10 * 10^18:
                                    if stor18:
                                        if wethBalance >= 10 * 10^18:
                                            if sub_1e64971b > !stor4:
                                                revert with 'NH{q', 17
                                            sub_1e64971b += stor4
                                            call stor11.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor16, wethBalance / 20
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            call stor11.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor17, wethBalance / 25
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            call stor11.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor18, wethBalance / 50
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if sub_6bd3d45bAddress:
                                                call stor11.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args sub_6bd3d45bAddress, wethBalance / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            staticcall stor11.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < sub_1e64971b:
                                                revert with 'NH{q', 17
                                            wethBalance = ext_call.return_data[0] - sub_1e64971b
                                            stor16 = 0
                                            stor17 = 0
                                            stor18 = 0
                                            if not stor19 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            stor19++
                                            sub_6bd3d45bAddress = 0
                                            if balanceOf[address(arg1)] > -10000000000000000001:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += 10 * 10^18
                                            emit Transfer(20 * 10^18, 0, address(arg1));
                                else:
                                    if stor19 > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
                                        revert with 'NH{q', 17
                                    if 10^17 > !(10^16 * stor19):
                                        revert with 'NH{q', 17
                                    if stor18:
                                        if wethBalance >= (10^16 * stor19) + 10^17:
                                            if sub_1e64971b > !stor4:
                                                revert with 'NH{q', 17
                                            sub_1e64971b += stor4
                                            call stor11.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor16, wethBalance / 20
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            call stor11.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor17, wethBalance / 25
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            call stor11.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args stor18, wethBalance / 50
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if sub_6bd3d45bAddress:
                                                call stor11.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args sub_6bd3d45bAddress, wethBalance / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            staticcall stor11.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < sub_1e64971b:
                                                revert with 'NH{q', 17
                                            wethBalance = ext_call.return_data[0] - sub_1e64971b
                                            stor16 = 0
                                            stor17 = 0
                                            stor18 = 0
                                            if not stor19 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            stor19++
                                            sub_6bd3d45bAddress = 0
                                            if balanceOf[address(arg1)] > -10000000000000000001:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += 10 * 10^18
                                            emit Transfer(20 * 10^18, 0, address(arg1));
                                sub_ba0607c3 = ext_call.return_data[0]
            return 1
        if unknown_0x39509351(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x296cc401(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if stor19 > 0xb877aa3236a4b44909befeb9fad487c2ff8df0157db98d374f:
                    revert with 'NH{q', 17
                if 10^17 > !(10^17 * stor19):
                    revert with 'NH{q', 17
                return ((10^17 * stor19) + 10^17 / 100 * 10^6)
            if uint32(call.func_hash) >> 224 != unknown_0x29b2b366(?????):
                require unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return 18
            require not msg.value
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0]
        if unknown_0x39509351(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if allowance[msg.sender][address(arg1)] > !arg2:
                revert with 'NH{q', 17
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
            emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, address(arg1));
            return 1
        if unknown_0x470561e9(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return sub_470561e9
        require unknown_0x6ac5eeee(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        uint8(stor15.field_160) = 1
        mem[160] = this.address
        mem[192] = stor11
        if not this.address:
            revert with 0, 'ERC20: burn from the zero address'
        if balanceOf[address(this.address)] < balanceOf[this.address] / 10:
            revert with 0, 'ERC20: burn amount exceeds balance'
        balanceOf[address(this.address)] -= balanceOf[this.address] / 10
        if totalSupply < balanceOf[this.address] / 10:
            revert with 'NH{q', 17
        totalSupply -= balanceOf[this.address] / 10
        emit Transfer((balanceOf[this.address] / 10), this.address, 0);
        mem[224] = 0x4a3167ca00000000000000000000000000000000000000000000000000000000
        mem[228] = balanceOf[this.address]
        mem[260] = 0
        mem[292] = 160
        mem[388] = 2
        idx = 0
        s = 420
        t = 160
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[324] = this.address
        mem[356] = block.timestamp
        require ext_code.size(stor20)
        call stor20.0x4a3167ca with:
             gas gas_remaining wei
            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor11)
        call stor11.deposit() with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        require return_data.size >= 32
        wethBalance = ext_call.return_data[0]
        if 5 * 10^17 < sub_1e64971b:
            if sub_1e64971b < sub_1e64971b / 3:
                revert with 'NH{q', 17
            sub_1e64971b -= sub_1e64971b / 3
            mem[ceil32(return_data.size) + 256] = stor11
            mem[ceil32(return_data.size) + 288] = this.address
            mem[ceil32(return_data.size) + 320] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 324] = sub_1e64971b / 3 / 2
            idx = 0
            s = ceil32(return_data.size) + 516
            t = ceil32(return_data.size) + 256
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor20)
            call stor20.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, sub_1e64971b / 3), 0, 160, stor13, block.timestamp, 2, mem[ceil32(return_data.size) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            balanceOf[stor13] = 0
            if sub_1e64971b / 3 < sub_1e64971b / 3 / 2:
                revert with 'NH{q', 17
            call stor11.0xa9059cbb with:
                 gas gas_remaining wei
                args stor10, (sub_1e64971b / 3) - (sub_1e64971b / 3 / 2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if balanceOf[stor10] > !balanceOf[stor13]:
                revert with 'NH{q', 17
            balanceOf[stor10] += balanceOf[stor13]
            emit Transfer(balanceOf[stor13], stor13, stor10);
            require ext_code.size(stor10)
            call stor10.'jbxB' with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            require return_data.size >= 32
            call stor10.0xa9059cbb with:
                 gas gas_remaining wei
                args stor10, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor10)
            call stor10.burn(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor11.0xa9059cbb with:
                 gas gas_remaining wei
                args stor10, sub_1e64971b
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor10)
            call stor10.sync() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if wethBalance < sub_1e64971b:
                revert with 'NH{q', 17
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < wethBalance - sub_1e64971b:
                revert with 'NH{q', 17
            call stor11.0xa9059cbb with:
                 gas gas_remaining wei
                args stor10, ext_call.return_data[0] - wethBalance + sub_1e64971b
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if balanceOf[this.address] < balanceOf[this.address]:
                revert with 'NH{q', 17
            if balanceOf[stor10] > !0:
                revert with 'NH{q', 17
            if balanceOf[this.address] < 0:
                revert with 'NH{q', 17
            emit Transfer(0, this.address, stor10);
            require ext_code.size(stor10)
            call stor10.'jbxB' with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args stor10
            require return_data.size >= 32
            sub_ba0607c3 = ext_call.return_data[0]
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            wethBalance = ext_call.return_data[0]
            if sub_470561e9 > !sub_1e64971b:
                revert with 'NH{q', 17
            sub_470561e9 += sub_1e64971b
            sub_1e64971b = 0
            if balanceOf[msg.sender] > -5000000000000000001:
                revert with 'NH{q', 17
            balanceOf[msg.sender] += 5 * 10^18
            emit Transfer(10 * 10^18, 0, msg.sender);
        uint8(stor15.field_160) = 0
}



}
