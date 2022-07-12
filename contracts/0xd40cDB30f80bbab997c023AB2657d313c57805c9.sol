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
uint8 stor14;
array of struct stor15;
mapping of uint256 isRegistered;
array of struct stor18;
mapping of uint256 stor19;
mapping of uint256 stor20;
mapping of uint256 sub_35703a3a;
mapping of uint256 stakedBalance;
mapping of uint8 stor23;
mapping of uint8 stor24;
mapping of address stor25;
mapping of uint8 stor26;
mapping of uint256 stor27;

function totalSupply() {
    return totalSupply
}

function sub_26c95e0a(?) {
    return sub_26c95e0a
}

function wl(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor24[address(arg1)])
}

function sub_35703a3a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor23[address(msg.sender)]:
        revert with 0, 'notAllowed'
    return sub_35703a3a[address(arg1)]
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

function sub_c5531e0a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor23[address(arg1)])
}

function sub_ca6ad40c(?) {
    return stor15.length
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
    return stor7, stor6, stor10, stor11, sub_ddc14afe, sub_26c95e0a, stor9, stor27[stor8]
}

function sub_c27bd3ee(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8 != msg.sender:
        revert with 0, 'oa'
    stor11 = arg1
}

function sub_d517c931(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8 != msg.sender:
        revert with 0, 'oa'
    stor10 = arg1
}

function sub_f10249b3(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8 != msg.sender:
        revert with 0, 'oa'
    sub_26c95e0a = arg1
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

function addToBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8 != msg.sender:
        revert with 0, 'oa'
    stor23[address(arg1)] = 1
}

function removeFromBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8 != msg.sender:
        revert with 0, 'oa'
    stor23[address(arg1)] = 0
}

function reputation() {
    if stor8 != msg.sender:
        revert with 0, 'oa'
    stor27[stor8] = 0
    call msg.sender with:
       value stor27[stor8] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sendMessage(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    emit 0x30b70ac3: Array(len=arg2.length, data=arg2[all]), msg.sender, arg1
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

function sub_ec169af9(?) {
    if stor7 < stor6:
        revert with 0, 'na'
    if stor8 != msg.sender:
        revert with 0, 'na'
    if stor14:
        revert with 0, 'na'
    stor14 = 1
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > 0xfffffffffffffffffffffffffffffffffffffffff1d8f2ec39c5ce5163ffffff:
        revert with 'NH{q', 17
    totalSupply += 4380000000 * 10^18
    if balanceOf[address(msg.sender)] > 0xfffffffffffffffffffffffffffffffffffffffff1d8f2ec39c5ce5163ffffff:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += 4380000000 * 10^18
    emit Transfer(4380000000 * 10^18, 0, msg.sender);
}

function sub_b14cc0e0(?) {
    if bool(stor24[address(msg.sender)]) != 1:
        revert with 0, 'bl'
    if stor7 < stor6:
        revert with 0, 'notyetminted'
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

function sub_61d42f6b(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if stor23[address(msg.sender)]:
        revert with 0, 'notAllowed'
    if isRegistered[address(arg2)] >= stor15.length:
        revert with 'NH{q', 50
    if stakedBalance[address(arg2)] < arg1:
        revert with 0, '2much'
    if not stor15[stor17[address(arg2)]].field_1536:
        revert with 0, '2much'
    if stakedBalance[address(arg2)] < arg1:
        revert with 'NH{q', 17
    stakedBalance[address(arg2)] -= arg1
    if sub_35703a3a[address(arg2)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_35703a3a[address(arg2)] += arg1
    emit 0x5d0ff203: block.timestamp, msg.sender, address(arg2)
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
    if bool(stor24[address(msg.sender)]) != 1:
        revert with 0, 'bl'
    if isRegistered[address(arg1)] >= stor15.length:
        revert with 'NH{q', 50
    if stor25[address(msg.sender)][address(arg1)] == address(arg1):
        revert with 0, 'Alr rep'
    if not stor15[stor17[address(arg1)]].field_1536:
        revert with 0, 'Alr rep'
    stor25[address(msg.sender)][address(arg1)] = address(arg1)
    if stor15[stor17[address(arg1)]].field_256 > -2:
        revert with 'NH{q', 17
    stor15[stor17[address(arg1)]].field_256++
    if stor15[stor17[address(arg1)]].field_256 < stor10:
        stor15[stor17[address(arg1)]].field_1536 = uint8(bool(stor15[stor17[address(arg1)]].field_1536))
    else:
        stor15[stor17[address(arg1)]].field_1536 = 0
        stor24[address(arg1)] = 0
    emit 0x6ceca1a3: block.timestamp, msg.sender, address(arg1)
}

function sub_d4f4648f(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if stor23[address(msg.sender)]:
        revert with 0, 'notAllowed'
    if isRegistered[address(arg2)] >= stor15.length:
        revert with 'NH{q', 50
    if sub_35703a3a[address(arg2)] < arg1:
        revert with 0, '2much'
    if not stor15[stor17[address(arg2)]].field_1536:
        revert with 0, '2much'
    if stakedBalance[address(arg2)] > -arg1 - 1:
        revert with 'NH{q', 17
    stakedBalance[address(arg2)] += arg1
    if sub_35703a3a[address(arg2)] < arg1:
        revert with 'NH{q', 17
    sub_35703a3a[address(arg2)] -= arg1
    if not stor26[address(arg2)][address(msg.sender)]:
        stor18.length++
        stor18[stor18.length].field_0 = address(arg2)
        stor18[stor18.length].field_256 = msg.sender
        stor26[address(arg2)][address(msg.sender)] = 1
        if stor19[address(arg2)] > -2:
            revert with 'NH{q', 17
        stor19[address(arg2)]++
        if stor20[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        stor20[address(msg.sender)]++
}

function sub_b1098137(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor24[address(msg.sender)]) != 1:
        revert with 0, 'bl'
    if isRegistered[address(arg1)] >= stor15.length:
        revert with 'NH{q', 50
    if msg.sender == address(arg1):
        revert with 0, 'NotAllowed'
    if stor25[address(msg.sender)][address(arg1)] == address(arg1):
        revert with 0, 'Alr rep'
    if stor15[stor17[address(arg1)]].field_0 >= stor11:
        revert with 0, 'maxGoodCount'
    if stor15[stor17[address(arg1)]].field_256 <= 0:
        revert with 0, 'NotNeeded'
    if sub_26c95e0a != msg.value:
        revert with 2316121977
    if stor27[stor8] > -sub_26c95e0a - 1:
        revert with 'NH{q', 17
    stor27[stor8] += sub_26c95e0a
    stor25[address(msg.sender)][address(arg1)] = address(arg1)
    if stor15[stor17[address(arg1)]].field_256 < 1:
        revert with 'NH{q', 17
    stor15[stor17[address(arg1)]].field_256--
    if stor15[stor17[address(arg1)]].field_0 > -2:
        revert with 'NH{q', 17
    stor15[stor17[address(arg1)]].field_0++
    if stor15[stor17[address(arg1)]].field_256 >= stor10:
        stor15[stor17[address(arg1)]].field_1536 = uint8(bool(stor15[stor17[address(arg1)]].field_1536))
    else:
        stor15[stor17[address(arg1)]].field_1536 = 1
        stor24[address(arg1)] = 1
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

function sub_0000d598(?) {
    if bool(stor24[address(msg.sender)]) != 1:
        revert with 0, 'bl'
    if stor7 > stor6:
        revert with 0, 'already minted'
    if isRegistered[address(msg.sender)] >= stor15.length:
        revert with 'NH{q', 50
    if stor15[stor17[address(msg.sender)]].field_512:
        if block.timestamp < stor15[stor17[address(msg.sender)]].field_512:
            revert with 'NH{q', 17
        if block.timestamp - stor15[stor17[address(msg.sender)]].field_512 and 10^18 > -1 / block.timestamp - stor15[stor17[address(msg.sender)]].field_512:
            revert with 'NH{q', 17
        if not sub_ddc14afe:
            revert with 'NH{q', 18
        if sub_35703a3a[address(msg.sender)] > -((10^18 * block.timestamp) - (10^18 * stor15[stor17[address(msg.sender)]].field_512) / sub_ddc14afe) - 1:
            revert with 'NH{q', 17
        sub_35703a3a[address(msg.sender)] += (10^18 * block.timestamp) - (10^18 * stor15[stor17[address(msg.sender)]].field_512) / sub_ddc14afe
        stor15[stor17[address(msg.sender)]].field_512 = block.timestamp
        if not sub_ddc14afe:
            revert with 'NH{q', 18
        if stor7 > -((10^18 * block.timestamp) - (10^18 * stor15[stor17[address(msg.sender)]].field_512) / sub_ddc14afe) - 1:
            revert with 'NH{q', 17
        stor7 += (10^18 * block.timestamp) - (10^18 * stor15[stor17[address(msg.sender)]].field_512) / sub_ddc14afe
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
        stor15[stor17[address(msg.sender)]].field_512 = block.timestamp
        if not sub_ddc14afe:
            revert with 'NH{q', 18
        if stor7 > -((10^18 * block.timestamp) - (10^18 * start) / sub_ddc14afe) - 1:
            revert with 'NH{q', 17
        stor7 += (10^18 * block.timestamp) - (10^18 * start) / sub_ddc14afe
}

function sub_e3917cfc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor23[address(msg.sender)]:
        revert with 0, 'notAllowed'
    mem[0] = address(arg1)
    mem[32] = 19
    if stor19[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor19[address(arg1)]
    mem[64] = (32 * stor19[address(arg1)]) + 128
    if not stor19[address(arg1)]:
        idx = 0
        s = 0
        while idx < stor18.length:
            mem[0] = 18
            if stor18[idx].field_0 != address(arg1):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor18.length:
                revert with 'NH{q', 50
            mem[0] = 18
            _31 = mem[64]
            mem[64] = mem[64] + 64
            mem[_31] = stor18[idx].field_0
            mem[_31 + 32] = stor18[idx].field_256
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _31
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _28 = mem[64]
        mem[mem[64]] = 32
        _33 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _33:
            _49 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_49 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _28 + (64 * _33) + -mem[64] + 64
    mem[64] = (32 * stor19[address(arg1)]) + 192
    mem[(32 * stor19[address(arg1)]) + 128] = 0
    mem[(32 * stor19[address(arg1)]) + 160] = 0
    mem[var24001] = (32 * stor19[address(arg1)]) + 128
    s = var24001
    idx = var24002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * stor19[address(arg1)]) + 128] = 0
        mem[(32 * stor19[address(arg1)]) + 160] = 0
        mem[s + 32] = (32 * stor19[address(arg1)]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor18.length:
        mem[0] = 18
        if stor18[idx].field_0 != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= stor18.length:
            revert with 'NH{q', 50
        mem[0] = 18
        _66 = mem[64]
        mem[64] = mem[64] + 64
        mem[_66] = stor18[idx].field_0
        mem[_66 + 32] = stor18[idx].field_256
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _66
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _63 = mem[64]
    mem[mem[64]] = 32
    _68 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _68:
        _73 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_73 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _63 + (64 * _68) + -mem[64] + 64
}

function sub_8891b29e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor23[address(msg.sender)]:
        revert with 0, 'notAllowed'
    mem[0] = address(arg1)
    mem[32] = 20
    if stor20[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor20[address(arg1)]
    mem[64] = (32 * stor20[address(arg1)]) + 128
    if not stor20[address(arg1)]:
        idx = 0
        s = 0
        while idx < stor18.length:
            mem[0] = 18
            if stor18[idx].field_256 != address(arg1):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor18.length:
                revert with 'NH{q', 50
            mem[0] = 18
            _31 = mem[64]
            mem[64] = mem[64] + 64
            mem[_31] = stor18[idx].field_0
            mem[_31 + 32] = stor18[idx].field_256
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _31
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _28 = mem[64]
        mem[mem[64]] = 32
        _33 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _33:
            _49 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_49 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _28 + (64 * _33) + -mem[64] + 64
    mem[64] = (32 * stor20[address(arg1)]) + 192
    mem[(32 * stor20[address(arg1)]) + 128] = 0
    mem[(32 * stor20[address(arg1)]) + 160] = 0
    mem[var24001] = (32 * stor20[address(arg1)]) + 128
    s = var24001
    idx = var24002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * stor20[address(arg1)]) + 128] = 0
        mem[(32 * stor20[address(arg1)]) + 160] = 0
        mem[s + 32] = (32 * stor20[address(arg1)]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor18.length:
        mem[0] = 18
        if stor18[idx].field_256 != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= stor18.length:
            revert with 'NH{q', 50
        mem[0] = 18
        _66 = mem[64]
        mem[64] = mem[64] + 64
        mem[_66] = stor18[idx].field_0
        mem[_66 + 32] = stor18[idx].field_256
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _66
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _63 = mem[64]
    mem[mem[64]] = 32
    _68 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _68:
        _73 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_73 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _63 + (64 * _68) + -mem[64] + 64
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
