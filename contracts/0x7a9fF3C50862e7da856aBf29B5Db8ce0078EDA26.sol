contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
mapping of uint8 stor6;
mapping of uint8 stor7;
address stor8;
address stor9;
address sub_6c0c69b1Address;
address sub_0053d555Address;
address stor12;
uint256 taxPercent;
uint8 sub_6dd9325c;
uint8 isTradingEnabled; offset 8
address stor14;
address treasuryAddress; offset 16
uint256 stor14; offset 8
uint256 sub_fac4fcc8;
address sub_527509f3Address;

function sub_0053d555(?) {
    return sub_0053d555Address
}

function isTradingEnabled() {
    return bool(isTradingEnabled)
}

function totalSupply() {
    return totalSupply
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function sub_3244338f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[arg1])
}

function sub_527509f3(?) {
    return sub_527509f3Address
}

function treasury() {
    return treasuryAddress
}

function sub_6c0c69b1(?) {
    return sub_6c0c69b1Address
}

function sub_6dd9325c(?) {
    return bool(sub_6dd9325c)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function taxPercent() {
    return taxPercent
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

function sub_fac4fcc8(?) {
    return sub_fac4fcc8
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTax(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    taxPercent = arg1
}

function sub_1319e7e1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = address(arg1)
}

function setTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function sub_24b504f1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
}

function sub_46173cc7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function sub_2cb73ff0(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6dd9325c = uint8(bool(arg1))
}

function sub_2ae883fd(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor14.field_8) = Mask(248, 0, bool(arg1))
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

function setBlacklist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor7[address(arg1)]) == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is already the value of 'blacklisted''
    stor7[address(arg1)] = uint8(arg2)
    emit blacklist(arg2, arg1);
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

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > (-1 * 10^18 * arg1) - 1:
        revert with 'NH{q', 17
    totalSupply += 10^18 * arg1
    if balanceOf[address(msg.sender)] > (-1 * 10^18 * arg1) - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += 10^18 * arg1
    emit Transfer((10^18 * arg1), 0, msg.sender);
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

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < 10^18 * arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] += -1 * 10^18 * arg1
    if totalSupply < 10^18 * arg1:
        revert with 'NH{q', 17
    totalSupply += -1 * 10^18 * arg1
    emit Transfer((10^18 * arg1), msg.sender, 0);
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

function sub_dab9b262(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    if arg3:
        allowance[address(arg1)][address(arg2)] = -1
        emit Approval(-1, address(arg1), address(arg2));
    else:
        allowance[address(arg1)][address(arg2)] = 0
        emit Approval(0, address(arg1), address(arg2));
}

function sub_0d553701(?) {
    require calldata.size - 4 >= 64
    require 35 < calldata.size
    require 68 <= calldata.size
    idx = 4
    s = 96
    while idx < 68:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor8)
    staticcall stor8.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 164] = mem[108 len 20]
    mem[ceil32(return_data.size) + 196] = mem[140 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args mem[ceil32(return_data.size) + 164 len 64]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        mem[(2 * ceil32(return_data.size)) + 164] = mem[108 len 20]
        mem[(2 * ceil32(return_data.size)) + 196] = mem[140 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 164 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[0] = arg2
    mem[32] = 6
    if not stor6[address(arg2)]:
        if arg1 != stor12:
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
        else:
            if arg2 != this.address:
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
            else:
                mem[100] = this.address
                require ext_code.size(sub_0053d555Address)
                staticcall sub_0053d555Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[ceil32(return_data.size) + 96] = 2
                mem[ceil32(return_data.size) + 128] = this.address
                require ext_code.size(stor8)
                staticcall stor8.WAVAX() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
                mem[(2 * ceil32(return_data.size)) + 228] = 0
                mem[(2 * ceil32(return_data.size)) + 260] = 160
                mem[(2 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = ceil32(return_data.size) + 128
                t = (2 * ceil32(return_data.size)) + 388
                while idx < mem[ceil32(return_data.size) + 96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0053d555Address)
                staticcall sub_0053d555Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _132 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _134 = mem[_132]
                require mem[_132] == mem[_132]
                if mem[_132] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp
                require ext_code.size(stor8)
                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value _134 - ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args address(this.address), Mask(255, 1, arg3), 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _140 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_140] == mem[_140]
                require mem[_140 + 32] == mem[_140 + 32]
                require mem[_140 + 64] == mem[_140 + 64]
                emit SwapAndLiquify(arg3 / 2, ext_call.return_data[0], _134 - ext_call.return_data[0]);
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9)
                staticcall stor9.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _156 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_156] == mem[_156]
    else:
        if not sub_6dd9325c:
            if arg3 and taxPercent > -1 / arg3:
                revert with 'NH{q', 17
            if arg3 < arg3 * taxPercent / 100:
                revert with 'NH{q', 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3 - (arg3 * taxPercent / 100):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxPercent / 100)
            if balanceOf[address(arg2)] > -arg3 + (arg3 * taxPercent / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * taxPercent / 100)
            emit Transfer((arg3 - (arg3 * taxPercent / 100)), arg1, arg2);
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not treasuryAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3 * taxPercent / 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3 * taxPercent / 100
            if balanceOf[address(stor14.field_0)] > -(arg3 * taxPercent / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(stor14.field_0)] += arg3 * taxPercent / 100
            emit Transfer((arg3 * taxPercent / 100), arg1, treasuryAddress);
        else:
            if arg1 != stor12:
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
            else:
                if arg2 != this.address:
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
                else:
                    mem[100] = this.address
                    require ext_code.size(sub_0053d555Address)
                    staticcall sub_0053d555Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 96] = 2
                    mem[ceil32(return_data.size) + 128] = this.address
                    require ext_code.size(stor8)
                    staticcall stor8.WAVAX() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < mem[ceil32(return_data.size) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(stor8)
                    call stor8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0053d555Address)
                    staticcall sub_0053d555Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _133 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _135 = mem[_133]
                    require mem[_133] == mem[_133]
                    if mem[_133] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(stor8)
                    call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value _135 - ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args address(this.address), Mask(255, 1, arg3), 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _141 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_141] == mem[_141]
                    require mem[_141 + 32] == mem[_141 + 32]
                    require mem[_141 + 64] == mem[_141 + 64]
                    emit SwapAndLiquify(arg3 / 2, ext_call.return_data[0], _135 - ext_call.return_data[0]);
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor9)
                    staticcall stor9.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _157 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_157] == mem[_157]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0, 'ERC20:1'
    if not arg1:
        revert with 0, 'ERC20:2'
    if msg.sender == treasuryAddress:
        if arg1 == stor8:
            if not taxPercent:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if stor12 != msg.sender:
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg1 != this.address:
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        mem[0] = arg1
                        mem[32] = 0
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        mem[100] = this.address
                        require ext_code.size(sub_0053d555Address)
                        staticcall sub_0053d555Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = this.address
                        require ext_code.size(stor8)
                        staticcall stor8.WAVAX() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 388
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(stor8)
                        call stor8.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0053d555Address)
                        staticcall sub_0053d555Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2556 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2583 = mem[_2556]
                        require mem[_2556] == mem[_2556]
                        if mem[_2556] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp
                        require ext_code.size(stor8)
                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value _2583 - ext_call.return_data[0] wei
                             gas gas_remaining wei
                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2664 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_2664] == mem[_2664]
                        require mem[_2664 + 32] == mem[_2664 + 32]
                        require mem[_2664 + 64] == mem[_2664 + 64]
                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2583 - ext_call.return_data[0]);
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2880 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2880] == mem[_2880]
            else:
                if not sub_6dd9325c:
                    require ext_code.size(stor12)
                    staticcall stor12.0x71e7af22 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'You must own a node before trading the ASNO token'
                    if arg2 and taxPercent > -1 / arg2:
                        revert with 'NH{q', 17
                    require ext_code.size(stor12)
                    staticcall stor12.0x71e7af22 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] == 1:
                        if arg2 < arg2 * taxPercent / 100 / 2:
                            revert with 'NH{q', 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100 / 2):
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100 / 2)
                        if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100 / 2) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100 / 2)
                        emit Transfer((arg2 - (arg2 * taxPercent / 100 / 2)), msg.sender, arg1);
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not treasuryAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100 / 2:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100 / 2
                        if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100 / 2) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100 / 2
                        emit Transfer((arg2 * taxPercent / 100 / 2), msg.sender, treasuryAddress);
                    else:
                        if ext_call.return_data[0] >= 2:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not treasuryAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < 0:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            if balanceOf[address(stor14.field_0)] > -1:
                                revert with 'NH{q', 17
                            emit Transfer(0, msg.sender, treasuryAddress);
                        else:
                            if arg2 < arg2 * taxPercent / 100:
                                revert with 'NH{q', 17
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100):
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100)
                            emit Transfer((arg2 - (arg2 * taxPercent / 100)), msg.sender, arg1);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not treasuryAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100
                            if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100
                            emit Transfer((arg2 * taxPercent / 100), msg.sender, treasuryAddress);
                else:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if stor12 != msg.sender:
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg1 != this.address:
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 0
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            mem[100] = this.address
                            require ext_code.size(sub_0053d555Address)
                            staticcall sub_0053d555Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 2
                            mem[ceil32(return_data.size) + 128] = this.address
                            require ext_code.size(stor8)
                            staticcall stor8.WAVAX() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                            mem[(2 * ceil32(return_data.size)) + 228] = 0
                            mem[(2 * ceil32(return_data.size)) + 260] = 160
                            mem[(2 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (2 * ceil32(return_data.size)) + 388
                            while idx < mem[ceil32(return_data.size) + 96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 292] = this.address
                            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                            require ext_code.size(stor8)
                            call stor8.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0053d555Address)
                            staticcall sub_0053d555Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2557 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2584 = mem[_2557]
                            require mem[_2557] == mem[_2557]
                            if mem[_2557] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp
                            require ext_code.size(stor8)
                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value _2584 - ext_call.return_data[0] wei
                                 gas gas_remaining wei
                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2665 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_2665] == mem[_2665]
                            require mem[_2665 + 32] == mem[_2665 + 32]
                            require mem[_2665 + 64] == mem[_2665 + 64]
                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2584 - ext_call.return_data[0]);
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor9)
                            staticcall stor9.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2881 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2881] == mem[_2881]
        else:
            if arg1 != stor9:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if stor12 != msg.sender:
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg1 != this.address:
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        mem[0] = arg1
                        mem[32] = 0
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        mem[100] = this.address
                        require ext_code.size(sub_0053d555Address)
                        staticcall sub_0053d555Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = this.address
                        require ext_code.size(stor8)
                        staticcall stor8.WAVAX() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 388
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(stor8)
                        call stor8.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0053d555Address)
                        staticcall sub_0053d555Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2558 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2585 = mem[_2558]
                        require mem[_2558] == mem[_2558]
                        if mem[_2558] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp
                        require ext_code.size(stor8)
                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value _2585 - ext_call.return_data[0] wei
                             gas gas_remaining wei
                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2666 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_2666] == mem[_2666]
                        require mem[_2666 + 32] == mem[_2666 + 32]
                        require mem[_2666 + 64] == mem[_2666 + 64]
                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2585 - ext_call.return_data[0]);
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2882 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2882] == mem[_2882]
            else:
                if not taxPercent:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if stor12 != msg.sender:
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg1 != this.address:
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 0
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            mem[100] = this.address
                            require ext_code.size(sub_0053d555Address)
                            staticcall sub_0053d555Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 2
                            mem[ceil32(return_data.size) + 128] = this.address
                            require ext_code.size(stor8)
                            staticcall stor8.WAVAX() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                            mem[(2 * ceil32(return_data.size)) + 228] = 0
                            mem[(2 * ceil32(return_data.size)) + 260] = 160
                            mem[(2 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (2 * ceil32(return_data.size)) + 388
                            while idx < mem[ceil32(return_data.size) + 96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 292] = this.address
                            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                            require ext_code.size(stor8)
                            call stor8.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0053d555Address)
                            staticcall sub_0053d555Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2559 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2586 = mem[_2559]
                            require mem[_2559] == mem[_2559]
                            if mem[_2559] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp
                            require ext_code.size(stor8)
                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value _2586 - ext_call.return_data[0] wei
                                 gas gas_remaining wei
                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2667 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_2667] == mem[_2667]
                            require mem[_2667 + 32] == mem[_2667 + 32]
                            require mem[_2667 + 64] == mem[_2667 + 64]
                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2586 - ext_call.return_data[0]);
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor9)
                            staticcall stor9.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2883 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2883] == mem[_2883]
                else:
                    if not sub_6dd9325c:
                        require ext_code.size(stor12)
                        staticcall stor12.0x71e7af22 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'You must own a node before trading the ASNO token'
                        if arg2 and taxPercent > -1 / arg2:
                            revert with 'NH{q', 17
                        require ext_code.size(stor12)
                        staticcall stor12.0x71e7af22 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] == 1:
                            if arg2 < arg2 * taxPercent / 100 / 2:
                                revert with 'NH{q', 17
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100 / 2):
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100 / 2)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100 / 2) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100 / 2)
                            emit Transfer((arg2 - (arg2 * taxPercent / 100 / 2)), msg.sender, arg1);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not treasuryAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100 / 2:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100 / 2
                            if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100 / 2) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100 / 2
                            emit Transfer((arg2 * taxPercent / 100 / 2), msg.sender, treasuryAddress);
                        else:
                            if ext_call.return_data[0] >= 2:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not treasuryAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                if balanceOf[address(stor14.field_0)] > -1:
                                    revert with 'NH{q', 17
                                emit Transfer(0, msg.sender, treasuryAddress);
                            else:
                                if arg2 < arg2 * taxPercent / 100:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100):
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100)
                                emit Transfer((arg2 - (arg2 * taxPercent / 100)), msg.sender, arg1);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not treasuryAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100
                                if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100
                                emit Transfer((arg2 * taxPercent / 100), msg.sender, treasuryAddress);
                    else:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if stor12 != msg.sender:
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 != this.address:
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 0
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                mem[100] = this.address
                                require ext_code.size(sub_0053d555Address)
                                staticcall sub_0053d555Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 96] = 2
                                mem[ceil32(return_data.size) + 128] = this.address
                                require ext_code.size(stor8)
                                staticcall stor8.WAVAX() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                mem[(2 * ceil32(return_data.size)) + 228] = 0
                                mem[(2 * ceil32(return_data.size)) + 260] = 160
                                mem[(2 * ceil32(return_data.size)) + 356] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 128
                                t = (2 * ceil32(return_data.size)) + 388
                                while idx < mem[ceil32(return_data.size) + 96]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                require ext_code.size(stor8)
                                call stor8.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_0053d555Address)
                                staticcall sub_0053d555Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2560 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2587 = mem[_2560]
                                require mem[_2560] == mem[_2560]
                                if mem[_2560] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = this.address
                                mem[mem[64] + 164] = block.timestamp
                                require ext_code.size(stor8)
                                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value _2587 - ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2668 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_2668] == mem[_2668]
                                require mem[_2668 + 32] == mem[_2668 + 32]
                                require mem[_2668 + 64] == mem[_2668 + 64]
                                emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2587 - ext_call.return_data[0]);
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor9)
                                staticcall stor9.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2884 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2884] == mem[_2884]
    else:
        if arg1 == stor9:
            if arg1 == stor8:
                if not taxPercent:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if stor12 != msg.sender:
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg1 != this.address:
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 0
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            mem[100] = this.address
                            require ext_code.size(sub_0053d555Address)
                            staticcall sub_0053d555Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 2
                            mem[ceil32(return_data.size) + 128] = this.address
                            require ext_code.size(stor8)
                            staticcall stor8.WAVAX() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                            mem[(2 * ceil32(return_data.size)) + 228] = 0
                            mem[(2 * ceil32(return_data.size)) + 260] = 160
                            mem[(2 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (2 * ceil32(return_data.size)) + 388
                            while idx < mem[ceil32(return_data.size) + 96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 292] = this.address
                            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                            require ext_code.size(stor8)
                            call stor8.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0053d555Address)
                            staticcall sub_0053d555Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2561 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2588 = mem[_2561]
                            require mem[_2561] == mem[_2561]
                            if mem[_2561] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp
                            require ext_code.size(stor8)
                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value _2588 - ext_call.return_data[0] wei
                                 gas gas_remaining wei
                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2669 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_2669] == mem[_2669]
                            require mem[_2669 + 32] == mem[_2669 + 32]
                            require mem[_2669 + 64] == mem[_2669 + 64]
                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2588 - ext_call.return_data[0]);
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor9)
                            staticcall stor9.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2885 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2885] == mem[_2885]
                else:
                    if not sub_6dd9325c:
                        require ext_code.size(stor12)
                        staticcall stor12.0x71e7af22 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'You must own a node before trading the ASNO token'
                        if arg2 and taxPercent > -1 / arg2:
                            revert with 'NH{q', 17
                        require ext_code.size(stor12)
                        staticcall stor12.0x71e7af22 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] == 1:
                            if arg2 < arg2 * taxPercent / 100 / 2:
                                revert with 'NH{q', 17
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100 / 2):
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100 / 2)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100 / 2) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100 / 2)
                            emit Transfer((arg2 - (arg2 * taxPercent / 100 / 2)), msg.sender, arg1);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not treasuryAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100 / 2:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100 / 2
                            if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100 / 2) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100 / 2
                            emit Transfer((arg2 * taxPercent / 100 / 2), msg.sender, treasuryAddress);
                        else:
                            if ext_call.return_data[0] >= 2:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not treasuryAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                if balanceOf[address(stor14.field_0)] > -1:
                                    revert with 'NH{q', 17
                                emit Transfer(0, msg.sender, treasuryAddress);
                            else:
                                if arg2 < arg2 * taxPercent / 100:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100):
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100)
                                emit Transfer((arg2 - (arg2 * taxPercent / 100)), msg.sender, arg1);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not treasuryAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100
                                if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100
                                emit Transfer((arg2 * taxPercent / 100), msg.sender, treasuryAddress);
                    else:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if stor12 != msg.sender:
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 != this.address:
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 0
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                mem[100] = this.address
                                require ext_code.size(sub_0053d555Address)
                                staticcall sub_0053d555Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 96] = 2
                                mem[ceil32(return_data.size) + 128] = this.address
                                require ext_code.size(stor8)
                                staticcall stor8.WAVAX() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                mem[(2 * ceil32(return_data.size)) + 228] = 0
                                mem[(2 * ceil32(return_data.size)) + 260] = 160
                                mem[(2 * ceil32(return_data.size)) + 356] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 128
                                t = (2 * ceil32(return_data.size)) + 388
                                while idx < mem[ceil32(return_data.size) + 96]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                require ext_code.size(stor8)
                                call stor8.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_0053d555Address)
                                staticcall sub_0053d555Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2562 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2589 = mem[_2562]
                                require mem[_2562] == mem[_2562]
                                if mem[_2562] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = this.address
                                mem[mem[64] + 164] = block.timestamp
                                require ext_code.size(stor8)
                                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value _2589 - ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2670 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_2670] == mem[_2670]
                                require mem[_2670 + 32] == mem[_2670 + 32]
                                require mem[_2670 + 64] == mem[_2670 + 64]
                                emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2589 - ext_call.return_data[0]);
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor9)
                                staticcall stor9.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2886 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2886] == mem[_2886]
            else:
                if arg1 != stor9:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if stor12 != msg.sender:
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg1 != this.address:
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 0
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            mem[100] = this.address
                            require ext_code.size(sub_0053d555Address)
                            staticcall sub_0053d555Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 2
                            mem[ceil32(return_data.size) + 128] = this.address
                            require ext_code.size(stor8)
                            staticcall stor8.WAVAX() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                            mem[(2 * ceil32(return_data.size)) + 228] = 0
                            mem[(2 * ceil32(return_data.size)) + 260] = 160
                            mem[(2 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (2 * ceil32(return_data.size)) + 388
                            while idx < mem[ceil32(return_data.size) + 96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 292] = this.address
                            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                            require ext_code.size(stor8)
                            call stor8.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0053d555Address)
                            staticcall sub_0053d555Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2563 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2590 = mem[_2563]
                            require mem[_2563] == mem[_2563]
                            if mem[_2563] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp
                            require ext_code.size(stor8)
                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value _2590 - ext_call.return_data[0] wei
                                 gas gas_remaining wei
                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2671 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_2671] == mem[_2671]
                            require mem[_2671 + 32] == mem[_2671 + 32]
                            require mem[_2671 + 64] == mem[_2671 + 64]
                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2590 - ext_call.return_data[0]);
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor9)
                            staticcall stor9.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2887 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2887] == mem[_2887]
                else:
                    if not taxPercent:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if stor12 != msg.sender:
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 != this.address:
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 0
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                mem[100] = this.address
                                require ext_code.size(sub_0053d555Address)
                                staticcall sub_0053d555Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 96] = 2
                                mem[ceil32(return_data.size) + 128] = this.address
                                require ext_code.size(stor8)
                                staticcall stor8.WAVAX() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                mem[(2 * ceil32(return_data.size)) + 228] = 0
                                mem[(2 * ceil32(return_data.size)) + 260] = 160
                                mem[(2 * ceil32(return_data.size)) + 356] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 128
                                t = (2 * ceil32(return_data.size)) + 388
                                while idx < mem[ceil32(return_data.size) + 96]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                require ext_code.size(stor8)
                                call stor8.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_0053d555Address)
                                staticcall sub_0053d555Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2564 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2591 = mem[_2564]
                                require mem[_2564] == mem[_2564]
                                if mem[_2564] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = this.address
                                mem[mem[64] + 164] = block.timestamp
                                require ext_code.size(stor8)
                                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value _2591 - ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2672 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_2672] == mem[_2672]
                                require mem[_2672 + 32] == mem[_2672 + 32]
                                require mem[_2672 + 64] == mem[_2672 + 64]
                                emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2591 - ext_call.return_data[0]);
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor9)
                                staticcall stor9.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2888 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2888] == mem[_2888]
                    else:
                        if not sub_6dd9325c:
                            require ext_code.size(stor12)
                            staticcall stor12.0x71e7af22 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'You must own a node before trading the ASNO token'
                            if arg2 and taxPercent > -1 / arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(stor12)
                            staticcall stor12.0x71e7af22 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] == 1:
                                if arg2 < arg2 * taxPercent / 100 / 2:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100 / 2):
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100 / 2)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100 / 2) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100 / 2)
                                emit Transfer((arg2 - (arg2 * taxPercent / 100 / 2)), msg.sender, arg1);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not treasuryAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100 / 2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100 / 2
                                if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100 / 2) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100 / 2
                                emit Transfer((arg2 * taxPercent / 100 / 2), msg.sender, treasuryAddress);
                            else:
                                if ext_call.return_data[0] >= 2:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not treasuryAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    if balanceOf[address(stor14.field_0)] > -1:
                                        revert with 'NH{q', 17
                                    emit Transfer(0, msg.sender, treasuryAddress);
                                else:
                                    if arg2 < arg2 * taxPercent / 100:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100)
                                    emit Transfer((arg2 - (arg2 * taxPercent / 100)), msg.sender, arg1);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not treasuryAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100
                                    if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100
                                    emit Transfer((arg2 * taxPercent / 100), msg.sender, treasuryAddress);
                        else:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if stor12 != msg.sender:
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 != this.address:
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[0] = arg1
                                    mem[32] = 0
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    mem[100] = this.address
                                    require ext_code.size(sub_0053d555Address)
                                    staticcall sub_0053d555Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    require ext_code.size(stor8)
                                    staticcall stor8.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(stor8)
                                    call stor8.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_0053d555Address)
                                    staticcall sub_0053d555Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2565 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2592 = mem[_2565]
                                    require mem[_2565] == mem[_2565]
                                    if mem[_2565] < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = this.address
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(stor8)
                                    call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value _2592 - ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2673 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_2673] == mem[_2673]
                                    require mem[_2673 + 32] == mem[_2673 + 32]
                                    require mem[_2673 + 64] == mem[_2673 + 64]
                                    emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2592 - ext_call.return_data[0]);
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor9)
                                    staticcall stor9.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2889 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2889] == mem[_2889]
        else:
            if arg1 == stor8:
                if not taxPercent:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if stor12 != msg.sender:
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg1 != this.address:
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 0
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            mem[100] = this.address
                            require ext_code.size(sub_0053d555Address)
                            staticcall sub_0053d555Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 2
                            mem[ceil32(return_data.size) + 128] = this.address
                            require ext_code.size(stor8)
                            staticcall stor8.WAVAX() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                            mem[(2 * ceil32(return_data.size)) + 228] = 0
                            mem[(2 * ceil32(return_data.size)) + 260] = 160
                            mem[(2 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (2 * ceil32(return_data.size)) + 388
                            while idx < mem[ceil32(return_data.size) + 96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 292] = this.address
                            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                            require ext_code.size(stor8)
                            call stor8.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0053d555Address)
                            staticcall sub_0053d555Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2566 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2593 = mem[_2566]
                            require mem[_2566] == mem[_2566]
                            if mem[_2566] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp
                            require ext_code.size(stor8)
                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value _2593 - ext_call.return_data[0] wei
                                 gas gas_remaining wei
                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2674 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_2674] == mem[_2674]
                            require mem[_2674 + 32] == mem[_2674 + 32]
                            require mem[_2674 + 64] == mem[_2674 + 64]
                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2593 - ext_call.return_data[0]);
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor9)
                            staticcall stor9.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2890 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2890] == mem[_2890]
                else:
                    if not sub_6dd9325c:
                        require ext_code.size(stor12)
                        staticcall stor12.0x71e7af22 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'You must own a node before trading the ASNO token'
                        if arg2 and taxPercent > -1 / arg2:
                            revert with 'NH{q', 17
                        require ext_code.size(stor12)
                        staticcall stor12.0x71e7af22 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] == 1:
                            if arg2 < arg2 * taxPercent / 100 / 2:
                                revert with 'NH{q', 17
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100 / 2):
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100 / 2)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100 / 2) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100 / 2)
                            emit Transfer((arg2 - (arg2 * taxPercent / 100 / 2)), msg.sender, arg1);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not treasuryAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100 / 2:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100 / 2
                            if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100 / 2) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100 / 2
                            emit Transfer((arg2 * taxPercent / 100 / 2), msg.sender, treasuryAddress);
                        else:
                            if ext_call.return_data[0] >= 2:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not treasuryAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                if balanceOf[address(stor14.field_0)] > -1:
                                    revert with 'NH{q', 17
                                emit Transfer(0, msg.sender, treasuryAddress);
                            else:
                                if arg2 < arg2 * taxPercent / 100:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100):
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100)
                                emit Transfer((arg2 - (arg2 * taxPercent / 100)), msg.sender, arg1);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not treasuryAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100
                                if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100
                                emit Transfer((arg2 * taxPercent / 100), msg.sender, treasuryAddress);
                    else:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if stor12 != msg.sender:
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 != this.address:
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 0
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                mem[100] = this.address
                                require ext_code.size(sub_0053d555Address)
                                staticcall sub_0053d555Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 96] = 2
                                mem[ceil32(return_data.size) + 128] = this.address
                                require ext_code.size(stor8)
                                staticcall stor8.WAVAX() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                mem[(2 * ceil32(return_data.size)) + 228] = 0
                                mem[(2 * ceil32(return_data.size)) + 260] = 160
                                mem[(2 * ceil32(return_data.size)) + 356] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 128
                                t = (2 * ceil32(return_data.size)) + 388
                                while idx < mem[ceil32(return_data.size) + 96]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                require ext_code.size(stor8)
                                call stor8.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_0053d555Address)
                                staticcall sub_0053d555Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2567 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2594 = mem[_2567]
                                require mem[_2567] == mem[_2567]
                                if mem[_2567] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = this.address
                                mem[mem[64] + 164] = block.timestamp
                                require ext_code.size(stor8)
                                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value _2594 - ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2675 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_2675] == mem[_2675]
                                require mem[_2675 + 32] == mem[_2675 + 32]
                                require mem[_2675 + 64] == mem[_2675 + 64]
                                emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2594 - ext_call.return_data[0]);
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor9)
                                staticcall stor9.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2891 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2891] == mem[_2891]
            else:
                if arg1 == this.address:
                    if arg1 == stor8:
                        if not taxPercent:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if stor12 != msg.sender:
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 != this.address:
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[0] = arg1
                                    mem[32] = 0
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    mem[100] = this.address
                                    require ext_code.size(sub_0053d555Address)
                                    staticcall sub_0053d555Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    require ext_code.size(stor8)
                                    staticcall stor8.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(stor8)
                                    call stor8.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_0053d555Address)
                                    staticcall sub_0053d555Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2568 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2595 = mem[_2568]
                                    require mem[_2568] == mem[_2568]
                                    if mem[_2568] < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = this.address
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(stor8)
                                    call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value _2595 - ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2676 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_2676] == mem[_2676]
                                    require mem[_2676 + 32] == mem[_2676 + 32]
                                    require mem[_2676 + 64] == mem[_2676 + 64]
                                    emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2595 - ext_call.return_data[0]);
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor9)
                                    staticcall stor9.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2892 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2892] == mem[_2892]
                        else:
                            if not sub_6dd9325c:
                                require ext_code.size(stor12)
                                staticcall stor12.0x71e7af22 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'You must own a node before trading the ASNO token'
                                if arg2 and taxPercent > -1 / arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(stor12)
                                staticcall stor12.0x71e7af22 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if ext_call.return_data[0] == 1:
                                    if arg2 < arg2 * taxPercent / 100 / 2:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100 / 2):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100 / 2)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100 / 2) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100 / 2)
                                    emit Transfer((arg2 - (arg2 * taxPercent / 100 / 2)), msg.sender, arg1);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not treasuryAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100 / 2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100 / 2
                                    if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100 / 2) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100 / 2
                                    emit Transfer((arg2 * taxPercent / 100 / 2), msg.sender, treasuryAddress);
                                else:
                                    if ext_call.return_data[0] >= 2:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not treasuryAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        if balanceOf[address(stor14.field_0)] > -1:
                                            revert with 'NH{q', 17
                                        emit Transfer(0, msg.sender, treasuryAddress);
                                    else:
                                        if arg2 < arg2 * taxPercent / 100:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100)
                                        emit Transfer((arg2 - (arg2 * taxPercent / 100)), msg.sender, arg1);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not treasuryAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100
                                        if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100
                                        emit Transfer((arg2 * taxPercent / 100), msg.sender, treasuryAddress);
                            else:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if stor12 != msg.sender:
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 != this.address:
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        mem[0] = arg1
                                        mem[32] = 0
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        mem[100] = this.address
                                        require ext_code.size(sub_0053d555Address)
                                        staticcall sub_0053d555Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        mem[ceil32(return_data.size) + 96] = 2
                                        mem[ceil32(return_data.size) + 128] = this.address
                                        require ext_code.size(stor8)
                                        staticcall stor8.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + 192
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (2 * ceil32(return_data.size)) + 388
                                        while idx < mem[ceil32(return_data.size) + 96]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                        require ext_code.size(stor8)
                                        call stor8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_0053d555Address)
                                        staticcall sub_0053d555Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2569 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2596 = mem[_2569]
                                        require mem[_2569] == mem[_2569]
                                        if mem[_2569] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = block.timestamp
                                        require ext_code.size(stor8)
                                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value _2596 - ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2677 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        require mem[_2677] == mem[_2677]
                                        require mem[_2677 + 32] == mem[_2677 + 32]
                                        require mem[_2677 + 64] == mem[_2677 + 64]
                                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2596 - ext_call.return_data[0]);
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor9)
                                        staticcall stor9.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2893 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2893] == mem[_2893]
                    else:
                        if arg1 != stor9:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if stor12 != msg.sender:
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 != this.address:
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[0] = arg1
                                    mem[32] = 0
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    mem[100] = this.address
                                    require ext_code.size(sub_0053d555Address)
                                    staticcall sub_0053d555Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 96] = 2
                                    mem[ceil32(return_data.size) + 128] = this.address
                                    require ext_code.size(stor8)
                                    staticcall stor8.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (2 * ceil32(return_data.size)) + 388
                                    while idx < mem[ceil32(return_data.size) + 96]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(stor8)
                                    call stor8.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_0053d555Address)
                                    staticcall sub_0053d555Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2570 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2597 = mem[_2570]
                                    require mem[_2570] == mem[_2570]
                                    if mem[_2570] < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = this.address
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(stor8)
                                    call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value _2597 - ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2678 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_2678] == mem[_2678]
                                    require mem[_2678 + 32] == mem[_2678 + 32]
                                    require mem[_2678 + 64] == mem[_2678 + 64]
                                    emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2597 - ext_call.return_data[0]);
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor9)
                                    staticcall stor9.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2894 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2894] == mem[_2894]
                        else:
                            if not taxPercent:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if stor12 != msg.sender:
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 != this.address:
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        mem[0] = arg1
                                        mem[32] = 0
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        mem[100] = this.address
                                        require ext_code.size(sub_0053d555Address)
                                        staticcall sub_0053d555Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        mem[ceil32(return_data.size) + 96] = 2
                                        mem[ceil32(return_data.size) + 128] = this.address
                                        require ext_code.size(stor8)
                                        staticcall stor8.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + 192
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (2 * ceil32(return_data.size)) + 388
                                        while idx < mem[ceil32(return_data.size) + 96]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                        require ext_code.size(stor8)
                                        call stor8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_0053d555Address)
                                        staticcall sub_0053d555Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2571 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2598 = mem[_2571]
                                        require mem[_2571] == mem[_2571]
                                        if mem[_2571] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = block.timestamp
                                        require ext_code.size(stor8)
                                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value _2598 - ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2679 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        require mem[_2679] == mem[_2679]
                                        require mem[_2679 + 32] == mem[_2679 + 32]
                                        require mem[_2679 + 64] == mem[_2679 + 64]
                                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2598 - ext_call.return_data[0]);
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor9)
                                        staticcall stor9.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2895 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2895] == mem[_2895]
                            else:
                                if not sub_6dd9325c:
                                    require ext_code.size(stor12)
                                    staticcall stor12.0x71e7af22 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'You must own a node before trading the ASNO token'
                                    if arg2 and taxPercent > -1 / arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(stor12)
                                    staticcall stor12.0x71e7af22 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if ext_call.return_data[0] == 1:
                                        if arg2 < arg2 * taxPercent / 100 / 2:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100 / 2):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100 / 2)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100 / 2) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100 / 2)
                                        emit Transfer((arg2 - (arg2 * taxPercent / 100 / 2)), msg.sender, arg1);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not treasuryAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100 / 2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100 / 2
                                        if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100 / 2) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100 / 2
                                        emit Transfer((arg2 * taxPercent / 100 / 2), msg.sender, treasuryAddress);
                                    else:
                                        if ext_call.return_data[0] >= 2:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not treasuryAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            if balanceOf[address(stor14.field_0)] > -1:
                                                revert with 'NH{q', 17
                                            emit Transfer(0, msg.sender, treasuryAddress);
                                        else:
                                            if arg2 < arg2 * taxPercent / 100:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100)
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100)
                                            emit Transfer((arg2 - (arg2 * taxPercent / 100)), msg.sender, arg1);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not treasuryAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100
                                            if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100
                                            emit Transfer((arg2 * taxPercent / 100), msg.sender, treasuryAddress);
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if stor12 != msg.sender:
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 != this.address:
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            mem[0] = arg1
                                            mem[32] = 0
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            mem[100] = this.address
                                            require ext_code.size(sub_0053d555Address)
                                            staticcall sub_0053d555Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            mem[ceil32(return_data.size) + 96] = 2
                                            mem[ceil32(return_data.size) + 128] = this.address
                                            require ext_code.size(stor8)
                                            staticcall stor8.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (2 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                            mem[(2 * ceil32(return_data.size)) + 228] = 0
                                            mem[(2 * ceil32(return_data.size)) + 260] = 160
                                            mem[(2 * ceil32(return_data.size)) + 356] = 2
                                            idx = 0
                                            s = ceil32(return_data.size) + 128
                                            t = (2 * ceil32(return_data.size)) + 388
                                            while idx < mem[ceil32(return_data.size) + 96]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                            require ext_code.size(stor8)
                                            call stor8.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(sub_0053d555Address)
                                            staticcall sub_0053d555Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2572 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2599 = mem[_2572]
                                            require mem[_2572] == mem[_2572]
                                            if mem[_2572] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 68] = 0
                                            mem[mem[64] + 100] = 0
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = block.timestamp
                                            require ext_code.size(stor8)
                                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value _2599 - ext_call.return_data[0] wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2680 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            require mem[_2680] == mem[_2680]
                                            require mem[_2680 + 32] == mem[_2680 + 32]
                                            require mem[_2680 + 64] == mem[_2680 + 64]
                                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2599 - ext_call.return_data[0]);
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor9)
                                            staticcall stor9.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2896 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2896] == mem[_2896]
                else:
                    if msg.sender == this.address:
                        if arg1 == stor8:
                            if not taxPercent:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if stor12 != msg.sender:
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 != this.address:
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        mem[0] = arg1
                                        mem[32] = 0
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        mem[100] = this.address
                                        require ext_code.size(sub_0053d555Address)
                                        staticcall sub_0053d555Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        mem[ceil32(return_data.size) + 96] = 2
                                        mem[ceil32(return_data.size) + 128] = this.address
                                        require ext_code.size(stor8)
                                        staticcall stor8.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + 192
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (2 * ceil32(return_data.size)) + 388
                                        while idx < mem[ceil32(return_data.size) + 96]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                        require ext_code.size(stor8)
                                        call stor8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_0053d555Address)
                                        staticcall sub_0053d555Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2573 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2600 = mem[_2573]
                                        require mem[_2573] == mem[_2573]
                                        if mem[_2573] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = block.timestamp
                                        require ext_code.size(stor8)
                                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value _2600 - ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2681 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        require mem[_2681] == mem[_2681]
                                        require mem[_2681 + 32] == mem[_2681 + 32]
                                        require mem[_2681 + 64] == mem[_2681 + 64]
                                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2600 - ext_call.return_data[0]);
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor9)
                                        staticcall stor9.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2897 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2897] == mem[_2897]
                            else:
                                if not sub_6dd9325c:
                                    require ext_code.size(stor12)
                                    staticcall stor12.0x71e7af22 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'You must own a node before trading the ASNO token'
                                    if arg2 and taxPercent > -1 / arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(stor12)
                                    staticcall stor12.0x71e7af22 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if ext_call.return_data[0] == 1:
                                        if arg2 < arg2 * taxPercent / 100 / 2:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100 / 2):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100 / 2)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100 / 2) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100 / 2)
                                        emit Transfer((arg2 - (arg2 * taxPercent / 100 / 2)), msg.sender, arg1);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not treasuryAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100 / 2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100 / 2
                                        if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100 / 2) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100 / 2
                                        emit Transfer((arg2 * taxPercent / 100 / 2), msg.sender, treasuryAddress);
                                    else:
                                        if ext_call.return_data[0] >= 2:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not treasuryAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            if balanceOf[address(stor14.field_0)] > -1:
                                                revert with 'NH{q', 17
                                            emit Transfer(0, msg.sender, treasuryAddress);
                                        else:
                                            if arg2 < arg2 * taxPercent / 100:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100)
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100)
                                            emit Transfer((arg2 - (arg2 * taxPercent / 100)), msg.sender, arg1);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not treasuryAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100
                                            if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100
                                            emit Transfer((arg2 * taxPercent / 100), msg.sender, treasuryAddress);
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if stor12 != msg.sender:
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 != this.address:
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            mem[0] = arg1
                                            mem[32] = 0
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            mem[100] = this.address
                                            require ext_code.size(sub_0053d555Address)
                                            staticcall sub_0053d555Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            mem[ceil32(return_data.size) + 96] = 2
                                            mem[ceil32(return_data.size) + 128] = this.address
                                            require ext_code.size(stor8)
                                            staticcall stor8.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (2 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                            mem[(2 * ceil32(return_data.size)) + 228] = 0
                                            mem[(2 * ceil32(return_data.size)) + 260] = 160
                                            mem[(2 * ceil32(return_data.size)) + 356] = 2
                                            idx = 0
                                            s = ceil32(return_data.size) + 128
                                            t = (2 * ceil32(return_data.size)) + 388
                                            while idx < mem[ceil32(return_data.size) + 96]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                            require ext_code.size(stor8)
                                            call stor8.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(sub_0053d555Address)
                                            staticcall sub_0053d555Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2574 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2601 = mem[_2574]
                                            require mem[_2574] == mem[_2574]
                                            if mem[_2574] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 68] = 0
                                            mem[mem[64] + 100] = 0
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = block.timestamp
                                            require ext_code.size(stor8)
                                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value _2601 - ext_call.return_data[0] wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2682 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            require mem[_2682] == mem[_2682]
                                            require mem[_2682 + 32] == mem[_2682 + 32]
                                            require mem[_2682 + 64] == mem[_2682 + 64]
                                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2601 - ext_call.return_data[0]);
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor9)
                                            staticcall stor9.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2898 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2898] == mem[_2898]
                        else:
                            if arg1 != stor9:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if stor12 != msg.sender:
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 != this.address:
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        mem[0] = arg1
                                        mem[32] = 0
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        mem[100] = this.address
                                        require ext_code.size(sub_0053d555Address)
                                        staticcall sub_0053d555Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        mem[ceil32(return_data.size) + 96] = 2
                                        mem[ceil32(return_data.size) + 128] = this.address
                                        require ext_code.size(stor8)
                                        staticcall stor8.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + 192
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (2 * ceil32(return_data.size)) + 388
                                        while idx < mem[ceil32(return_data.size) + 96]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                        require ext_code.size(stor8)
                                        call stor8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_0053d555Address)
                                        staticcall sub_0053d555Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2575 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2602 = mem[_2575]
                                        require mem[_2575] == mem[_2575]
                                        if mem[_2575] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = block.timestamp
                                        require ext_code.size(stor8)
                                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value _2602 - ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2683 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        require mem[_2683] == mem[_2683]
                                        require mem[_2683 + 32] == mem[_2683 + 32]
                                        require mem[_2683 + 64] == mem[_2683 + 64]
                                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2602 - ext_call.return_data[0]);
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor9)
                                        staticcall stor9.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2899 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2899] == mem[_2899]
                            else:
                                if not taxPercent:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if stor12 != msg.sender:
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 != this.address:
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            mem[0] = arg1
                                            mem[32] = 0
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            mem[100] = this.address
                                            require ext_code.size(sub_0053d555Address)
                                            staticcall sub_0053d555Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            mem[ceil32(return_data.size) + 96] = 2
                                            mem[ceil32(return_data.size) + 128] = this.address
                                            require ext_code.size(stor8)
                                            staticcall stor8.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (2 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                            mem[(2 * ceil32(return_data.size)) + 228] = 0
                                            mem[(2 * ceil32(return_data.size)) + 260] = 160
                                            mem[(2 * ceil32(return_data.size)) + 356] = 2
                                            idx = 0
                                            s = ceil32(return_data.size) + 128
                                            t = (2 * ceil32(return_data.size)) + 388
                                            while idx < mem[ceil32(return_data.size) + 96]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                            require ext_code.size(stor8)
                                            call stor8.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(sub_0053d555Address)
                                            staticcall sub_0053d555Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2576 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2603 = mem[_2576]
                                            require mem[_2576] == mem[_2576]
                                            if mem[_2576] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 68] = 0
                                            mem[mem[64] + 100] = 0
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = block.timestamp
                                            require ext_code.size(stor8)
                                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value _2603 - ext_call.return_data[0] wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2684 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            require mem[_2684] == mem[_2684]
                                            require mem[_2684 + 32] == mem[_2684 + 32]
                                            require mem[_2684 + 64] == mem[_2684 + 64]
                                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2603 - ext_call.return_data[0]);
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor9)
                                            staticcall stor9.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2900 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2900] == mem[_2900]
                                else:
                                    if not sub_6dd9325c:
                                        require ext_code.size(stor12)
                                        staticcall stor12.0x71e7af22 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'You must own a node before trading the ASNO token'
                                        if arg2 and taxPercent > -1 / arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(stor12)
                                        staticcall stor12.0x71e7af22 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if ext_call.return_data[0] == 1:
                                            if arg2 < arg2 * taxPercent / 100 / 2:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100 / 2):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100 / 2)
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100 / 2) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100 / 2)
                                            emit Transfer((arg2 - (arg2 * taxPercent / 100 / 2)), msg.sender, arg1);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not treasuryAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100 / 2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100 / 2
                                            if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100 / 2) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100 / 2
                                            emit Transfer((arg2 * taxPercent / 100 / 2), msg.sender, treasuryAddress);
                                        else:
                                            if ext_call.return_data[0] >= 2:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not treasuryAddress:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < 0:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                if balanceOf[address(stor14.field_0)] > -1:
                                                    revert with 'NH{q', 17
                                                emit Transfer(0, msg.sender, treasuryAddress);
                                            else:
                                                if arg2 < arg2 * taxPercent / 100:
                                                    revert with 'NH{q', 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100)
                                                if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100)
                                                emit Transfer((arg2 - (arg2 * taxPercent / 100)), msg.sender, arg1);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not treasuryAddress:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100
                                                if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100
                                                emit Transfer((arg2 * taxPercent / 100), msg.sender, treasuryAddress);
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if stor12 != msg.sender:
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg1 != this.address:
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                mem[0] = arg1
                                                mem[32] = 0
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                                mem[100] = this.address
                                                require ext_code.size(sub_0053d555Address)
                                                staticcall sub_0053d555Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                mem[ceil32(return_data.size) + 96] = 2
                                                mem[ceil32(return_data.size) + 128] = this.address
                                                require ext_code.size(stor8)
                                                staticcall stor8.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                                mem[(2 * ceil32(return_data.size)) + 228] = 0
                                                mem[(2 * ceil32(return_data.size)) + 260] = 160
                                                mem[(2 * ceil32(return_data.size)) + 356] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 128
                                                t = (2 * ceil32(return_data.size)) + 388
                                                while idx < mem[ceil32(return_data.size) + 96]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                                require ext_code.size(stor8)
                                                call stor8.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(sub_0053d555Address)
                                                staticcall sub_0053d555Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2577 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2604 = mem[_2577]
                                                require mem[_2577] == mem[_2577]
                                                if mem[_2577] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 68] = 0
                                                mem[mem[64] + 100] = 0
                                                mem[mem[64] + 132] = this.address
                                                mem[mem[64] + 164] = block.timestamp
                                                require ext_code.size(stor8)
                                                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value _2604 - ext_call.return_data[0] wei
                                                     gas gas_remaining wei
                                                    args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2685 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 96
                                                require mem[_2685] == mem[_2685]
                                                require mem[_2685 + 32] == mem[_2685 + 32]
                                                require mem[_2685 + 64] == mem[_2685 + 64]
                                                emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2604 - ext_call.return_data[0]);
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor9)
                                                staticcall stor9.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2901 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2901] == mem[_2901]
                    else:
                        if not isTradingEnabled:
                            revert with 0, 'TRADING_DISABLED'
                        if arg1 == stor8:
                            if not taxPercent:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if stor12 != msg.sender:
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 != this.address:
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        mem[0] = arg1
                                        mem[32] = 0
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        mem[100] = this.address
                                        require ext_code.size(sub_0053d555Address)
                                        staticcall sub_0053d555Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        mem[ceil32(return_data.size) + 96] = 2
                                        mem[ceil32(return_data.size) + 128] = this.address
                                        require ext_code.size(stor8)
                                        staticcall stor8.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + 192
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (2 * ceil32(return_data.size)) + 388
                                        while idx < mem[ceil32(return_data.size) + 96]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                        require ext_code.size(stor8)
                                        call stor8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_0053d555Address)
                                        staticcall sub_0053d555Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2578 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2605 = mem[_2578]
                                        require mem[_2578] == mem[_2578]
                                        if mem[_2578] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = block.timestamp
                                        require ext_code.size(stor8)
                                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value _2605 - ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2686 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        require mem[_2686] == mem[_2686]
                                        require mem[_2686 + 32] == mem[_2686 + 32]
                                        require mem[_2686 + 64] == mem[_2686 + 64]
                                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2605 - ext_call.return_data[0]);
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor9)
                                        staticcall stor9.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2902 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2902] == mem[_2902]
                            else:
                                if not sub_6dd9325c:
                                    require ext_code.size(stor12)
                                    staticcall stor12.0x71e7af22 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'You must own a node before trading the ASNO token'
                                    if arg2 and taxPercent > -1 / arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(stor12)
                                    staticcall stor12.0x71e7af22 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if ext_call.return_data[0] == 1:
                                        if arg2 < arg2 * taxPercent / 100 / 2:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100 / 2):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100 / 2)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100 / 2) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100 / 2)
                                        emit Transfer((arg2 - (arg2 * taxPercent / 100 / 2)), msg.sender, arg1);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not treasuryAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100 / 2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100 / 2
                                        if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100 / 2) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100 / 2
                                        emit Transfer((arg2 * taxPercent / 100 / 2), msg.sender, treasuryAddress);
                                    else:
                                        if ext_call.return_data[0] >= 2:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not treasuryAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            if balanceOf[address(stor14.field_0)] > -1:
                                                revert with 'NH{q', 17
                                            emit Transfer(0, msg.sender, treasuryAddress);
                                        else:
                                            if arg2 < arg2 * taxPercent / 100:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100)
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100)
                                            emit Transfer((arg2 - (arg2 * taxPercent / 100)), msg.sender, arg1);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not treasuryAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100
                                            if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100
                                            emit Transfer((arg2 * taxPercent / 100), msg.sender, treasuryAddress);
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if stor12 != msg.sender:
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 != this.address:
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            mem[0] = arg1
                                            mem[32] = 0
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            mem[100] = this.address
                                            require ext_code.size(sub_0053d555Address)
                                            staticcall sub_0053d555Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            mem[ceil32(return_data.size) + 96] = 2
                                            mem[ceil32(return_data.size) + 128] = this.address
                                            require ext_code.size(stor8)
                                            staticcall stor8.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (2 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                            mem[(2 * ceil32(return_data.size)) + 228] = 0
                                            mem[(2 * ceil32(return_data.size)) + 260] = 160
                                            mem[(2 * ceil32(return_data.size)) + 356] = 2
                                            idx = 0
                                            s = ceil32(return_data.size) + 128
                                            t = (2 * ceil32(return_data.size)) + 388
                                            while idx < mem[ceil32(return_data.size) + 96]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                            require ext_code.size(stor8)
                                            call stor8.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(sub_0053d555Address)
                                            staticcall sub_0053d555Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2579 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2606 = mem[_2579]
                                            require mem[_2579] == mem[_2579]
                                            if mem[_2579] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 68] = 0
                                            mem[mem[64] + 100] = 0
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = block.timestamp
                                            require ext_code.size(stor8)
                                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value _2606 - ext_call.return_data[0] wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2687 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            require mem[_2687] == mem[_2687]
                                            require mem[_2687 + 32] == mem[_2687 + 32]
                                            require mem[_2687 + 64] == mem[_2687 + 64]
                                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2606 - ext_call.return_data[0]);
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor9)
                                            staticcall stor9.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2903 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2903] == mem[_2903]
                        else:
                            if arg1 != stor9:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if stor12 != msg.sender:
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 != this.address:
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        mem[0] = arg1
                                        mem[32] = 0
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        mem[100] = this.address
                                        require ext_code.size(sub_0053d555Address)
                                        staticcall sub_0053d555Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        mem[ceil32(return_data.size) + 96] = 2
                                        mem[ceil32(return_data.size) + 128] = this.address
                                        require ext_code.size(stor8)
                                        staticcall stor8.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + 192
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (2 * ceil32(return_data.size)) + 388
                                        while idx < mem[ceil32(return_data.size) + 96]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                        require ext_code.size(stor8)
                                        call stor8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_0053d555Address)
                                        staticcall sub_0053d555Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2580 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2607 = mem[_2580]
                                        require mem[_2580] == mem[_2580]
                                        if mem[_2580] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = block.timestamp
                                        require ext_code.size(stor8)
                                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value _2607 - ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2688 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        require mem[_2688] == mem[_2688]
                                        require mem[_2688 + 32] == mem[_2688 + 32]
                                        require mem[_2688 + 64] == mem[_2688 + 64]
                                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2607 - ext_call.return_data[0]);
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor9)
                                        staticcall stor9.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2904 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2904] == mem[_2904]
                            else:
                                if not taxPercent:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if stor12 != msg.sender:
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 != this.address:
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            mem[0] = arg1
                                            mem[32] = 0
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            mem[100] = this.address
                                            require ext_code.size(sub_0053d555Address)
                                            staticcall sub_0053d555Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            mem[ceil32(return_data.size) + 96] = 2
                                            mem[ceil32(return_data.size) + 128] = this.address
                                            require ext_code.size(stor8)
                                            staticcall stor8.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (2 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                            mem[(2 * ceil32(return_data.size)) + 228] = 0
                                            mem[(2 * ceil32(return_data.size)) + 260] = 160
                                            mem[(2 * ceil32(return_data.size)) + 356] = 2
                                            idx = 0
                                            s = ceil32(return_data.size) + 128
                                            t = (2 * ceil32(return_data.size)) + 388
                                            while idx < mem[ceil32(return_data.size) + 96]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                            require ext_code.size(stor8)
                                            call stor8.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(sub_0053d555Address)
                                            staticcall sub_0053d555Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2581 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2608 = mem[_2581]
                                            require mem[_2581] == mem[_2581]
                                            if mem[_2581] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 68] = 0
                                            mem[mem[64] + 100] = 0
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = block.timestamp
                                            require ext_code.size(stor8)
                                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value _2608 - ext_call.return_data[0] wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2689 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            require mem[_2689] == mem[_2689]
                                            require mem[_2689 + 32] == mem[_2689 + 32]
                                            require mem[_2689 + 64] == mem[_2689 + 64]
                                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2608 - ext_call.return_data[0]);
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor9)
                                            staticcall stor9.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2905 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2905] == mem[_2905]
                                else:
                                    if not sub_6dd9325c:
                                        require ext_code.size(stor12)
                                        staticcall stor12.0x71e7af22 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'You must own a node before trading the ASNO token'
                                        if arg2 and taxPercent > -1 / arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(stor12)
                                        staticcall stor12.0x71e7af22 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if ext_call.return_data[0] == 1:
                                            if arg2 < arg2 * taxPercent / 100 / 2:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100 / 2):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100 / 2)
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100 / 2) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100 / 2)
                                            emit Transfer((arg2 - (arg2 * taxPercent / 100 / 2)), msg.sender, arg1);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not treasuryAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100 / 2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100 / 2
                                            if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100 / 2) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100 / 2
                                            emit Transfer((arg2 * taxPercent / 100 / 2), msg.sender, treasuryAddress);
                                        else:
                                            if ext_call.return_data[0] >= 2:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not treasuryAddress:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < 0:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                if balanceOf[address(stor14.field_0)] > -1:
                                                    revert with 'NH{q', 17
                                                emit Transfer(0, msg.sender, treasuryAddress);
                                            else:
                                                if arg2 < arg2 * taxPercent / 100:
                                                    revert with 'NH{q', 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxPercent / 100):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxPercent / 100)
                                                if balanceOf[address(arg1)] > -arg2 + (arg2 * taxPercent / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercent / 100)
                                                emit Transfer((arg2 - (arg2 * taxPercent / 100)), msg.sender, arg1);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not treasuryAddress:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 * taxPercent / 100:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2 * taxPercent / 100
                                                if balanceOf[address(stor14.field_0)] > -(arg2 * taxPercent / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(stor14.field_0)] += arg2 * taxPercent / 100
                                                emit Transfer((arg2 * taxPercent / 100), msg.sender, treasuryAddress);
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if stor12 != msg.sender:
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg1 != this.address:
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                mem[0] = arg1
                                                mem[32] = 0
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                                mem[100] = this.address
                                                require ext_code.size(sub_0053d555Address)
                                                staticcall sub_0053d555Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                mem[ceil32(return_data.size) + 96] = 2
                                                mem[ceil32(return_data.size) + 128] = this.address
                                                require ext_code.size(stor8)
                                                staticcall stor8.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 196] = arg2 / 2
                                                mem[(2 * ceil32(return_data.size)) + 228] = 0
                                                mem[(2 * ceil32(return_data.size)) + 260] = 160
                                                mem[(2 * ceil32(return_data.size)) + 356] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 128
                                                t = (2 * ceil32(return_data.size)) + 388
                                                while idx < mem[ceil32(return_data.size) + 96]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                                require ext_code.size(stor8)
                                                call stor8.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(sub_0053d555Address)
                                                staticcall sub_0053d555Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2582 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2609 = mem[_2582]
                                                require mem[_2582] == mem[_2582]
                                                if mem[_2582] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 68] = 0
                                                mem[mem[64] + 100] = 0
                                                mem[mem[64] + 132] = this.address
                                                mem[mem[64] + 164] = block.timestamp
                                                require ext_code.size(stor8)
                                                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value _2609 - ext_call.return_data[0] wei
                                                     gas gas_remaining wei
                                                    args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2690 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 96
                                                require mem[_2690] == mem[_2690]
                                                require mem[_2690 + 32] == mem[_2690 + 32]
                                                require mem[_2690 + 64] == mem[_2690 + 64]
                                                emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2609 - ext_call.return_data[0]);
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor9)
                                                staticcall stor9.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2906 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2906] == mem[_2906]
    return 1
}



}
