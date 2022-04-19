contract main {




// =====================  Runtime code  =====================


#
#  - sub_02c17fe7(?)
#
address owner;
address stor1;
address stor2;
mapping of address stor3;
array of struct stor4;
mapping of address stor5;
mapping of uint256 stor6;
uint256 addressLength;
address stor5B8C;

function owner() payable {
    return owner
}

function addressLength() payable {
    return addressLength
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_44bc7d97(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor3[msg.sender]:
        revert with 0, 'Caller not in whiteList'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        if not stor6[address(cd[((32 * idx) + cd[4] + 36)])]:
            mem[0] = 0
            mem[32] = 5
            if stor5B8C != address(cd[((32 * idx) + cd[4] + 36)]):
                stor5[stor7] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 6
                stor6[address(cd[((32 * idx) + cd[4] + 36)])] = addressLength
                if addressLength == -1:
                    revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_911487a6(?) payable {
    if not stor3[msg.sender]:
        revert with 0, 'Caller not in whiteList'
    mem[64] = (32 * stor4.length) + 128
    mem[96] = stor4.length
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = 32
        mem[(32 * stor4.length) + 160] = stor4.length
        idx = 0
        s = 128
        t = (32 * stor4.length) + 192
        while idx < stor4.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor4.length) + 128
           len (96 * stor4.length) + 64
    mem[128] = address(stor4.field_0)
    idx = 128
    s = 0
    while (32 * stor4.length) + 96 > idx:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4.length) + 128] = 32
    mem[(32 * stor4.length) + 160] = stor4.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor4.length) + -mem[64] + 192
}

function sub_11a58bd2(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        if stor6[address(cd[((32 * idx) + cd[4] + 36)])]:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor6[address(cd[((32 * idx) + cd[4] + 36)])]
        else:
            mem[0] = 0
            mem[32] = 5
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            if stor5B8C == address(cd[((32 * idx) + cd[4] + 36)]):
                mem[(32 * idx) + 128] = stor6[address(cd[((32 * idx) + cd[4] + 36)])]
            else:
                mem[(32 * idx) + 128] = -1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
}

function removeAddresses(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not stor3[msg.sender]:
        revert with 0, 'Caller not in whiteList'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if stor6[address(cd[((32 * idx) + arg1 + 36)])]:
            stor6[address(cd[((32 * idx) + arg1 + 36)])] = 0
            if not addressLength:
                revert with 'NH{q', 17
            if stor6[address(cd[((32 * idx) + arg1 + 36)])] == addressLength - 1:
                mem[0] = addressLength - 1
                mem[32] = 5
                stor5[stor7 - 1] = 0
            else:
                stor5[stor6[address(cd[((32 * idx) + arg1 + 36)])]] = stor5[stor7 - 1]
                mem[0] = stor5[stor7 - 1]
                mem[32] = 6
                stor6[stor5[stor7 - 1]] = stor6[address(cd[((32 * idx) + arg1 + 36)])]
        else:
            mem[0] = 0
            mem[32] = 5
            if stor5B8C == address(cd[((32 * idx) + arg1 + 36)]):
                stor6[address(cd[((32 * idx) + arg1 + 36)])] = 0
                if not addressLength:
                    revert with 'NH{q', 17
                if stor6[address(cd[((32 * idx) + arg1 + 36)])] == addressLength - 1:
                    mem[0] = addressLength - 1
                    mem[32] = 5
                    stor5[stor7 - 1] = 0
                else:
                    stor5[stor6[address(cd[((32 * idx) + arg1 + 36)])]] = stor5[stor7 - 1]
                    mem[0] = stor5[stor7 - 1]
                    mem[32] = 6
                    stor6[stor5[stor7 - 1]] = stor6[address(cd[((32 * idx) + arg1 + 36)])]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_cabb9212(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stor4.length:
        mem[0] = stor4[idx].field_0
        mem[32] = 3
        stor3[stor4[idx].field_0] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor4.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor4[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_cfd330bf(?) payable {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 'NH{q', 17
    if 1 > !(arg2 - arg1):
        revert with 'NH{q', 17
    if arg2 + -arg1 + 1 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2 + -arg1 + 1
    mem[64] = (32 * arg2 + -arg1 + 1) + 128
    if not arg2 + -arg1 + 1:
        idx = arg1
        while idx <= arg2:
            mem[0] = idx
            mem[32] = 5
            if idx < arg1:
                revert with 'NH{q', 17
            if idx - arg1 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx - arg1) + 128] = stor5[idx]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[(32 * arg2 + -arg1 + 1) + 128] = 32
        _18 = mem[96]
        mem[(32 * arg2 + -arg1 + 1) + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _18:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (32 * arg2 + -arg1 + 1) + (32 * _18) + -mem[64] + 192
    mem[128 len 32 * arg2 + -arg1 + 1] = call.data[calldata.size len 32 * arg2 + -arg1 + 1]
    idx = arg1
    while idx <= arg2:
        mem[0] = idx
        mem[32] = 5
        if idx < arg1:
            revert with 'NH{q', 17
        if idx - arg1 >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx - arg1) + 128] = stor5[idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * arg2 + -arg1 + 1) + 128] = 32
    _20 = mem[96]
    mem[(32 * arg2 + -arg1 + 1) + 160] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _20:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * arg2 + -arg1 + 1) + (32 * _20) + -mem[64] + 192
}

function sub_7c1f8560(?) payable {
    require ext_code.size(stor2)
    staticcall stor2.getAssetPrice(address rg1) with:
            gas gas_remaining wei
           args 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.getAssetPrice(address rg1) with:
            gas gas_remaining wei
           args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.getAssetPrice(address rg1) with:
            gas gas_remaining wei
           args 0xc7198437980c041c805a1edcba50c1ce5db95118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.getAssetPrice(address rg1) with:
            gas gas_remaining wei
           args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.getAssetPrice(address rg1) with:
            gas gas_remaining wei
           args 0x63a72806098bd3d9520cc43356dd78afe5d386d9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.getAssetPrice(address rg1) with:
            gas gas_remaining wei
           args 0x50b7545627a5162f82a992c33b87adc75187b218
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.getAssetPrice(address rg1) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           0
}

function sub_d634959b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(stor1)
            staticcall stor1.getUserAccountData(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _111 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _117 = mem[_111]
            _118 = mem[_111 + 32]
            _120 = mem[_111 + 96]
            _122 = mem[_111 + 160]
            _125 = mem[64]
            mem[64] = mem[64] + 128
            mem[_125] = _117
            mem[_125 + 32] = _118
            mem[_125 + 64] = _120
            mem[_125 + 96] = _122
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _125
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _99 = mem[64]
        mem[mem[64]] = 32
        _103 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _103:
            _142 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_142 + 32]
            mem[t + 64] = mem[_142 + 64]
            mem[t + 96] = mem[_142 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _99 + (128 * _103) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 257
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
    mem[var22002] = var22001
    if not var22003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(stor1)
            staticcall stor1.getUserAccountData(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _209 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _216 = mem[_209]
            _217 = mem[_209 + 32]
            _219 = mem[_209 + 96]
            _221 = mem[_209 + 160]
            _222 = mem[64]
            mem[64] = mem[64] + 128
            mem[_222] = _216
            mem[_222 + 32] = _217
            mem[_222 + 64] = _219
            mem[_222 + 96] = _221
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _222
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _197 = mem[64]
        mem[mem[64]] = 32
        _200 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _200:
            _240 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_240 + 32]
            mem[t + 64] = mem[_240 + 64]
            mem[t + 96] = mem[_240 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _197 + (128 * _200) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 385
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 321] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
    mem[var26002] = var26001
    if not var26003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(stor1)
            staticcall stor1.getUserAccountData(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _306 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _313 = mem[_306]
            _314 = mem[_306 + 32]
            _316 = mem[_306 + 96]
            _318 = mem[_306 + 160]
            _319 = mem[64]
            mem[64] = mem[64] + 128
            mem[_319] = _313
            mem[_319 + 32] = _314
            mem[_319 + 64] = _316
            mem[_319 + 96] = _318
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _319
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _294 = mem[64]
        mem[mem[64]] = 32
        _297 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _297:
            _337 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_337 + 32]
            mem[t + 64] = mem[_337 + 64]
            mem[t + 96] = mem[_337 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _294 + (128 * _297) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 513
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 481] = 0
    mem[var30002] = var30001
    if not var30003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(stor1)
            staticcall stor1.getUserAccountData(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _403 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _410 = mem[_403]
            _411 = mem[_403 + 32]
            _413 = mem[_403 + 96]
            _415 = mem[_403 + 160]
            _416 = mem[64]
            mem[64] = mem[64] + 128
            mem[_416] = _410
            mem[_416 + 32] = _411
            mem[_416 + 64] = _413
            mem[_416 + 96] = _415
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _416
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _391 = mem[64]
        mem[mem[64]] = 32
        _394 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _394:
            _434 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_434 + 32]
            mem[t + 64] = mem[_434 + 64]
            mem[t + 96] = mem[_434 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _391 + (128 * _394) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 641
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 513] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 545] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 577] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 609] = 0
    mem[var34002] = var34001
    if not var34003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(stor1)
            staticcall stor1.getUserAccountData(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _500 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _507 = mem[_500]
            _508 = mem[_500 + 32]
            _510 = mem[_500 + 96]
            _512 = mem[_500 + 160]
            _513 = mem[64]
            mem[64] = mem[64] + 128
            mem[_513] = _507
            mem[_513 + 32] = _508
            mem[_513 + 64] = _510
            mem[_513 + 96] = _512
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _513
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _488 = mem[64]
        mem[mem[64]] = 32
        _491 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _491:
            _531 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_531 + 32]
            mem[t + 64] = mem[_531 + 64]
            mem[t + 96] = mem[_531 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _488 + (128 * _491) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 769
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 641] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 673] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 705] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 737] = 0
    mem[var38002] = var38001
    if not var38003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(stor1)
            staticcall stor1.getUserAccountData(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _597 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _604 = mem[_597]
            _605 = mem[_597 + 32]
            _607 = mem[_597 + 96]
            _609 = mem[_597 + 160]
            _610 = mem[64]
            mem[64] = mem[64] + 128
            mem[_610] = _604
            mem[_610 + 32] = _605
            mem[_610 + 64] = _607
            mem[_610 + 96] = _609
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _610
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _585 = mem[64]
        mem[mem[64]] = 32
        _588 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _588:
            _628 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_628 + 32]
            mem[t + 64] = mem[_628 + 64]
            mem[t + 96] = mem[_628 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _585 + (128 * _588) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 897
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 769] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 801] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 833] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 865] = 0
    mem[var42002] = var42001
    if not var42003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(stor1)
            staticcall stor1.getUserAccountData(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _694 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _701 = mem[_694]
            _702 = mem[_694 + 32]
            _704 = mem[_694 + 96]
            _706 = mem[_694 + 160]
            _707 = mem[64]
            mem[64] = mem[64] + 128
            mem[_707] = _701
            mem[_707 + 32] = _702
            mem[_707 + 64] = _704
            mem[_707 + 96] = _706
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _707
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _682 = mem[64]
        mem[mem[64]] = 32
        _685 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _685:
            _725 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_725 + 32]
            mem[t + 64] = mem[_725 + 64]
            mem[t + 96] = mem[_725 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _682 + (128 * _685) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1025
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 897] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 929] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 961] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 993] = 0
    mem[var46002] = var46001
    if not var46003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(stor1)
            staticcall stor1.getUserAccountData(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _791 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _798 = mem[_791]
            _799 = mem[_791 + 32]
            _801 = mem[_791 + 96]
            _803 = mem[_791 + 160]
            _804 = mem[64]
            mem[64] = mem[64] + 128
            mem[_804] = _798
            mem[_804 + 32] = _799
            mem[_804 + 64] = _801
            mem[_804 + 96] = _803
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _804
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _779 = mem[64]
        mem[mem[64]] = 32
        _782 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _782:
            _822 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_822 + 32]
            mem[t + 64] = mem[_822 + 64]
            mem[t + 96] = mem[_822 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _779 + (128 * _782) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1153
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1025] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1057] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1089] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1121] = 0
    mem[var50002] = var50001
    if var50003 - 1:
        # nil
    else:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(stor1)
            staticcall stor1.getUserAccountData(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _888 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _895 = mem[_888]
            _896 = mem[_888 + 32]
            _898 = mem[_888 + 96]
            _900 = mem[_888 + 160]
            _901 = mem[64]
            mem[64] = mem[64] + 128
            mem[_901] = _895
            mem[_901 + 32] = _896
            mem[_901 + 64] = _898
            mem[_901 + 96] = _900
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _901
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _876 = mem[64]
        mem[mem[64]] = 32
        _879 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _879:
            _919 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_919 + 32]
            mem[t + 64] = mem[_919 + 64]
            mem[t + 96] = mem[_919 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _876 + (128 * _879) + -mem[64] + 64
}



}
