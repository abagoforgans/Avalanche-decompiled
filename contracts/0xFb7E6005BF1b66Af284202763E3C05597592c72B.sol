contract main {




// =====================  Runtime code  =====================


#
#  - getAllMinters()
#  - sub_a412a69e(?)
#  - getMinter(address arg1)
#  - sub_c1354b5a(?)
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint256 start;
uint256 stor6;
uint256 stor7;
address stor8;
address stor9;
uint256 stor10;
uint256 stor11;
uint256 sub_ddc14afe;
uint256 sub_26c95e0a;
uint8 stor14; offset 160
uint128 stor14; offset 160
address sub_427ac82cAddress;
uint256 stor15;
uint256 stor16;
address stor17;
array of struct stor18;
array of struct stor19;
mapping of uint256 isRegistered;
mapping of uint256 stor22;
mapping of uint256 stor23;
mapping of uint256 sub_35703a3a;
mapping of uint256 stakedBalance;
mapping of uint8 stor26;
mapping of uint8 stor27;
mapping of address stor28;
mapping of uint8 stor29;
mapping of uint256 stor30;
mapping of struct sub_4b6d0088;
array of address stor32;

function totalSupply() {
    return totalSupply
}

function sub_26c95e0a(?) {
    return sub_26c95e0a
}

function wl(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor26[address(arg1)])
}

function sub_35703a3a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_35703a3a[address(arg1)]
}

function sub_427ac82c(?) {
    return sub_427ac82cAddress
}

function sub_4b6d0088(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4b6d0088[address(arg1)].field_0, sub_4b6d0088[address(arg1)].field_256, bool(sub_4b6d0088[address(arg1)].field_512)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getStakedBalance() {
    return stakedBalance[address(msg.sender)]
}

function isRegistered(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return isRegistered[address(arg1)]
}

function getStart() {
    return start
}

function sub_ca6ad40c(?) {
    return stor18.length
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_ddc14afe(?) {
    return sub_ddc14afe
}

function _fallback() payable {
    revert
}

function sub_5fbb7093(?) {
    return stor7, stor6, stor10, stor11, sub_ddc14afe, sub_26c95e0a, stor9, stor30[stor8], stor16, stor15, stor16
}

function updateAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8 != msg.sender:
        revert with 0, 'oa'
    stor8 = arg1
}

function updateSigner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8 != msg.sender:
        revert with 0, 'oa'
    stor9 = arg1
}

function sub_69d3bdbd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor8 != msg.sender:
        revert with 0, 'oa'
    stor17 = address(arg1)
}

function sub_212c34ad(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor17 != msg.sender:
        revert with 0, ''
    stor27[address(arg1)] = 1
}

function changeMarketing1(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_427ac82cAddress != msg.sender:
        revert with 0, ''
    sub_427ac82cAddress = arg1
}

function sub_95b8b001(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor8 != msg.sender:
        revert with 0, 'oa'
    stor11 = arg1
    stor10 = arg2
    sub_26c95e0a = arg3
}

function reputation() {
    if stor8 != msg.sender:
        revert with 0, 'oa'
    stor30[stor8] = 0
    call msg.sender with:
       value stor30[stor8] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_61d42f6b(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if bool(stor27[address(msg.sender)]) != 1:
        revert with 0, 'fc'
    if isRegistered[address(arg2)] >= stor18.length:
        revert with 'NH{q', 50
    if stakedBalance[address(arg2)] < arg1:
        revert with 0, ''
    if not stor18[stor21[address(arg2)]].field_1536:
        revert with 0, ''
    if stakedBalance[address(arg2)] < arg1:
        revert with 'NH{q', 17
    stakedBalance[address(arg2)] -= arg1
    if sub_35703a3a[address(arg2)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_35703a3a[address(arg2)] += arg1
}

function sub_b14cc0e0(?) {
    if bool(stor26[address(msg.sender)]) != 1:
        revert with 0, 'bl'
    if stor7 < stor6:
        revert with 0, ''
    sub_35703a3a[address(msg.sender)] = 0
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -sub_35703a3a[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    totalSupply += sub_35703a3a[address(msg.sender)]
    if balanceOf[address(msg.sender)] > -sub_35703a3a[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += sub_35703a3a[address(msg.sender)]
    emit Transfer(sub_35703a3a[address(msg.sender)], 0, msg.sender);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function sub_b06f0ce2(?) {
    if stor7 < stor6:
        revert with 0, ''
    if sub_427ac82cAddress != msg.sender:
        revert with 0, ''
    if uint8(stor14.field_160):
        revert with 0, ''
    Mask(96, 0, stor14.field_160) = 1
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffff637bf41628159c4bffffff:
        revert with 'NH{q', 17
    totalSupply += 146 * 10^17 * 3600 * 24 * 3600
    if balanceOf[address(msg.sender)] > 0xffffffffffffffffffffffffffffffffffffffffff637bf41628159c4bffffff:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += 146 * 10^17 * 3600 * 24 * 3600
    emit Transfer((146 * 10^17 * 3600 * 24 * 3600), 0, msg.sender);
}

function sub_de094701(?) {
    if stor7 < stor6:
        revert with 0, ''
    if sub_4b6d0088[address(msg.sender)].field_512:
        revert with 0, ''
    sub_4b6d0088[address(msg.sender)].field_256 = 0
    sub_4b6d0088[address(msg.sender)].field_512 = 1
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -sub_4b6d0088[address(msg.sender)].field_256 - 1:
        revert with 'NH{q', 17
    totalSupply += sub_4b6d0088[address(msg.sender)].field_256
    if balanceOf[address(msg.sender)] > -sub_4b6d0088[address(msg.sender)].field_256 - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += sub_4b6d0088[address(msg.sender)].field_256
    emit Transfer(sub_4b6d0088[address(msg.sender)].field_256, 0, msg.sender);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_d5c0f1fb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor26[address(msg.sender)]) != 1:
        revert with 0, 'bl'
    if isRegistered[address(arg1)] >= stor18.length:
        revert with 'NH{q', 50
    if stor28[address(msg.sender)][address(arg1)] == address(arg1):
        revert with 0, ''
    if not stor18[stor21[address(arg1)]].field_1536:
        revert with 0, ''
    stor28[address(msg.sender)][address(arg1)] = address(arg1)
    if stor18[stor21[address(arg1)]].field_256 > -2:
        revert with 'NH{q', 17
    stor18[stor21[address(arg1)]].field_256++
    if stor18[stor21[address(arg1)]].field_256 < stor10:
        stor18[stor21[address(arg1)]].field_1536 = uint8(bool(stor18[stor21[address(arg1)]].field_1536))
    else:
        stor18[stor21[address(arg1)]].field_1536 = 0
        stor26[address(arg1)] = 0
    emit 0x6ceca1a3: block.timestamp, msg.sender, address(arg1)
}

function sub_d4f4648f(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if bool(stor27[address(msg.sender)]) != 1:
        revert with 0, 'fc'
    if isRegistered[address(arg2)] >= stor18.length:
        revert with 'NH{q', 50
    if sub_35703a3a[address(arg2)] < arg1:
        revert with 0, ''
    if not stor18[stor21[address(arg2)]].field_1536:
        revert with 0, ''
    if stakedBalance[address(arg2)] > -arg1 - 1:
        revert with 'NH{q', 17
    stakedBalance[address(arg2)] += arg1
    if sub_35703a3a[address(arg2)] < arg1:
        revert with 'NH{q', 17
    sub_35703a3a[address(arg2)] -= arg1
    if not stor29[address(arg2)][address(msg.sender)]:
        stor19.length++
        stor19[stor19.length].field_0 = address(arg2)
        stor19[stor19.length].field_256 = msg.sender
        stor29[address(arg2)][address(msg.sender)] = 1
        if stor22[address(arg2)] > -2:
            revert with 'NH{q', 17
        stor22[address(arg2)]++
        if stor23[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        stor23[address(msg.sender)]++
}

function sub_b1098137(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor26[address(msg.sender)]) != 1:
        revert with 0, 'bl'
    if isRegistered[address(arg1)] >= stor18.length:
        revert with 'NH{q', 50
    if msg.sender == address(arg1):
        revert with 0, ''
    if stor28[address(msg.sender)][address(arg1)] == address(arg1):
        revert with 0, ''
    if stor18[stor21[address(arg1)]].field_0 >= stor11:
        revert with 0, ''
    if stor18[stor21[address(arg1)]].field_256 <= 0:
        revert with 0, ''
    if sub_26c95e0a != msg.value:
        revert with 2316121977
    if stor30[stor8] > -sub_26c95e0a - 1:
        revert with 'NH{q', 17
    stor30[stor8] += sub_26c95e0a
    stor28[address(msg.sender)][address(arg1)] = address(arg1)
    if stor18[stor21[address(arg1)]].field_256 < 1:
        revert with 'NH{q', 17
    stor18[stor21[address(arg1)]].field_256--
    if stor18[stor21[address(arg1)]].field_0 > -2:
        revert with 'NH{q', 17
    stor18[stor21[address(arg1)]].field_0++
    if stor18[stor21[address(arg1)]].field_256 >= stor10:
        stor18[stor21[address(arg1)]].field_1536 = uint8(bool(stor18[stor21[address(arg1)]].field_1536))
    else:
        stor18[stor21[address(arg1)]].field_1536 = 1
        stor26[address(arg1)] = 1
    emit 0x11c9a04d: block.timestamp, msg.sender, address(arg1)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_6cbcb4cd(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == arg4
    if bool(stor27[address(msg.sender)]) != 1:
        revert with 0, 'fc'
    if stor15 < stor16:
        if address(arg3) != msg.sender:
            if arg4 >= 3:
                if arg2 and arg4 > -1 / arg2:
                    revert with 'NH{q', 17
                if arg2 * arg4 and 1000 > -1 / arg2 * arg4:
                    revert with 'NH{q', 17
                if 1000 * arg2 * arg4 and 10^18 > -1 / 1000 * arg2 * arg4:
                    revert with 'NH{q', 17
                if sub_4b6d0088[address(arg1)].field_256 > (-1000 * 10^18 * arg2 * arg4) - 1:
                    revert with 'NH{q', 17
                sub_4b6d0088[address(arg1)].field_256 += 1000 * 10^18 * arg2 * arg4
                if arg2 and arg4 > -1 / arg2:
                    revert with 'NH{q', 17
                if arg2 * arg4 and 1000 > -1 / arg2 * arg4:
                    revert with 'NH{q', 17
                if 1000 * arg2 * arg4 and 10^18 > -1 / 1000 * arg2 * arg4:
                    revert with 'NH{q', 17
                if stor15 > (-1000 * 10^18 * arg2 * arg4) - 1:
                    revert with 'NH{q', 17
                stor15 += 1000 * 10^18 * arg2 * arg4
                if sub_4b6d0088[address(arg1)].field_0 <= 0:
                    stor32.length++
                    stor32[stor32.length] = address(arg1)
                    if stor32.length < 1:
                        revert with 'NH{q', 17
                    if stor32.length - 1 > -2:
                        revert with 'NH{q', 17
                    sub_4b6d0088[address(arg1)].field_0 = stor32.length
                    emit 0x5297879a: address(arg1)
}

function sub_0000d598(?) {
    if bool(stor26[address(msg.sender)]) != 1:
        revert with 0, 'bl'
    if stor7 > stor6:
        revert with 0, ''
    if isRegistered[address(msg.sender)] >= stor18.length:
        revert with 'NH{q', 50
    if stor18[stor21[address(msg.sender)]].field_512:
        if block.timestamp < stor18[stor21[address(msg.sender)]].field_512:
            revert with 'NH{q', 17
        if block.timestamp - stor18[stor21[address(msg.sender)]].field_512 and 10^18 > -1 / block.timestamp - stor18[stor21[address(msg.sender)]].field_512:
            revert with 'NH{q', 17
        if not sub_ddc14afe:
            revert with 'NH{q', 18
        if sub_35703a3a[address(msg.sender)] > -((10^18 * block.timestamp) - (10^18 * stor18[stor21[address(msg.sender)]].field_512) / sub_ddc14afe) - 1:
            revert with 'NH{q', 17
        sub_35703a3a[address(msg.sender)] += (10^18 * block.timestamp) - (10^18 * stor18[stor21[address(msg.sender)]].field_512) / sub_ddc14afe
        stor18[stor21[address(msg.sender)]].field_512 = block.timestamp
        if not sub_ddc14afe:
            revert with 'NH{q', 18
        if stor7 > -((10^18 * block.timestamp) - (10^18 * stor18[stor21[address(msg.sender)]].field_512) / sub_ddc14afe) - 1:
            revert with 'NH{q', 17
        stor7 += (10^18 * block.timestamp) - (10^18 * stor18[stor21[address(msg.sender)]].field_512) / sub_ddc14afe
    else:
        if block.timestamp < start:
            revert with 'NH{q', 17
        if block.timestamp - start and 10^18 > -1 / block.timestamp - start:
            revert with 'NH{q', 17
        if not sub_ddc14afe:
            revert with 'NH{q', 18
        if sub_35703a3a[address(msg.sender)] > -((10^18 * block.timestamp) - (10^18 * start) / sub_ddc14afe) - 1:
            revert with 'NH{q', 17
        sub_35703a3a[address(msg.sender)] += (10^18 * block.timestamp) - (10^18 * start) / sub_ddc14afe
        stor18[stor21[address(msg.sender)]].field_512 = block.timestamp
        if not sub_ddc14afe:
            revert with 'NH{q', 18
        if stor7 > -((10^18 * block.timestamp) - (10^18 * start) / sub_ddc14afe) - 1:
            revert with 'NH{q', 17
        stor7 += (10^18 * block.timestamp) - (10^18 * start) / sub_ddc14afe
}

function sub_e3917cfc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 22
    if stor22[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor22[address(arg1)]
    mem[64] = (32 * stor22[address(arg1)]) + 128
    if not stor22[address(arg1)]:
        idx = 0
        s = 0
        while idx < stor19.length:
            mem[0] = 19
            if stor19[idx].field_0 != address(arg1):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor19.length:
                revert with 'NH{q', 50
            mem[0] = 19
            _28 = mem[64]
            mem[64] = mem[64] + 64
            mem[_28] = stor19[idx].field_0
            mem[_28 + 32] = stor19[idx].field_256
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _28
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _25 = mem[64]
        mem[mem[64]] = 32
        _30 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _30:
            _46 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_46 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _25 + (64 * _30) + -mem[64] + 64
    mem[64] = (32 * stor22[address(arg1)]) + 192
    mem[(32 * stor22[address(arg1)]) + 128] = 0
    mem[(32 * stor22[address(arg1)]) + 160] = 0
    mem[var21001] = (32 * stor22[address(arg1)]) + 128
    s = var21001
    idx = var21002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * stor22[address(arg1)]) + 128] = 0
        mem[(32 * stor22[address(arg1)]) + 160] = 0
        mem[s + 32] = (32 * stor22[address(arg1)]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor19.length:
        mem[0] = 19
        if stor19[idx].field_0 != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= stor19.length:
            revert with 'NH{q', 50
        mem[0] = 19
        _63 = mem[64]
        mem[64] = mem[64] + 64
        mem[_63] = stor19[idx].field_0
        mem[_63 + 32] = stor19[idx].field_256
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _63
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _60 = mem[64]
    mem[mem[64]] = 32
    _65 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _65:
        _70 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_70 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _60 + (64 * _65) + -mem[64] + 64
}

function sub_8891b29e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 23
    if stor23[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor23[address(arg1)]
    mem[64] = (32 * stor23[address(arg1)]) + 128
    if not stor23[address(arg1)]:
        idx = 0
        s = 0
        while idx < stor19.length:
            mem[0] = 19
            if stor19[idx].field_256 != address(arg1):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor19.length:
                revert with 'NH{q', 50
            mem[0] = 19
            _28 = mem[64]
            mem[64] = mem[64] + 64
            mem[_28] = stor19[idx].field_0
            mem[_28 + 32] = stor19[idx].field_256
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _28
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _25 = mem[64]
        mem[mem[64]] = 32
        _30 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _30:
            _46 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_46 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _25 + (64 * _30) + -mem[64] + 64
    mem[64] = (32 * stor23[address(arg1)]) + 192
    mem[(32 * stor23[address(arg1)]) + 128] = 0
    mem[(32 * stor23[address(arg1)]) + 160] = 0
    mem[var21001] = (32 * stor23[address(arg1)]) + 128
    s = var21001
    idx = var21002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * stor23[address(arg1)]) + 128] = 0
        mem[(32 * stor23[address(arg1)]) + 160] = 0
        mem[s + 32] = (32 * stor23[address(arg1)]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor19.length:
        mem[0] = 19
        if stor19[idx].field_256 != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= stor19.length:
            revert with 'NH{q', 50
        mem[0] = 19
        _63 = mem[64]
        mem[64] = mem[64] + 64
        mem[_63] = stor19[idx].field_0
        mem[_63 + 32] = stor19[idx].field_256
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _63
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _60 = mem[64]
    mem[mem[64]] = 32
    _65 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _65:
        _70 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_70 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _60 + (64 * _65) + -mem[64] + 64
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



}
