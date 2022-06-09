contract main {




// =====================  Runtime code  =====================


#
#  - sub_be022e71(?)
#  - _fallback()
#
address owner;
array of uint256 stor1;
array of uint256 stor2;
mapping of uint8 stor3;
mapping of struct tokens;
mapping of uint8 stor5;
array of struct stor6;
address feeAddress;
uint256 stor8;
uint256 stor9;
uint256 stor10;
address sub_5464f3c4Address;
mapping of uint256 sub_f7ee601c;
mapping of uint256 sub_ef67b126;
mapping of uint8 stor99;

function tokens(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
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
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor5[arg1[all]])
}

function feeAddress() {
    return feeAddress
}

function sub_5464f3c4(?) {
    return sub_5464f3c4Address
}

function sub_5ad4b222(?) {
    return stor6.length
}

function processedNonces(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return bool(stor3[arg1][arg2])
}

function owner() {
    return owner
}

function sub_ef67b126(?) {
    require calldata.size - 4 >= 32
    return sub_ef67b126[arg1]
}

function sub_f7ee601c(?) {
    require calldata.size - 4 >= 32
    return sub_f7ee601c[arg1]
}

function vault() {
    return address(stor1.length)
}

function getTotals(uint256 arg1) {
    require calldata.size - 4 >= 32
    return sub_ef67b126[arg1], sub_f7ee601c[arg1], stor10
}

function setTransferFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = arg1
}

function setFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeAddress = arg1
}

function setUniswapRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor2.length) = arg1
}

function sub_c5979a24(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5464f3c4Address = address(arg1)
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
    return ext_call.return_data[0]
}

function sub_8c037845(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1).setName(string arg1) with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_2efc7a94(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 5
    if not uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]):
        revert with 0, 'Token not registered with that name'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = address(arg2)
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    emit 0x26b201b7: sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length]), address(arg2)
}

function transferTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(arg2), arg3
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(arg2), ext_call.return_data[0]
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
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 5
    if not uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]):
        revert with 0, 'Token not registered with that name'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    uint256(stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = arg2
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    uint256(stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = arg3
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    emit 0x95421aeb: arg2, arg3, sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length])
}

function sub_00523d67(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 5
    if uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]):
        revert with 0, 'Token already registered with that name'
    address(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], 0) << (8 * ceil32(arg1.length)) - 256]) = uint64(arg2) << 96
    uint256(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), 0)), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))]) = arg3
    uint256(stor2[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), 0)), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))]) = arg4
    uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], 0) << (8 * ceil32(arg1.length)) - 256]) = 1
    stor6.length++
    if bool(stor6[stor6.length].field_0):
        if bool(stor6[stor6.length].field_0) == uint255(uint256(stor6[stor6.length].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor6[stor6.length][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor6[stor6.length].field_0) = 0
            idx = 0
            while (uint255(uint256(stor6[stor6.length].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor6[stor6.length + idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor6[stor6.length].field_0) == stor6[stor6.length].field_1 % 128 < 32:
            revert with 0, 34
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
    require arg1 < stor6.length
    if bool(stor6[arg1].field_0):
        if bool(stor6[arg1].field_0) == uint255(uint256(stor6[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6[arg1].field_0):
            if bool(stor6[arg1].field_0) == uint255(uint256(stor6[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor6[arg1].field_0)):
                if 31 < uint255(uint256(stor6[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor6[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor6[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor6[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor6[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor6[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
        else:
            if bool(stor6[arg1].field_0) == stor6[arg1].field_1 % 128 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, uint256(stor6[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor6[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
        mem[ceil32(uint255(uint256(stor6[arg1].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor6[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor6[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor6[arg1].field_0)) * 0.5) > uint255(uint256(stor6[arg1].field_0)) * 0.5:
            mem[(uint255(uint256(stor6[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(stor6[arg1].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor6[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor6[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor6[arg1].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor6[arg1].field_0)) * 0.5)]), 
    if bool(stor6[arg1].field_0) == stor6[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor6[arg1].field_0):
        if bool(stor6[arg1].field_0) == uint255(uint256(stor6[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor6[arg1].field_0)):
            if 31 < uint255(uint256(stor6[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor6[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor6[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor6[arg1 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0 % 128, data=mem[128 len ceil32(stor6[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
    else:
        if bool(stor6[arg1].field_0) == stor6[arg1].field_1 % 128 < 32:
            revert with 0, 34
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
        mem[stor6[arg1].field_1 % 128 + ceil32(stor6[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor6[arg1].field_0 % 128, data=mem[128 len ceil32(stor6[arg1].field_1 % 128)], mem[(2 * ceil32(stor6[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor6[arg1].field_1 % 128)]), 
}

function sub_1ea5a96c(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg6.length)) + 97 < 96 or ceil32(ceil32(arg6.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg6.length
    require arg6 + arg6.length + 36 <= calldata.size
    mem[128 len arg6.length] = arg6[all]
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    require arg7.length <= test266151307()
    require arg7 + arg7.length + 36 <= calldata.size
    if stor3[msg.sender][arg5]:
        revert with 0, 'transfer already processed'
    if msg.value <= 0:
        revert with 0, 'The value can not be zero'
    if msg.value <= arg4:
        revert with 0, 'Gas amount is missing'
    if arg4 and stor8 > -1 / arg4:
        revert with 0, 17
    if not stor9:
        revert with 0, 18
    mem[0] = arg5
    mem[32] = sha3(msg.sender, 3)
    stor3[msg.sender][arg5] = 1
    call feeAddress with:
       value arg4 * stor8 / stor9 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4 < arg4 * stor8 / stor9:
        revert with 0, 17
    mem[ceil32(ceil32(arg6.length)) + 97] = 2
    staticcall address(stor2.length).WAVAX() with:
            gas gas_remaining wei
    mem[ceil32(ceil32(arg6.length)) + 193] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(ceil32(arg6.length)) + 129] = ext_call.return_data[12 len 20]
    mem[ceil32(ceil32(arg6.length)) + 161] = sub_5464f3c4Address
    if block.timestamp > -301:
        revert with 0, 17
    mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 193] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 197] = 0
    mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 229] = 128
    mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 325] = 2
    idx = 0
    s = ceil32(ceil32(arg6.length)) + 129
    t = ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 357
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 261] = address(stor1.length)
    mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 293] = block.timestamp + 300
    call address(stor2.length).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg4 - (arg4 * stor8 / stor9) wei
         gas gas_remaining wei
        args 0, 128, address(stor1.length), block.timestamp + 300, 2, mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 357 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + 193
    require return_data.size >= 32
    _49 = mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 193 len 4], 0
    require mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 193 len 4], 0 <= test266151307()
    require ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 193 len 4], 0 + 224 < ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + return_data.size + 193
    _50 = mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 193 len 4], 0 + 193]
    if mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 193 len 4], 0 + 193] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 193 len 4], 0 + 193]) + 1 < 0 or ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 193 len 4], 0 + 193]) + 194 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 193 len 4], 0 + 193]) + 194
    mem[ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + 193] = _50
    require _49 + (32 * _50) + 32 <= return_data.size
    mem[ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + 225 len ceil32(32 * _50)] = mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + _49 + 225 len ceil32(32 * _50)]
    _71 = mem[64]
    mem[mem[64]] = arg4 - (arg4 * stor8 / stor9)
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = 2
    idx = 0
    s = ceil32(ceil32(arg6.length)) + 129
    t = mem[64] + 96
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit SwapETHForTokens(uint256 arg1, address[] arg2):
                          mem[mem[64] len _71 + -mem[64] + 160],
    if 1 >= mem[ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + 193]:
        revert with 0, 50
    _91 = mem[ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + 257]
    if stor10 > !(arg4 * stor8 / stor9):
        revert with 0, 17
    stor10 += arg4 * stor8 / stor9
    if sub_f7ee601c[arg2] > !mem[ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + 257]:
        revert with 0, 17
    sub_f7ee601c[arg2] += mem[ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + 257]
    if sub_ef67b126[arg2] > !arg4:
        revert with 0, 17
    mem[0] = arg2
    mem[32] = 13
    sub_ef67b126[arg2] += arg4
    emit 0x362ff5e0: arg4, arg2, msg.sender, address(arg1)
    mem[mem[64]] = msg.sender
    mem[mem[64] + 32] = address(arg1)
    mem[mem[64] + 64] = arg2
    mem[mem[64] + 96] = arg3
    mem[mem[64] + 128] = _91
    mem[mem[64] + 160] = block.timestamp
    mem[mem[64] + 192] = arg5
    mem[mem[64] + 224] = 288
    mem[mem[64] + 288] = mem[96]
    mem[mem[64] + 320 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[96] + mem[64] + 320] = 0
    mem[ceil32(mem[96]) + mem[64] + 320] = arg7.length
    mem[ceil32(mem[96]) + mem[64] + 352 len arg7.length] = arg7[all]
    mem[ceil32(mem[96]) + mem[64] + arg7.length + 352] = 0
    emit 0xf79f2920: msg.sender, address(arg1), arg2, arg3, _91, block.timestamp, arg5, Array(len=mem[96], data=mem[mem[64] + 320 len ceil32(mem[96]) + 32], arg7[all], mem[mem[64] + ceil32(mem[96]) + arg7.length + 352 len ceil32(arg7.length) - arg7.length]), ceil32(mem[96]) + 320
}

function swapTokens(address arg1, address arg2, uint256 arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
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
                revert with 0, 17
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
                revert with 0, 17
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
