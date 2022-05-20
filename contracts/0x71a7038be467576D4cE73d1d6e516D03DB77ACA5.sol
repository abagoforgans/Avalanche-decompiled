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
uint256 sub_cb4d6eb0;
address sub_4c1a0012Address;
address sub_6a78a216Address;
uint256 sub_e05c9956;
uint256 sub_ab0b9d26;
uint256 sub_2de16cf2;
mapping of struct sub_3ed2f772;
uint256 sub_1222b0f1;
array of address sub_4d2224b8;
mapping of uint256 stor18;

function sub_1222b0f1(?) payable {
    return sub_1222b0f1
}

function totalSupply() payable {
    return totalSupply
}

function sub_2de16cf2(?) payable {
    return sub_2de16cf2
}

function sub_33873913(?) payable {
    return sub_4d2224b8.length
}

function sub_3ed2f772(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3ed2f772[arg1].field_0, sub_3ed2f772[arg1].field_0, sub_3ed2f772[arg1].field_256
}

function sub_4c1a0012(?) payable {
    return sub_4c1a0012Address
}

function sub_4d2224b8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_4d2224b8.length
    return sub_4d2224b8[arg1]
}

function sub_6a78a216(?) payable {
    return sub_6a78a216Address
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_ab0b9d26(?) payable {
    return sub_ab0b9d26
}

function authorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function sub_cb4d6eb0(?) payable {
    return sub_cb4d6eb0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e05c9956(?) payable {
    return sub_e05c9956
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

function sub_1f6dc8ee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e05c9956 = arg1
}

function sub_57545a67(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ab0b9d26 = arg1
}

function sub_ce78f4d7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cb4d6eb0 = arg1
}

function sub_e070d619(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2de16cf2 = arg1
}

function addAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    stor6[address(arg1)] = 1
}

function removeAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    require arg1 != msg.sender
    stor6[address(arg1)] = 0
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

function sub_f692a738(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    if totalSupply + arg2 >= sub_cb4d6eb0:
        revert with 0, 'OVER MAX SUPPLY'
    if not address(arg1):
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, address(arg1));
    emit Minted(address(arg1), arg2);
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

function sub_1bf4d233(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'MUST BE MORE THAN 0 EGG'
    require ext_code.size(sub_6a78a216Address)
    call sub_6a78a216Address.0x1e54ad00 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 and sub_2de16cf2 > -1 / arg1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > (-1 * arg1 * sub_2de16cf2) - 1:
        revert with 'NH{q', 17
    totalSupply += arg1 * sub_2de16cf2
    if balanceOf[address(msg.sender)] > (-1 * arg1 * sub_2de16cf2) - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += arg1 * sub_2de16cf2
    emit Transfer((arg1 * sub_2de16cf2), 0, msg.sender);
    if arg1 and sub_2de16cf2 > -1 / arg1:
        revert with 'NH{q', 17
    emit 0x3710a8e3: msg.sender, arg1 * sub_2de16cf2
}

function sub_605fba67(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_3ed2f772[address(arg1)].field_0:
        revert with 0, 'NOT STAKED'
    if block.timestamp < sub_3ed2f772[address(arg1)].field_160:
        revert with 'NH{q', 17
    if block.timestamp - sub_3ed2f772[address(arg1)].field_160 and 10^10 > -1 / block.timestamp - sub_3ed2f772[address(arg1)].field_160:
        revert with 'NH{q', 17
    if sub_3ed2f772[address(arg1)].field_256 and sub_ab0b9d26 > -1 / sub_3ed2f772[address(arg1)].field_256:
        revert with 'NH{q', 17
    if sub_3ed2f772[address(arg1)].field_256 * sub_ab0b9d26 and (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(arg1)].field_160) / 24 * 3600 > -1 / sub_3ed2f772[address(arg1)].field_256 * sub_ab0b9d26:
        revert with 'NH{q', 17
    if sub_3ed2f772[address(arg1)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(arg1)].field_160) / 24 * 3600 and sub_e05c9956 > -1 / sub_3ed2f772[address(arg1)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(arg1)].field_160) / 24 * 3600:
        revert with 'NH{q', 17
    return (sub_3ed2f772[address(arg1)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(arg1)].field_0) / 24 * 3600 * sub_e05c9956 / 10^10)
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

function withdrawEgg(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'MUST BE MORE THAN 0'
    if not sub_3ed2f772[address(msg.sender)].field_0:
        revert with 0, 'NOT STAKED'
    if arg1 > sub_3ed2f772[address(msg.sender)].field_256:
        revert with 0, 'OVERDRAWN'
    if sub_3ed2f772[address(msg.sender)].field_256 < arg1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'EMPTY ADDRESS'
    if not sub_3ed2f772[address(msg.sender)].field_0:
        stor18[address(msg.sender)] = sub_4d2224b8.length
        sub_4d2224b8.length++
        sub_4d2224b8[sub_4d2224b8.length] = msg.sender
    sub_3ed2f772[address(msg.sender)].field_0 = msg.sender
    sub_3ed2f772[address(msg.sender)].field_160 = uint32(block.timestamp)
    sub_3ed2f772[address(msg.sender)].field_256 -= arg1
    if sub_1222b0f1 < sub_3ed2f772[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if sub_1222b0f1 > arg1 - 1:
        revert with 'NH{q', 17
    sub_1222b0f1 -= arg1
    emit 0x8cf522f7: msg.sender, sub_3ed2f772[address(msg.sender)].field_256 - arg1
    if arg1 and 11 > -1 / arg1:
        revert with 'NH{q', 17
    require ext_code.size(sub_6a78a216Address)
    call sub_6a78a216Address.0x75752291 with:
         gas gas_remaining wei
        args msg.sender, 11 * arg1 / 12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd63943f6: msg.sender, 11 * arg1 / 12
}

function sub_36d1f8a1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= 0:
        revert with 0, 'MUST BE MORE THAN 0 FEED'
    require ext_code.size(sub_4c1a0012Address)
    staticcall sub_4c1a0012Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'NOT OWNER'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'NOT ENOUGH FEED'
    require ext_code.size(sub_6a78a216Address)
    staticcall sub_6a78a216Address.0x43293ac5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[29 len 3]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[122 len 6]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    if ext_call.return_data[29 len 3] <= 0:
        revert with 0, 'NOT STAKED'
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, msg.sender, 0);
    emit Burned(msg.sender, arg2);
    require ext_code.size(sub_6a78a216Address)
    call sub_6a78a216Address.0x36d1f8a1 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_8506b82a(?) payable {
    if not sub_3ed2f772[address(msg.sender)].field_0:
        revert with 0, 'NOT STAKED'
    if block.timestamp < sub_3ed2f772[address(msg.sender)].field_160:
        revert with 'NH{q', 17
    if block.timestamp - sub_3ed2f772[address(msg.sender)].field_160 and 10^10 > -1 / block.timestamp - sub_3ed2f772[address(msg.sender)].field_160:
        revert with 'NH{q', 17
    if sub_3ed2f772[address(msg.sender)].field_256 and sub_ab0b9d26 > -1 / sub_3ed2f772[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 and (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 > -1 / sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26:
        revert with 'NH{q', 17
    if sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 and sub_e05c9956 > -1 / sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600:
        revert with 'NH{q', 17
    if sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10 <= 0:
        revert with 0, 'NO FEED TO CLAIM'
    if not msg.sender:
        revert with 0, 'EMPTY ADDRESS'
    if not sub_3ed2f772[address(msg.sender)].field_0:
        stor18[address(msg.sender)] = sub_4d2224b8.length
        sub_4d2224b8.length++
        sub_4d2224b8[sub_4d2224b8.length] = msg.sender
    sub_3ed2f772[address(msg.sender)].field_0 = msg.sender
    sub_3ed2f772[address(msg.sender)].field_160 = uint32(block.timestamp)
    if sub_1222b0f1 < sub_3ed2f772[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if sub_1222b0f1 > -1:
        revert with 'NH{q', 17
    emit 0x8cf522f7: msg.sender, sub_3ed2f772[address(msg.sender)].field_256
    if totalSupply > -(sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
        revert with 'NH{q', 17
    if totalSupply + (sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10) >= sub_cb4d6eb0:
        revert with 0, 'OVER MAX SUPPLY'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -(sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
        revert with 'NH{q', 17
    totalSupply += sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10
    if balanceOf[address(msg.sender)] > -(sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10
    emit Transfer((sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10), 0, msg.sender);
    emit Minted(msg.sender, sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10);
}

function sub_3e46dd1b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = arg1
    while idx <= arg2:
        if idx >= sub_4d2224b8.length:
            revert with 'NH{q', 50
        mem[0] = sub_4d2224b8[idx]
        mem[32] = 15
        _44 = mem[64]
        mem[64] = mem[64] + 96
        mem[_44] = sub_3ed2f772[stor17[idx]].field_0
        mem[_44 + 32] = sub_3ed2f772[stor17[idx]].field_160
        mem[_44 + 64] = sub_3ed2f772[stor17[idx]].field_256
        if not sub_3ed2f772[stor17[idx]].field_0:
            revert with 0, 'NOT STAKED'
        if block.timestamp < sub_3ed2f772[stor17[idx]].field_160:
            revert with 'NH{q', 17
        if block.timestamp - sub_3ed2f772[stor17[idx]].field_160 and 10^10 > -1 / block.timestamp - sub_3ed2f772[stor17[idx]].field_160:
            revert with 'NH{q', 17
        if sub_3ed2f772[stor17[idx]].field_256 and sub_ab0b9d26 > -1 / sub_3ed2f772[stor17[idx]].field_256:
            revert with 'NH{q', 17
        if sub_3ed2f772[stor17[idx]].field_256 * sub_ab0b9d26 and (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[stor17[idx]].field_160) / 24 * 3600 > -1 / sub_3ed2f772[stor17[idx]].field_256 * sub_ab0b9d26:
            revert with 'NH{q', 17
        if sub_3ed2f772[stor17[idx]].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[stor17[idx]].field_160) / 24 * 3600 and sub_e05c9956 > -1 / sub_3ed2f772[stor17[idx]].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[stor17[idx]].field_160) / 24 * 3600:
            revert with 'NH{q', 17
        mem[0] = sub_4d2224b8[idx]
        mem[32] = 15
        _51 = mem[64]
        mem[64] = mem[64] + 96
        mem[_51] = sub_3ed2f772[stor17[idx]].field_0
        mem[_51 + 32] = sub_3ed2f772[stor17[idx]].field_160
        mem[_51 + 64] = sub_3ed2f772[stor17[idx]].field_256
        if not sub_4d2224b8[idx]:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > -(sub_3ed2f772[stor17[idx]].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[stor17[idx]].field_160) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
            revert with 'NH{q', 17
        totalSupply += sub_3ed2f772[stor17[idx]].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[stor17[idx]].field_160) / 24 * 3600 * sub_e05c9956 / 10^10
        mem[0] = sub_4d2224b8[idx]
        if balanceOf[stor17[idx]] > -(sub_3ed2f772[stor17[idx]].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[stor17[idx]].field_160) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
            revert with 'NH{q', 17
        balanceOf[stor17[idx]] += sub_3ed2f772[stor17[idx]].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[stor17[idx]].field_160) / 24 * 3600 * sub_e05c9956 / 10^10
        emit Transfer((sub_3ed2f772[stor17[idx]].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[stor17[idx]].field_160) / 24 * 3600 * sub_e05c9956 / 10^10), 0, sub_4d2224b8[idx]);
        mem[mem[64] + 32] = sub_3ed2f772[stor17[idx]].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[stor17[idx]].field_160) / 24 * 3600 * sub_e05c9956 / 10^10
        emit Minted(sub_4d2224b8[idx], sub_3ed2f772[stor17[idx]].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[stor17[idx]].field_160) / 24 * 3600 * sub_e05c9956 / 10^10);
        if not sub_4d2224b8[idx]:
            revert with 0, 'EMPTY ADDRESS'
        mem[0] = sub_4d2224b8[idx]
        mem[32] = 15
        _61 = mem[64]
        mem[64] = mem[64] + 96
        mem[_61] = sub_3ed2f772[stor17[idx]].field_0
        mem[_61 + 32] = sub_3ed2f772[stor17[idx]].field_160
        if not sub_3ed2f772[stor17[idx]].field_0:
            mem[32] = 18
            stor18[stor17[idx]] = sub_4d2224b8.length
            sub_4d2224b8.length++
            mem[0] = 17
            sub_4d2224b8[sub_4d2224b8.length] = sub_4d2224b8[idx]
        mem[_61] = sub_4d2224b8[idx]
        mem[_61 + 64] = sub_3ed2f772[stor17[idx]].field_256
        mem[_61 + 32] = uint32(block.timestamp)
        mem[0] = sub_4d2224b8[idx]
        mem[32] = 15
        sub_3ed2f772[stor17[idx]].field_0 = sub_4d2224b8[idx]
        sub_3ed2f772[stor17[idx]].field_160 = uint32(block.timestamp)
        if sub_1222b0f1 < sub_3ed2f772[stor17[idx]].field_256:
            revert with 'NH{q', 17
        if sub_1222b0f1 > -1:
            revert with 'NH{q', 17
        mem[mem[64]] = sub_4d2224b8[idx]
        mem[mem[64] + 32] = sub_3ed2f772[stor17[idx]].field_256
        emit 0x8cf522f7: sub_4d2224b8[idx], sub_3ed2f772[stor17[idx]].field_256
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_88c00a58(?) payable {
    if not sub_3ed2f772[address(msg.sender)].field_0:
        revert with 0, 'NOT STAKED'
    if not sub_3ed2f772[address(msg.sender)].field_0:
        revert with 0, 'NOT STAKED'
    if block.timestamp < sub_3ed2f772[address(msg.sender)].field_160:
        revert with 'NH{q', 17
    if block.timestamp - sub_3ed2f772[address(msg.sender)].field_160 and 10^10 > -1 / block.timestamp - sub_3ed2f772[address(msg.sender)].field_160:
        revert with 'NH{q', 17
    if sub_3ed2f772[address(msg.sender)].field_256 and sub_ab0b9d26 > -1 / sub_3ed2f772[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 and (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 > -1 / sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26:
        revert with 'NH{q', 17
    if sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 and sub_e05c9956 > -1 / sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600:
        revert with 'NH{q', 17
    if sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10 > 0:
        if totalSupply > -(sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
            revert with 'NH{q', 17
        if totalSupply + (sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10) >= sub_cb4d6eb0:
            revert with 0, 'OVER MAX SUPPLY'
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > -(sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
            revert with 'NH{q', 17
        totalSupply += sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10
        if balanceOf[address(msg.sender)] > -(sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] += sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10
        emit Transfer((sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10), 0, msg.sender);
        emit Minted(msg.sender, sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10);
    if sub_3ed2f772[address(msg.sender)].field_256 > 0:
        if sub_3ed2f772[address(msg.sender)].field_256 and 11 > -1 / sub_3ed2f772[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        require ext_code.size(sub_6a78a216Address)
        call sub_6a78a216Address.0x75752291 with:
             gas gas_remaining wei
            args msg.sender, 11 * sub_3ed2f772[address(msg.sender)].field_256 / 12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xd63943f6: msg.sender, 11 * sub_3ed2f772[address(msg.sender)].field_256 / 12
    if not sub_3ed2f772[address(msg.sender)].field_0:
        revert with 0, 'EMPTY ADDRESS'
    if sub_1222b0f1 < sub_3ed2f772[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    sub_1222b0f1 -= sub_3ed2f772[address(msg.sender)].field_256
    if sub_4d2224b8.length < 1:
        revert with 'NH{q', 17
    if sub_4d2224b8.length - 1 >= sub_4d2224b8.length:
        revert with 'NH{q', 50
    if stor18[address(msg.sender)] >= sub_4d2224b8.length:
        revert with 'NH{q', 50
    sub_4d2224b8[stor18[address(msg.sender)]] = sub_4d2224b8[sub_4d2224b8.length]
    stor18[stor17[stor17.length]] = stor18[address(msg.sender)]
    stor18[address(msg.sender)] = 0
    if not sub_4d2224b8.length:
        revert with 'NH{q', 49
    sub_4d2224b8[sub_4d2224b8.length] = 0
    sub_4d2224b8.length--
    sub_3ed2f772[address(msg.sender)].field_0 = 0
    sub_3ed2f772[address(msg.sender)].field_160 = 0
    sub_3ed2f772[address(msg.sender)].field_256 = 0
    emit 0x18dd719d: msg.sender, sub_3ed2f772[address(msg.sender)].field_256
}

function staking(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'NEED EGG'
    require ext_code.size(sub_6a78a216Address)
    staticcall sub_6a78a216Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'NOT ENOUGH EGG'
    if sub_3ed2f772[address(msg.sender)].field_256 <= 0:
        if not msg.sender:
            revert with 0, 'EMPTY ADDRESS'
        if not sub_3ed2f772[address(msg.sender)].field_0:
            stor18[address(msg.sender)] = sub_4d2224b8.length
            sub_4d2224b8.length++
            sub_4d2224b8[sub_4d2224b8.length] = msg.sender
        sub_3ed2f772[address(msg.sender)].field_0 = msg.sender
        sub_3ed2f772[address(msg.sender)].field_160 = uint32(block.timestamp)
        sub_3ed2f772[address(msg.sender)].field_256 = arg1
        if sub_1222b0f1 < sub_3ed2f772[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if sub_1222b0f1 - sub_3ed2f772[address(msg.sender)].field_256 > -arg1 - 1:
            revert with 'NH{q', 17
        sub_1222b0f1 = sub_1222b0f1 - sub_3ed2f772[address(msg.sender)].field_256 + arg1
        emit 0x8cf522f7: msg.sender, arg1
    else:
        if not sub_3ed2f772[address(msg.sender)].field_0:
            revert with 0, 'NOT STAKED'
        if block.timestamp < sub_3ed2f772[address(msg.sender)].field_160:
            revert with 'NH{q', 17
        if block.timestamp - sub_3ed2f772[address(msg.sender)].field_160 and 10^10 > -1 / block.timestamp - sub_3ed2f772[address(msg.sender)].field_160:
            revert with 'NH{q', 17
        if sub_3ed2f772[address(msg.sender)].field_256 and sub_ab0b9d26 > -1 / sub_3ed2f772[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 and (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 > -1 / sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26:
            revert with 'NH{q', 17
        if sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 and sub_e05c9956 > -1 / sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600:
            revert with 'NH{q', 17
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > -(sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
            revert with 'NH{q', 17
        totalSupply += sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10
        if balanceOf[address(msg.sender)] > -(sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] += sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10
        emit Transfer((sub_3ed2f772[address(msg.sender)].field_256 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * sub_3ed2f772[address(msg.sender)].field_160) / 24 * 3600 * sub_e05c9956 / 10^10), 0, msg.sender);
        emit Minted(msg.sender, arg1);
        if sub_3ed2f772[address(msg.sender)].field_256 > -arg1 - 1:
            revert with 'NH{q', 17
        if not msg.sender:
            revert with 0, 'EMPTY ADDRESS'
        if not sub_3ed2f772[address(msg.sender)].field_0:
            stor18[address(msg.sender)] = sub_4d2224b8.length
            sub_4d2224b8.length++
            sub_4d2224b8[sub_4d2224b8.length] = msg.sender
        sub_3ed2f772[address(msg.sender)].field_0 = msg.sender
        sub_3ed2f772[address(msg.sender)].field_160 = uint32(block.timestamp)
        sub_3ed2f772[address(msg.sender)].field_256 += arg1
        if sub_1222b0f1 < sub_3ed2f772[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if sub_1222b0f1 > -arg1 - 1:
            revert with 'NH{q', 17
        sub_1222b0f1 += arg1
        emit 0x8cf522f7: msg.sender, sub_3ed2f772[address(msg.sender)].field_256 + arg1
    require ext_code.size(sub_6a78a216Address)
    call sub_6a78a216Address.0x1e54ad00 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x5cf496bc: msg.sender, arg1
}



}
