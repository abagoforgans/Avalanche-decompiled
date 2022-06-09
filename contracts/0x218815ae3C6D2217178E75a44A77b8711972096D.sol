contract main {




// =====================  Runtime code  =====================


#
#  - sub_419b42dc(?)
#  - sub_be022e71(?)
#
address owner;
array of uint256 stor1;
array of uint256 stor2;
mapping of uint8 stor3;
mapping of struct tokens;
mapping of uint8 stor5;
array of struct stor6;
mapping of uint256 sub_b3f83d7c;
mapping of uint8 stor99;

function tokens(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    return address(tokens[arg1[all]].field_0), uint256(tokens[arg1[all]].field_256), uint256(tokens[arg1[all]].field_512)
}

function uniswapV2Router() {
    return address(stor2.length)
}

function sub_2da76a99(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor5[arg1[all]])
}

function sub_5ad4b222(?) {
    return stor6.length
}

function processedNonces(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor3[arg1][arg2])
}

function owner() {
    return owner
}

function sub_b3f83d7c(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    return sub_b3f83d7c[arg1[all]][arg2]
}

function vault() {
    return address(stor1.length)
}

function _fallback() payable {
  stop
}

function setUniswapRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor2.length) = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_e999b2da(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'Balance is zero'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_29407841(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1).claim(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_ea86ef5d(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1).claimWithResolver(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_8c037845(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1).setName(string arg1) with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_2e284b92(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 7
    mem[ceil32(ceil32(arg1.length)) + 97] = uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])][arg2])
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function sub_635b5485(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 4
    mem[ceil32(ceil32(arg1.length)) + 101] = address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])])
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x9d4712cc with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg1.length)) + 101], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2efc7a94(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 5
    if not uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]):
        revert with 0, 'Token not registered with that name'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 4
    address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = address(arg2)
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    emit 0x26b201b7: sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length]), address(arg2)
}

function sub_2338c3ed(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 4
    staticcall address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Amount is more than the balance'
    call address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(stor1.length), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cf0ab3d1(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 5
    if not uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]):
        revert with 0, 'Token not registered with that name'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 4
    uint256(stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = arg2
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 4
    uint256(stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = arg3
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    emit 0x95421aeb: arg2, arg3, sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length])
}

function transferTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(arg2), arg3
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_00523d67(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 5
    if uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]):
        revert with 0, 'Token already registered with that name'
    address(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], 0) << (8 * ceil32(arg1.length)) - 256]) = uint64(arg2) << 96
    uint256(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), 0)), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))]) = arg3
    uint256(stor2[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), 0)), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))]) = arg4
    uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], 0) << (8 * ceil32(arg1.length)) - 256]) = 1
    stor6.length++
    if bool(stor6[stor6.length].field_0):
        if bool(stor6[stor6.length].field_0) == uint255(stor6[stor6.length].field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor6[stor6.length][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor6[stor6.length].field_0) = 0
            idx = 0
            while uint255(stor6[stor6.length].field_1) + 31 / 32 > idx:
                uint256(stor6[stor6.length + idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor6[stor6.length].field_0) == stor6[stor6.length].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor6[stor6.length][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor6[stor6.length].field_0) = 0
            idx = 0
            while stor6[stor6.length].field_1 % 128 + 31 / 32 > idx:
                uint256(stor6[stor6.length + idx].field_0) = 0
                idx = idx + 1
                continue 
    emit 0xd438b401: arg3, arg4, sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], 0) << (8 * arg1.length) - 256), address(arg2)
}

function registeredTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor6.length
    if bool(stor6[arg1].field_0):
        if bool(stor6[arg1].field_0) == uint255(stor6[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor6[arg1].field_0):
            if bool(stor6[arg1].field_0) == uint255(stor6[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor6[arg1].field_1):
                if 31 < uint255(stor6[arg1].field_1):
                    mem[128] = uint256(stor6[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor6[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor6[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor6[arg1].field_1)), data=mem[128 len ceil32(uint255(stor6[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
        else:
            if bool(stor6[arg1].field_0) == stor6[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor6[arg1].field_1 % 128:
                if 31 < stor6[arg1].field_1 % 128:
                    mem[128] = uint256(stor6[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor6[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor6[arg1].field_1)), data=mem[128 len ceil32(uint255(stor6[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
        mem[ceil32(uint255(stor6[arg1].field_1)) + 192 len ceil32(uint255(stor6[arg1].field_1))] = mem[128 len ceil32(uint255(stor6[arg1].field_1))]
        if ceil32(uint255(stor6[arg1].field_1)) > uint255(stor6[arg1].field_1):
            mem[ceil32(uint255(stor6[arg1].field_1)) + uint255(stor6[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor6[arg1].field_1)), data=mem[128 len ceil32(uint255(stor6[arg1].field_1))], mem[(2 * ceil32(uint255(stor6[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor6[arg1].field_1))]), 
    if bool(stor6[arg1].field_0) == stor6[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor6[arg1].field_0):
        if bool(stor6[arg1].field_0) == uint255(stor6[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor6[arg1].field_1):
            if 31 < uint255(stor6[arg1].field_1):
                mem[128] = uint256(stor6[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor6[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor6[arg1 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0 % 128, data=mem[128 len ceil32(stor6[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
    else:
        if bool(stor6[arg1].field_0) == stor6[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor6[arg1].field_1 % 128:
            if 31 < stor6[arg1].field_1 % 128:
                mem[128] = uint256(stor6[arg1].field_0)
                idx = 128
                s = 0
                while stor6[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor6[arg1 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0 % 128, data=mem[128 len ceil32(stor6[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
    mem[ceil32(stor6[arg1].field_1 % 128) + 192 len ceil32(stor6[arg1].field_1 % 128)] = mem[128 len ceil32(stor6[arg1].field_1 % 128)]
    if ceil32(stor6[arg1].field_1 % 128) > stor6[arg1].field_1 % 128:
        mem[ceil32(stor6[arg1].field_1 % 128) + stor6[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor6[arg1].field_0 % 128, data=mem[128 len ceil32(stor6[arg1].field_1 % 128)], mem[(2 * ceil32(stor6[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor6[arg1].field_1 % 128)]), 
}

function swapTokens(address arg1, address arg2, uint256 arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall address(stor2.length).WAVAX() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 == ext_call.return_data[12 len 20]:
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = arg1
        staticcall address(stor2.length).WAVAX() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 196] = address(stor2.length)
        mem[(2 * ceil32(return_data.size)) + 228] = arg3
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg3
        mem[(4 * ceil32(return_data.size)) + 228] = 0
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = (4 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(address(stor2.length))
        call address(stor2.length).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192] = arg3
        mem[(4 * ceil32(return_data.size)) + 224] = 64
        _76 = mem[ceil32(return_data.size) + 96]
        mem[(4 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = (4 * ceil32(return_data.size)) + 288
        while idx < _76:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                              arg3,
                              64,
                              mem[(4 * ceil32(return_data.size)) + 256 len (32 * _76) + 32],
    else:
        staticcall address(stor2.length).WAVAX() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg1 == ext_call.return_data[12 len 20]:
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            staticcall address(stor2.length).WAVAX() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 160] = arg2
            if block.timestamp > -301:
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 192] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = 0
            mem[(4 * ceil32(return_data.size)) + 228] = 128
            mem[(4 * ceil32(return_data.size)) + 324] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 260] = this.address
            mem[(4 * ceil32(return_data.size)) + 292] = block.timestamp + 300
            require ext_code.size(address(stor2.length))
            call address(stor2.length).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg3 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192] = arg3
            mem[(4 * ceil32(return_data.size)) + 224] = 64
            _75 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 288
            while idx < _75:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                  arg3,
                                  64,
                                  mem[(4 * ceil32(return_data.size)) + 256 len (32 * _75) + 32],
        else:
            mem[(2 * ceil32(return_data.size)) + 96] = 3
            mem[(2 * ceil32(return_data.size)) + 128] = arg1
            staticcall address(stor2.length).WAVAX() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 192] = arg2
            mem[(4 * ceil32(return_data.size)) + 228] = address(stor2.length)
            mem[(4 * ceil32(return_data.size)) + 260] = arg3
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if block.timestamp > -121:
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 228] = arg3
            mem[(4 * ceil32(return_data.size)) + 260] = 0
            mem[(4 * ceil32(return_data.size)) + 292] = 160
            mem[(4 * ceil32(return_data.size)) + 388] = 3
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 420
            while idx < mem[(2 * ceil32(return_data.size)) + 96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 324] = arg4
            mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 120
            require ext_code.size(address(stor2.length))
            call address(stor2.length).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, address(arg4), block.timestamp + 120, mem[(4 * ceil32(return_data.size)) + 388 len (32 * mem[(2 * ceil32(return_data.size)) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 224] = arg3
            mem[(4 * ceil32(return_data.size)) + 256] = 64
            _74 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 320
            while idx < _74:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                     arg3,
                                     64,
                                     mem[(4 * ceil32(return_data.size)) + 288 len (32 * _74) + 32],
}



}
