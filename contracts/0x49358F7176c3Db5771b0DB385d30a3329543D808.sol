contract main {




// =====================  Runtime code  =====================


#
#  - sub_19cfbcd4(?)
#
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

function sub_0053d555(?) payable {
    return sub_0053d555Address
}

function isTradingEnabled() payable {
    return bool(isTradingEnabled)
}

function totalSupply() payable {
    return totalSupply
}

function _isBlacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function sub_3244338f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[arg1])
}

function sub_527509f3(?) payable {
    return sub_527509f3Address
}

function treasury() payable {
    return treasuryAddress
}

function sub_6c0c69b1(?) payable {
    return sub_6c0c69b1Address
}

function sub_6dd9325c(?) payable {
    return bool(sub_6dd9325c)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function taxPercent() payable {
    return taxPercent
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_fac4fcc8(?) payable {
    return sub_fac4fcc8
}

function isBlacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTax(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    taxPercent = arg1
}

function sub_1319e7e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = address(arg1)
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function sub_24b504f1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
}

function sub_46173cc7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function sub_2cb73ff0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6dd9325c = uint8(bool(arg1))
}

function sub_2ae883fd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor14.field_8) = Mask(248, 0, bool(arg1))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setBlacklist(address arg1, bool arg2) payable {
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

function approve(address arg1, uint256 arg2) payable {
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

function mint(uint256 arg1) payable {
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

function increaseAllowance(address arg1, uint256 arg2) payable {
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

function burn(uint256 arg1) payable {
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
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

function sub_0d553701(?) payable {
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

function name() payable {
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

function symbol() payable {
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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

function transfer(address arg1, uint256 arg2) payable {
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
                if stor12 != msg.sender:
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
                else:
                    if arg1 != this.address:
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
                        _2265 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2292 = mem[_2265]
                        require mem[_2265] == mem[_2265]
                        if mem[_2265] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp
                        require ext_code.size(stor8)
                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value _2292 - ext_call.return_data[0] wei
                             gas gas_remaining wei
                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2373 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_2373] == mem[_2373]
                        require mem[_2373 + 32] == mem[_2373 + 32]
                        require mem[_2373 + 64] == mem[_2373 + 64]
                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2292 - ext_call.return_data[0]);
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2589 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2589] == mem[_2589]
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
                    if stor12 != msg.sender:
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
                    else:
                        if arg1 != this.address:
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
                            _2266 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2293 = mem[_2266]
                            require mem[_2266] == mem[_2266]
                            if mem[_2266] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp
                            require ext_code.size(stor8)
                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value _2293 - ext_call.return_data[0] wei
                                 gas gas_remaining wei
                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2374 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_2374] == mem[_2374]
                            require mem[_2374 + 32] == mem[_2374 + 32]
                            require mem[_2374 + 64] == mem[_2374 + 64]
                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2293 - ext_call.return_data[0]);
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor9)
                            staticcall stor9.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2590 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2590] == mem[_2590]
        else:
            if arg1 != stor9:
                if stor12 != msg.sender:
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
                else:
                    if arg1 != this.address:
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
                        _2267 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2294 = mem[_2267]
                        require mem[_2267] == mem[_2267]
                        if mem[_2267] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp
                        require ext_code.size(stor8)
                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value _2294 - ext_call.return_data[0] wei
                             gas gas_remaining wei
                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2375 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_2375] == mem[_2375]
                        require mem[_2375 + 32] == mem[_2375 + 32]
                        require mem[_2375 + 64] == mem[_2375 + 64]
                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2294 - ext_call.return_data[0]);
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2591 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2591] == mem[_2591]
            else:
                if not taxPercent:
                    if stor12 != msg.sender:
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
                    else:
                        if arg1 != this.address:
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
                            _2268 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2295 = mem[_2268]
                            require mem[_2268] == mem[_2268]
                            if mem[_2268] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp
                            require ext_code.size(stor8)
                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value _2295 - ext_call.return_data[0] wei
                                 gas gas_remaining wei
                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2376 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_2376] == mem[_2376]
                            require mem[_2376 + 32] == mem[_2376 + 32]
                            require mem[_2376 + 64] == mem[_2376 + 64]
                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2295 - ext_call.return_data[0]);
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor9)
                            staticcall stor9.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2592 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2592] == mem[_2592]
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
                        if stor12 != msg.sender:
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
                        else:
                            if arg1 != this.address:
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
                                _2269 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2296 = mem[_2269]
                                require mem[_2269] == mem[_2269]
                                if mem[_2269] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = this.address
                                mem[mem[64] + 164] = block.timestamp
                                require ext_code.size(stor8)
                                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value _2296 - ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2377 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_2377] == mem[_2377]
                                require mem[_2377 + 32] == mem[_2377 + 32]
                                require mem[_2377 + 64] == mem[_2377 + 64]
                                emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2296 - ext_call.return_data[0]);
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor9)
                                staticcall stor9.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2593 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2593] == mem[_2593]
    else:
        if arg1 == stor9:
            if arg1 == stor8:
                if not taxPercent:
                    if stor12 != msg.sender:
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
                    else:
                        if arg1 != this.address:
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
                            _2270 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2297 = mem[_2270]
                            require mem[_2270] == mem[_2270]
                            if mem[_2270] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp
                            require ext_code.size(stor8)
                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value _2297 - ext_call.return_data[0] wei
                                 gas gas_remaining wei
                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2378 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_2378] == mem[_2378]
                            require mem[_2378 + 32] == mem[_2378 + 32]
                            require mem[_2378 + 64] == mem[_2378 + 64]
                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2297 - ext_call.return_data[0]);
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor9)
                            staticcall stor9.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2594 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2594] == mem[_2594]
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
                        if stor12 != msg.sender:
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
                        else:
                            if arg1 != this.address:
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
                                _2271 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2298 = mem[_2271]
                                require mem[_2271] == mem[_2271]
                                if mem[_2271] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = this.address
                                mem[mem[64] + 164] = block.timestamp
                                require ext_code.size(stor8)
                                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value _2298 - ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2379 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_2379] == mem[_2379]
                                require mem[_2379 + 32] == mem[_2379 + 32]
                                require mem[_2379 + 64] == mem[_2379 + 64]
                                emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2298 - ext_call.return_data[0]);
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor9)
                                staticcall stor9.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2595 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2595] == mem[_2595]
            else:
                if arg1 != stor9:
                    if stor12 != msg.sender:
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
                    else:
                        if arg1 != this.address:
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
                            _2272 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2299 = mem[_2272]
                            require mem[_2272] == mem[_2272]
                            if mem[_2272] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp
                            require ext_code.size(stor8)
                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value _2299 - ext_call.return_data[0] wei
                                 gas gas_remaining wei
                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2380 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_2380] == mem[_2380]
                            require mem[_2380 + 32] == mem[_2380 + 32]
                            require mem[_2380 + 64] == mem[_2380 + 64]
                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2299 - ext_call.return_data[0]);
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor9)
                            staticcall stor9.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2596 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2596] == mem[_2596]
                else:
                    if not taxPercent:
                        if stor12 != msg.sender:
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
                        else:
                            if arg1 != this.address:
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
                                _2273 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2300 = mem[_2273]
                                require mem[_2273] == mem[_2273]
                                if mem[_2273] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = this.address
                                mem[mem[64] + 164] = block.timestamp
                                require ext_code.size(stor8)
                                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value _2300 - ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2381 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_2381] == mem[_2381]
                                require mem[_2381 + 32] == mem[_2381 + 32]
                                require mem[_2381 + 64] == mem[_2381 + 64]
                                emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2300 - ext_call.return_data[0]);
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor9)
                                staticcall stor9.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2597 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2597] == mem[_2597]
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
                            if stor12 != msg.sender:
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
                            else:
                                if arg1 != this.address:
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
                                    _2274 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2301 = mem[_2274]
                                    require mem[_2274] == mem[_2274]
                                    if mem[_2274] < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = this.address
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(stor8)
                                    call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value _2301 - ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2382 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_2382] == mem[_2382]
                                    require mem[_2382 + 32] == mem[_2382 + 32]
                                    require mem[_2382 + 64] == mem[_2382 + 64]
                                    emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2301 - ext_call.return_data[0]);
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor9)
                                    staticcall stor9.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2598 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2598] == mem[_2598]
        else:
            if arg1 == stor8:
                if not taxPercent:
                    if stor12 != msg.sender:
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
                    else:
                        if arg1 != this.address:
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
                            _2275 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2302 = mem[_2275]
                            require mem[_2275] == mem[_2275]
                            if mem[_2275] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp
                            require ext_code.size(stor8)
                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value _2302 - ext_call.return_data[0] wei
                                 gas gas_remaining wei
                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2383 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_2383] == mem[_2383]
                            require mem[_2383 + 32] == mem[_2383 + 32]
                            require mem[_2383 + 64] == mem[_2383 + 64]
                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2302 - ext_call.return_data[0]);
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor9)
                            staticcall stor9.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2599 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2599] == mem[_2599]
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
                        if stor12 != msg.sender:
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
                        else:
                            if arg1 != this.address:
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
                                _2276 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2303 = mem[_2276]
                                require mem[_2276] == mem[_2276]
                                if mem[_2276] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = this.address
                                mem[mem[64] + 164] = block.timestamp
                                require ext_code.size(stor8)
                                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value _2303 - ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2384 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_2384] == mem[_2384]
                                require mem[_2384 + 32] == mem[_2384 + 32]
                                require mem[_2384 + 64] == mem[_2384 + 64]
                                emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2303 - ext_call.return_data[0]);
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor9)
                                staticcall stor9.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2600 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2600] == mem[_2600]
            else:
                if arg1 == this.address:
                    if arg1 == stor8:
                        if not taxPercent:
                            if stor12 != msg.sender:
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
                            else:
                                if arg1 != this.address:
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
                                    _2277 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2304 = mem[_2277]
                                    require mem[_2277] == mem[_2277]
                                    if mem[_2277] < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = this.address
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(stor8)
                                    call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value _2304 - ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2385 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_2385] == mem[_2385]
                                    require mem[_2385 + 32] == mem[_2385 + 32]
                                    require mem[_2385 + 64] == mem[_2385 + 64]
                                    emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2304 - ext_call.return_data[0]);
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor9)
                                    staticcall stor9.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2601 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2601] == mem[_2601]
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
                                if stor12 != msg.sender:
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
                                else:
                                    if arg1 != this.address:
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
                                        _2278 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2305 = mem[_2278]
                                        require mem[_2278] == mem[_2278]
                                        if mem[_2278] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = block.timestamp
                                        require ext_code.size(stor8)
                                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value _2305 - ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2386 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        require mem[_2386] == mem[_2386]
                                        require mem[_2386 + 32] == mem[_2386 + 32]
                                        require mem[_2386 + 64] == mem[_2386 + 64]
                                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2305 - ext_call.return_data[0]);
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor9)
                                        staticcall stor9.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2602 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2602] == mem[_2602]
                    else:
                        if arg1 != stor9:
                            if stor12 != msg.sender:
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
                            else:
                                if arg1 != this.address:
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
                                    _2279 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2306 = mem[_2279]
                                    require mem[_2279] == mem[_2279]
                                    if mem[_2279] < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = this.address
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(stor8)
                                    call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value _2306 - ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2387 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_2387] == mem[_2387]
                                    require mem[_2387 + 32] == mem[_2387 + 32]
                                    require mem[_2387 + 64] == mem[_2387 + 64]
                                    emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2306 - ext_call.return_data[0]);
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor9)
                                    staticcall stor9.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2603 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2603] == mem[_2603]
                        else:
                            if not taxPercent:
                                if stor12 != msg.sender:
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
                                else:
                                    if arg1 != this.address:
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
                                        _2280 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2307 = mem[_2280]
                                        require mem[_2280] == mem[_2280]
                                        if mem[_2280] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = block.timestamp
                                        require ext_code.size(stor8)
                                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value _2307 - ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2388 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        require mem[_2388] == mem[_2388]
                                        require mem[_2388 + 32] == mem[_2388 + 32]
                                        require mem[_2388 + 64] == mem[_2388 + 64]
                                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2307 - ext_call.return_data[0]);
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor9)
                                        staticcall stor9.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2604 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2604] == mem[_2604]
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
                                    if stor12 != msg.sender:
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
                                    else:
                                        if arg1 != this.address:
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
                                            _2281 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2308 = mem[_2281]
                                            require mem[_2281] == mem[_2281]
                                            if mem[_2281] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 68] = 0
                                            mem[mem[64] + 100] = 0
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = block.timestamp
                                            require ext_code.size(stor8)
                                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value _2308 - ext_call.return_data[0] wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2389 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            require mem[_2389] == mem[_2389]
                                            require mem[_2389 + 32] == mem[_2389 + 32]
                                            require mem[_2389 + 64] == mem[_2389 + 64]
                                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2308 - ext_call.return_data[0]);
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor9)
                                            staticcall stor9.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2605 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2605] == mem[_2605]
                else:
                    if msg.sender == this.address:
                        if arg1 == stor8:
                            if not taxPercent:
                                if stor12 != msg.sender:
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
                                else:
                                    if arg1 != this.address:
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
                                        _2282 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2309 = mem[_2282]
                                        require mem[_2282] == mem[_2282]
                                        if mem[_2282] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = block.timestamp
                                        require ext_code.size(stor8)
                                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value _2309 - ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2390 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        require mem[_2390] == mem[_2390]
                                        require mem[_2390 + 32] == mem[_2390 + 32]
                                        require mem[_2390 + 64] == mem[_2390 + 64]
                                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2309 - ext_call.return_data[0]);
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor9)
                                        staticcall stor9.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2606 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2606] == mem[_2606]
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
                                    if stor12 != msg.sender:
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
                                    else:
                                        if arg1 != this.address:
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
                                            _2283 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2310 = mem[_2283]
                                            require mem[_2283] == mem[_2283]
                                            if mem[_2283] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 68] = 0
                                            mem[mem[64] + 100] = 0
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = block.timestamp
                                            require ext_code.size(stor8)
                                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value _2310 - ext_call.return_data[0] wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2391 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            require mem[_2391] == mem[_2391]
                                            require mem[_2391 + 32] == mem[_2391 + 32]
                                            require mem[_2391 + 64] == mem[_2391 + 64]
                                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2310 - ext_call.return_data[0]);
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor9)
                                            staticcall stor9.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2607 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2607] == mem[_2607]
                        else:
                            if arg1 != stor9:
                                if stor12 != msg.sender:
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
                                else:
                                    if arg1 != this.address:
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
                                        _2284 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2311 = mem[_2284]
                                        require mem[_2284] == mem[_2284]
                                        if mem[_2284] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = block.timestamp
                                        require ext_code.size(stor8)
                                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value _2311 - ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2392 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        require mem[_2392] == mem[_2392]
                                        require mem[_2392 + 32] == mem[_2392 + 32]
                                        require mem[_2392 + 64] == mem[_2392 + 64]
                                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2311 - ext_call.return_data[0]);
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor9)
                                        staticcall stor9.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2608 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2608] == mem[_2608]
                            else:
                                if not taxPercent:
                                    if stor12 != msg.sender:
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
                                    else:
                                        if arg1 != this.address:
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
                                            _2285 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2312 = mem[_2285]
                                            require mem[_2285] == mem[_2285]
                                            if mem[_2285] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 68] = 0
                                            mem[mem[64] + 100] = 0
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = block.timestamp
                                            require ext_code.size(stor8)
                                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value _2312 - ext_call.return_data[0] wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2393 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            require mem[_2393] == mem[_2393]
                                            require mem[_2393 + 32] == mem[_2393 + 32]
                                            require mem[_2393 + 64] == mem[_2393 + 64]
                                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2312 - ext_call.return_data[0]);
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor9)
                                            staticcall stor9.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2609 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2609] == mem[_2609]
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
                                        if stor12 != msg.sender:
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
                                        else:
                                            if arg1 != this.address:
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
                                                _2286 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2313 = mem[_2286]
                                                require mem[_2286] == mem[_2286]
                                                if mem[_2286] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 68] = 0
                                                mem[mem[64] + 100] = 0
                                                mem[mem[64] + 132] = this.address
                                                mem[mem[64] + 164] = block.timestamp
                                                require ext_code.size(stor8)
                                                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value _2313 - ext_call.return_data[0] wei
                                                     gas gas_remaining wei
                                                    args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2394 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 96
                                                require mem[_2394] == mem[_2394]
                                                require mem[_2394 + 32] == mem[_2394 + 32]
                                                require mem[_2394 + 64] == mem[_2394 + 64]
                                                emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2313 - ext_call.return_data[0]);
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor9)
                                                staticcall stor9.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2610 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2610] == mem[_2610]
                    else:
                        if not isTradingEnabled:
                            revert with 0, 'TRADING_DISABLED'
                        if arg1 == stor8:
                            if not taxPercent:
                                if stor12 != msg.sender:
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
                                else:
                                    if arg1 != this.address:
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
                                        _2287 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2314 = mem[_2287]
                                        require mem[_2287] == mem[_2287]
                                        if mem[_2287] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = block.timestamp
                                        require ext_code.size(stor8)
                                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value _2314 - ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2395 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        require mem[_2395] == mem[_2395]
                                        require mem[_2395 + 32] == mem[_2395 + 32]
                                        require mem[_2395 + 64] == mem[_2395 + 64]
                                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2314 - ext_call.return_data[0]);
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor9)
                                        staticcall stor9.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2611 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2611] == mem[_2611]
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
                                    if stor12 != msg.sender:
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
                                    else:
                                        if arg1 != this.address:
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
                                            _2288 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2315 = mem[_2288]
                                            require mem[_2288] == mem[_2288]
                                            if mem[_2288] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 68] = 0
                                            mem[mem[64] + 100] = 0
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = block.timestamp
                                            require ext_code.size(stor8)
                                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value _2315 - ext_call.return_data[0] wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2396 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            require mem[_2396] == mem[_2396]
                                            require mem[_2396 + 32] == mem[_2396 + 32]
                                            require mem[_2396 + 64] == mem[_2396 + 64]
                                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2315 - ext_call.return_data[0]);
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor9)
                                            staticcall stor9.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2612 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2612] == mem[_2612]
                        else:
                            if arg1 != stor9:
                                if stor12 != msg.sender:
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
                                else:
                                    if arg1 != this.address:
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
                                        _2289 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2316 = mem[_2289]
                                        require mem[_2289] == mem[_2289]
                                        if mem[_2289] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = block.timestamp
                                        require ext_code.size(stor8)
                                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value _2316 - ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2397 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        require mem[_2397] == mem[_2397]
                                        require mem[_2397 + 32] == mem[_2397 + 32]
                                        require mem[_2397 + 64] == mem[_2397 + 64]
                                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2316 - ext_call.return_data[0]);
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor9)
                                        staticcall stor9.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2613 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2613] == mem[_2613]
                            else:
                                if not taxPercent:
                                    if stor12 != msg.sender:
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
                                    else:
                                        if arg1 != this.address:
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
                                            _2290 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2317 = mem[_2290]
                                            require mem[_2290] == mem[_2290]
                                            if mem[_2290] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 68] = 0
                                            mem[mem[64] + 100] = 0
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = block.timestamp
                                            require ext_code.size(stor8)
                                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value _2317 - ext_call.return_data[0] wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2398 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            require mem[_2398] == mem[_2398]
                                            require mem[_2398 + 32] == mem[_2398 + 32]
                                            require mem[_2398 + 64] == mem[_2398 + 64]
                                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2317 - ext_call.return_data[0]);
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor9)
                                            staticcall stor9.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2614 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2614] == mem[_2614]
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
                                        if stor12 != msg.sender:
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
                                        else:
                                            if arg1 != this.address:
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
                                                _2291 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2318 = mem[_2291]
                                                require mem[_2291] == mem[_2291]
                                                if mem[_2291] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 68] = 0
                                                mem[mem[64] + 100] = 0
                                                mem[mem[64] + 132] = this.address
                                                mem[mem[64] + 164] = block.timestamp
                                                require ext_code.size(stor8)
                                                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value _2318 - ext_call.return_data[0] wei
                                                     gas gas_remaining wei
                                                    args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2399 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 96
                                                require mem[_2399] == mem[_2399]
                                                require mem[_2399 + 32] == mem[_2399 + 32]
                                                require mem[_2399 + 64] == mem[_2399 + 64]
                                                emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], _2318 - ext_call.return_data[0]);
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor9)
                                                staticcall stor9.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2615 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2615] == mem[_2615]
    return 1
}



}
