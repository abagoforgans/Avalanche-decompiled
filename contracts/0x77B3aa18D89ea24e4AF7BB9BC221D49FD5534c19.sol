contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address token0Address;
uint256 reserve0;
array of struct stor8;
mapping of uint256 stor9;
mapping of uint256 sub_6c391ab0;
uint256 sub_89a6e543;
address sub_42baeb84Address;
uint256 diff0;

function token0() payable {
    return token0Address
}

function totalSupply() payable {
    return totalSupply
}

function sub_42baeb84(?) payable {
    return sub_42baeb84Address
}

function reserve0() payable {
    return reserve0
}

function sub_6c391ab0(?) payable {
    require calldata.size - 4 >= 32
    return sub_6c391ab0[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_89a6e543(?) payable {
    return sub_89a6e543
}

function owner() payable {
    return owner
}

function diff0() payable {
    return diff0
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

function getReserves(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return reserve0, sub_6c391ab0[arg1]
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTwoWay(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_42baeb84Address = arg1
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

function update() payable {
    if sub_42baeb84Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SwapPair: only twoWay can invoke it'
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    reserve0 = ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) payable {
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

function sub_b42f2f3c(?) payable {
    require calldata.size - 4 >= 32
    if arg1 and diff0 > -1 / arg1:
        revert with 0, 17
    if reserve0 and diff0 > -1 / reserve0:
        revert with 0, 17
    if not totalSupply:
        return (arg1 * diff0)
    if sub_89a6e543 > !(reserve0 * diff0):
        revert with 0, 17
    if arg1 * diff0 and totalSupply > -1 / arg1 * diff0:
        revert with 0, 17
    if not sub_89a6e543 + (reserve0 * diff0):
        revert with 0, 18
    return (arg1 * diff0 * totalSupply / sub_89a6e543 + (reserve0 * diff0))
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
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

function sub_19301e75(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if sub_42baeb84Address != msg.sender:
        revert with 0, 'SwapPair: only twoWay can invoke it'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 9
        if not stor9[mem[(32 * idx) + 128]]:
            stor8.length++
            stor8[stor8.length].field_0 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            stor9[mem[(32 * idx) + 128]] = stor8.length
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function swapOut(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if sub_42baeb84Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SwapPair: only twoWay can invoke it'
    if not stor9[arg3]:
        revert with 0, 'not support chainID'
    if arg2 and diff0 > -1 / arg2:
        revert with 0, 17
    if sub_6c391ab0[arg3] < arg2 * diff0:
        revert with 0, 'SwapPair: insuffient liquidity'
    if arg2 and diff0 > -1 / arg2:
        revert with 0, 17
    if sub_6c391ab0[arg3] < arg2 * diff0:
        revert with 0, 17
    sub_6c391ab0[arg3] += -1 * arg2 * diff0
    if arg2 and diff0 > -1 / arg2:
        revert with 0, 17
    if sub_89a6e543 < arg2 * diff0:
        revert with 0, 17
    sub_89a6e543 += -1 * arg2 * diff0
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    reserve0 = ext_call.return_data[0]
    if arg2 and diff0 > -1 / arg2:
        revert with 0, 17
    emit Swap(arg2, arg2 * diff0, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function sub_2da0e0f8(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if sub_42baeb84Address != msg.sender:
        revert with 0, 'SwapPair: only twoWay can invoke it'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 9
        if stor9[mem[(32 * idx) + 128]]:
            if stor9[mem[(32 * idx) + 128]] < 1:
                revert with 0, 17
            if stor8.length < 1:
                revert with 0, 17
            if stor8.length - 1 != stor9[mem[(32 * idx) + 128]] - 1:
                if stor8.length - 1 >= stor8.length:
                    revert with 0, 50
                if stor9[mem[(32 * idx) + 128]] - 1 >= stor8.length:
                    revert with 0, 50
                stor8[stor9[mem[(32 * idx) + 128]]].field_0 = stor8[stor8.length].field_0
                stor9[stor8[stor8.length].field_0] = stor9[mem[(32 * idx) + 128]]
            if not stor8.length:
                revert with 0, 49
            stor8[stor8.length].field_0 = 0
            stor8.length--
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            stor9[mem[(32 * idx) + 128]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_d0a40797(?) payable {
    if stor8.length > test266151307():
        revert with 0, 65
    mem[96] = stor8.length
    mem[64] = (32 * stor8.length) + 128
    if not stor8.length:
        if var28002 >= stor8.length:
            mem[(32 * stor8.length) + 128] = 32
            mem[(32 * stor8.length) + 160] = stor8.length
            mem[(32 * stor8.length) + 192 len 32 * stor8.length] = mem[128 len 32 * stor8.length]
            return memory
              from (32 * stor8.length) + 128
               len (96 * stor8.length) + 64
        if var34001 >= stor8.length:
            revert with 0, 50
        mem[0] = 8
        if var40002 >= stor8.length:
            revert with 0, 50
        mem[(32 * var40002) + 128] = var40001
        s = var40002
        t = var40001
        idx = var40002
        while idx != -1:
            if idx + 1 >= stor8.length:
                mem[(32 * stor8.length) + 128] = 32
                mem[(32 * stor8.length) + 160] = stor8.length
                idx = 0
                u = 128
                v = (32 * stor8.length) + 192
                while idx < stor8.length:
                    mem[v] = mem[u]
                    mem[(32 * s) + 128] = t
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * stor8.length) + 128
                   len (96 * stor8.length) + 64
            mem[0] = 8
            if idx + 1 >= stor8.length:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor8[idx].field_512
            s = idx + 1
            t = stor8[idx].field_256
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * stor8.length] = call.data[calldata.size len 32 * stor8.length]
        if var29002 >= stor8.length:
            mem[(32 * stor8.length) + 128] = 32
            mem[(32 * stor8.length) + 160] = stor8.length
            mem[(32 * stor8.length) + 192 len 32 * stor8.length] = call.data[calldata.size len 32 * stor8.length]
            return memory
              from (32 * stor8.length) + 128
               len (96 * stor8.length) + 64
        if var35001 >= stor8.length:
            revert with 0, 50
        mem[0] = 8
        if var41002 >= stor8.length:
            revert with 0, 50
        mem[(32 * var41002) + 128] = var41001
        s = var41002
        t = var41001
        idx = var41002
        while idx != -1:
            if idx + 1 >= stor8.length:
                mem[(32 * stor8.length) + 128] = 32
                mem[(32 * stor8.length) + 160] = stor8.length
                idx = 0
                u = 128
                v = (32 * stor8.length) + 192
                while idx < stor8.length:
                    mem[v] = mem[u]
                    mem[(32 * s) + 128] = t
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * stor8.length) + 128
                   len (96 * stor8.length) + 64
            mem[0] = 8
            if idx + 1 >= stor8.length:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor8[idx].field_512
            s = idx + 1
            t = stor8[idx].field_256
            idx = idx + 1
            continue 
    revert with 0, 17
}

function mint(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_42baeb84Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SwapPair: only twoWay can invoke it'
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < reserve0:
        revert with 0, 17
    if ext_call.return_data[0] - reserve0 and diff0 > -1 / ext_call.return_data[0] - reserve0:
        revert with 0, 17
    if reserve0 and diff0 > -1 / reserve0:
        revert with 0, 17
    if not totalSupply:
        if (ext_call.return_data[0] * diff0) - (reserve0 * diff0) <= 0:
            revert with 0, 'SwapPair: insufficient liquidity minted'
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !((ext_call.return_data[0] * diff0) - (reserve0 * diff0)):
            revert with 0, 17
        totalSupply = totalSupply + (ext_call.return_data[0] * diff0) - (reserve0 * diff0)
        if balanceOf[address(arg1)] > !((ext_call.return_data[0] * diff0) - (reserve0 * diff0)):
            revert with 0, 17
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (ext_call.return_data[0] * diff0) - (reserve0 * diff0)
        emit Transfer(((ext_call.return_data[0] * diff0) - (reserve0 * diff0)), 0, arg1);
        reserve0 = ext_call.return_data[0]
        emit Mint(((ext_call.return_data[0] * diff0) - (reserve0 * diff0)), msg.sender);
        return ((ext_call.return_data[0] * diff0) - (reserve0 * diff0))
    if sub_89a6e543 > !(reserve0 * diff0):
        revert with 0, 17
    if (ext_call.return_data[0] * diff0) - (reserve0 * diff0) and totalSupply > -1 / (ext_call.return_data[0] * diff0) - (reserve0 * diff0):
        revert with 0, 17
    if not sub_89a6e543 + (reserve0 * diff0):
        revert with 0, 18
    if (ext_call.return_data[0] * diff0 * totalSupply) - (reserve0 * diff0 * totalSupply) / sub_89a6e543 + (reserve0 * diff0) <= 0:
        revert with 0, 'SwapPair: insufficient liquidity minted'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !((ext_call.return_data[0] * diff0 * totalSupply) - (reserve0 * diff0 * totalSupply) / sub_89a6e543 + (reserve0 * diff0)):
        revert with 0, 17
    totalSupply += (ext_call.return_data[0] * diff0 * totalSupply) - (reserve0 * diff0 * totalSupply) / sub_89a6e543 + (reserve0 * diff0)
    if balanceOf[address(arg1)] > !((ext_call.return_data[0] * diff0 * totalSupply) - (reserve0 * diff0 * totalSupply) / sub_89a6e543 + (reserve0 * diff0)):
        revert with 0, 17
    balanceOf[address(arg1)] += (ext_call.return_data[0] * diff0 * totalSupply) - (reserve0 * diff0 * totalSupply) / sub_89a6e543 + (reserve0 * diff0)
    emit Transfer(((ext_call.return_data[0] * diff0 * totalSupply) - (reserve0 * diff0 * totalSupply) / sub_89a6e543 + (reserve0 * diff0)), 0, arg1);
    reserve0 = ext_call.return_data[0]
    emit Mint(((ext_call.return_data[0] * diff0 * totalSupply) - (reserve0 * diff0 * totalSupply) / sub_89a6e543 + (reserve0 * diff0)), msg.sender);
    return ((ext_call.return_data[0] * diff0 * totalSupply) - (reserve0 * diff0 * totalSupply) / sub_89a6e543 + (reserve0 * diff0))
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function sub_79f658ba(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    mem[128] = arg2
    mem[160] = arg3
    mem[192] = arg4
    require arg5 == address(arg5)
    mem[224] = arg5
    mem[256] = arg6
    if sub_42baeb84Address != msg.sender:
        revert with 0, 'SwapPair: only twoWay can invoke it'
    if not stor9[arg6]:
        revert with 0, 'not support chainID'
    if reserve0 < arg2:
        revert with 0, 'Insuffient liquidity'
    if arg2 <= 0:
        revert with 0, 'Swap amount should be greater than 0'
    mem[324] = address(arg1)
    mem[356] = arg4
    mem[288] = 68
    mem[324 len 28] = address(arg1) << 64
    mem[320 len 4] = unknown_0xa9059cbb(?????)
    mem[388] = 32
    mem[420] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(token0Address):
        revert with 0, 'Address: call to non-contract'
    mem[452 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg4, 0
    mem[520] = 0
    call token0Address with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg4, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg4, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if arg1:
                revert with memory
                  from 128
                   len arg1
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1:
            require arg1 >= 32
            require arg2 == bool(arg2)
            if not arg2:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if arg3:
            mem[488] = address(arg5)
            mem[520] = arg3
            mem[452] = 68
            mem[484 len 4] = unknown_0xa9059cbb(?????)
            mem[552] = 32
            mem[584] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(token0Address):
                revert with 0, 'Address: call to non-contract'
            mem[616 len 96] = 0, address(arg5), arg3, 0
            mem[684] = 0
            call token0Address with:
               funct Mask(32, 224, 0, address(arg5), arg3, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(arg5), arg3, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if arg1:
                        revert with memory
                          from 128
                           len arg1
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg1:
                    require arg1 >= 32
                    require arg2 == bool(arg2)
                    if not arg2:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[648 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[648] == bool(mem[648])
                    if not mem[648]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[452] = return_data.size
        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[484] == bool(mem[484])
            if not mem[484]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if arg3:
            mem[ceil32(return_data.size) + 489] = address(arg5)
            mem[ceil32(return_data.size) + 521] = arg3
            mem[ceil32(return_data.size) + 453] = 68
            mem[ceil32(return_data.size) + 485 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 553] = 32
            mem[ceil32(return_data.size) + 585] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(token0Address):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 617 len 96] = 0, address(arg5), arg3, 0
            mem[ceil32(return_data.size) + 685] = 0
            call token0Address with:
               funct Mask(32, 224, 0, address(arg5), arg3, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(arg5), arg3, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if arg1:
                        revert with memory
                          from 128
                           len arg1
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg1:
                    require arg1 >= 32
                    require arg2 == bool(arg2)
                    if not arg2:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 649] == bool(mem[ceil32(return_data.size) + 649])
                    if not mem[ceil32(return_data.size) + 649]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if arg2 and diff0 > -1 / arg2:
        revert with 0, 17
    if sub_6c391ab0[arg6] > !(arg2 * diff0):
        revert with 0, 17
    sub_6c391ab0[arg6] += arg2 * diff0
    if arg2 and diff0 > -1 / arg2:
        revert with 0, 17
    if sub_89a6e543 > !(arg2 * diff0):
        revert with 0, 17
    sub_89a6e543 += arg2 * diff0
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    reserve0 = ext_call.return_data[0]
    if arg2 and diff0 > -1 / arg2:
        revert with 0, 17
    if arg2 and diff0 > -1 / arg2:
        revert with 0, 17
    emit Swap(arg2 * diff0, arg2 * diff0, msg.sender, address(arg1));
}

function calculateBurn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if reserve0 and diff0 > -1 / reserve0:
        revert with 0, 17
    if reserve0 * diff0 > !sub_89a6e543:
        revert with 0, 17
    if arg1 and (reserve0 * diff0) + sub_89a6e543 > -1 / arg1:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if (reserve0 * diff0 * arg1) + (sub_89a6e543 * arg1) / totalSupply <= reserve0 * diff0:
        if not diff0:
            revert with 0, 18
        return (reserve0 * diff0 * arg1) + (sub_89a6e543 * arg1) / totalSupply / diff0, 96, 128, 0, 0
    if (reserve0 * diff0 * arg1) + (sub_89a6e543 * arg1) / totalSupply < reserve0 * diff0:
        revert with 0, 17
    if stor8.length > test266151307():
        revert with 0, 65
    mem[96] = stor8.length
    if not stor8.length:
        if stor8.length > test266151307():
            revert with 0, 65
        mem[(32 * stor8.length) + 128] = stor8.length
        mem[64] = (64 * stor8.length) + 160
        if not stor8.length:
            idx = 0
            s = ((reserve0 * diff0 * arg1) + (sub_89a6e543 * arg1) / totalSupply) - (reserve0 * diff0)
            while idx < stor8.length:
                if idx >= stor8.length:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor8[idx].field_0
                if idx >= mem[(32 * stor8.length) + 128]:
                    revert with 0, 50
                if s > sub_6c391ab0[stor8[idx].field_0]:
                    mem[(32 * idx) + (32 * stor8.length) + 160] = sub_6c391ab0[stor8[idx].field_0]
                    mem[0] = stor8[idx].field_0
                    mem[32] = 10
                    if s < sub_6c391ab0[stor8[idx].field_0]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - sub_6c391ab0[stor8[idx].field_0]
                    continue 
                mem[(32 * idx) + (32 * stor8.length) + 160] = s
                mem[(64 * stor8.length) + 160] = reserve0
                mem[(64 * stor8.length) + 192] = 96
                mem[(64 * stor8.length) + 256] = stor8.length
                idx = 0
                s = 128
                t = (64 * stor8.length) + 288
                while idx < stor8.length:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(64 * stor8.length) + 224] = (32 * stor8.length) + 128
                _185 = mem[(32 * stor8.length) + 128]
                mem[(98 * stor8.length) + 288] = mem[(32 * stor8.length) + 128]
                idx = 0
                s = (32 * stor8.length) + 160
                t = (98 * stor8.length) + 320
                while idx < mem[(32 * stor8.length) + 128]:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (64 * stor8.length) + 160
                   len (161 * stor8.length) + (32 * _185) + 160
        else:
            mem[(32 * stor8.length) + 160 len 32 * stor8.length] = call.data[calldata.size len 32 * stor8.length]
            idx = 0
            s = ((reserve0 * diff0 * arg1) + (sub_89a6e543 * arg1) / totalSupply) - (reserve0 * diff0)
            while idx < stor8.length:
                if idx >= stor8.length:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor8[idx].field_0
                if idx >= mem[(32 * stor8.length) + 128]:
                    revert with 0, 50
                if s > sub_6c391ab0[stor8[idx].field_0]:
                    mem[(32 * idx) + (32 * stor8.length) + 160] = sub_6c391ab0[stor8[idx].field_0]
                    mem[0] = stor8[idx].field_0
                    mem[32] = 10
                    if s < sub_6c391ab0[stor8[idx].field_0]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - sub_6c391ab0[stor8[idx].field_0]
                    continue 
                mem[(32 * idx) + (32 * stor8.length) + 160] = s
                mem[(64 * stor8.length) + 160] = reserve0
                mem[(64 * stor8.length) + 192] = 96
                mem[(64 * stor8.length) + 256] = stor8.length
                idx = 0
                s = 128
                t = (64 * stor8.length) + 288
                while idx < stor8.length:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(64 * stor8.length) + 224] = (32 * stor8.length) + 128
                _187 = mem[(32 * stor8.length) + 128]
                mem[(98 * stor8.length) + 288] = mem[(32 * stor8.length) + 128]
                idx = 0
                s = (32 * stor8.length) + 160
                t = (98 * stor8.length) + 320
                while idx < mem[(32 * stor8.length) + 128]:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (64 * stor8.length) + 160
                   len (161 * stor8.length) + (32 * _187) + 160
    else:
        mem[128 len 32 * stor8.length] = call.data[calldata.size len 32 * stor8.length]
        if stor8.length > test266151307():
            revert with 0, 65
        mem[(32 * stor8.length) + 128] = stor8.length
        mem[64] = (64 * stor8.length) + 160
        if not stor8.length:
            idx = 0
            s = ((reserve0 * diff0 * arg1) + (sub_89a6e543 * arg1) / totalSupply) - (reserve0 * diff0)
            while idx < stor8.length:
                if idx >= stor8.length:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor8[idx].field_0
                if idx >= mem[(32 * stor8.length) + 128]:
                    revert with 0, 50
                if s > sub_6c391ab0[stor8[idx].field_0]:
                    mem[(32 * idx) + (32 * stor8.length) + 160] = sub_6c391ab0[stor8[idx].field_0]
                    mem[0] = stor8[idx].field_0
                    mem[32] = 10
                    if s < sub_6c391ab0[stor8[idx].field_0]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - sub_6c391ab0[stor8[idx].field_0]
                    continue 
                mem[(32 * idx) + (32 * stor8.length) + 160] = s
                mem[(64 * stor8.length) + 160] = reserve0
                mem[(64 * stor8.length) + 192] = 96
                mem[(64 * stor8.length) + 256] = stor8.length
                idx = 0
                s = 128
                t = (64 * stor8.length) + 288
                while idx < stor8.length:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(64 * stor8.length) + 224] = (32 * stor8.length) + 128
                _189 = mem[(32 * stor8.length) + 128]
                mem[(98 * stor8.length) + 288] = mem[(32 * stor8.length) + 128]
                idx = 0
                s = (32 * stor8.length) + 160
                t = (98 * stor8.length) + 320
                while idx < mem[(32 * stor8.length) + 128]:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (64 * stor8.length) + 160
                   len (161 * stor8.length) + (32 * _189) + 160
        else:
            mem[(32 * stor8.length) + 160 len 32 * stor8.length] = call.data[calldata.size len 32 * stor8.length]
            idx = 0
            s = ((reserve0 * diff0 * arg1) + (sub_89a6e543 * arg1) / totalSupply) - (reserve0 * diff0)
            while idx < stor8.length:
                if idx >= stor8.length:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor8[idx].field_0
                if idx >= mem[(32 * stor8.length) + 128]:
                    revert with 0, 50
                if s > sub_6c391ab0[stor8[idx].field_0]:
                    mem[(32 * idx) + (32 * stor8.length) + 160] = sub_6c391ab0[stor8[idx].field_0]
                    mem[0] = stor8[idx].field_0
                    mem[32] = 10
                    if s < sub_6c391ab0[stor8[idx].field_0]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - sub_6c391ab0[stor8[idx].field_0]
                    continue 
                mem[(32 * idx) + (32 * stor8.length) + 160] = s
                mem[(64 * stor8.length) + 160] = reserve0
                mem[(64 * stor8.length) + 192] = 96
                mem[(64 * stor8.length) + 256] = stor8.length
                idx = 0
                s = 128
                t = (64 * stor8.length) + 288
                while idx < stor8.length:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(64 * stor8.length) + 224] = (32 * stor8.length) + 128
                _191 = mem[(32 * stor8.length) + 128]
                mem[(98 * stor8.length) + 288] = mem[(32 * stor8.length) + 128]
                idx = 0
                s = (32 * stor8.length) + 160
                t = (98 * stor8.length) + 320
                while idx < mem[(32 * stor8.length) + 128]:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (64 * stor8.length) + 160
                   len (161 * stor8.length) + (32 * _191) + 160
    mem[(64 * stor8.length) + 160] = reserve0
    mem[(64 * stor8.length) + 192] = 96
    mem[(64 * stor8.length) + 256] = stor8.length
    mem[(64 * stor8.length) + 288 len 32 * stor8.length] = mem[128 len 32 * stor8.length]
    mem[(64 * stor8.length) + 224] = (32 * stor8.length) + 128
    mem[(98 * stor8.length) + 288] = mem[(32 * stor8.length) + 128]
    mem[(98 * stor8.length) + 320 len 32 * mem[(32 * stor8.length) + 128]] = mem[(32 * stor8.length) + 160 len 32 * mem[(32 * stor8.length) + 128]]
    return memory
      from (64 * stor8.length) + 160
       len (161 * stor8.length) + (32 * mem[(32 * stor8.length) + 128]) + 160
}

function burn(address arg1, address arg2, uint256 arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    if sub_42baeb84Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SwapPair: only twoWay can invoke it'
    if reserve0 and diff0 > -1 / reserve0:
        revert with 0, 17
    if reserve0 * diff0 > !sub_89a6e543:
        revert with 0, 17
    if arg3 and (reserve0 * diff0) + sub_89a6e543 > -1 / arg3:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if (reserve0 * diff0 * arg3) + (sub_89a6e543 * arg3) / totalSupply <= reserve0 * diff0:
        if not diff0:
            revert with 0, 18
        if (reserve0 * diff0 * arg3) + (sub_89a6e543 * arg3) / totalSupply / diff0 < arg5:
            revert with 0, 17
        mem[164] = arg1
        mem[196] = ((reserve0 * diff0 * arg3) + (sub_89a6e543 * arg3) / totalSupply / diff0) - arg5
        require ext_code.size(token0Address)
        call token0Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ((reserve0 * diff0 * arg3) + (sub_89a6e543 * arg3) / totalSupply / diff0) - arg5
        mem[160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if arg5:
            mem[ceil32(return_data.size) + 164] = arg4
            mem[ceil32(return_data.size) + 196] = arg5
            require ext_code.size(token0Address)
            call token0Address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg4), arg5
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 0
        s = 0
        while idx < 0:
            if idx >= 0:
                revert with 0, 50
            if mem[(32 * idx) + 160] <= 0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= 0:
                revert with 0, 50
            mem[0] = idx
            mem[32] = 10
            if sub_6c391ab0[idx] < mem[(32 * idx) + 160]:
                revert with 0, 17
            sub_6c391ab0[idx] -= mem[(32 * idx) + 160]
            if idx >= 0:
                revert with 0, 50
            if s > !mem[(32 * idx) + 160]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[(32 * idx) + 160]
            continue 
        if not arg1:
            revert with 0, 'ERC20: burn from the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 'ERC20: burn amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if totalSupply < arg3:
            revert with 0, 17
        totalSupply -= arg3
        emit Transfer(arg3, arg1, 0);
        require ext_code.size(token0Address)
        staticcall token0Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        reserve0 = ext_call.return_data[0]
        if sub_89a6e543 < s:
            revert with 0, 17
        sub_89a6e543 -= s
        emit Burn((reserve0 * diff0 * arg3) + (sub_89a6e543 * arg3) / totalSupply / diff0, s, msg.sender, arg2);
        return (reserve0 * diff0 * arg3) + (sub_89a6e543 * arg3) / totalSupply / diff0, 96, 128, 0, 0
    if (reserve0 * diff0 * arg3) + (sub_89a6e543 * arg3) / totalSupply < reserve0 * diff0:
        revert with 0, 17
    if stor8.length > test266151307():
        revert with 0, 65
    mem[96] = stor8.length
    if not stor8.length:
        if stor8.length > test266151307():
            revert with 0, 65
        mem[(32 * stor8.length) + 128] = stor8.length
        mem[64] = (64 * stor8.length) + 160
        if not stor8.length:
            idx = 0
            s = ((reserve0 * diff0 * arg3) + (sub_89a6e543 * arg3) / totalSupply) - (reserve0 * diff0)
            while idx < stor8.length:
                if idx >= stor8.length:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor8[idx].field_0
                if idx >= mem[(32 * stor8.length) + 128]:
                    revert with 0, 50
                if s > sub_6c391ab0[stor8[idx].field_0]:
                    mem[(32 * idx) + (32 * stor8.length) + 160] = sub_6c391ab0[stor8[idx].field_0]
                    mem[0] = stor8[idx].field_0
                    mem[32] = 10
                    if s < sub_6c391ab0[stor8[idx].field_0]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - sub_6c391ab0[stor8[idx].field_0]
                    continue 
                mem[(32 * idx) + (32 * stor8.length) + 160] = s
                if reserve0 < arg5:
                    revert with 0, 17
                mem[(64 * stor8.length) + 164] = arg1
                mem[(64 * stor8.length) + 196] = reserve0 - arg5
                require ext_code.size(token0Address)
                call token0Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), reserve0 - arg5
                mem[(64 * stor8.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not arg5:
                    idx = 0
                    s = 0
                    while idx < stor8.length:
                        if idx >= mem[(32 * stor8.length) + 128]:
                            revert with 0, 50
                        if mem[(32 * idx) + (32 * stor8.length) + 160] <= 0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if idx >= mem[(32 * stor8.length) + 128]:
                            revert with 0, 50
                        mem[0] = idx
                        mem[32] = 10
                        if sub_6c391ab0[idx] < mem[(32 * idx) + (32 * stor8.length) + 160]:
                            revert with 0, 17
                        sub_6c391ab0[idx] -= mem[(32 * idx) + (32 * stor8.length) + 160]
                        if idx >= mem[(32 * stor8.length) + 128]:
                            revert with 0, 50
                        if s > !mem[(32 * idx) + (32 * stor8.length) + 160]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + (32 * stor8.length) + 160]
                        continue 
                    if not arg1:
                        revert with 0, 'ERC20: burn from the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'ERC20: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = 0
                    balanceOf[address(arg1)] -= arg3
                    if totalSupply < arg3:
                        revert with 0, 17
                    totalSupply -= arg3
                    emit Transfer(arg3, arg1, 0);
                    mem[(64 * stor8.length) + ceil32(return_data.size) + 164] = this.address
                    require ext_code.size(token0Address)
                    staticcall token0Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(64 * stor8.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (64 * stor8.length) + (2 * ceil32(return_data.size)) + 160
                    require return_data.size >= 32
                    reserve0 = ext_call.return_data[0]
                    if sub_89a6e543 < s:
                        revert with 0, 17
                    sub_89a6e543 -= s
                    emit Burn(reserve0, s, msg.sender, arg2);
                    mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 160] = reserve0
                    mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 192] = 96
                    mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 256] = stor8.length
                    idx = 0
                    s = 128
                    t = mem[64] + 128
                    while idx < stor8.length:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 224] = (32 * stor8.length) + 128
                    _1691 = mem[(32 * stor8.length) + 128]
                    mem[(98 * stor8.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * stor8.length) + 128]
                    idx = 0
                    s = (32 * stor8.length) + 160
                    t = (98 * stor8.length) + (2 * ceil32(return_data.size)) + 320
                    while idx < mem[(32 * stor8.length) + 128]:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (98 * stor8.length) + (2 * ceil32(return_data.size)) + (32 * _1691) + -mem[64] + 320
                mem[(64 * stor8.length) + ceil32(return_data.size) + 164] = arg4
                mem[(64 * stor8.length) + ceil32(return_data.size) + 196] = arg5
                require ext_code.size(token0Address)
                call token0Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg4), arg5
                mem[(64 * stor8.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                idx = 0
                s = 0
                while idx < stor8.length:
                    if idx >= mem[(32 * stor8.length) + 128]:
                        revert with 0, 50
                    if mem[(32 * idx) + (32 * stor8.length) + 160] <= 0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[(32 * stor8.length) + 128]:
                        revert with 0, 50
                    mem[0] = idx
                    mem[32] = 10
                    if sub_6c391ab0[idx] < mem[(32 * idx) + (32 * stor8.length) + 160]:
                        revert with 0, 17
                    sub_6c391ab0[idx] -= mem[(32 * idx) + (32 * stor8.length) + 160]
                    if idx >= mem[(32 * stor8.length) + 128]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + (32 * stor8.length) + 160]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + (32 * stor8.length) + 160]
                    continue 
                if not arg1:
                    revert with 0, 'ERC20: burn from the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 'ERC20: burn amount exceeds balance'
                mem[0] = arg1
                mem[32] = 0
                balanceOf[address(arg1)] -= arg3
                if totalSupply < arg3:
                    revert with 0, 17
                totalSupply -= arg3
                emit Transfer(arg3, arg1, 0);
                mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 164] = this.address
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (64 * stor8.length) + (4 * ceil32(return_data.size)) + 160
                require return_data.size >= 32
                reserve0 = ext_call.return_data[0]
                if sub_89a6e543 < s:
                    revert with 0, 17
                sub_89a6e543 -= s
                emit Burn(reserve0, s, msg.sender, arg2);
                mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 160] = reserve0
                mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 192] = 96
                mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 256] = stor8.length
                idx = 0
                s = 128
                t = (64 * stor8.length) + (4 * ceil32(return_data.size)) + 288
                while idx < stor8.length:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 224] = (32 * stor8.length) + 128
                _1692 = mem[(32 * stor8.length) + 128]
                mem[(98 * stor8.length) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * stor8.length) + 128]
                idx = 0
                s = (32 * stor8.length) + 160
                t = (98 * stor8.length) + (4 * ceil32(return_data.size)) + 320
                while idx < mem[(32 * stor8.length) + 128]:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (64 * stor8.length) + (4 * ceil32(return_data.size)) + 160
                   len (161 * stor8.length) + (32 * _1692) + 160
        else:
            mem[(32 * stor8.length) + 160 len 32 * stor8.length] = call.data[calldata.size len 32 * stor8.length]
            idx = 0
            s = ((reserve0 * diff0 * arg3) + (sub_89a6e543 * arg3) / totalSupply) - (reserve0 * diff0)
            while idx < stor8.length:
                if idx >= stor8.length:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor8[idx].field_0
                if idx >= mem[(32 * stor8.length) + 128]:
                    revert with 0, 50
                if s > sub_6c391ab0[stor8[idx].field_0]:
                    mem[(32 * idx) + (32 * stor8.length) + 160] = sub_6c391ab0[stor8[idx].field_0]
                    mem[0] = stor8[idx].field_0
                    mem[32] = 10
                    if s < sub_6c391ab0[stor8[idx].field_0]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - sub_6c391ab0[stor8[idx].field_0]
                    continue 
                mem[(32 * idx) + (32 * stor8.length) + 160] = s
                if reserve0 < arg5:
                    revert with 0, 17
                mem[(64 * stor8.length) + 164] = arg1
                mem[(64 * stor8.length) + 196] = reserve0 - arg5
                require ext_code.size(token0Address)
                call token0Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), reserve0 - arg5
                mem[(64 * stor8.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not arg5:
                    idx = 0
                    s = 0
                    while idx < stor8.length:
                        if idx >= mem[(32 * stor8.length) + 128]:
                            revert with 0, 50
                        if mem[(32 * idx) + (32 * stor8.length) + 160] <= 0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if idx >= mem[(32 * stor8.length) + 128]:
                            revert with 0, 50
                        mem[0] = idx
                        mem[32] = 10
                        if sub_6c391ab0[idx] < mem[(32 * idx) + (32 * stor8.length) + 160]:
                            revert with 0, 17
                        sub_6c391ab0[idx] -= mem[(32 * idx) + (32 * stor8.length) + 160]
                        if idx >= mem[(32 * stor8.length) + 128]:
                            revert with 0, 50
                        if s > !mem[(32 * idx) + (32 * stor8.length) + 160]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + (32 * stor8.length) + 160]
                        continue 
                    if not arg1:
                        revert with 0, 'ERC20: burn from the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'ERC20: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = 0
                    balanceOf[address(arg1)] -= arg3
                    if totalSupply < arg3:
                        revert with 0, 17
                    totalSupply -= arg3
                    emit Transfer(arg3, arg1, 0);
                    mem[(64 * stor8.length) + ceil32(return_data.size) + 164] = this.address
                    require ext_code.size(token0Address)
                    staticcall token0Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(64 * stor8.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (64 * stor8.length) + (2 * ceil32(return_data.size)) + 160
                    require return_data.size >= 32
                    reserve0 = ext_call.return_data[0]
                    if sub_89a6e543 < s:
                        revert with 0, 17
                    sub_89a6e543 -= s
                    emit Burn(reserve0, s, msg.sender, arg2);
                    mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 160] = reserve0
                    mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 192] = 96
                    mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 256] = stor8.length
                    idx = 0
                    s = 128
                    t = mem[64] + 128
                    while idx < stor8.length:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 224] = (32 * stor8.length) + 128
                    _1695 = mem[(32 * stor8.length) + 128]
                    mem[(98 * stor8.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * stor8.length) + 128]
                    idx = 0
                    s = (32 * stor8.length) + 160
                    t = (98 * stor8.length) + (2 * ceil32(return_data.size)) + 320
                    while idx < mem[(32 * stor8.length) + 128]:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (98 * stor8.length) + (2 * ceil32(return_data.size)) + (32 * _1695) + -mem[64] + 320
                mem[(64 * stor8.length) + ceil32(return_data.size) + 164] = arg4
                mem[(64 * stor8.length) + ceil32(return_data.size) + 196] = arg5
                require ext_code.size(token0Address)
                call token0Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg4), arg5
                mem[(64 * stor8.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                idx = 0
                s = 0
                while idx < stor8.length:
                    if idx >= mem[(32 * stor8.length) + 128]:
                        revert with 0, 50
                    if mem[(32 * idx) + (32 * stor8.length) + 160] <= 0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[(32 * stor8.length) + 128]:
                        revert with 0, 50
                    mem[0] = idx
                    mem[32] = 10
                    if sub_6c391ab0[idx] < mem[(32 * idx) + (32 * stor8.length) + 160]:
                        revert with 0, 17
                    sub_6c391ab0[idx] -= mem[(32 * idx) + (32 * stor8.length) + 160]
                    if idx >= mem[(32 * stor8.length) + 128]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + (32 * stor8.length) + 160]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + (32 * stor8.length) + 160]
                    continue 
                if not arg1:
                    revert with 0, 'ERC20: burn from the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 'ERC20: burn amount exceeds balance'
                mem[0] = arg1
                mem[32] = 0
                balanceOf[address(arg1)] -= arg3
                if totalSupply < arg3:
                    revert with 0, 17
                totalSupply -= arg3
                emit Transfer(arg3, arg1, 0);
                mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 164] = this.address
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (64 * stor8.length) + (4 * ceil32(return_data.size)) + 160
                require return_data.size >= 32
                reserve0 = ext_call.return_data[0]
                if sub_89a6e543 < s:
                    revert with 0, 17
                sub_89a6e543 -= s
                emit Burn(reserve0, s, msg.sender, arg2);
                mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 160] = reserve0
                mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 192] = 96
                mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 256] = stor8.length
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < stor8.length:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 224] = (32 * stor8.length) + 128
                _1696 = mem[(32 * stor8.length) + 128]
                mem[(98 * stor8.length) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * stor8.length) + 128]
                idx = 0
                s = (32 * stor8.length) + 160
                t = (98 * stor8.length) + (4 * ceil32(return_data.size)) + 320
                while idx < mem[(32 * stor8.length) + 128]:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (98 * stor8.length) + (4 * ceil32(return_data.size)) + (32 * _1696) + -mem[64] + 320
    else:
        mem[128 len 32 * stor8.length] = call.data[calldata.size len 32 * stor8.length]
        if stor8.length > test266151307():
            revert with 0, 65
        mem[(32 * stor8.length) + 128] = stor8.length
        mem[64] = (64 * stor8.length) + 160
        if not stor8.length:
            idx = 0
            s = ((reserve0 * diff0 * arg3) + (sub_89a6e543 * arg3) / totalSupply) - (reserve0 * diff0)
            while idx < stor8.length:
                if idx >= stor8.length:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor8[idx].field_0
                if idx >= mem[(32 * stor8.length) + 128]:
                    revert with 0, 50
                if s > sub_6c391ab0[stor8[idx].field_0]:
                    mem[(32 * idx) + (32 * stor8.length) + 160] = sub_6c391ab0[stor8[idx].field_0]
                    mem[0] = stor8[idx].field_0
                    mem[32] = 10
                    if s < sub_6c391ab0[stor8[idx].field_0]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - sub_6c391ab0[stor8[idx].field_0]
                    continue 
                mem[(32 * idx) + (32 * stor8.length) + 160] = s
                if reserve0 < arg5:
                    revert with 0, 17
                mem[(64 * stor8.length) + 164] = arg1
                mem[(64 * stor8.length) + 196] = reserve0 - arg5
                require ext_code.size(token0Address)
                call token0Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), reserve0 - arg5
                mem[(64 * stor8.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not arg5:
                    idx = 0
                    s = 0
                    while idx < stor8.length:
                        if idx >= mem[(32 * stor8.length) + 128]:
                            revert with 0, 50
                        if mem[(32 * idx) + (32 * stor8.length) + 160] <= 0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if idx >= mem[(32 * stor8.length) + 128]:
                            revert with 0, 50
                        mem[0] = idx
                        mem[32] = 10
                        if sub_6c391ab0[idx] < mem[(32 * idx) + (32 * stor8.length) + 160]:
                            revert with 0, 17
                        sub_6c391ab0[idx] -= mem[(32 * idx) + (32 * stor8.length) + 160]
                        if idx >= mem[(32 * stor8.length) + 128]:
                            revert with 0, 50
                        if s > !mem[(32 * idx) + (32 * stor8.length) + 160]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + (32 * stor8.length) + 160]
                        continue 
                    if not arg1:
                        revert with 0, 'ERC20: burn from the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'ERC20: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = 0
                    balanceOf[address(arg1)] -= arg3
                    if totalSupply < arg3:
                        revert with 0, 17
                    totalSupply -= arg3
                    emit Transfer(arg3, arg1, 0);
                    mem[(64 * stor8.length) + ceil32(return_data.size) + 164] = this.address
                    require ext_code.size(token0Address)
                    staticcall token0Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(64 * stor8.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (64 * stor8.length) + (2 * ceil32(return_data.size)) + 160
                    require return_data.size >= 32
                    reserve0 = ext_call.return_data[0]
                    if sub_89a6e543 < s:
                        revert with 0, 17
                    sub_89a6e543 -= s
                    emit Burn(reserve0, s, msg.sender, arg2);
                    mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 160] = reserve0
                    mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 192] = 96
                    mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 256] = stor8.length
                    idx = 0
                    s = 128
                    t = mem[64] + 128
                    while idx < stor8.length:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 224] = (32 * stor8.length) + 128
                    _1699 = mem[(32 * stor8.length) + 128]
                    mem[(98 * stor8.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * stor8.length) + 128]
                    idx = 0
                    s = (32 * stor8.length) + 160
                    t = (98 * stor8.length) + (2 * ceil32(return_data.size)) + 320
                    while idx < mem[(32 * stor8.length) + 128]:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (98 * stor8.length) + (2 * ceil32(return_data.size)) + (32 * _1699) + -mem[64] + 320
                mem[(64 * stor8.length) + ceil32(return_data.size) + 164] = arg4
                mem[(64 * stor8.length) + ceil32(return_data.size) + 196] = arg5
                require ext_code.size(token0Address)
                call token0Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg4), arg5
                mem[(64 * stor8.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                idx = 0
                s = 0
                while idx < stor8.length:
                    if idx >= mem[(32 * stor8.length) + 128]:
                        revert with 0, 50
                    if mem[(32 * idx) + (32 * stor8.length) + 160] <= 0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[(32 * stor8.length) + 128]:
                        revert with 0, 50
                    mem[0] = idx
                    mem[32] = 10
                    if sub_6c391ab0[idx] < mem[(32 * idx) + (32 * stor8.length) + 160]:
                        revert with 0, 17
                    sub_6c391ab0[idx] -= mem[(32 * idx) + (32 * stor8.length) + 160]
                    if idx >= mem[(32 * stor8.length) + 128]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + (32 * stor8.length) + 160]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + (32 * stor8.length) + 160]
                    continue 
                if not arg1:
                    revert with 0, 'ERC20: burn from the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 'ERC20: burn amount exceeds balance'
                mem[0] = arg1
                mem[32] = 0
                balanceOf[address(arg1)] -= arg3
                if totalSupply < arg3:
                    revert with 0, 17
                totalSupply -= arg3
                emit Transfer(arg3, arg1, 0);
                mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 164] = this.address
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (64 * stor8.length) + (4 * ceil32(return_data.size)) + 160
                require return_data.size >= 32
                reserve0 = ext_call.return_data[0]
                if sub_89a6e543 < s:
                    revert with 0, 17
                sub_89a6e543 -= s
                emit Burn(reserve0, s, msg.sender, arg2);
                mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 160] = reserve0
                mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 192] = 96
                mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 256] = stor8.length
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < stor8.length:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 224] = (32 * stor8.length) + 128
                _1700 = mem[(32 * stor8.length) + 128]
                mem[(98 * stor8.length) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * stor8.length) + 128]
                idx = 0
                s = (32 * stor8.length) + 160
                t = (98 * stor8.length) + (4 * ceil32(return_data.size)) + 320
                while idx < mem[(32 * stor8.length) + 128]:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (98 * stor8.length) + (4 * ceil32(return_data.size)) + (32 * _1700) + -mem[64] + 320
        else:
            mem[(32 * stor8.length) + 160 len 32 * stor8.length] = call.data[calldata.size len 32 * stor8.length]
            idx = 0
            s = ((reserve0 * diff0 * arg3) + (sub_89a6e543 * arg3) / totalSupply) - (reserve0 * diff0)
            while idx < stor8.length:
                if idx >= stor8.length:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor8[idx].field_0
                if idx >= mem[(32 * stor8.length) + 128]:
                    revert with 0, 50
                if s > sub_6c391ab0[stor8[idx].field_0]:
                    mem[(32 * idx) + (32 * stor8.length) + 160] = sub_6c391ab0[stor8[idx].field_0]
                    mem[0] = stor8[idx].field_0
                    mem[32] = 10
                    if s < sub_6c391ab0[stor8[idx].field_0]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - sub_6c391ab0[stor8[idx].field_0]
                    continue 
                mem[(32 * idx) + (32 * stor8.length) + 160] = s
                if reserve0 < arg5:
                    revert with 0, 17
                mem[(64 * stor8.length) + 164] = arg1
                mem[(64 * stor8.length) + 196] = reserve0 - arg5
                require ext_code.size(token0Address)
                call token0Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), reserve0 - arg5
                mem[(64 * stor8.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not arg5:
                    idx = 0
                    s = 0
                    while idx < stor8.length:
                        if idx >= mem[(32 * stor8.length) + 128]:
                            revert with 0, 50
                        if mem[(32 * idx) + (32 * stor8.length) + 160] <= 0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if idx >= mem[(32 * stor8.length) + 128]:
                            revert with 0, 50
                        mem[0] = idx
                        mem[32] = 10
                        if sub_6c391ab0[idx] < mem[(32 * idx) + (32 * stor8.length) + 160]:
                            revert with 0, 17
                        sub_6c391ab0[idx] -= mem[(32 * idx) + (32 * stor8.length) + 160]
                        if idx >= mem[(32 * stor8.length) + 128]:
                            revert with 0, 50
                        if s > !mem[(32 * idx) + (32 * stor8.length) + 160]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + (32 * stor8.length) + 160]
                        continue 
                    if not arg1:
                        revert with 0, 'ERC20: burn from the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'ERC20: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = 0
                    balanceOf[address(arg1)] -= arg3
                    if totalSupply < arg3:
                        revert with 0, 17
                    totalSupply -= arg3
                    emit Transfer(arg3, arg1, 0);
                    mem[(64 * stor8.length) + ceil32(return_data.size) + 164] = this.address
                    require ext_code.size(token0Address)
                    staticcall token0Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(64 * stor8.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (64 * stor8.length) + (2 * ceil32(return_data.size)) + 160
                    require return_data.size >= 32
                    reserve0 = ext_call.return_data[0]
                    if sub_89a6e543 < s:
                        revert with 0, 17
                    sub_89a6e543 -= s
                    emit Burn(reserve0, s, msg.sender, arg2);
                    mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 160] = reserve0
                    mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 192] = 96
                    mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 256] = stor8.length
                    idx = 0
                    s = 128
                    t = mem[64] + 128
                    while idx < stor8.length:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 224] = (32 * stor8.length) + 128
                    _1703 = mem[(32 * stor8.length) + 128]
                    mem[(98 * stor8.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * stor8.length) + 128]
                    idx = 0
                    s = (32 * stor8.length) + 160
                    t = (98 * stor8.length) + (2 * ceil32(return_data.size)) + 320
                    while idx < mem[(32 * stor8.length) + 128]:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (98 * stor8.length) + (2 * ceil32(return_data.size)) + (32 * _1703) + -mem[64] + 320
                mem[(64 * stor8.length) + ceil32(return_data.size) + 164] = arg4
                mem[(64 * stor8.length) + ceil32(return_data.size) + 196] = arg5
                require ext_code.size(token0Address)
                call token0Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg4), arg5
                mem[(64 * stor8.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                idx = 0
                s = 0
                while idx < stor8.length:
                    if idx >= mem[(32 * stor8.length) + 128]:
                        revert with 0, 50
                    if mem[(32 * idx) + (32 * stor8.length) + 160] <= 0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[(32 * stor8.length) + 128]:
                        revert with 0, 50
                    mem[0] = idx
                    mem[32] = 10
                    if sub_6c391ab0[idx] < mem[(32 * idx) + (32 * stor8.length) + 160]:
                        revert with 0, 17
                    sub_6c391ab0[idx] -= mem[(32 * idx) + (32 * stor8.length) + 160]
                    if idx >= mem[(32 * stor8.length) + 128]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + (32 * stor8.length) + 160]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + (32 * stor8.length) + 160]
                    continue 
                if not arg1:
                    revert with 0, 'ERC20: burn from the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 'ERC20: burn amount exceeds balance'
                mem[0] = arg1
                mem[32] = 0
                balanceOf[address(arg1)] -= arg3
                if totalSupply < arg3:
                    revert with 0, 17
                totalSupply -= arg3
                emit Transfer(arg3, arg1, 0);
                mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 164] = this.address
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (64 * stor8.length) + (4 * ceil32(return_data.size)) + 160
                require return_data.size >= 32
                reserve0 = ext_call.return_data[0]
                if sub_89a6e543 < s:
                    revert with 0, 17
                sub_89a6e543 -= s
                emit Burn(reserve0, s, msg.sender, arg2);
                mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 160] = reserve0
                mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 192] = 96
                mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 256] = stor8.length
                idx = 0
                s = 128
                t = (64 * stor8.length) + (4 * ceil32(return_data.size)) + 288
                while idx < stor8.length:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 224] = (32 * stor8.length) + 128
                _1704 = mem[(32 * stor8.length) + 128]
                mem[(98 * stor8.length) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * stor8.length) + 128]
                idx = 0
                s = (32 * stor8.length) + 160
                t = (98 * stor8.length) + (4 * ceil32(return_data.size)) + 320
                while idx < mem[(32 * stor8.length) + 128]:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (64 * stor8.length) + (4 * ceil32(return_data.size)) + 160
                   len (161 * stor8.length) + (32 * _1704) + 160
    if reserve0 < arg5:
        revert with 0, 17
    mem[(64 * stor8.length) + 164] = arg1
    mem[(64 * stor8.length) + 196] = reserve0 - arg5
    require ext_code.size(token0Address)
    call token0Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), reserve0 - arg5
    mem[(64 * stor8.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not arg5:
        idx = 0
        s = 0
        while idx < stor8.length:
            if idx >= mem[(32 * stor8.length) + 128]:
                revert with 0, 50
            if mem[(32 * idx) + (32 * stor8.length) + 160] <= 0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[(32 * stor8.length) + 128]:
                revert with 0, 50
            mem[0] = idx
            mem[32] = 10
            if sub_6c391ab0[idx] < mem[(32 * idx) + (32 * stor8.length) + 160]:
                revert with 0, 17
            sub_6c391ab0[idx] -= mem[(32 * idx) + (32 * stor8.length) + 160]
            if idx >= mem[(32 * stor8.length) + 128]:
                revert with 0, 50
            if s > !mem[(32 * idx) + (32 * stor8.length) + 160]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * stor8.length) + 160]
            continue 
        if not arg1:
            revert with 0, 'ERC20: burn from the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 'ERC20: burn amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if totalSupply < arg3:
            revert with 0, 17
        totalSupply -= arg3
        emit Transfer(arg3, arg1, 0);
        mem[(64 * stor8.length) + ceil32(return_data.size) + 164] = this.address
        require ext_code.size(token0Address)
        staticcall token0Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(64 * stor8.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        reserve0 = ext_call.return_data[0]
        if sub_89a6e543 < s:
            revert with 0, 17
        sub_89a6e543 -= s
        emit Burn(reserve0, s, msg.sender, arg2);
        mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 160] = reserve0
        mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 192] = 96
        mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 256] = stor8.length
        mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 288 len 32 * stor8.length] = mem[128 len 32 * stor8.length]
        mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 224] = (32 * stor8.length) + 128
        mem[(98 * stor8.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * stor8.length) + 128]
        mem[(98 * stor8.length) + (2 * ceil32(return_data.size)) + 320 len 32 * mem[(32 * stor8.length) + 128]] = mem[(32 * stor8.length) + 160 len 32 * mem[(32 * stor8.length) + 128]]
        return memory
          from (64 * stor8.length) + (2 * ceil32(return_data.size)) + 160
           len (161 * stor8.length) + (32 * mem[(32 * stor8.length) + 128]) + 160
    mem[(64 * stor8.length) + ceil32(return_data.size) + 164] = arg4
    mem[(64 * stor8.length) + ceil32(return_data.size) + 196] = arg5
    require ext_code.size(token0Address)
    call token0Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg4), arg5
    mem[(64 * stor8.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = 0
    while idx < stor8.length:
        if idx >= mem[(32 * stor8.length) + 128]:
            revert with 0, 50
        if mem[(32 * idx) + (32 * stor8.length) + 160] <= 0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[(32 * stor8.length) + 128]:
            revert with 0, 50
        mem[0] = idx
        mem[32] = 10
        if sub_6c391ab0[idx] < mem[(32 * idx) + (32 * stor8.length) + 160]:
            revert with 0, 17
        sub_6c391ab0[idx] -= mem[(32 * idx) + (32 * stor8.length) + 160]
        if idx >= mem[(32 * stor8.length) + 128]:
            revert with 0, 50
        if s > !mem[(32 * idx) + (32 * stor8.length) + 160]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * stor8.length) + 160]
        continue 
    if not arg1:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if totalSupply < arg3:
        revert with 0, 17
    totalSupply -= arg3
    emit Transfer(arg3, arg1, 0);
    mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 164] = this.address
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(64 * stor8.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    reserve0 = ext_call.return_data[0]
    if sub_89a6e543 < s:
        revert with 0, 17
    sub_89a6e543 -= s
    emit Burn(reserve0, s, msg.sender, arg2);
    mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 160] = reserve0
    mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 192] = 96
    mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 256] = stor8.length
    mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 288 len 32 * stor8.length] = mem[128 len 32 * stor8.length]
    mem[(64 * stor8.length) + (4 * ceil32(return_data.size)) + 224] = (32 * stor8.length) + 128
    mem[(98 * stor8.length) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * stor8.length) + 128]
    mem[(98 * stor8.length) + (4 * ceil32(return_data.size)) + 320 len 32 * mem[(32 * stor8.length) + 128]] = mem[(32 * stor8.length) + 160 len 32 * mem[(32 * stor8.length) + 128]]
    return memory
      from (64 * stor8.length) + (4 * ceil32(return_data.size)) + 160
       len (161 * stor8.length) + (32 * mem[(32 * stor8.length) + 128]) + 160
}



}
