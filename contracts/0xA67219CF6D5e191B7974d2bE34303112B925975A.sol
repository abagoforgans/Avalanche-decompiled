contract main {




// =====================  Runtime code  =====================


#
#  - sub_3725a2c4(?)
#  - sub_42c1a7a0(?)
#  - sub_6400b620(?)
#  - stake(uint24 arg1, uint104 arg2)
#  - getUserStakeWeight(uint24 arg1, address arg2, uint80 arg3)
#
address owner;
uint256 stor1;
mapping of uint128 sub_8a264bc3;
array of struct stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint256 sub_207bb15d;
array of struct sub_7fdebe86;
mapping of uint32 sub_c5cf69f6;
mapping of struct sub_c881c52a;
mapping of uint32 userCheckpointCounts;
mapping of struct userCheckpoints;
mapping of uint8 stor12;
address sub_10eb0cebAddress;
mapping of uint256 sub_b6794589;
mapping of uint8 stor16;

function sub_10eb0ceb(?) payable {
    return sub_10eb0cebAddress
}

function sub_207bb15d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1 % 16777216
    return sub_207bb15d[arg1]
}

function userCheckpoints(uint24 arg1, address arg2, uint32 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1 % 16777216
    require arg2 == arg2
    require arg3 == arg3
    return userCheckpoints[arg1][arg2][arg3].field_0, 
           userCheckpoints[arg1][arg2][arg3].field_0,
           userCheckpoints[arg1][arg2][arg3].field_256,
           userCheckpoints[arg1][arg2][arg3].field_448
}

function userCheckpointCounts(uint24 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1 % 16777216
    require arg2 == arg2
    return userCheckpointCounts[arg1][arg2]
}

function sub_3372b2ff(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1 % 16777216
    return bool(stor4[arg1])
}

function sub_7388b98d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1 % 16777216
    return bool(stor5[arg1])
}

function sub_7fdebe86(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1 % 16777216
    require arg2 < sub_7fdebe86[arg1].field_0
    return sub_7fdebe86[arg1][arg2].field_0
}

function sub_8a264bc3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1 % 16777216
    require arg2 == arg2 % 16777216
    return sub_8a264bc3[arg1][arg2]
}

function owner() payable {
    return owner
}

function sub_b6794589(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1 % 16777216
    return sub_b6794589[arg1 << 232]
}

function sub_c5cf69f6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1 % 16777216
    return sub_c5cf69f6[arg1]
}

function sub_c881c52a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1 % 16777216
    if sub_c5cf69f6[arg1 << 232] < 1:
        revert with 0, 17
    return sub_c881c52a[arg1 << 232][stor8[arg1 << 232] - 1 << 224].field_80
}

function sub_cbcab787(?) payable {
    return stor3.length % 16777216
}

function sub_df3463b0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1 % 16777216
    require arg2 == address(arg2)
    return bool(stor12[arg1][arg2])
}

function sub_eed0d0f5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1 % 16777216
    require arg2 == uint32(arg2)
    return sub_c881c52a[arg1][arg2].field_0, 
           sub_c881c52a[arg1][arg2].field_0,
           sub_c881c52a[arg1][arg2].field_256,
           sub_c881c52a[arg1][arg2].field_448
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

function sub_7cc85c30(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_10eb0cebAddress = address(arg1)
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

function sub_8724e7c8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1 % 16777216
    require arg2 == address(arg2)
    if not userCheckpointCounts[arg1 << 232][address(arg2)]:
        return 0
    if userCheckpointCounts[arg1 << 232][address(arg2)] < 1:
        revert with 0, 17
    return userCheckpoints[arg1 << 232][address(arg2)][stor10[arg1 << 232][address(arg2)] - 1 << 224].field_80
}

function sub_176e7e2d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1 % 16777216
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 % 16777216 > stor3.length:
        revert with 0, 'LP isn't exist'
    stor4[arg1 << 232] = 1
    if arg1 % 16777216 >= stor3.length:
        revert with 0, 50
    if stor3[arg1 % 16777216].field_768 < block.timestamp:
        if block.timestamp < stor3[arg1 % 16777216].field_1024:
            stor5[arg1 << 232] = 1
    emit 0xc2f84cad: arg1 % 16777216
}

function sub_225a6939(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1 % 16777216
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 % 16777216 > stor3.length:
        revert with 0, 'LP isn't exist'
    if arg3 <= arg2:
        revert with 0, 'Invalid time'
    if arg3 <= block.timestamp:
        revert with 0, 'Invalid time'
    if stor4[arg1 << 232]:
        revert with 0, 'launchpad is disabled'
    if arg1 % 16777216 >= stor3.length:
        revert with 0, 50
    if block.timestamp <= stor3[arg1 % 16777216].field_768:
        stor3[arg1 % 16777216].field_768 = arg2
    stor3[arg1 % 16777216].field_1024 = arg3
}

function sub_0a68ef25(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1 % 16777216
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 % 16777216 > stor3.length:
        revert with 0, 'LP isn't exist'
    if stor4[arg1 << 232]:
        revert with 0, 'launchpad is disabled'
    if arg1 % 16777216 >= stor3.length:
        revert with 0, 50
    require ext_code.size(sub_10eb0cebAddress)
    call sub_10eb0cebAddress.0x7af68a36 with:
         gas gas_remaining wei
        args owner, stor3[arg1 % 16777216].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor4[arg1 << 232] = 1
    if block.timestamp > stor3[arg1 % 16777216].field_768:
        if block.timestamp < stor3[arg1 % 16777216].field_1024:
            stor5[arg1 << 232] = 1
}

function sub_00eb3c87(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1 % 16777216
    require arg2 == address(arg2)
    if arg1 % 16777216 >= stor3.length:
        revert with 0, 50
    if not userCheckpointCounts[arg1 << 232][address(arg2)]:
        return 0
    if userCheckpointCounts[arg1 << 232][address(arg2)] < 1:
        revert with 0, 17
    if not stor4[arg1 << 232]:
        if stor4[arg1 << 232]:
            return 0
    else:
        if not stor12[arg1 << 232][address(arg2)]:
            return userCheckpoints[arg1 << 232][address(arg2)][stor10[arg1 << 232][address(arg2)] - 1 << 224].field_80
    if userCheckpoints[arg1 << 232][address(arg2)][stor10[arg1 << 232][address(arg2)] - 1 << 224].field_80 < stor3[arg1 % 16777216].field_1280:
        revert with 0, 17
    return Mask(104, 0, userCheckpoints[arg1 << 232][address(arg2)][stor10[arg1 << 232][address(arg2)] - 1 << 224].field_80 - stor3[arg1 % 16777216].field_1280)
}

function sub_9eb16fe2(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4] % 16777216
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if cd[4] % 16777216 > stor3.length:
        revert with 0, 'LP isn't exist'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor4[cd[4] << 232]:
        revert with 0, 'launchpad disabled'
    stor4[cd[4] << 232] = 1
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if not stor16[cd[4] << 232][mem[(32 * idx) + 140 len 20]]:
            revert with 0, '!stakers'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(cd[4] << 232, 12)
        stor12[cd[4] << 232][mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor1 = 1
}

function sub_ca7e322e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1 % 16777216
    mem[64] = (32 * sub_7fdebe86[arg1 << 232].field_0) + 128
    mem[96] = sub_7fdebe86[arg1 << 232].field_0
    if not sub_7fdebe86[arg1 << 232].field_0:
        mem[(32 * sub_7fdebe86[arg1 << 232].field_0) + 128] = 32
        mem[(32 * sub_7fdebe86[arg1 << 232].field_0) + 160] = sub_7fdebe86[arg1 << 232].field_0
        idx = 0
        s = (32 * sub_7fdebe86[arg1 << 232].field_0) + 192
        t = 128
        while idx < sub_7fdebe86[arg1 << 232].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_7fdebe86[arg1 << 232].field_0) + 128
           len (96 * sub_7fdebe86[arg1 << 232].field_0) + 64
    mem[128] = sub_7fdebe86[arg1 << 232].field_0
    idx = 128
    s = 0
    while (32 * sub_7fdebe86[arg1 << 232].field_0) + 96 > idx:
        mem[idx + 32] = sub_7fdebe86[arg1 << 232][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_7fdebe86[arg1 << 232].field_0) + 128] = 32
    mem[(32 * sub_7fdebe86[arg1 << 232].field_0) + 160] = sub_7fdebe86[arg1 << 232].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_7fdebe86[arg1 << 232].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_7fdebe86[arg1 << 232].field_0) + -mem[64] + 192
}

function sub_5be5f0bc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor3.length
    if stor3[arg1].field_0:
        if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor3[arg1].field_0:
            if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3[arg1].field_0):
                if 31 >= uint255(stor3[arg1].field_0) * 0.5:
                    mem[128] = 256 * stor3[arg1].field_8
                else:
                    mem[128] = stor3[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor3[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[(6 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
                revert with 0, 34
            if stor3[arg1].field_1:
                if 31 >= stor3[arg1].field_1:
                    mem[128] = 256 * stor3[arg1].field_8
                else:
                    mem[128] = stor3[arg1].field_0
                    idx = 128
                    s = 0
                    while stor3[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor3[(6 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor3[arg1].field_0), data=mem[128 len ceil32(uint255(stor3[arg1].field_0) * 0.5)]), 
               stor3[arg1].field_256,
               stor3[arg1].field_256,
               stor3[arg1].field_512,
               stor3[arg1].field_768,
               stor3[arg1].field_1024,
               stor3[arg1].field_1280
    if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
        revert with 0, 34
    if stor3[arg1].field_0:
        if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3[arg1].field_0):
            if 31 >= uint255(stor3[arg1].field_0) * 0.5:
                mem[128] = 256 * stor3[arg1].field_8
            else:
                mem[128] = stor3[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor3[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[(6 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
            revert with 0, 34
        if stor3[arg1].field_1:
            if 31 >= stor3[arg1].field_1:
                mem[128] = 256 * stor3[arg1].field_8
            else:
                mem[128] = stor3[arg1].field_0
                idx = 128
                s = 0
                while stor3[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor3[(6 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor3[arg1].field_0, data=mem[128 len ceil32(stor3[arg1].field_1)]), 
           stor3[arg1].field_256,
           stor3[arg1].field_256,
           stor3[arg1].field_512,
           stor3[arg1].field_768,
           stor3[arg1].field_1024,
           stor3[arg1].field_1280
}

function sub_d6e19c66(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == cd[s] % 16777216
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[32] = 14
        if sub_b6794589[mem[(32 * idx) + 157 len 3]] <= 0:
            revert with 0, 'total 0'
        if idx >= mem[96]:
            revert with 0, 50
        _232 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 157 len 3] >= stor3.length:
            revert with 0, 50
        mem[0] = 3
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor3[_232 % 16777216].field_256)
        staticcall stor3[_232 % 16777216].field_256.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _237 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[96]:
            revert with 0, 50
        if mem[_237] < sub_b6794589[mem[(32 * idx) + 157 len 3]]:
            revert with 0, 'balance !enought'
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 157 len 3]
        mem[32] = 14
        _247 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = sub_b6794589[mem[0]]
        _248 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_248 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_248 + 36 len 28]
        mem[64] = _247 + 164
        mem[_247 + 100] = 32
        mem[_247 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stor3[_232 % 16777216].field_256):
            revert with 0, 'Address: call to non-contract'
        _255 = mem[_248]
        s = 0
        while s < _255:
            mem[s + _247 + 164] = mem[s + _248 + 32]
            s = s + 32
            continue 
        if ceil32(_255) > _255:
            mem[_255 + _247 + 164] = 0
        call stor3[_232 % 16777216].field_256.mem[_247 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_247 + 168 len _255 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_247 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_247 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _247 + 232] = mem[idx + _247 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_247 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _247 + ceil32(return_data.size) + 165
            mem[_247 + 164] = return_data.size
            mem[_247 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_247 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_247 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _247 + ceil32(return_data.size) + 233] = mem[idx + _247 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_247 + ceil32(return_data.size) + 233]
            if return_data.size:
                require return_data.size >= 32
                require mem[_247 + 196] == bool(mem[_247 + 196])
                if not mem[_247 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 157 len 3]
        mem[32] = 14
        sub_b6794589[mem[(32 * idx) + 157 len 3]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor1 = 1
}

function getTotalStakeWeight(uint24 arg1, uint80 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1 % 16777216
    require arg2 == Mask(80, 0, arg2)
    if Mask(80, 0, arg2) > block.number:
        revert with 0, 'block # too high'
    if stor4[arg1 << 232]:
        return 0
    mem[64] = 224
    if sub_c5cf69f6[arg1 << 232] < 1:
        revert with 0, 17
    if sub_c881c52a[arg1 << 232][stor8[arg1 << 232] - 1 << 224].field_0 <= Mask(80, 0, arg2):
        if sub_c5cf69f6[arg1 << 232] < 1:
            revert with 0, 17
        if not sub_c881c52a[arg1 << 232][stor8[arg1 << 232] - 1 << 224].field_0:
            return 0
        if Mask(80, 0, arg2) < sub_c881c52a[arg1 << 232][stor8[arg1 << 232] - 1 << 224].field_0:
            revert with 0, 17
        if arg1 % 16777216 >= stor3.length:
            revert with 0, 50
        if stor3[arg1 % 16777216].field_416 > 0xffffffffffffffffffffffffffffffffffffffffffffffff / Mask(80, 0, Mask(80, 0, arg2) - sub_c881c52a[arg1 << 232][stor8[arg1 << 232] - 1 << 224].field_0) and Mask(80, 0, Mask(80, 0, arg2) - sub_c881c52a[arg1 << 232][stor8[arg1 << 232] - 1 << 224].field_0):
            revert with 0, 17
        if sub_c881c52a[arg1 << 232][stor8[arg1 << 232] - 1 << 224].field_80 > 0xffffffffffffffffffffffffffffffffffffffffffffffff / Mask(192, 0, stor3[arg1 % 16777216].field_416 * Mask(80, 0, Mask(80, 0, arg2) - sub_c881c52a[arg1 << 232][stor8[arg1 << 232] - 1 << 224].field_0)) and Mask(192, 0, stor3[arg1 % 16777216].field_416 * Mask(80, 0, Mask(80, 0, arg2) - sub_c881c52a[arg1 << 232][stor8[arg1 << 232] - 1 << 224].field_0)):
            revert with 0, 17
        if sub_c881c52a[arg1 << 232][stor8[arg1 << 232] - 1 << 224].field_256 > -Mask(192, 0, Mask(192, 0, sub_c881c52a[arg1 << 232][stor8[arg1 << 232] - 1 << 224].field_80 * Mask(192, 0, stor3[arg1 % 16777216].field_416 * Mask(80, 0, Mask(80, 0, arg2) - sub_c881c52a[arg1 << 232][stor8[arg1 << 232] - 1 << 224].field_0))) / 10^18) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        return Mask(192, 0, Mask(192, 0, Mask(192, 0, sub_c881c52a[arg1 << 232][stor8[arg1 << 232] - 1 << 224].field_0 * Mask(192, 0, stor3[arg1 % 16777216].field_416 * Mask(80, 0, Mask(80, 0, arg2) - sub_c881c52a[arg1 << 232][stor8[arg1 << 232] - 1 << 224].field_0))) / 10^18) + sub_c881c52a[arg1 << 232][stor8[arg1 << 232] - 1 << 224].field_256)
    if sub_c881c52a[arg1 << 232][0].field_0 > Mask(80, 0, arg2):
        return 0
    if sub_c5cf69f6[arg1 << 232] < 1:
        revert with 0, 17
    idx = 0
    while uint32(sub_c5cf69f6[arg1 << 232] - 1) > uint32(idx):
        if uint32(sub_c5cf69f6[arg1 << 232] - 1) < uint32(idx):
            revert with 0, 17
        if uint32(sub_c5cf69f6[arg1 << 232] - 1) < uint32(uint32(sub_c5cf69f6[arg1 << 232] - 1) - uint32(idx)) / 2:
            revert with 0, 17
        mem[0] = uint32(uint32(sub_c5cf69f6[arg1 << 232] - 1) - (uint32(uint32(sub_c5cf69f6[arg1 << 232] - 1) - uint32(idx)) / 2))
        mem[32] = sha3(arg1 << 232, 9)
        _70 = mem[64]
        mem[64] = mem[64] + 128
        mem[_70] = sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_0
        mem[_70 + 32] = sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_80
        mem[_70 + 64] = sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_256
        mem[_70 + 96] = sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_448
        if Mask(80, 0, arg2) != sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_0:
            if sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_0 < Mask(80, 0, arg2):
                idx = uint32(sub_c5cf69f6[arg1 << 232] - 1) - (uint32(uint32(sub_c5cf69f6[arg1 << 232] - 1) - uint32(idx)) / 2)
                continue 
            if uint32(uint32(sub_c5cf69f6[arg1 << 232] - 1) - (uint32(uint32(sub_c5cf69f6[arg1 << 232] - 1) - uint32(idx)) / 2)) < 1:
                revert with 0, 17
            idx = idx
            continue 
        if not sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_0:
            return 0
        if Mask(80, 0, arg2) < sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_0:
            revert with 0, 17
        if arg1 % 16777216 >= stor3.length:
            revert with 0, 50
        if stor3[arg1 % 16777216].field_416 > 0xffffffffffffffffffffffffffffffffffffffffffffffff / Mask(80, 0, Mask(80, 0, arg2) - sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_0) and Mask(80, 0, Mask(80, 0, arg2) - sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_0):
            revert with 0, 17
        if sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_80 > 0xffffffffffffffffffffffffffffffffffffffffffffffff / Mask(192, 0, stor3[arg1 % 16777216].field_416 * Mask(80, 0, Mask(80, 0, arg2) - sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_0)) and Mask(192, 0, stor3[arg1 % 16777216].field_416 * Mask(80, 0, Mask(80, 0, arg2) - sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_0)):
            revert with 0, 17
        if sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_256 > -Mask(192, 0, Mask(192, 0, sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_80 * Mask(192, 0, stor3[arg1 % 16777216].field_416 * Mask(80, 0, Mask(80, 0, arg2) - sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_0))) / 10^18) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        return Mask(192, 0, Mask(192, 0, Mask(192, 0, sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_80 * Mask(192, 0, stor3[arg1 % 16777216].field_416 * Mask(80, 0, Mask(80, 0, arg2) - sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_0))) / 10^18) + sub_c881c52a[arg1 << 232][uint32(stor8[arg1 << 232] - 1) - (uint32(uint32(stor8[arg1 << 232] - 1) - uint32(idx)) / 2) << 224].field_256)
    if not sub_c881c52a[arg1 << 232][idx << 224].field_0:
        return 0
    if Mask(80, 0, arg2) < sub_c881c52a[arg1 << 232][idx << 224].field_0:
        revert with 0, 17
    if arg1 % 16777216 >= stor3.length:
        revert with 0, 50
    if stor3[arg1 % 16777216].field_416 > 0xffffffffffffffffffffffffffffffffffffffffffffffff / Mask(80, 0, Mask(80, 0, arg2) - sub_c881c52a[arg1 << 232][idx << 224].field_0) and Mask(80, 0, Mask(80, 0, arg2) - sub_c881c52a[arg1 << 232][idx << 224].field_0):
        revert with 0, 17
    if sub_c881c52a[arg1 << 232][idx << 224].field_80 > 0xffffffffffffffffffffffffffffffffffffffffffffffff / Mask(192, 0, stor3[arg1 % 16777216].field_416 * Mask(80, 0, Mask(80, 0, arg2) - sub_c881c52a[arg1 << 232][idx << 224].field_0)) and Mask(192, 0, stor3[arg1 % 16777216].field_416 * Mask(80, 0, Mask(80, 0, arg2) - sub_c881c52a[arg1 << 232][idx << 224].field_0)):
        revert with 0, 17
    if sub_c881c52a[arg1 << 232][idx << 224].field_256 > -Mask(192, 0, Mask(192, 0, sub_c881c52a[arg1 << 232][idx << 224].field_80 * Mask(192, 0, stor3[arg1 % 16777216].field_416 * Mask(80, 0, Mask(80, 0, arg2) - sub_c881c52a[arg1 << 232][idx << 224].field_0))) / 10^18) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    return Mask(192, 0, Mask(192, 0, Mask(192, 0, sub_c881c52a[arg1 << 232][idx << 224].field_80 * Mask(192, 0, stor3[arg1 % 16777216].field_416 * Mask(80, 0, Mask(80, 0, arg2) - sub_c881c52a[arg1 << 232][idx << 224].field_0))) / 10^18) + sub_c881c52a[arg1 << 232][idx << 224].field_256)
}



}
