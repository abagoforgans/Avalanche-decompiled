contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint16 sub_0541d0b0; offset 160
uint16 sub_2c2ee9c3; offset 176
address owner;
address treasuryAddress;
array of address stables;
mapping of uint8 stor8;

function sub_0541d0b0(?) payable {
    return sub_0541d0b0
}

function totalSupply() payable {
    return totalSupply
}

function sub_2c2ee9c3(?) payable {
    return sub_2c2ee9c3
}

function sub_32454dbb(?) payable {
    return stables.length
}

function treasury() payable {
    return treasuryAddress
}

function sub_6352a8a6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function stables(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stables.length
    return stables[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
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

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateMintFee(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0541d0b0 = arg1
}

function sub_2cb1036b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2c2ee9c3 = uint16(arg1)
}

function updateTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function addCoin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stables.length++
    stables[stables.length] = arg1
}

function sub_e1ccd057(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[arg1 << 240] = uint8(bool(arg2))
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

function transfer(address arg1, uint256 arg2) payable {
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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

function sub_4d1a612f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == arg2
    if uint16(arg1) >= stables.length:
        revert with 'NH{q', 50
    require ext_code.size(stables[uint16(arg1)])
    staticcall stables[uint16(arg1)].0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg2 and 1 > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 / 10^18 and sub_2c2ee9c3 > -1 / arg2 / 10^18:
            revert with 'NH{q', 17
        if arg2 / 10^18 < arg2 / 10^18 * sub_2c2ee9c3 / 10000:
            revert with 'NH{q', 17
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 'ERC20: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if totalSupply < arg2:
            revert with 'NH{q', 17
        totalSupply -= arg2
        emit Transfer(arg2, msg.sender, 0);
        if uint16(arg1) >= stables.length:
            revert with 'NH{q', 50
        require ext_code.size(stables[uint16(arg1)])
        call stables[uint16(arg1)].0xa9059cbb with:
             gas gas_remaining wei
            args treasuryAddress, arg2 / 10^18 * sub_2c2ee9c3 / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if uint16(arg1) >= stables.length:
            revert with 'NH{q', 50
        require ext_code.size(stables[uint16(arg1)])
        call stables[uint16(arg1)].0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (arg2 / 10^18) - (arg2 / 10^18 * sub_2c2ee9c3 / 10000)
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 * 10^ext_call.return_data[31 len 1] / 10^18 and sub_2c2ee9c3 > -1 / arg2 * 10^ext_call.return_data[31 len 1] / 10^18:
                revert with 'NH{q', 17
            if arg2 * 10^ext_call.return_data[31 len 1] / 10^18 < arg2 * 10^ext_call.return_data[31 len 1] / 10^18 * sub_2c2ee9c3 / 10000:
                revert with 'NH{q', 17
            if not msg.sender:
                revert with 0, 'ERC20: burn from the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 'ERC20: burn amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if totalSupply < arg2:
                revert with 'NH{q', 17
            totalSupply -= arg2
            emit Transfer(arg2, msg.sender, 0);
            if uint16(arg1) >= stables.length:
                revert with 'NH{q', 50
            require ext_code.size(stables[uint16(arg1)])
            call stables[uint16(arg1)].0xa9059cbb with:
                 gas gas_remaining wei
                args treasuryAddress, arg2 * 10^uint8(ext_call.return_data[0]) / 10^18 * sub_2c2ee9c3 / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if uint16(arg1) >= stables.length:
                revert with 'NH{q', 50
            require ext_code.size(stables[uint16(arg1)])
            call stables[uint16(arg1)].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (arg2 * 10^uint8(ext_call.return_data[0]) / 10^18) - (arg2 * 10^uint8(ext_call.return_data[0]) / 10^18 * sub_2c2ee9c3 / 10000)
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg2 and t * s > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 * t * s / 10^18 and sub_2c2ee9c3 > -1 / arg2 * t * s / 10^18:
                revert with 'NH{q', 17
            if arg2 * t * s / 10^18 < arg2 * t * s / 10^18 * sub_2c2ee9c3 / 10000:
                revert with 'NH{q', 17
            if not msg.sender:
                revert with 0, 'ERC20: burn from the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 'ERC20: burn amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if totalSupply < arg2:
                revert with 'NH{q', 17
            totalSupply -= arg2
            emit Transfer(arg2, msg.sender, 0);
            if uint16(arg1) >= stables.length:
                revert with 'NH{q', 50
            require ext_code.size(stables[uint16(arg1)])
            call stables[uint16(arg1)].0xa9059cbb with:
                 gas gas_remaining wei
                args treasuryAddress, arg2 * t * s / 10^18 * sub_2c2ee9c3 / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if uint16(arg1) >= stables.length:
                revert with 'NH{q', 50
            require ext_code.size(stables[uint16(arg1)])
            call stables[uint16(arg1)].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (arg2 * t * s / 10^18) - (arg2 * t * s / 10^18 * sub_2c2ee9c3 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e8cbe175(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == arg2
    if stor8[arg1 << 240]:
        revert with 0, 'Penaltied token'
    if uint16(arg1) >= stables.length:
        revert with 'NH{q', 50
    require ext_code.size(stables[uint16(arg1)])
    staticcall stables[uint16(arg1)].0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if arg2 and sub_0541d0b0 > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 < arg2 * sub_0541d0b0 / 10000:
        revert with 'NH{q', 17
    if not ext_call.return_data[31 len 1]:
        if arg2 - (arg2 * sub_0541d0b0 / 10000) and 10^18 > -1 / arg2 - (arg2 * sub_0541d0b0 / 10000):
            revert with 'NH{q', 17
        if uint16(arg1) >= stables.length:
            revert with 'NH{q', 50
        require ext_code.size(stables[uint16(arg1)])
        call stables[uint16(arg1)].0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, treasuryAddress, arg2 * sub_0541d0b0 / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if uint16(arg1) >= stables.length:
            revert with 'NH{q', 50
        require ext_code.size(stables[uint16(arg1)])
        call stables[uint16(arg1)].0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2 - (arg2 * sub_0541d0b0 / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > (-1 * 10^18 * arg2) + (10^18 * arg2 * sub_0541d0b0 / 10000) - 1:
            revert with 'NH{q', 17
        totalSupply = totalSupply + (10^18 * arg2) - (10^18 * arg2 * sub_0541d0b0 / 10000)
        if balanceOf[address(msg.sender)] > (-1 * 10^18 * arg2) + (10^18 * arg2 * sub_0541d0b0 / 10000) - 1:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10^18 * arg2) - (10^18 * arg2 * sub_0541d0b0 / 10000)
        emit Transfer(((10^18 * arg2) - (10^18 * arg2 * sub_0541d0b0 / 10000)), 0, msg.sender);
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if arg2 - (arg2 * sub_0541d0b0 / 10000) and 10^18 > -1 / arg2 - (arg2 * sub_0541d0b0 / 10000):
                revert with 'NH{q', 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 'NH{q', 18
            if uint16(arg1) >= stables.length:
                revert with 'NH{q', 50
            require ext_code.size(stables[uint16(arg1)])
            call stables[uint16(arg1)].0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, treasuryAddress, arg2 * sub_0541d0b0 / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if uint16(arg1) >= stables.length:
                revert with 'NH{q', 50
            require ext_code.size(stables[uint16(arg1)])
            call stables[uint16(arg1)].0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2 - (arg2 * sub_0541d0b0 / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > -((10^18 * arg2) - (10^18 * arg2 * sub_0541d0b0 / 10000) / 10^uint8(ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            totalSupply += (10^18 * arg2) - (10^18 * arg2 * sub_0541d0b0 / 10000) / 10^uint8(ext_call.return_data[0])
            if balanceOf[address(msg.sender)] > -((10^18 * arg2) - (10^18 * arg2 * sub_0541d0b0 / 10000) / 10^uint8(ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] += (10^18 * arg2) - (10^18 * arg2 * sub_0541d0b0 / 10000) / 10^uint8(ext_call.return_data[0])
            emit Transfer(((10^18 * arg2) - (10^18 * arg2 * sub_0541d0b0 / 10000) / 10^uint8(ext_call.return_data[0])), 0, msg.sender);
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg2 - (arg2 * sub_0541d0b0 / 10000) and 10^18 > -1 / arg2 - (arg2 * sub_0541d0b0 / 10000):
                revert with 'NH{q', 17
            if not t * s:
                revert with 'NH{q', 18
            if uint16(arg1) >= stables.length:
                revert with 'NH{q', 50
            require ext_code.size(stables[uint16(arg1)])
            call stables[uint16(arg1)].0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, treasuryAddress, arg2 * sub_0541d0b0 / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if uint16(arg1) >= stables.length:
                revert with 'NH{q', 50
            require ext_code.size(stables[uint16(arg1)])
            call stables[uint16(arg1)].0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2 - (arg2 * sub_0541d0b0 / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > -((10^18 * arg2) - (10^18 * arg2 * sub_0541d0b0 / 10000) / t * s) - 1:
                revert with 'NH{q', 17
            totalSupply += (10^18 * arg2) - (10^18 * arg2 * sub_0541d0b0 / 10000) / t * s
            if balanceOf[address(msg.sender)] > -((10^18 * arg2) - (10^18 * arg2 * sub_0541d0b0 / 10000) / t * s) - 1:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] += (10^18 * arg2) - (10^18 * arg2 * sub_0541d0b0 / 10000) / t * s
            emit Transfer(((10^18 * arg2) - (10^18 * arg2 * sub_0541d0b0 / 10000) / t * s), 0, msg.sender);
}

function sub_de7cac54(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    while uint16(idx) < ('cd', 4).length:
        require cd[((32 * uint16(idx)) + cd[4] + 36)] == uint16(cd[((32 * uint16(idx)) + cd[4] + 36)])
        if uint16(idx) >= ('cd', 36).length:
            revert with 'NH{q', 50
        if uint16(cd[((32 * uint16(idx)) + cd[4] + 36)]) >= stables.length:
            revert with 'NH{q', 50
        mem[0] = 7
        require ext_code.size(stables[uint16(cd[((32 * uint16(idx)) + cd[4] + 36)])])
        staticcall stables[uint16(cd[((32 * uint16(idx)) + cd[4] + 36)])].0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _64 = mem[_63]
        require mem[_63] == mem[_63 + 31 len 1]
        if not mem[_63 + 31 len 1]:
            if cd[((32 * uint16(idx)) + cd[36] + 36)] and 1 > -1 / cd[((32 * uint16(idx)) + cd[36] + 36)]:
                revert with 'NH{q', 17
            if cd[((32 * uint16(idx)) + cd[36] + 36)] / 10^18 and sub_2c2ee9c3 > -1 / cd[((32 * uint16(idx)) + cd[36] + 36)] / 10^18:
                revert with 'NH{q', 17
            if cd[((32 * uint16(idx)) + cd[36] + 36)] / 10^18 < cd[((32 * uint16(idx)) + cd[36] + 36)] / 10^18 * sub_2c2ee9c3 / 10000:
                revert with 'NH{q', 17
            if not msg.sender:
                revert with 0, 'ERC20: burn from the zero address'
            if balanceOf[address(msg.sender)] < cd[((32 * uint16(idx)) + cd[36] + 36)]:
                revert with 0, 'ERC20: burn amount exceeds balance'
            mem[32] = 0
            balanceOf[address(msg.sender)] -= cd[((32 * uint16(idx)) + cd[36] + 36)]
            if totalSupply < cd[((32 * uint16(idx)) + cd[36] + 36)]:
                revert with 'NH{q', 17
            totalSupply -= cd[((32 * uint16(idx)) + cd[36] + 36)]
            emit Transfer(cd[((32 * uint16(idx)) + cd[36] + 36)], msg.sender, 0);
            if uint16(cd[((32 * uint16(idx)) + cd[4] + 36)]) >= stables.length:
                revert with 'NH{q', 50
            mem[0] = 7
            mem[mem[64] + 4] = treasuryAddress
            mem[mem[64] + 36] = cd[((32 * uint16(idx)) + cd[36] + 36)] / 10^18 * sub_2c2ee9c3 / 10000
            require ext_code.size(stables[uint16(cd[((32 * uint16(idx)) + cd[4] + 36)])])
            call stables[uint16(cd[((32 * uint16(idx)) + cd[4] + 36)])].0xa9059cbb with:
                 gas gas_remaining wei
                args treasuryAddress, cd[((32 * uint16(idx)) + cd[36] + 36)] / 10^18 * sub_2c2ee9c3 / 10000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _96 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_96] == bool(mem[_96])
            if uint16(cd[((32 * uint16(idx)) + cd[4] + 36)]) >= stables.length:
                revert with 'NH{q', 50
            mem[0] = 7
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = (cd[((32 * uint16(idx)) + cd[36] + 36)] / 10^18) - (cd[((32 * uint16(idx)) + cd[36] + 36)] / 10^18 * sub_2c2ee9c3 / 10000)
            require ext_code.size(stables[uint16(cd[((32 * uint16(idx)) + cd[4] + 36)])])
            call stables[uint16(cd[((32 * uint16(idx)) + cd[4] + 36)])].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (cd[((32 * uint16(idx)) + cd[36] + 36)] / 10^18) - (cd[((32 * uint16(idx)) + cd[36] + 36)] / 10^18 * sub_2c2ee9c3 / 10000)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _111 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_111] == bool(mem[_111])
        else:
            if bool(bool(mem[_63 + 31 len 1] < 78)) or bool(bool(mem[_63 + 31 len 1] < 32)):
                if 10^mem[_63 + 31 len 1] > -1:
                    revert with 'NH{q', 17
                if cd[((32 * uint16(idx)) + cd[36] + 36)] and 10^mem[_63 + 31 len 1] > -1 / cd[((32 * uint16(idx)) + cd[36] + 36)]:
                    revert with 'NH{q', 17
                if cd[((32 * uint16(idx)) + cd[36] + 36)] * 10^mem[_63 + 31 len 1] / 10^18 and sub_2c2ee9c3 > -1 / cd[((32 * uint16(idx)) + cd[36] + 36)] * 10^mem[_63 + 31 len 1] / 10^18:
                    revert with 'NH{q', 17
                if cd[((32 * uint16(idx)) + cd[36] + 36)] * 10^mem[_63 + 31 len 1] / 10^18 < cd[((32 * uint16(idx)) + cd[36] + 36)] * 10^mem[_63 + 31 len 1] / 10^18 * sub_2c2ee9c3 / 10000:
                    revert with 'NH{q', 17
                if not msg.sender:
                    revert with 0, 'ERC20: burn from the zero address'
                if balanceOf[address(msg.sender)] < cd[((32 * uint16(idx)) + cd[36] + 36)]:
                    revert with 0, 'ERC20: burn amount exceeds balance'
                mem[32] = 0
                balanceOf[address(msg.sender)] -= cd[((32 * uint16(idx)) + cd[36] + 36)]
                if totalSupply < cd[((32 * uint16(idx)) + cd[36] + 36)]:
                    revert with 'NH{q', 17
                totalSupply -= cd[((32 * uint16(idx)) + cd[36] + 36)]
                emit Transfer(cd[((32 * uint16(idx)) + cd[36] + 36)], msg.sender, 0);
                if uint16(cd[((32 * uint16(idx)) + cd[4] + 36)]) >= stables.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                mem[mem[64] + 4] = treasuryAddress
                mem[mem[64] + 36] = cd[((32 * uint16(idx)) + cd[36] + 36)] * 10^uint8(_64) / 10^18 * sub_2c2ee9c3 / 10000
                require ext_code.size(stables[uint16(cd[((32 * uint16(idx)) + cd[4] + 36)])])
                call stables[uint16(cd[((32 * uint16(idx)) + cd[4] + 36)])].0xa9059cbb with:
                     gas gas_remaining wei
                    args treasuryAddress, cd[((32 * uint16(idx)) + cd[36] + 36)] * 10^uint8(_64) / 10^18 * sub_2c2ee9c3 / 10000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _99 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_99] == bool(mem[_99])
                if uint16(cd[((32 * uint16(idx)) + cd[4] + 36)]) >= stables.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = (cd[((32 * uint16(idx)) + cd[36] + 36)] * 10^uint8(_64) / 10^18) - (cd[((32 * uint16(idx)) + cd[36] + 36)] * 10^uint8(_64) / 10^18 * sub_2c2ee9c3 / 10000)
                require ext_code.size(stables[uint16(cd[((32 * uint16(idx)) + cd[4] + 36)])])
                call stables[uint16(cd[((32 * uint16(idx)) + cd[4] + 36)])].0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (cd[((32 * uint16(idx)) + cd[36] + 36)] * 10^uint8(_64) / 10^18) - (cd[((32 * uint16(idx)) + cd[36] + 36)] * 10^uint8(_64) / 10^18 * sub_2c2ee9c3 / 10000)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _114 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_114] == bool(mem[_114])
            else:
                t = 10
                u = 1
                s = mem[_63 + 31 len 1]
                while s > 1:
                    if t > -1 / t:
                        revert with 'NH{q', 17
                    if not bool(s):
                        t = t * t
                        u = u
                        s = uint255(s) * 0.5
                        continue 
                    t = t * t
                    u = u * t
                    s = uint255(s) * 0.5
                    continue 
                if u > -1 / t:
                    revert with 'NH{q', 17
                if cd[((32 * uint16(idx)) + cd[36] + 36)] and u * t > -1 / cd[((32 * uint16(idx)) + cd[36] + 36)]:
                    revert with 'NH{q', 17
                if cd[((32 * uint16(idx)) + cd[36] + 36)] * u * t / 10^18 and sub_2c2ee9c3 > -1 / cd[((32 * uint16(idx)) + cd[36] + 36)] * u * t / 10^18:
                    revert with 'NH{q', 17
                if cd[((32 * uint16(idx)) + cd[36] + 36)] * u * t / 10^18 < cd[((32 * uint16(idx)) + cd[36] + 36)] * u * t / 10^18 * sub_2c2ee9c3 / 10000:
                    revert with 'NH{q', 17
                if not msg.sender:
                    revert with 0, 'ERC20: burn from the zero address'
                if balanceOf[address(msg.sender)] < cd[((32 * uint16(idx)) + cd[36] + 36)]:
                    revert with 0, 'ERC20: burn amount exceeds balance'
                mem[32] = 0
                balanceOf[address(msg.sender)] -= cd[((32 * uint16(idx)) + cd[36] + 36)]
                if totalSupply < cd[((32 * uint16(idx)) + cd[36] + 36)]:
                    revert with 'NH{q', 17
                totalSupply -= cd[((32 * uint16(idx)) + cd[36] + 36)]
                emit Transfer(cd[((32 * uint16(idx)) + cd[36] + 36)], msg.sender, 0);
                if uint16(cd[((32 * uint16(idx)) + cd[4] + 36)]) >= stables.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                mem[mem[64] + 4] = treasuryAddress
                mem[mem[64] + 36] = cd[((32 * uint16(idx)) + cd[36] + 36)] * u * t / 10^18 * sub_2c2ee9c3 / 10000
                require ext_code.size(stables[uint16(cd[((32 * uint16(idx)) + cd[4] + 36)])])
                call stables[uint16(cd[((32 * uint16(idx)) + cd[4] + 36)])].0xa9059cbb with:
                     gas gas_remaining wei
                    args treasuryAddress, cd[((32 * uint16(idx)) + cd[36] + 36)] * u * t / 10^18 * sub_2c2ee9c3 / 10000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _130 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_130] == bool(mem[_130])
                if uint16(cd[((32 * uint16(idx)) + cd[4] + 36)]) >= stables.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = (cd[((32 * uint16(idx)) + cd[36] + 36)] * u * t / 10^18) - (cd[((32 * uint16(idx)) + cd[36] + 36)] * u * t / 10^18 * sub_2c2ee9c3 / 10000)
                require ext_code.size(stables[uint16(cd[((32 * uint16(idx)) + cd[4] + 36)])])
                call stables[uint16(cd[((32 * uint16(idx)) + cd[4] + 36)])].0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (cd[((32 * uint16(idx)) + cd[36] + 36)] * u * t / 10^18) - (cd[((32 * uint16(idx)) + cd[36] + 36)] * u * t / 10^18 * sub_2c2ee9c3 / 10000)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _135 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_135] == bool(mem[_135])
        if uint16(idx) == 65535:
            revert with 'NH{q', 17
        idx = uint16(idx) + 1
        continue 
}



}
