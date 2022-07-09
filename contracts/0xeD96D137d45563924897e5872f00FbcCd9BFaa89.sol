contract main {




// =====================  Runtime code  =====================


const sub_57b84f8c(?) = sha3(code.data[3987 len 9998], mem[10126 len 18] >> 79728)


address owner;
mapping of address stor1;
array of address allPairs;
array of address allTokens;
uint256 _nextId;
address sub_e30145e0Address;

function allPairs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < allPairs.length
    return allPairs[arg1]
}

function allTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < allTokens.length
    return allTokens[arg1]
}

function owner() payable {
    return owner
}

function sub_9fd2650e(?) payable {
    if _nextId < 1:
        revert with 0, 17
    if _nextId - 1 >= allTokens.length:
        revert with 0, 50
    return allTokens[stor4]
}

function sub_e30145e0(?) payable {
    return sub_e30145e0Address
}

function _nextId() payable {
    return _nextId
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

function sub_61c8f99d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e30145e0Address = address(arg1)
    emit 0x3589df28: sub_e30145e0Address, address(arg1)
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

function getPairAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    staticcall sub_e30145e0Address.0x5cb3b14f with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        return stor1[address(arg1)][address(arg2)]
    return stor1[address(arg2)][address(arg1)]
}

function sub_3a5f69f8(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if not sub_e30145e0Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only called by policyCore contract'
    if sub_e30145e0Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only called by policyCore contract'
    create2 contract with 0 wei
                    salt: sha3(address(arg1), address(arg2))
                    code: code.data[3987 len 9998]
    require ext_code.size(create2.new_address)
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(arg1)][address(arg2)] = address(create2.new_address)
    allPairs.length++
    allPairs[allPairs.length] = address(create2.new_address)
    return address(create2.new_address)
}

function sub_490d7350(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    mem[floor32(ceil32(ceil32(arg1.length)) + 5058) + 32] = 128
    mem[floor32(ceil32(ceil32(arg1.length)) + 5058) + 160] = arg1.length
    mem[floor32(ceil32(ceil32(arg1.length)) + 5058) + 192 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 4898) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    if ceil32(arg1.length) > arg1.length:
        mem[floor32(ceil32(ceil32(arg1.length)) + 5058) + arg1.length + 192] = 0
    mem[floor32(ceil32(ceil32(arg1.length)) + 5058) + 64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + floor32(ceil32(ceil32(arg1.length)) + 5058) + 192] = arg1.length
    mem[ceil32(arg1.length) + floor32(ceil32(ceil32(arg1.length)) + 5058) + 224 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 4898) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    mem[floor32(ceil32(ceil32(arg1.length)) + 5058) + 96] = sub_e30145e0Address
    mem[floor32(ceil32(ceil32(arg1.length)) + 5058) + 128] = arg2
    mem[(2 * ceil32(arg1.length)) + floor32(ceil32(ceil32(arg1.length)) + 5058) + 5154] = 0
    if ceil32(2 * ceil32(arg1.length)) + 6 > (2 * ceil32(arg1.length)) + 192:
        mem[(4 * ceil32(arg1.length)) + floor32(ceil32(ceil32(arg1.length)) + 5058) + 5346] = 0
    mem[(4 * ceil32(arg1.length)) + floor32(ceil32(ceil32(arg1.length)) + 5058) + 5346] = sha3(code.data[13985 len 4898], mem[ceil32(ceil32(arg1.length)) + 5027 len floor32(ceil32(ceil32(arg1.length)) + 5058) + -ceil32(ceil32(arg1.length)) - 5027], Mask(8 * ceil32(ceil32(arg1.length)) + -floor32(ceil32(ceil32(arg1.length)) + 5058) + 5057, -(8 * ceil32(ceil32(arg1.length)) + -floor32(ceil32(ceil32(arg1.length)) + 5058) + 5057) + 256, (2 * ceil32(arg1.length)) + 192) >> -(8 * ceil32(ceil32(arg1.length)) + -floor32(ceil32(ceil32(arg1.length)) + 5058) + 5057) + 256 >> 38928, mem[floor32(ceil32(ceil32(arg1.length)) + 5058) + 32 len ceil32(2 * ceil32(arg1.length)) + 6], mem[(2 * ceil32(arg1.length)) + floor32(ceil32(ceil32(arg1.length)) + 5058) + ceil32(2 * ceil32(arg1.length)) + 5160 len (2 * ceil32(arg1.length)) + -ceil32(2 * ceil32(arg1.length)) + 186])
    return sha3(code.data[13985 len 4898], mem[ceil32(ceil32(arg1.length)) + 5027 len floor32(ceil32(ceil32(arg1.length)) + 5058) + -ceil32(ceil32(arg1.length)) - 5027], Mask(8 * ceil32(ceil32(arg1.length)) + -floor32(ceil32(ceil32(arg1.length)) + 5058) + 5057, -(8 * ceil32(ceil32(arg1.length)) + -floor32(ceil32(ceil32(arg1.length)) + 5058) + 5057) + 256, (2 * ceil32(arg1.length)) + 192) >> -(8 * ceil32(ceil32(arg1.length)) + -floor32(ceil32(ceil32(arg1.length)) + 5058) + 5057) + 256 >> 38928, mem[floor32(ceil32(ceil32(arg1.length)) + 5058) + 32 len ceil32(2 * ceil32(arg1.length)) + 6], mem[(2 * ceil32(arg1.length)) + floor32(ceil32(ceil32(arg1.length)) + 5058) + ceil32(2 * ceil32(arg1.length)) + 5160 len (2 * ceil32(arg1.length)) + -ceil32(2 * ceil32(arg1.length)) + 186])
}

function sub_87f0061a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    if not sub_e30145e0Address:
        revert with 0, 'Only called by policyCore contract'
    if sub_e30145e0Address != msg.sender:
        revert with 0, 'Only called by policyCore contract'
    mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 32] = 128
    mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 160] = arg1.length
    mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 192 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg1.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    if ceil32(arg1.length) <= arg1.length:
        if ceil32(arg1.length) <= arg1.length:
            mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 64] = ceil32(arg1.length) + 160
            mem[ceil32(arg1.length) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 192] = arg1.length
            mem[ceil32(arg1.length) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 224 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg1.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            if ceil32(arg1.length) <= arg1.length:
                mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 96] = sub_e30145e0Address
                mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 128] = arg2
                mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090)] = (2 * ceil32(arg1.length)) + 192
                mem[(2 * ceil32(arg1.length)) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 5154] = 0
                create2 contract with 0 wei
                                salt: sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
                                code: code.data[13985 len 4898], mem[arg1.length + ceil32(ceil32(arg1.length)) + 5059 len 30] >> 38928, mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 32 len ceil32(2 * ceil32(arg1.length)) + 6], mem[(2 * ceil32(arg1.length)) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + ceil32(2 * ceil32(arg1.length)) + 5160 len (2 * ceil32(arg1.length)) + -ceil32(2 * ceil32(arg1.length)) + 186]
                require ext_code.size(create2.new_address)
                allTokens.length++
                allTokens[allTokens.length] = address(create2.new_address)
                if _nextId == -1:
                    revert with 0, 17
                _nextId++
                return address(create2.new_address)
        else:
            mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + arg1.length + 192] = 0
            mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 64] = ceil32(arg1.length) + 160
            mem[ceil32(arg1.length) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 192] = arg1.length
            mem[ceil32(arg1.length) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 224 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg1.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            if ceil32(arg1.length) > arg1.length:
                mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 96] = sub_e30145e0Address
                mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 128] = arg2
                mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090)] = (2 * ceil32(arg1.length)) + 192
                mem[(2 * ceil32(arg1.length)) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 5154] = 0
                create2 contract with 0 wei
                                salt: sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
                                code: code.data[13985 len 4898], mem[arg1.length + ceil32(ceil32(arg1.length)) + 5059 len 30] >> 38928, mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 32 len ceil32(2 * ceil32(arg1.length)) + 6], mem[(2 * ceil32(arg1.length)) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + ceil32(2 * ceil32(arg1.length)) + 5160 len (2 * ceil32(arg1.length)) + -ceil32(2 * ceil32(arg1.length)) + 186]
                require ext_code.size(create2.new_address)
                allTokens.length++
                allTokens[allTokens.length] = address(create2.new_address)
                if _nextId == -1:
                    revert with 0, 17
                _nextId++
                return address(create2.new_address)
    else:
        if ceil32(arg1.length) > arg1.length:
            mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + arg1.length + 192] = 0
        mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 64] = ceil32(arg1.length) + 160
        mem[ceil32(arg1.length) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 192] = arg1.length
        mem[ceil32(arg1.length) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 224 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg1.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 96] = sub_e30145e0Address
    mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 128] = arg2
    mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090)] = (2 * ceil32(arg1.length)) + 192
    mem[(2 * ceil32(arg1.length)) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 5154] = 0
    if ceil32(2 * ceil32(arg1.length)) + 6 > (2 * ceil32(arg1.length)) + 192:
        mem[(4 * ceil32(arg1.length)) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 5346] = 0
    create2 contract with 0 wei
                    salt: sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
                    code: code.data[13985 len 4898], mem[arg1.length + ceil32(ceil32(arg1.length)) + 5059 len 30] >> 38928, mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 32 len ceil32(2 * ceil32(arg1.length)) + 6], mem[(2 * ceil32(arg1.length)) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + ceil32(2 * ceil32(arg1.length)) + 5160 len (2 * ceil32(arg1.length)) + -ceil32(2 * ceil32(arg1.length)) + 186]
    require ext_code.size(create2.new_address)
    allTokens.length++
    allTokens[allTokens.length] = address(create2.new_address)
    if _nextId == -1:
        revert with 0, 17
    _nextId++
    mem[(4 * ceil32(arg1.length)) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 5346] = address(create2.new_address)
    return memory
      from (4 * ceil32(arg1.length)) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 5090) + 5346
       len ceil32(arg1.length) + 32
}



}
