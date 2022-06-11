contract main {




// =====================  Runtime code  =====================


#
#  - emergencyWithdraw(address arg1, uint256 arg2)
#
uint256 stor0;
address owner;
address sub_599e092aAddress;
mapping of struct stor3;
array of struct stor4;

function sub_599e092a(?) payable {
    return sub_599e092aAddress
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

function sub_daac5ae7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_599e092aAddress = address(arg1)
}

function sub_7dbb4612(?) payable {
    require calldata.size - 4 >= 32
    staticcall sub_599e092aAddress.0x7dbb4612 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ece59939(?) payable {
    require calldata.size - 4 >= 32
    staticcall sub_599e092aAddress.0xece59939 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_73210fb1(?) payable {
    staticcall sub_599e092aAddress.0x73210fb1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
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

function sub_08f86c3e(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if stor4[arg1][address(arg2)].field_0:
        mem[212] = stor4[arg1][address(arg2)].field_0
        idx = 212
        s = 0
        while (32 * stor4[arg1][address(arg2)].field_0) + 180 > idx:
            mem[idx + 32] = stor4[arg1][address(arg2)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor4[arg1][address(arg2)].field_0, data=mem[212 len 32 * stor4[arg1][address(arg2)].field_0])
}

function sub_efc69d43(?) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 3
    mem[64] = (32 * stor3[arg1].field_256) + 128
    mem[96] = stor3[arg1].field_256
    s = 128
    idx = 0
    while idx < stor3[arg1].field_256:
        mem[0] = sha3(arg1, 3) + 1
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = stor[(2 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor3', 3)))].field_0
        mem[_12 + 32] = stor[(2 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor3', 3)))].field_256
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _14:
        _19 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_19 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _13 + (64 * _14) + -mem[64] + 64
}

function campaigns(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    staticcall sub_599e092aAddress.0x141961bc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    if not bool(ceil32(return_data.size) + 864 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[32] == ext_call.return_data[56 len 8]
    require ext_call.return_data[64] == ext_call.return_data[88 len 8]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_call.return_data[128] == ext_call.return_data[152 len 8]
    require ext_call.return_data[288] == bool(ext_call.return_data[288])
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[364 len 20]
    mem[ceil32(return_data.size) + 896] = ext_call.return_data[56 len 8]
    mem[ceil32(return_data.size) + 928] = ext_call.return_data[88 len 8]
    mem[ceil32(return_data.size) + 960] = ext_call.return_data[120 len 8]
    mem[ceil32(return_data.size) + 992] = ext_call.return_data[152 len 8]
    return ext_call.return_data[0], 
           mem[ceil32(return_data.size) + 896 len 128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224],
           ext_call.return_data[256],
           bool(ext_call.return_data[288]),
           address(stor3[arg1].field_0),
           ext_call.return_data[364 len 20]
}

function sub_cbdcbaa5(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    s = 128
    idx = cd[36] + 36
    while idx < cd[36] + (64 * ('cd', 36).length) + 36:
        require calldata.size - idx >= 64
        _17 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        mem[_17] = cd[idx]
        mem[_17 + 32] = cd[(idx + 32)]
        mem[s] = _17
        s = s + 32
        idx = idx + 64
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = cd[4]
    mem[32] = 3
    idx = 0
    s = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        _36 = mem[mem[(32 * idx) + 128] + 32]
        if s > !mem[mem[(32 * idx) + 128] + 32]:
            revert with 0, 17
        if idx:
            if idx < 1:
                revert with 0, 17
            if idx - 1 >= mem[96]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            if mem[mem[(32 * idx) + 128]] <= mem[mem[(32 * idx - 1) + 128]]:
                revert with 0, 'time is not on asc order'
        if idx >= mem[96]:
            revert with 0, 50
        stor3[cd[4]].field_256++
        mem[0] = sha3(cd[4], 3) + 1
        stor[(2 * stor3[cd[4]].field_256) + ('array', 1, ('map', ('cd', 4), ('name', 'stor3', 3)))].field_0 = mem[mem[(32 * idx) + 128]]
        stor[(2 * stor3[cd[4]].field_256) + ('array', 1, ('map', ('cd', 4), ('name', 'stor3', 3)))].field_256 = mem[mem[(32 * idx) + 128] + 32]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + _36
        continue 
    if s != 10000:
        revert with 0, 'need to add full released schedule'
}

function getUserInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    mem[96] = 0x1069f3b500000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    staticcall sub_599e092aAddress.0x1069f3b5 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    _6 = 0, mem[164 len 28]
    require 0, mem[164 len 28] <= test266151307()
    require return_data.size + 96 > 0, mem[164 len 28] + 127
    _7 = mem[0, mem[164 len 28] + 96]
    if mem[0, mem[164 len 28] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[0, mem[164 len 28] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[0, mem[164 len 28] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[0, mem[164 len 28] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + (32 * _7) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _7)] = mem[_6 + 128 len ceil32(32 * _7)]
    _33 = mem[64]
    mem[mem[64] + 32] = arg1
    mem[mem[64] + 64] = address(arg2)
    _34 = mem[64]
    mem[mem[64]] = 52
    mem[64] = mem[64] + 84
    _36 = sha3(mem[_34 + 32 len mem[_34]])
    mem[0] = sha3(mem[_34 + 32 len mem[_34]])
    mem[32] = 4
    _37 = sha3(mem[0], 4)
    if 1 > !stor4[mem[0]].field_0:
        revert with 0, 17
    if stor4[mem[0]].field_0 + 1 > test266151307():
        revert with 0, 65
    mem[_33 + 84] = stor4[mem[0]].field_0 + 1
    mem[64] = _33 + (32 * stor4[mem[0]].field_0 + 1) + 116
    if not stor4[mem[0]].field_0 + 1:
        if 0 >= stor4[mem[0]].field_0 + 1:
            revert with 0, 50
        mem[_33 + 116] = 0
        idx = 0
        while idx < stor[_37]:
            mem[32] = 4
            if idx >= stor4[_36].field_0:
                revert with 0, 50
            mem[0] = sha3(_36, 4)
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= mem[_33 + 84]:
                revert with 0, 50
            mem[(32 * idx + 1) + _33 + 116] = stor4[_36][idx].field_0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = _4
        mem[mem[64] + 32] = uint32(arg1), address(arg2) << 64
        mem[mem[64] + 64] = 96
        _59 = mem[_33 + 84]
        mem[mem[64] + 96] = mem[_33 + 84]
        mem[mem[64] + 128 len 32 * _59] = mem[_33 + 116 len 32 * _59]
        return _4, uint32(arg1), address(arg2) << 64, 96, mem[mem[64] + 96 len (32 * _59) + 32]
    mem[_33 + 116 len 32 * stor4[mem[0]].field_0 + 1] = call.data[calldata.size len 32 * stor4[mem[0]].field_0 + 1]
    if 0 >= stor4[mem[0]].field_0 + 1:
        revert with 0, 50
    mem[_33 + 116] = 0
    idx = 0
    while idx < stor[_37]:
        mem[32] = 4
        if idx >= stor4[_36].field_0:
            revert with 0, 50
        mem[0] = sha3(_36, 4)
        if 1 > !idx:
            revert with 0, 17
        if idx + 1 >= mem[_33 + 84]:
            revert with 0, 50
        mem[(32 * idx + 1) + _33 + 116] = stor4[_36][idx].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = _4
    mem[mem[64] + 32] = uint32(arg1), address(arg2) << 64
    mem[mem[64] + 64] = 96
    _61 = mem[_33 + 84]
    mem[mem[64] + 96] = mem[_33 + 84]
    mem[mem[64] + 128 len 32 * _61] = mem[_33 + 116 len 32 * _61]
    return _4, uint32(arg1), address(arg2) << 64, 96, mem[mem[64] + 96 len (32 * _61) + 32]
}

function sub_fe0ab9e0(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = 128
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 98 < 97 or ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98
    mem[ceil32(32 * ('cd', 68).length) + 97] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    s = ceil32(32 * ('cd', 68).length) + 129
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 68).length != ('cd', 100).length:
        revert with 0, 'length not match'
    mem[32] = 3
    stor3[cd[4]].field_256 = 0
    mem[0] = sha3(cd[4], 3) + 1
    idx = 0
    while 2 * stor3[cd[4]].field_256 > idx:
        stor3[cd[4]][idx + 1].field_0 = 0
        stor3[cd[4]][idx + 1].field_256 = 0
        idx = idx + 2
        continue 
    address(stor3[cd[4]].field_0) = address(cd[36])
    idx = 0
    while idx < ('cd', 68).length:
        if not idx:
            _90 = mem[64]
            mem[64] = mem[64] + 64
            if idx >= mem[96]:
                revert with 0, 50
            mem[_90] = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                revert with 0, 50
            mem[_90 + 32] = mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]
            stor3[cd[4]].field_256++
            mem[0] = sha3(cd[4], 3) + 1
            stor[(2 * stor3[cd[4]].field_256) + ('array', 1, ('map', ('cd', 4), ('name', 'stor3', 3)))].field_0 = mem[_90]
            stor[(2 * stor3[cd[4]].field_256) + ('array', 1, ('map', ('cd', 4), ('name', 'stor3', 3)))].field_256 = mem[_90 + 32]
        else:
            if idx < 1:
                revert with 0, 17
            if idx - 1 >= mem[96]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            if mem[(32 * idx) + 128] <= mem[(32 * idx - 1) + 128]:
                revert with 0, 'time is not on asc order'
            _105 = mem[64]
            mem[64] = mem[64] + 64
            if idx >= mem[96]:
                revert with 0, 50
            mem[_105] = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                revert with 0, 50
            mem[_105 + 32] = mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]
            stor3[cd[4]].field_256++
            mem[0] = sha3(cd[4], 3) + 1
            stor[(2 * stor3[cd[4]].field_256) + ('array', 1, ('map', ('cd', 4), ('name', 'stor3', 3)))].field_0 = mem[_105]
            stor[(2 * stor3[cd[4]].field_256) + ('array', 1, ('map', ('cd', 4), ('name', 'stor3', 3)))].field_256 = mem[_105 + 32]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = cd[4]
    mem[mem[64] + 32] = address(cd[36])
    mem[mem[64] + 64] = 128
    _92 = mem[96]
    mem[mem[64] + 128] = mem[96]
    mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 96] = (32 * mem[96]) + 160
    _118 = mem[ceil32(32 * ('cd', 68).length) + 97]
    mem[mem[64] + (32 * _92) + 160] = mem[ceil32(32 * ('cd', 68).length) + 97]
    mem[mem[64] + (32 * _92) + 192 len 32 * _118] = mem[ceil32(32 * ('cd', 68).length) + 129 len 32 * _118]
    emit 0x2834f2eb: cd[4], address(cd[36]), 128, mem[mem[64] + 96 len (32 * _92) + (32 * _118) + 96]
}

function claim(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[128] = arg1
    mem[160] = address(msg.sender)
    mem[96] = 52
    mem[180] = address(stor3[arg1].field_0)
    mem[64] = (32 * stor3[arg1].field_256) + 276
    mem[244] = stor3[arg1].field_256
    s = 276
    idx = 0
    while idx < stor3[arg1].field_256:
        mem[0] = sha3(arg1, 3) + 1
        _58 = mem[64]
        mem[64] = mem[64] + 64
        mem[_58] = stor[(2 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor3', 3)))].field_0
        mem[_58 + 32] = stor[(2 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor3', 3)))].field_256
        mem[s] = _58
        s = s + 32
        idx = idx + 1
        continue 
    mem[212] = 244
    mem[0] = sha3(arg1, msg.sender)
    mem[32] = 4
    mem[mem[64]] = 0x1069f3b500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = msg.sender
    staticcall sub_599e092aAddress.0x1069f3b5 with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _59 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _60 = mem[_59]
    _62 = mem[_59 + 64]
    require mem[_59 + 64] <= test266151307()
    require _59 + return_data.size > _59 + mem[_59 + 64] + 31
    _63 = mem[_59 + mem[_59 + 64]]
    if mem[_59 + mem[_59 + 64]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_59 + mem[_59 + 64]]) + 1 < 0 or _59 + ceil32(return_data.size) + ceil32(32 * mem[_59 + mem[_59 + 64]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _59 + ceil32(return_data.size) + ceil32(32 * mem[_59 + mem[_59 + 64]]) + 1
    mem[_59 + ceil32(return_data.size)] = _63
    require _62 + (32 * _63) + 32 <= return_data.size
    mem[_59 + ceil32(return_data.size) + 32 len ceil32(32 * _63)] = mem[_59 + _62 + 32 len ceil32(32 * _63)]
    if arg2 != 0:
        idx = arg2
        s = 0
        while idx <= arg3:
            if idx >= mem[244]:
                revert with 0, 50
            if block.timestamp < mem[mem[(32 * idx) + 276]]:
                revert with 0, 'not relased yet'
            mem[0] = idx
            mem[32] = sha3(sha3(arg1, msg.sender), 4) + 1
            if stor4[arg1][msg.sender][1][idx].field_0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            stor4[arg1][msg.sender].field_0++
            stor4[arg1][msg.sender][stor4[arg1][msg.sender].field_0].field_0 = idx
            mem[0] = idx
            mem[32] = sha3(sha3(arg1, msg.sender), 4) + 1
            stor4[arg1][msg.sender][1][idx].field_0 = stor4[arg1][msg.sender].field_0
            if idx >= mem[244]:
                revert with 0, 50
            if s > !mem[mem[(32 * idx) + 276] + 32]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[mem[(32 * idx) + 276] + 32]
            continue 
        if s and _60 > -1 / s:
            revert with 0, 17
        _149 = mem[180]
        if s * _60 / 10000 <= 0:
            revert with 0, 'transfer zero'
        if not mem[192 len 20]:
            call msg.sender with:
               value s * _60 / 10000 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'transfer failed'
        else:
            _163 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = s * _60 / 10000
            _164 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_163 + 100] = 32
            mem[_163 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_149)):
                revert with 0, 'Address: call to non-contract'
            _193 = mem[_164]
            mem[_163 + 164 len ceil32(mem[_164])] = mem[_164 + 32 len ceil32(mem[_164])]
            if ceil32(_193) > _193:
                mem[_193 + _163 + 164] = 0
            call address(_149) with:
                 gas gas_remaining wei
                args mem[_163 + 168 len _193 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_163 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_163 + 196] == bool(mem[_163 + 196])
                    if not mem[_163 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        idx = 1
        s = 0
        while idx <= arg3:
            if idx >= mem[244]:
                revert with 0, 50
            if block.timestamp < mem[mem[(32 * idx) + 276]]:
                revert with 0, 'not relased yet'
            mem[0] = idx
            mem[32] = sha3(sha3(arg1, msg.sender), 4) + 1
            if stor4[arg1][msg.sender][1][idx].field_0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            stor4[arg1][msg.sender].field_0++
            stor4[arg1][msg.sender][stor4[arg1][msg.sender].field_0].field_0 = idx
            mem[0] = idx
            mem[32] = sha3(sha3(arg1, msg.sender), 4) + 1
            stor4[arg1][msg.sender][1][idx].field_0 = stor4[arg1][msg.sender].field_0
            if idx >= mem[244]:
                revert with 0, 50
            if s > !mem[mem[(32 * idx) + 276] + 32]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[mem[(32 * idx) + 276] + 32]
            continue 
        if s and _60 > -1 / s:
            revert with 0, 17
        _150 = mem[180]
        if s * _60 / 10000 <= 0:
            revert with 0, 'transfer zero'
        if not mem[192 len 20]:
            call msg.sender with:
               value s * _60 / 10000 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'transfer failed'
        else:
            _169 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = s * _60 / 10000
            _170 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_169 + 100] = 32
            mem[_169 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_150)):
                revert with 0, 'Address: call to non-contract'
            _195 = mem[_170]
            mem[_169 + 164 len ceil32(mem[_170])] = mem[_170 + 32 len ceil32(mem[_170])]
            if ceil32(_195) > _195:
                mem[_195 + _169 + 164] = 0
            call address(_150) with:
                 gas gas_remaining wei
                args mem[_169 + 168 len _195 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_169 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_169 + 196] == bool(mem[_169 + 196])
                    if not mem[_169 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor0 = 1
}



}
