contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct sub_16b3de69;
mapping of address stor99;

function sub_16b3de69(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_16b3de69[arg1[all]].field_0, uint256(sub_16b3de69[arg1[all]].field_256)
}

function owner() payable {
    return owner
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

function sub_5b8c0d6c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg2):
        revert with 0, 'Zero address'
    if arg3 > 18:
        revert with 0, 'Too many decimals'
    stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 1)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], 0) << (8 * ceil32(arg1.length)) - 256] = uint64(arg2) << 96
    uint256(sub_16b3de69[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), 0)), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 1))].field_0) = arg3
    emit 0xe9a586c9: 96, address(arg2), arg3, arg1.length, arg1[all], 0
}

function getLatestPrice(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 1
    staticcall stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] >= 0:
        emit 0xc7851f2a: ext_call.return_data[22 len 10], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96], Mask(80, 0, ext_call.return_data[128])
        if 18 < uint256(sub_16b3de69[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
            revert with 0, 17
        if not -uint256(sub_16b3de69[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) + 18:
            if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            return ext_call.return_data[32]
        if bool(bool(-uint256(sub_16b3de69[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) + 18 < 78)) or bool(bool(-uint256(sub_16b3de69[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) + 18 < 32)):
            if 10^(-uint256(sub_16b3de69[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) + 18) > -1:
                revert with 0, 17
            if ext_call.return_data[32] and 10^(-uint256(sub_16b3de69[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) + 18) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            return (ext_call.return_data[32] * 10^(-uint256(sub_16b3de69[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) + 18))
        s = 10
        t = 1
        idx = -uint256(sub_16b3de69[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) + 18
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if ext_call.return_data[32] and t * s > -1 / ext_call.return_data[32]:
            revert with 0, 17
        return (ext_call.return_data[32] * t * s)
    emit 0xc7851f2a: ext_call.return_data[22 len 10], 0, ext_call.return_data[64], ext_call.return_data[96], Mask(80, 0, ext_call.return_data[128])
    if 18 < uint256(sub_16b3de69[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
        revert with 0, 17
    if -uint256(sub_16b3de69[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) + 18:
        if bool(bool(-uint256(sub_16b3de69[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) + 18 < 78)) or bool(bool(-uint256(sub_16b3de69[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) + 18 < 32)):
            if 10^(-uint256(sub_16b3de69[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) + 18) > -1:
                revert with 0, 17
            if False and 10^(-uint256(sub_16b3de69[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) + 18) > 0:
                revert with 0, 17
        else:
            s = 10
            t = 1
            idx = -uint256(sub_16b3de69[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if False and t * s > 0:
                revert with 0, 17
        return 0
    else:
        return 0
}



}
