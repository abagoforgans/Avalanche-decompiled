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
uint8 stor14;
uint8 stor14; offset 8
address stor14;
address treasuryAddress; offset 16
uint256 stor14; offset 8
uint256 sub_fac4fcc8;
address sub_527509f3Address;

function sub_0053d555(?) payable {
    return sub_0053d555Address
}

function isTradingEnabled() payable {
    return bool(uint8(stor14.field_8))
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
    return bool(uint8(stor14.field_0))
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
    uint8(stor14.field_0) = uint8(bool(arg1))
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

function sub_dab9b262(?) payable {
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
                call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, arg3), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_0053d555Address)
                staticcall sub_0053d555Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                require ext_code.size(stor8)
                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args address(this.address), Mask(255, 1, arg3), 0, 0, address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
                emit SwapAndLiquify(arg3 / 2, ext_call.return_data[0], 0);
                require ext_code.size(stor9)
                staticcall stor9.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
    else:
        if not uint8(stor14.field_0):
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
                    call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, arg3), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_0053d555Address)
                    staticcall sub_0053d555Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    require ext_code.size(stor8)
                    call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(this.address), Mask(255, 1, arg3), 0, 0, address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    emit SwapAndLiquify(arg3 / 2, ext_call.return_data[0], 0);
                    require ext_code.size(stor9)
                    staticcall stor9.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
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
                if stor12 != msg.sender:
                else:
                    if arg1 != this.address:
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
                        call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, arg2), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_0053d555Address)
                        staticcall sub_0053d555Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        require ext_code.size(stor8)
                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], 0);
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
            else:
                if not uint8(stor14.field_0):
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
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    if stor12 != msg.sender:
                    else:
                        if arg1 != this.address:
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
                            call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, arg2), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_0053d555Address)
                            staticcall sub_0053d555Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            require ext_code.size(stor8)
                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], 0);
                            require ext_code.size(stor9)
                            staticcall stor9.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
        else:
            if arg1 != stor9:
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
                if stor12 != msg.sender:
                else:
                    if arg1 != this.address:
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
                        call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, arg2), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_0053d555Address)
                        staticcall sub_0053d555Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        require ext_code.size(stor8)
                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], 0);
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
            else:
                if not taxPercent:
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
                    if stor12 != msg.sender:
                    else:
                        if arg1 != this.address:
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
                            call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, arg2), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_0053d555Address)
                            staticcall sub_0053d555Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            require ext_code.size(stor8)
                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], 0);
                            require ext_code.size(stor9)
                            staticcall stor9.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                else:
                    if not uint8(stor14.field_0):
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
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        if stor12 != msg.sender:
                        else:
                            if arg1 != this.address:
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
                                call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg2), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_0053d555Address)
                                staticcall sub_0053d555Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                require ext_code.size(stor8)
                                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], 0);
                                require ext_code.size(stor9)
                                staticcall stor9.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
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
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    if stor12 != msg.sender:
                    else:
                        if arg1 != this.address:
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
                            call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, arg2), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_0053d555Address)
                            staticcall sub_0053d555Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            require ext_code.size(stor8)
                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], 0);
                            require ext_code.size(stor9)
                            staticcall stor9.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                else:
                    if not uint8(stor14.field_0):
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
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        if stor12 != msg.sender:
                        else:
                            if arg1 != this.address:
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
                                call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg2), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_0053d555Address)
                                staticcall sub_0053d555Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                require ext_code.size(stor8)
                                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], 0);
                                require ext_code.size(stor9)
                                staticcall stor9.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
            else:
                if arg1 != stor9:
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
                    if stor12 != msg.sender:
                    else:
                        if arg1 != this.address:
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
                            call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, arg2), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_0053d555Address)
                            staticcall sub_0053d555Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            require ext_code.size(stor8)
                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], 0);
                            require ext_code.size(stor9)
                            staticcall stor9.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                else:
                    if not taxPercent:
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
                        if stor12 != msg.sender:
                        else:
                            if arg1 != this.address:
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
                                call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg2), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_0053d555Address)
                                staticcall sub_0053d555Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                require ext_code.size(stor8)
                                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], 0);
                                require ext_code.size(stor9)
                                staticcall stor9.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                    else:
                        if not uint8(stor14.field_0):
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
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            if stor12 != msg.sender:
                            else:
                                if arg1 != this.address:
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
                                    call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, arg2), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_0053d555Address)
                                    staticcall sub_0053d555Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    require ext_code.size(stor8)
                                    call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], 0);
                                    require ext_code.size(stor9)
                                    staticcall stor9.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
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
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    if stor12 != msg.sender:
                    else:
                        if arg1 != this.address:
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
                            call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, arg2), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_0053d555Address)
                            staticcall sub_0053d555Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            require ext_code.size(stor8)
                            call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], 0);
                            require ext_code.size(stor9)
                            staticcall stor9.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                else:
                    if not uint8(stor14.field_0):
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
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        if stor12 != msg.sender:
                        else:
                            if arg1 != this.address:
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
                                call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg2), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_0053d555Address)
                                staticcall sub_0053d555Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                require ext_code.size(stor8)
                                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], 0);
                                require ext_code.size(stor9)
                                staticcall stor9.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
            else:
                if arg1 != this.address:
                    if this.address != msg.sender:
                        if not uint8(stor14.field_8):
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
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        if stor12 != msg.sender:
                        else:
                            if arg1 != this.address:
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
                                call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg2), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_0053d555Address)
                                staticcall sub_0053d555Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                require ext_code.size(stor8)
                                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], 0);
                                require ext_code.size(stor9)
                                staticcall stor9.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                    else:
                        if not uint8(stor14.field_0):
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
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            if stor12 != msg.sender:
                            else:
                                if arg1 != this.address:
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
                                    call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, arg2), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_0053d555Address)
                                    staticcall sub_0053d555Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    require ext_code.size(stor8)
                                    call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], 0);
                                    require ext_code.size(stor9)
                                    staticcall stor9.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                else:
                    if arg1 != stor9:
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
                        if stor12 != msg.sender:
                        else:
                            if arg1 != this.address:
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
                                call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg2), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_0053d555Address)
                                staticcall sub_0053d555Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                require ext_code.size(stor8)
                                call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], 0);
                                require ext_code.size(stor9)
                                staticcall stor9.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                    else:
                        if not taxPercent:
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
                            if stor12 != msg.sender:
                            else:
                                if arg1 != this.address:
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
                                    call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, arg2), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_0053d555Address)
                                    staticcall sub_0053d555Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    require ext_code.size(stor8)
                                    call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], 0);
                                    require ext_code.size(stor9)
                                    staticcall stor9.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                        else:
                            if not uint8(stor14.field_0):
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
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                if stor12 != msg.sender:
                                else:
                                    if arg1 != this.address:
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
                                        call stor8.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, arg2), 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(sub_0053d555Address)
                                        staticcall sub_0053d555Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        require ext_code.size(stor8)
                                        call stor8.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, arg2), 0, 0, address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        emit SwapAndLiquify(arg2 / 2, ext_call.return_data[0], 0);
                                        require ext_code.size(stor9)
                                        staticcall stor9.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
    return 1
}



}
