contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 stor2;
address sub_e82d1c88Address;
array of struct stor4;
uint256 sub_b48f9baf;
array of struct stor6;
mapping of struct users;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of struct stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986691;

function owner() payable {
    return owner
}

function Users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(users[arg1].field_0)), users[arg1].field_256
}

function sub_b48f9baf(?) payable {
    return sub_b48f9baf
}

function sub_e82d1c88(?) payable {
    return sub_e82d1c88Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    stor2 = arg1
    emit 0xfe8be007 
    emit 0x0 
    emit 0x0 
}

function unlock() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock.'
    if block.timestamp <= stor2:
        revert with 0, 'Contract is locked.'
    emit 0xfe8be007: owner, stor1
    owner = stor1
}

function sub_0179cc52(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor6.length:
        revert with 0, 50
    if stor6[arg1].field_768 == arg2:
        revert with 0, 'No Change!'
    stor6[arg1].field_768 = arg2
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    owner = arg1
}

function Withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor6.length:
        revert with 0, 50
    if arg2 > stor6[arg1].field_256:
        revert with 0, 'SM: subtraction overflow', 0
    if stor6[arg1].field_256 < arg2:
        revert with 0, 17
    stor6[arg1].field_256 -= arg2
    require ext_code.size(address(stor6[arg1].field_0))
    call address(stor6[arg1].field_0).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function Deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= stor6.length:
        revert with 0, 50
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No balance allocated for Allowance!'
    if stor6[arg1].field_256 > !arg2:
        revert with 0, 17
    if stor6[arg1].field_256 + arg2 < stor6[arg1].field_256:
        revert with 0, 'SM: addition overflow'
    stor6[arg1].field_256 += arg2
    require ext_code.size(address(stor6[arg1].field_0))
    call address(stor6[arg1].field_0).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_157a1b2d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Err: Address cannot be Zero.'
    stor6.length++
    address(stor6[stor6.length].field_0) = address(arg1)
    storF652[stor6.length] = arg2
    if bool(storF652[stor6.length].field_0):
        if bool(storF652[stor6.length].field_0) == uint255(storF652[stor6.length].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg3.length:
            stor[sha3((5 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf)][] = Array(len=arg3.length, data=arg3[all])
        else:
            storF652[stor6.length].field_0 = 0
            idx = 0
            while (uint255(storF652[stor6.length].field_0) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3((5 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf)] = 0
                idx = idx + 1
                continue 
    else:
        if bool(storF652[stor6.length].field_0) == storF652[stor6.length].field_1 % 128 < 32:
            revert with 0, 34
        if arg3.length:
            stor[sha3((5 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf)][] = Array(len=arg3.length, data=arg3[all])
        else:
            storF652[stor6.length].field_0 = 0
            idx = 0
            while storF652[stor6.length].field_1 % 128 + 31 / 32 > idx:
                stor[idx + sha3((5 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf)] = 0
                idx = idx + 1
                continue 
    storF652[stor6.length] = arg4
    storF652[stor6.length] = 0
}

function sub_e65b4da3(?) payable {
    if uint8(users[msg.sender].field_0):
        revert with 0, 'Claimed Before!'
    require ext_code.size(sub_e82d1c88Address)
    staticcall sub_e82d1c88Address.0x2940f4e3 with:
            gas gas_remaining wei
           args 0, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
    if not ext_call.return_data[64]:
        revert with 0, 'You do not have the right to this Processing!'
    if 0 >= stor6.length:
        revert with 0, 50
    require ext_code.size(address(stor6.field_0))
    call address(stor6.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, uint256(stor6.field_768)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if uint256(stor6.field_1024) > !uint256(stor6.field_768):
        revert with 0, 17
    if uint256(stor6.field_1024) + uint256(stor6.field_768) < uint256(stor6.field_1024):
        revert with 0, 'SM: addition overflow'
    uint256(stor6.field_1024) += uint256(stor6.field_768)
    if 1 >= stor6.length:
        revert with 0, 50
    require ext_code.size(address(stor6.field_1280))
    call address(stor6.field_1280).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, uint256(stor6.field_2048)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if uint256(stor6.field_2304) > !uint256(stor6.field_2048):
        revert with 0, 17
    if uint256(stor6.field_2304) + uint256(stor6.field_2048) < uint256(stor6.field_2304):
        revert with 0, 'SM: addition overflow'
    uint256(stor6.field_2304) += uint256(stor6.field_2048)
    if 2 >= stor6.length:
        revert with 0, 50
    require ext_code.size(address(stor6.field_2560))
    call address(stor6.field_2560).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, uint256(stor6.field_3328)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if uint256(stor6.field_3584) > !uint256(stor6.field_3328):
        revert with 0, 17
    if uint256(stor6.field_3584) + uint256(stor6.field_3328) < uint256(stor6.field_3584):
        revert with 0, 'SM: addition overflow'
    uint256(stor6.field_3584) += uint256(stor6.field_3328)
    uint8(users[msg.sender].field_0) = 1
    users[msg.sender].field_256 = block.timestamp
    if sub_b48f9baf > -2:
        revert with 0, 17
    sub_b48f9baf++
    return 1
}

function sub_5465bd33(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor6.length
    if bool(stor6[arg1].field_512):
        if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6[arg1].field_512):
            if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6[arg1].field_512):
                if 31 >= uint255(stor6[arg1].field_512) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor6[arg1].field_520)
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor6[arg1].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if stor6[arg1].field_513 % 128:
                if 31 >= stor6[arg1].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, stor6[arg1].field_520)
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor6[arg1].field_0), 
               stor6[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor6[arg1].field_512), data=mem[128 len ceil32(uint255(stor6[arg1].field_512) * 0.5)]),
               stor6[arg1].field_768,
               stor6[arg1].field_1024
    if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
        revert with 0, 34
    if bool(stor6[arg1].field_512):
        if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6[arg1].field_512):
            if 31 >= uint255(stor6[arg1].field_512) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_520)
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                idx = 128
                s = 0
                while (uint255(stor6[arg1].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if stor6[arg1].field_513 % 128:
            if 31 >= stor6[arg1].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_520)
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor6', 6) + 2)].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor6', 6) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor6[arg1].field_0), 
           stor6[arg1].field_256,
           Array(len=stor6[arg1].field_512 % 128, data=mem[128 len ceil32(stor6[arg1].field_513 % 128)]),
           stor6[arg1].field_768,
           stor6[arg1].field_1024
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
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        else:
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor4.length.field_1 % 128:
                if 31 < stor4.length.field_1 % 128:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
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
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    else:
        if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor4.length.field_1 % 128:
            if 31 < stor4.length.field_1 % 128:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    mem[ceil32(stor4.length.field_1 % 128) + 192 len ceil32(stor4.length.field_1 % 128)] = mem[128 len ceil32(stor4.length.field_1 % 128)]
    if ceil32(stor4.length.field_1 % 128) > stor4.length.field_1 % 128:
        mem[ceil32(stor4.length.field_1 % 128) + stor4.length.field_1 % 128 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)], mem[(2 * ceil32(stor4.length.field_1 % 128)) + 192 len 2 * ceil32(stor4.length.field_1 % 128)]), 
}



}
