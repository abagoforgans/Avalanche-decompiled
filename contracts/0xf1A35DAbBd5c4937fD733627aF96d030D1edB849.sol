contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor4;
array of struct stor5;
uint8 decimals;
mapping of struct stor7;
address sub_08dd0faaAddress;
array of address sub_3a3a5669;
uint256 sub_4d0ff2ed;
uint256 sub_c700dd77;
uint256 referral_fee;
uint256 sub_6ecdc32e;
uint256 cashback;
address sub_581caf6bAddress;
mapping of address referrers;
mapping of struct stor17;

function sub_08dd0faa(?) payable {
    return sub_08dd0faaAddress
}

function totalSupply() payable {
    return totalSupply
}

function cashback() payable {
    return cashback
}

function decimals() payable {
    return decimals
}

function sub_3a3a5669(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_3a3a5669.length
    return address(sub_3a3a5669[arg1])
}

function referrers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referrers[arg1]
}

function sub_4d0ff2ed(?) payable {
    return sub_4d0ff2ed
}

function sub_581caf6b(?) payable {
    return sub_581caf6bAddress
}

function sub_6ecdc32e(?) payable {
    return sub_6ecdc32e
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_c700dd77(?) payable {
    return sub_c700dd77
}

function referral_fee() payable {
    return referral_fee
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

function sub_0ac3303a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_08dd0faaAddress = address(arg1)
    emit 0x305a002e: address(arg1)
}

function sub_8e61f3e7(?) payable {
    require calldata.size - 4 >= 32
    if sub_08dd0faaAddress != msg.sender:
        revert with 0, 'Only JaxAdmin Contract'
    if arg1 > 30 * 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cashback percent can't be more than 30.'
    cashback = arg1
    emit 0x34c2da13: arg1
}

function sub_4eb59c15(?) payable {
    require calldata.size - 4 >= 64
    if sub_08dd0faaAddress != msg.sender:
        revert with 0, 'Only JaxAdmin Contract'
    if arg1 > 50 * 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Referral Fee percent can't be more than 50.'
    referral_fee = arg1
    sub_6ecdc32e = arg2
    emit 0x40a92512: arg1, arg2
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
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit 0xfeddf252: arg1, msg.sender, 0
}

function sub_367065de(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if sub_08dd0faaAddress != msg.sender:
        revert with 0, 'Only JaxAdmin Contract'
    if arg1 > 3 * 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tx Fee percent can't be more than 3.'
    if not address(arg3):
        revert with 0, 'Only non-zero address'
    sub_4d0ff2ed = arg1
    sub_c700dd77 = arg2
    sub_581caf6bAddress = address(arg3)
    emit 0xaa47a031: arg1, arg2, address(arg3)
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: burn amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit 0xfeddf252: arg2, arg1, 0
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    staticcall sub_08dd0faaAddress.0x52a70684 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Transactions have been frozen.'
    idx = 0
    while idx < sub_3a3a5669.length:
        mem[0] = 9
        if address(sub_3a3a5669[idx]) != msg.sender:
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_3a3a5669.length:
            revert with 0, 'Only GateKeeper can perform this action'
        staticcall sub_08dd0faaAddress.0xf9f92be4 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            revert with 0, 'account is blacklisted'
        if arg2 > stor17[msg.sender].field_0:
            revert with 0, 'Mint amount exceeds limit'
        if not arg1:
            revert with 0, 'BEP20: mint to the zero address'
        if totalSupply > !arg2:
            revert with 0, 17
        totalSupply += arg2
        if balanceOf[address(arg1)] > !arg2:
            revert with 0, 17
        balanceOf[address(arg1)] += arg2
        emit 0xfeddf252: arg2, 0, arg1
        if stor17[msg.sender].field_0 < arg2:
            revert with 0, 17
        stor17[msg.sender].field_0 -= arg2
    revert with 0, 'Only GateKeeper can perform this action'
}

function name() payable {
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
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
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
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function sub_8dd224da(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    mem[100] = msg.sender
    staticcall sub_08dd0faaAddress.0xf5af407c with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'Only AjaxPrime can perform this operation.'
    idx = 0
    while idx < sub_3a3a5669.length:
        mem[0] = 9
        if address(sub_3a3a5669[idx]) != address(arg1):
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_3a3a5669.length:
            revert with 0, 'Only GateKeeper can perform this action'
        if sha3(call.data[0 len calldata.size]) != stor7[call.func_hash].field_0:
            stor7[call.func_hash].field_320 = Mask(192, 0, msg.sender)
            mem[ceil32(return_data.size) + 96 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + ceil32(return_data.size) + 96] = 0
            stor7[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
            stor7[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor7[call.func_hash].field_256 or uint64(block.timestamp)
            mem[ceil32(return_data.size) + 96] = call.func_hash
            mem[ceil32(return_data.size) + 128] = 64
            mem[ceil32(return_data.size) + 160] = calldata.size
            mem[ceil32(return_data.size) + 192 len calldata.size] = call.data[0 len calldata.size]
            emit 0x2a5b796b: mem[ceil32(return_data.size) + 96 len calldata.size], 0, mem[ceil32(return_data.size) + calldata.size + 128 len 64], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
        else:
            if msg.sender == stor7[call.func_hash].field_320:
                if stor7[call.func_hash].field_480:
                    revert with 0, 'Already executed'
                if 48 * 24 * 3600 > !stor7[call.func_hash].field_256:
                    revert with 0, 17
                if block.timestamp < stor7[call.func_hash].field_256 + (48 * 24 * 3600):
                    revert with 0, 'Running is Locked'
                stor17[address(arg1)].field_0 = arg2
                stor17[address(arg1)].field_256 = arg3
                emit 0xb49e2247: address(arg1), arg2, arg3
                stor7[call.func_hash].field_480 = 1
            else:
                stor7[call.func_hash].field_320 = Mask(192, 0, msg.sender)
                mem[ceil32(return_data.size) + 96 len calldata.size] = call.data[0 len calldata.size]
                mem[calldata.size + ceil32(return_data.size) + 96] = 0
                stor7[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
                stor7[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor7[call.func_hash].field_256 or uint64(block.timestamp)
                mem[ceil32(return_data.size) + 96] = call.func_hash
                mem[ceil32(return_data.size) + 128] = 64
                mem[ceil32(return_data.size) + 160] = calldata.size
                mem[ceil32(return_data.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                emit 0x2a5b796b: mem[ceil32(return_data.size) + 96 len calldata.size], 0, mem[ceil32(return_data.size) + calldata.size + 128 len 64], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
    revert with 0, 'Only GateKeeper can perform this action'
}

function symbol() payable {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function sub_793659f1(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[100] = msg.sender
    staticcall sub_08dd0faaAddress.0xf5af407c with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'Only AjaxPrime can perform this operation.'
    mem[ceil32(return_data.size) + 96 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + ceil32(return_data.size) + 96] = 0
    if sha3(call.data[0 len calldata.size]) != stor7[call.func_hash].field_0:
        stor7[call.func_hash].field_320 = Mask(192, 0, msg.sender)
        mem[ceil32(return_data.size) + 96 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + ceil32(return_data.size) + 96] = 0
        stor7[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
        stor7[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor7[call.func_hash].field_256 or uint64(block.timestamp)
        mem[ceil32(return_data.size) + 96] = call.func_hash
        mem[ceil32(return_data.size) + 128] = 64
        mem[ceil32(return_data.size) + 160] = calldata.size
        mem[ceil32(return_data.size) + 192 len calldata.size] = call.data[0 len calldata.size]
        emit 0x2a5b796b: mem[ceil32(return_data.size) + 96 len calldata.size], 0, mem[ceil32(return_data.size) + calldata.size + 128 len 64], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
    else:
        if msg.sender == stor7[call.func_hash].field_320:
            if stor7[call.func_hash].field_480:
                revert with 0, 'Already executed'
            if 48 * 24 * 3600 > !stor7[call.func_hash].field_256:
                revert with 0, 17
            if block.timestamp < stor7[call.func_hash].field_256 + (48 * 24 * 3600):
                revert with 0, 'Running is Locked'
            sub_3a3a5669.length = 0
            idx = 0
            while sub_3a3a5669.length > idx:
                uint256(sub_3a3a5669[idx]) = 0
                idx = idx + 1
                continue 
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                sub_3a3a5669.length++
                mem[0] = 9
                address(sub_3a3a5669[sub_3a3a5669.length]) = address(cd[((32 * idx) + cd[4] + 36)])
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            s = ceil32(return_data.size) + 160
            t = cd[4] + 36
            while idx < ('cd', 4).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit 0x5e5c33c8: Array(len=('cd', 4).length, data=mem[ceil32(return_data.size) + 160 len 32 * ('cd', 4).length])
            stor7[call.func_hash].field_480 = 1
        else:
            stor7[call.func_hash].field_320 = Mask(192, 0, msg.sender)
            mem[ceil32(return_data.size) + 96 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + ceil32(return_data.size) + 96] = 0
            stor7[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
            stor7[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor7[call.func_hash].field_256 or uint64(block.timestamp)
            mem[ceil32(return_data.size) + 96] = call.func_hash
            mem[ceil32(return_data.size) + 128] = 64
            mem[ceil32(return_data.size) + 160] = calldata.size
            mem[ceil32(return_data.size) + 192 len calldata.size] = call.data[0 len calldata.size]
            emit 0x2a5b796b: mem[ceil32(return_data.size) + 96 len calldata.size], 0, mem[ceil32(return_data.size) + calldata.size + 128 len 64], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
}



}
