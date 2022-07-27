contract main {




// =====================  Runtime code  =====================


address owner;
uint256 CONTRACT_VERSION;
uint256 stor2;
address stor3;
array of address sub_aa5965ae;
address tokenFactoryAddress;
address sub_e82e6b02Address;
array of struct stor7;

function CONTRACT_VERSION() {
    return CONTRACT_VERSION
}

function owner() {
    return owner
}

function sub_aa5965ae(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_aa5965ae.length
    return sub_aa5965ae[arg1]
}

function tokenFactoryAddress() {
    return tokenFactoryAddress
}

function sub_e82e6b02(?) {
    return sub_e82e6b02Address
}

function setFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setBankAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
}

function sub_1c08ac04(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e82e6b02Address = address(arg1)
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

function getInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = (32 * stor7[address(arg1)].field_0) + 128
    mem[96] = stor7[address(arg1)].field_0
    if not stor7[address(arg1)].field_0:
        mem[(32 * stor7[address(arg1)].field_0) + 128] = 96
        mem[(32 * stor7[address(arg1)].field_0) + 224] = stor7[address(arg1)].field_0
        idx = 0
        s = 128
        t = (32 * stor7[address(arg1)].field_0) + 256
        while idx < stor7[address(arg1)].field_0:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor7[address(arg1)].field_0) + 160] = stor2
        mem[(32 * stor7[address(arg1)].field_0) + 192] = stor3
        return memory
          from (32 * stor7[address(arg1)].field_0) + 128
           len (96 * stor7[address(arg1)].field_0) + 128
    mem[128] = stor7[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor7[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor7[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor7[address(arg1)].field_0) + 128] = 96
    mem[(32 * stor7[address(arg1)].field_0) + 224] = stor7[address(arg1)].field_0
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < stor7[address(arg1)].field_0:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor7[address(arg1)].field_0) + 160] = stor2
    mem[(32 * stor7[address(arg1)].field_0) + 192] = stor3
    return memory
      from mem[64]
       len (64 * stor7[address(arg1)].field_0) + -mem[64] + 256
}

function sub_58f5015e(?) payable {
    require calldata.size - 4 >= 288
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == uint8(arg3)
    require arg5 == uint8(arg5)
    require arg6 == uint8(arg6)
    require arg7 == uint8(arg7)
    require arg8 == address(arg8)
    require arg9 == address(arg9)
    if uint8(arg3) <= 0:
        revert with 0, 'Decimal amount is invalid'
    if uint8(arg3) > 24:
        revert with 0, 'Decimal amount is invalid'
    if arg4 <= 0:
        revert with 0, 'Token Supply is invalid'
    if stor2:
        if msg.value < stor2:
            revert with 0, 'Fee Amount must be >= Liquidity Token Creation Fees!'
        call stor3 with:
           value stor2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not address(arg9):
        revert with 0, 'Router Address is invalid'
    require ext_code.size(sub_e82e6b02Address)
    staticcall sub_e82e6b02Address.0x94bc9b88 with:
            gas gas_remaining wei
           args address(arg9)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Router Address is not allowed'
    if ceil32(arg1.length) <= arg1.length:
        create contract with 0 wei
                        code: code.data[3432 len 12490], msg.sender, Array(len=address(arg9), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 352, arg3 << 248, arg4, arg5 << 248, arg6 << 248, arg7 << 248, address(arg8)
    else:
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 12940] = arg2.length
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 12972 len ceil32(arg2.length)] = arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 12972] = 0
        create contract with 0 wei
                        code: code.data[3432 len 12490], msg.sender, Array(len=address(arg9), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg1.length + 12972 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 352, arg3 << 248, arg4, arg5 << 248, arg6 << 248, arg7 << 248, address(arg8)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).excludeFromFee(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_aa5965ae.length++
    sub_aa5965ae[sub_aa5965ae.length] = address(create.new_address)
    stor7[msg.sender].field_0++
    stor7[msg.sender][stor7[msg.sender].field_0].field_0 = address(create.new_address)
    require ext_code.size(tokenFactoryAddress)
    call tokenFactoryAddress.registerToken(address arg1) with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function _fallback() payable {
    require calldata.size >= 4
    if unknown_0xaa5965ae(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xaa5965ae(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 < sub_aa5965ae.length
            return sub_aa5965ae[arg1]
        if unknown_0xbe19f0a7(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return tokenFactoryAddress
        if unknown_0xe82e6b02(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return sub_e82e6b02Address
        if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not address(arg1):
                revert with 0, 'Ownable: new owner is the zero address'
            owner = address(arg1)
            emit OwnershipTransferred(owner, address(arg1));
        if unknown_0xfc3c0eee(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            stor3 = address(arg1)
        require unknown_0xffdd5cf1(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        mem[64] = (32 * stor7[address(arg1)].field_0) + 160
        mem[128] = stor7[address(arg1)].field_0
        if not stor7[address(arg1)].field_0:
            mem[(32 * stor7[address(arg1)].field_0) + 160] = 96
            mem[(32 * stor7[address(arg1)].field_0) + 256] = stor7[address(arg1)].field_0
            idx = 0
            s = 160
            t = (32 * stor7[address(arg1)].field_0) + 288
            while idx < stor7[address(arg1)].field_0:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor7[address(arg1)].field_0) + 192] = stor2
            mem[(32 * stor7[address(arg1)].field_0) + 224] = stor3
            return memory
              from (32 * stor7[address(arg1)].field_0) + 160
               len (96 * stor7[address(arg1)].field_0) + 128
        mem[0] = sha3(address(arg1), 7)
        mem[160] = stor7[address(arg1)].field_0
        idx = 160
        s = 0
        while (32 * stor7[address(arg1)].field_0) + 128 > idx:
            mem[idx + 32] = stor7[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor7[address(arg1)].field_0) + 160] = 96
        mem[(32 * stor7[address(arg1)].field_0) + 256] = stor7[address(arg1)].field_0
        idx = 0
        s = 160
        t = mem[64] + 128
        while idx < stor7[address(arg1)].field_0:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = stor2
        mem[(32 * stor7[address(arg1)].field_0) + 224] = stor3
        return memory
          from mem[64]
           len (64 * stor7[address(arg1)].field_0) + -mem[64] + 288
    if unknown_0x1c08ac04(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        sub_e82e6b02Address = address(arg1)
    if unknown_0x38b90333(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return CONTRACT_VERSION
    if unknown_0x3d18678e(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        stor2 = arg1
    if uint32(call.func_hash) >> 224 != unknown_0x58f5015e(?????):
        if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
            require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return owner
        require not msg.value
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        owner = 0
        emit OwnershipTransferred(owner, 0);
    require calldata.size - 4 >= 288
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 129 < 128 or ceil32(ceil32(arg1.length)) + 129 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 130 < 129 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == uint8(arg3)
    require arg5 == uint8(arg5)
    require arg6 == uint8(arg6)
    require arg7 == uint8(arg7)
    require arg8 == address(arg8)
    require arg9 == address(arg9)
    if uint8(arg3) <= 0:
        revert with 0, 'Decimal amount is invalid'
    if uint8(arg3) > 24:
        revert with 0, 'Decimal amount is invalid'
    if arg4 <= 0:
        revert with 0, 'Token Supply is invalid'
    if stor2:
        if msg.value < stor2:
            revert with 0, 'Fee Amount must be >= Liquidity Token Creation Fees!'
        call stor3 with:
           value stor2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not address(arg9):
        revert with 0, 'Router Address is invalid'
    require ext_code.size(sub_e82e6b02Address)
    staticcall sub_e82e6b02Address.0x94bc9b88 with:
            gas gas_remaining wei
           args address(arg9)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Router Address is not allowed'
    if ceil32(arg1.length) <= arg1.length:
        create contract with 0 wei
                        code: code.data[3432 len 12490], msg.sender, Array(len=address(arg9), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 352, arg3 << 248, arg4, arg5 << 248, arg6 << 248, arg7 << 248, address(arg8)
    else:
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 12972] = arg2.length
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 13004 len ceil32(arg2.length)] = arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 13004] = 0
        create contract with 0 wei
                        code: code.data[3432 len 12490], msg.sender, Array(len=address(arg9), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg1.length + 13004 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 352, arg3 << 248, arg4, arg5 << 248, arg6 << 248, arg7 << 248, address(arg8)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).excludeFromFee(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_aa5965ae.length++
    sub_aa5965ae[sub_aa5965ae.length] = address(create.new_address)
    stor7[msg.sender].field_0++
    stor7[msg.sender][stor7[msg.sender].field_0].field_0 = address(create.new_address)
    require ext_code.size(tokenFactoryAddress)
    call tokenFactoryAddress.registerToken(address arg1) with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
