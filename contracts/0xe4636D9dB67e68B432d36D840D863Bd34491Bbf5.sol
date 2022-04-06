contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
array of uint8 stor2;
array of struct stor3;
array of struct stor4;
array of struct stor5;

function owner() payable {
    return owner
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

function setFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
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

function register(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < 2
    require ext_code.size(stor1)
    staticcall stor1.0xbd153fcc with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only bet contract can use this functionality.'
    if arg2 > 1:
        revert with 'NH{q', 33
    stor5[address(arg1)][arg2].field_0++
    address(stor5[address(arg1)][arg2][stor5[address(arg1)][arg2].field_0].field_0) = msg.sender
    stor2.length++
    stor2[Mask(251, 0, stor2.length.field_5)].field_0 = arg2 * 256^stor2.length % 32 or !(255 * 256^stor2.length % 32) and stor2[Mask(251, 0, stor2.length.field_5)].field_0
    stor3.length++
    address(stor3[stor3.length].field_0) = msg.sender
    stor4.length++
    address(stor4[stor4.length].field_0) = arg1
}

function sub_479eaf25(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[64] = (32 * stor5[address(arg1)][0].field_0) + 128
    mem[96] = stor5[address(arg1)][0].field_0
    if not stor5[address(arg1)][0].field_0:
        mem[(32 * stor5[address(arg1)][0].field_0) + 128] = 32
        mem[(32 * stor5[address(arg1)][0].field_0) + 160] = stor5[address(arg1)][0].field_0
        idx = 0
        s = 128
        t = (32 * stor5[address(arg1)][0].field_0) + 192
        while idx < stor5[address(arg1)][0].field_0:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor5[address(arg1)][0].field_0) + 128
           len (96 * stor5[address(arg1)][0].field_0) + 64
    mem[128] = address(stor5[address(arg1)][0].field_0)
    idx = 128
    s = 0
    while (32 * stor5[address(arg1)][0].field_0) + 96 > idx:
        mem[idx + 32] = address(stor5[address(arg1)][0][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5[address(arg1)][0].field_0) + 128] = 32
    mem[(32 * stor5[address(arg1)][0].field_0) + 160] = stor5[address(arg1)][0].field_0
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor5[address(arg1)][0].field_0:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor5[address(arg1)][0].field_0) + -mem[64] + 192
}

function sub_8365efa0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[64] = (32 * stor5[address(arg1)][1].field_0) + 128
    mem[96] = stor5[address(arg1)][1].field_0
    if not stor5[address(arg1)][1].field_0:
        mem[(32 * stor5[address(arg1)][1].field_0) + 128] = 32
        mem[(32 * stor5[address(arg1)][1].field_0) + 160] = stor5[address(arg1)][1].field_0
        idx = 0
        s = 128
        t = (32 * stor5[address(arg1)][1].field_0) + 192
        while idx < stor5[address(arg1)][1].field_0:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor5[address(arg1)][1].field_0) + 128
           len (96 * stor5[address(arg1)][1].field_0) + 64
    mem[128] = address(stor5[address(arg1)][1].field_0)
    idx = 128
    s = 0
    while (32 * stor5[address(arg1)][1].field_0) + 96 > idx:
        mem[idx + 32] = address(stor5[address(arg1)][1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5[address(arg1)][1].field_0) + 128] = 32
    mem[(32 * stor5[address(arg1)][1].field_0) + 160] = stor5[address(arg1)][1].field_0
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor5[address(arg1)][1].field_0:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor5[address(arg1)][1].field_0) + -mem[64] + 192
}

function importData(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 0x1c9f7d2900000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x1c9f7d29 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _5 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _7 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128 > test266151307() or (32 * mem[mem[96] + 96]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _7
    require _5 + (32 * _7) + 32 <= return_data.size
    idx = 0
    s = _5 + 128
    t = ceil32(return_data.size) + 128
    while idx < _7:
        require mem[s] < 2
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _88 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 127 < return_data.size + 96
    _89 = mem[mem[128] + 96]
    if mem[mem[128] + 96] > test266151307():
        revert with 'NH{q', 65
    _90 = mem[64]
    if mem[64] + (32 * mem[mem[128] + 96]) + 32 > test266151307() or mem[64] + (32 * mem[mem[128] + 96]) + 32 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[128] + 96]) + 32
    mem[_90] = _89
    require _88 + (32 * _89) + 32 <= return_data.size
    idx = 0
    s = _88 + 128
    t = _90 + 32
    while idx < _89:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _166 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 127 < return_data.size + 96
    _167 = mem[mem[160] + 96]
    if mem[mem[160] + 96] > test266151307():
        revert with 'NH{q', 65
    _168 = mem[64]
    if mem[64] + (32 * mem[mem[160] + 96]) + 32 > test266151307() or mem[64] + (32 * mem[mem[160] + 96]) + 32 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[160] + 96]) + 32
    mem[_168] = _167
    require _166 + (32 * _167) + 32 <= return_data.size
    idx = 0
    s = _166 + 128
    t = _168 + 32
    while idx < _167:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    stor4.length = _167
    mem[0] = 4
    if not _167:
        s = 0
        while sha3(4) + stor4.length > _167:
            stor[_167] = 0
            s = _167 + 1
            continue 
    else:
        s = 0
        idx = _168 + 32
        while _168 + (32 * _167) + 32 > idx:
            address(stor4[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * _167) + 31) >> 5
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor3.length = mem[_90]
    if not mem[_90]:
        idx = 0
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = _90 + 32
        while _90 + (32 * mem[_90]) + 32 > idx:
            address(stor3[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[_90]) + 31) >> 5
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor2.length = mem[ceil32(return_data.size) + 96]
    mem[0] = 2
    if not mem[ceil32(return_data.size) + 96]:
        idx = 0
        while stor2.length + 31 / 32 > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(return_data.size) + 128
        while ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 96]) + 128 > idx:
            if mem[idx] > 1:
                revert with 'NH{q', 33
            uint256(stor2.field_0) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor2.field_0)
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[ceil32(return_data.size) + 96]) + 31) >> 5
        s = sha3(2)
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * mem[ceil32(return_data.size) + 96]) + 31) >> 5 * None + 3 / 32)
        while stor2.length + 31 / 32 > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < stor3.length:
        if idx >= stor4.length:
            revert with 'NH{q', 50
        if idx >= stor2.length:
            revert with 'NH{q', 50
        if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)] > 1:
            revert with 'NH{q', 33
        mem[32] = sha3(address(stor4[idx].field_0), 5)
        if idx >= stor3.length:
            revert with 'NH{q', 50
        stor5[address(stor4[idx].field_0)][uint8(stor2[0.03125 / idx].field_(8 * idx % 32) - 248)].field_0++
        mem[0] = sha3(uint8(stor2[0.03125 / idx].field_(8 * idx % 32) - 248), sha3(address(stor4[idx].field_0), 5))
        address(stor5[address(stor4[idx].field_0)][uint8(stor2[0.03125 / idx].field_(8 * idx % 32) - 248)][stor5[address(stor4[idx].field_0)][uint8(stor2[0.03125 / idx].field_(8 * idx % 32) - 248)].field_0].field_0) = address(stor3[idx].field_0)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_1c9f7d29(?) payable {
    mem[96] = stor2.length
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = stor3.length
        if not stor3.length:
            mem[64] = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
            mem[(32 * stor2.length) + (32 * stor3.length) + 160] = stor4.length
            if not stor4.length:
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
                idx = 0
                s = 128
                t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
                while idx < stor2.length:
                    if mem[s] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (96 * stor2.length) + 128
                mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
                idx = 0
                s = (32 * stor2.length) + 160
                t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
                while idx < mem[(32 * stor2.length) + 128]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (96 * stor2.length) + (32 * stor3.length) + 160
                _53 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
                mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
                idx = 0
                s = (32 * stor2.length) + (32 * stor3.length) + 192
                t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
                while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + (32 * _53) + -mem[64] + 384
            mem[(32 * stor2.length) + (32 * stor3.length) + 192] = address(stor4.field_0)
            idx = (32 * stor2.length) + (32 * stor3.length) + 192
            s = 0
            while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
                mem[idx + 32] = address(stor4[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < stor2.length:
                if mem[s] >= 2:
                    revert with 'NH{q', 33
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
            _97 = mem[(32 * stor2.length) + 128]
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = mem[(32 * stor2.length) + 128]
            idx = 0
            s = (32 * stor2.length) + 160
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
            while idx < mem[(32 * stor2.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * _97) + 160
            _134 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _97) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            idx = 0
            s = (32 * stor2.length) + (32 * stor3.length) + 192
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _97) + 384
            while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _97) + (32 * _134) + -mem[64] + 384
        mem[0] = 3
        mem[(32 * stor2.length) + 160] = address(stor3.field_0)
        idx = (32 * stor2.length) + 160
        s = 0
        while (32 * stor2.length) + (32 * stor3.length) + 128 > idx:
            mem[idx + 32] = address(stor3[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
        mem[(32 * stor2.length) + (32 * stor3.length) + 160] = stor4.length
        if not stor4.length:
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
            idx = 0
            s = 128
            t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
            while idx < stor2.length:
                if mem[s] >= 2:
                    revert with 'NH{q', 33
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
            idx = 0
            s = (32 * stor2.length) + 160
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
            while idx < mem[(32 * stor2.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * stor3.length) + 160
            _135 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            idx = 0
            s = (32 * stor2.length) + (32 * stor3.length) + 192
            t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
            while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
               len (32 * stor2.length) + (32 * stor3.length) + (32 * _135) + 192
        mem[(32 * stor2.length) + (32 * stor3.length) + 192] = address(stor4.field_0)
        idx = (32 * stor2.length) + (32 * stor3.length) + 192
        s = 0
        while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
            mem[idx + 32] = address(stor4[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < stor2.length:
            if mem[s] >= 2:
                revert with 'NH{q', 33
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
        _196 = mem[(32 * stor2.length) + 128]
        mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = mem[(32 * stor2.length) + 128]
        idx = 0
        s = (32 * stor2.length) + 160
        t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
        while idx < mem[(32 * stor2.length) + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * _196) + 160
        _239 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
        mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _196) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
        idx = 0
        s = (32 * stor2.length) + (32 * stor3.length) + 192
        t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _196) + 384
        while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _196) + (32 * _239) + -mem[64] + 384
    mem[0] = 2
    if stor('name', 'stor2', 2)[var6002] > 1:
        revert with 'NH{q', 33
    mem[var8002] = var8001
    if (32 * stor2.length) + 96 <= var8002:
        mem[(32 * stor2.length) + 128] = stor3.length
        if not stor3.length:
            mem[64] = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
            mem[(32 * stor2.length) + (32 * stor3.length) + 160] = stor4.length
            if not stor4.length:
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
                idx = 0
                s = 128
                t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
                while idx < stor2.length:
                    if mem[s] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (96 * stor2.length) + 128
                mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
                idx = 0
                s = (32 * stor2.length) + 160
                t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
                while idx < mem[(32 * stor2.length) + 128]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (96 * stor2.length) + (32 * stor3.length) + 160
                _139 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
                mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
                idx = 0
                s = (32 * stor2.length) + (32 * stor3.length) + 192
                t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
                while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + (32 * _139) + -mem[64] + 384
            mem[(32 * stor2.length) + (32 * stor3.length) + 192] = address(stor4.field_0)
            idx = (32 * stor2.length) + (32 * stor3.length) + 192
            s = 0
            while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
                mem[idx + 32] = address(stor4[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < stor2.length:
                if mem[s] >= 2:
                    revert with 'NH{q', 33
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
            _200 = mem[(32 * stor2.length) + 128]
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = mem[(32 * stor2.length) + 128]
            idx = 0
            s = (32 * stor2.length) + 160
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
            while idx < mem[(32 * stor2.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * _200) + 160
            _244 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _200) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            idx = 0
            s = (32 * stor2.length) + (32 * stor3.length) + 192
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _200) + 384
            while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _200) + (32 * _244) + -mem[64] + 384
        mem[0] = 3
        mem[(32 * stor2.length) + 160] = address(stor3.field_0)
        idx = (32 * stor2.length) + 160
        s = 0
        while (32 * stor2.length) + (32 * stor3.length) + 128 > idx:
            mem[idx + 32] = address(stor3[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
        mem[(32 * stor2.length) + (32 * stor3.length) + 160] = stor4.length
        if not stor4.length:
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < stor2.length:
                if mem[s] >= 2:
                    revert with 'NH{q', 33
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
            _201 = mem[(32 * stor2.length) + 128]
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = mem[(32 * stor2.length) + 128]
            idx = 0
            s = (32 * stor2.length) + 160
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
            while idx < mem[(32 * stor2.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * _201) + 160
            _245 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _201) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            idx = 0
            s = (32 * stor2.length) + (32 * stor3.length) + 192
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _201) + 384
            while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _201) + (32 * _245) + -mem[64] + 384
        mem[(32 * stor2.length) + (32 * stor3.length) + 192] = address(stor4.field_0)
        idx = (32 * stor2.length) + (32 * stor3.length) + 192
        s = 0
        while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
            mem[idx + 32] = address(stor4[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
        idx = 0
        s = 128
        t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
        while idx < stor2.length:
            if mem[s] >= 2:
                revert with 'NH{q', 33
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
        mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
        idx = 0
        s = (32 * stor2.length) + 160
        t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
        while idx < mem[(32 * stor2.length) + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * stor3.length) + 160
        _356 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
        mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
        idx = 0
        s = (32 * stor2.length) + (32 * stor3.length) + 192
        t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
        while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
           len (32 * stor2.length) + (32 * stor3.length) + (32 * _356) + 192
    if storvar10003[var10002] > 1:
        revert with 'NH{q', 33
    mem[var12002] = var12001
    if (32 * stor2.length) + 96 <= var12002:
        mem[(32 * stor2.length) + 128] = stor3.length
        if not stor3.length:
            mem[64] = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
            mem[(32 * stor2.length) + (32 * stor3.length) + 160] = stor4.length
            if not stor4.length:
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
                idx = 0
                s = 128
                t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
                while idx < stor2.length:
                    if mem[s] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (96 * stor2.length) + 128
                mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
                idx = 0
                s = (32 * stor2.length) + 160
                t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
                while idx < mem[(32 * stor2.length) + 128]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (96 * stor2.length) + (32 * stor3.length) + 160
                _242 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
                mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
                idx = 0
                s = (32 * stor2.length) + (32 * stor3.length) + 192
                t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
                while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + (32 * _242) + -mem[64] + 384
            mem[(32 * stor2.length) + (32 * stor3.length) + 192] = address(stor4.field_0)
            idx = (32 * stor2.length) + (32 * stor3.length) + 192
            s = 0
            while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
                mem[idx + 32] = address(stor4[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < stor2.length:
                if mem[s] >= 2:
                    revert with 'NH{q', 33
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
            _309 = mem[(32 * stor2.length) + 128]
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = mem[(32 * stor2.length) + 128]
            idx = 0
            s = (32 * stor2.length) + 160
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
            while idx < mem[(32 * stor2.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * _309) + 160
            _353 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _309) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            idx = 0
            s = (32 * stor2.length) + (32 * stor3.length) + 192
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _309) + 384
            while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _309) + (32 * _353) + -mem[64] + 384
        mem[0] = 3
        mem[(32 * stor2.length) + 160] = address(stor3.field_0)
        idx = (32 * stor2.length) + 160
        s = 0
        while (32 * stor2.length) + (32 * stor3.length) + 128 > idx:
            mem[idx + 32] = address(stor3[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
        mem[(32 * stor2.length) + (32 * stor3.length) + 160] = stor4.length
        if not stor4.length:
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
            idx = 0
            s = 128
            t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
            while idx < stor2.length:
                if mem[s] >= 2:
                    revert with 'NH{q', 33
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
            idx = 0
            s = (32 * stor2.length) + 160
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
            while idx < mem[(32 * stor2.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * stor3.length) + 160
            _354 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            idx = 0
            s = (32 * stor2.length) + (32 * stor3.length) + 192
            t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
            while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
               len (32 * stor2.length) + (32 * stor3.length) + (32 * _354) + 192
        mem[(32 * stor2.length) + (32 * stor3.length) + 192] = address(stor4.field_0)
        idx = (32 * stor2.length) + (32 * stor3.length) + 192
        s = 0
        while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
            mem[idx + 32] = address(stor4[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < stor2.length:
            if mem[s] >= 2:
                revert with 'NH{q', 33
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
        _421 = mem[(32 * stor2.length) + 128]
        mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = mem[(32 * stor2.length) + 128]
        idx = 0
        s = (32 * stor2.length) + 160
        t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
        while idx < mem[(32 * stor2.length) + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * _421) + 160
        _466 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
        mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _421) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
        idx = 0
        s = (32 * stor2.length) + (32 * stor3.length) + 192
        t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _421) + 384
        while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _421) + (32 * _466) + -mem[64] + 384
    if storvar14003[var14002] > 1:
        revert with 'NH{q', 33
    mem[var16002] = var16001
    if (32 * stor2.length) + 96 <= var16002:
        mem[(32 * stor2.length) + 128] = stor3.length
        if not stor3.length:
            mem[64] = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
            mem[(32 * stor2.length) + (32 * stor3.length) + 160] = stor4.length
            if not stor4.length:
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
                idx = 0
                s = 128
                t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
                while idx < stor2.length:
                    if mem[s] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (96 * stor2.length) + 128
                mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
                idx = 0
                s = (32 * stor2.length) + 160
                t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
                while idx < mem[(32 * stor2.length) + 128]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (96 * stor2.length) + (32 * stor3.length) + 160
                mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
                idx = 0
                s = (32 * stor2.length) + (32 * stor3.length) + 192
                t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
                while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + (32 * mem[(32 * stor2.length) + (32 * stor3.length) + 160]) + -mem[64] + 384
            mem[(32 * stor2.length) + (32 * stor3.length) + 192] = address(stor4.field_0)
            idx = (32 * stor2.length) + (32 * stor3.length) + 192
            s = 0
            while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
                mem[idx + 32] = address(stor4[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
            idx = 0
            s = 128
            t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
            while idx < stor2.length:
                if mem[s] >= 2:
                    revert with 'NH{q', 33
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
            idx = 0
            s = (32 * stor2.length) + 160
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
            while idx < mem[(32 * stor2.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * stor3.length) + 160
            _463 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            idx = 0
            s = (32 * stor2.length) + (32 * stor3.length) + 192
            t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
            while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
               len (32 * stor2.length) + (32 * stor3.length) + (32 * _463) + 192
        mem[0] = 3
        mem[(32 * stor2.length) + 160] = address(stor3.field_0)
        idx = (32 * stor2.length) + 160
        s = 0
        while (32 * stor2.length) + (32 * stor3.length) + 128 > idx:
            mem[idx + 32] = address(stor3[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
        mem[(32 * stor2.length) + (32 * stor3.length) + 160] = stor4.length
        if not stor4.length:
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
            idx = 0
            s = 128
            t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
            while idx < stor2.length:
                if mem[s] >= 2:
                    revert with 'NH{q', 33
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
            idx = 0
            s = (32 * stor2.length) + 160
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
            while idx < mem[(32 * stor2.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * stor3.length) + 160
            _464 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            idx = 0
            s = (32 * stor2.length) + (32 * stor3.length) + 192
            t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
            while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
               len (32 * stor2.length) + (32 * stor3.length) + (32 * _464) + 192
        mem[(32 * stor2.length) + (32 * stor3.length) + 192] = address(stor4.field_0)
        idx = (32 * stor2.length) + (32 * stor3.length) + 192
        s = 0
        while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
            mem[idx + 32] = address(stor4[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
        idx = 0
        s = 128
        t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
        while idx < stor2.length:
            if mem[s] >= 2:
                revert with 'NH{q', 33
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
        mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
        idx = 0
        s = (32 * stor2.length) + 160
        t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
        while idx < mem[(32 * stor2.length) + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * stor3.length) + 160
        _576 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
        mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
        idx = 0
        s = (32 * stor2.length) + (32 * stor3.length) + 192
        t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
        while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
           len (32 * stor2.length) + (32 * stor3.length) + (32 * _576) + 192
    if storvar18003[var18002] > 1:
        revert with 'NH{q', 33
    mem[var20002] = var20001
    if (32 * stor2.length) + 96 <= var20002:
        mem[(32 * stor2.length) + 128] = stor3.length
        if not stor3.length:
            mem[64] = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
            mem[(32 * stor2.length) + (32 * stor3.length) + 160] = stor4.length
            if not stor4.length:
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
                idx = 0
                s = 128
                t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
                while idx < stor2.length:
                    if mem[s] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (96 * stor2.length) + 128
                mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
                idx = 0
                s = (32 * stor2.length) + 160
                t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
                while idx < mem[(32 * stor2.length) + 128]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (96 * stor2.length) + (32 * stor3.length) + 160
                _461 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
                mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
                idx = 0
                s = (32 * stor2.length) + (32 * stor3.length) + 192
                t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
                while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + (32 * _461) + -mem[64] + 384
            mem[(32 * stor2.length) + (32 * stor3.length) + 192] = address(stor4.field_0)
            idx = (32 * stor2.length) + (32 * stor3.length) + 192
            s = 0
            while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
                mem[idx + 32] = address(stor4[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < stor2.length:
                if mem[s] >= 2:
                    revert with 'NH{q', 33
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
            _529 = mem[(32 * stor2.length) + 128]
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = mem[(32 * stor2.length) + 128]
            idx = 0
            s = (32 * stor2.length) + 160
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
            while idx < mem[(32 * stor2.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * _529) + 160
            _573 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _529) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            idx = 0
            s = (32 * stor2.length) + (32 * stor3.length) + 192
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _529) + 384
            while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _529) + (32 * _573) + -mem[64] + 384
        mem[0] = 3
        mem[(32 * stor2.length) + 160] = address(stor3.field_0)
        idx = (32 * stor2.length) + 160
        s = 0
        while (32 * stor2.length) + (32 * stor3.length) + 128 > idx:
            mem[idx + 32] = address(stor3[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
        mem[(32 * stor2.length) + (32 * stor3.length) + 160] = stor4.length
        if not stor4.length:
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
            idx = 0
            s = 128
            t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
            while idx < stor2.length:
                if mem[s] >= 2:
                    revert with 'NH{q', 33
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
            idx = 0
            s = (32 * stor2.length) + 160
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
            while idx < mem[(32 * stor2.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * stor3.length) + 160
            mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            idx = 0
            s = (32 * stor2.length) + (32 * stor3.length) + 192
            t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
            while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
               len (32 * stor2.length) + (32 * stor3.length) + (32 * mem[(32 * stor2.length) + (32 * stor3.length) + 160]) + 192
        mem[(32 * stor2.length) + (32 * stor3.length) + 192] = address(stor4.field_0)
        idx = (32 * stor2.length) + (32 * stor3.length) + 192
        s = 0
        while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
            mem[idx + 32] = address(stor4[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < stor2.length:
            if mem[s] >= 2:
                revert with 'NH{q', 33
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
        _641 = mem[(32 * stor2.length) + 128]
        mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = mem[(32 * stor2.length) + 128]
        idx = 0
        s = (32 * stor2.length) + 160
        t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
        while idx < mem[(32 * stor2.length) + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * _641) + 160
        _686 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
        mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _641) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
        idx = 0
        s = (32 * stor2.length) + (32 * stor3.length) + 192
        t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _641) + 384
        while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _641) + (32 * _686) + -mem[64] + 384
    if storvar22003[var22002] > 1:
        revert with 'NH{q', 33
    mem[var24002] = var24001
    if (32 * stor2.length) + 96 <= var24002:
        mem[(32 * stor2.length) + 128] = stor3.length
        if not stor3.length:
            mem[64] = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
            mem[(32 * stor2.length) + (32 * stor3.length) + 160] = stor4.length
            if not stor4.length:
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
                idx = 0
                s = 128
                t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
                while idx < stor2.length:
                    if mem[s] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (96 * stor2.length) + 128
                mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
                idx = 0
                s = (32 * stor2.length) + 160
                t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
                while idx < mem[(32 * stor2.length) + 128]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (96 * stor2.length) + (32 * stor3.length) + 160
                _571 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
                mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
                idx = 0
                s = (32 * stor2.length) + (32 * stor3.length) + 192
                t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
                while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + (32 * _571) + -mem[64] + 384
            mem[(32 * stor2.length) + (32 * stor3.length) + 192] = address(stor4.field_0)
            idx = (32 * stor2.length) + (32 * stor3.length) + 192
            s = 0
            while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
                mem[idx + 32] = address(stor4[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < stor2.length:
                if mem[s] >= 2:
                    revert with 'NH{q', 33
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
            _639 = mem[(32 * stor2.length) + 128]
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = mem[(32 * stor2.length) + 128]
            idx = 0
            s = (32 * stor2.length) + 160
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
            while idx < mem[(32 * stor2.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * _639) + 160
            _683 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _639) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            idx = 0
            s = (32 * stor2.length) + (32 * stor3.length) + 192
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _639) + 384
            while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _639) + (32 * _683) + -mem[64] + 384
        mem[0] = 3
        mem[(32 * stor2.length) + 160] = address(stor3.field_0)
        idx = (32 * stor2.length) + 160
        s = 0
        while (32 * stor2.length) + (32 * stor3.length) + 128 > idx:
            mem[idx + 32] = address(stor3[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
        mem[(32 * stor2.length) + (32 * stor3.length) + 160] = stor4.length
        if not stor4.length:
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
            idx = 0
            s = 128
            t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
            while idx < stor2.length:
                if mem[s] >= 2:
                    revert with 'NH{q', 33
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
            idx = 0
            s = (32 * stor2.length) + 160
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
            while idx < mem[(32 * stor2.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * stor3.length) + 160
            _684 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            idx = 0
            s = (32 * stor2.length) + (32 * stor3.length) + 192
            t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
            while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
               len (32 * stor2.length) + (32 * stor3.length) + (32 * _684) + 192
        mem[(32 * stor2.length) + (32 * stor3.length) + 192] = address(stor4.field_0)
        idx = (32 * stor2.length) + (32 * stor3.length) + 192
        s = 0
        while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
            mem[idx + 32] = address(stor4[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < stor2.length:
            if mem[s] >= 2:
                revert with 'NH{q', 33
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
        _751 = mem[(32 * stor2.length) + 128]
        mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = mem[(32 * stor2.length) + 128]
        idx = 0
        s = (32 * stor2.length) + 160
        t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
        while idx < mem[(32 * stor2.length) + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * _751) + 160
        _796 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
        mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _751) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
        idx = 0
        s = (32 * stor2.length) + (32 * stor3.length) + 192
        t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _751) + 384
        while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _751) + (32 * _796) + -mem[64] + 384
    if storvar26003[var26002] > 1:
        revert with 'NH{q', 33
    mem[var28002] = var28001
    if (32 * stor2.length) + 96 <= var28002:
        mem[(32 * stor2.length) + 128] = stor3.length
        if not stor3.length:
            mem[64] = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
            mem[(32 * stor2.length) + (32 * stor3.length) + 160] = stor4.length
            if not stor4.length:
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
                idx = 0
                s = 128
                t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
                while idx < stor2.length:
                    if mem[s] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (96 * stor2.length) + 128
                mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
                idx = 0
                s = (32 * stor2.length) + 160
                t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
                while idx < mem[(32 * stor2.length) + 128]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (96 * stor2.length) + (32 * stor3.length) + 160
                _681 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
                mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
                idx = 0
                s = (32 * stor2.length) + (32 * stor3.length) + 192
                t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
                while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + (32 * _681) + -mem[64] + 384
            mem[(32 * stor2.length) + (32 * stor3.length) + 192] = address(stor4.field_0)
            idx = (32 * stor2.length) + (32 * stor3.length) + 192
            s = 0
            while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
                mem[idx + 32] = address(stor4[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
            idx = 0
            s = 128
            t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
            while idx < stor2.length:
                if mem[s] >= 2:
                    revert with 'NH{q', 33
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
            idx = 0
            s = (32 * stor2.length) + 160
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
            while idx < mem[(32 * stor2.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * stor3.length) + 160
            _793 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            idx = 0
            s = (32 * stor2.length) + (32 * stor3.length) + 192
            t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
            while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
               len (32 * stor2.length) + (32 * stor3.length) + (32 * _793) + 192
        mem[0] = 3
        mem[(32 * stor2.length) + 160] = address(stor3.field_0)
        idx = (32 * stor2.length) + 160
        s = 0
        while (32 * stor2.length) + (32 * stor3.length) + 128 > idx:
            mem[idx + 32] = address(stor3[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
        mem[(32 * stor2.length) + (32 * stor3.length) + 160] = stor4.length
        if not stor4.length:
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < stor2.length:
                if mem[s] >= 2:
                    revert with 'NH{q', 33
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
            _750 = mem[(32 * stor2.length) + 128]
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = mem[(32 * stor2.length) + 128]
            idx = 0
            s = (32 * stor2.length) + 160
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
            while idx < mem[(32 * stor2.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * _750) + 160
            _794 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _750) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            idx = 0
            s = (32 * stor2.length) + (32 * stor3.length) + 192
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _750) + 384
            while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _750) + (32 * _794) + -mem[64] + 384
        mem[(32 * stor2.length) + (32 * stor3.length) + 192] = address(stor4.field_0)
        idx = (32 * stor2.length) + (32 * stor3.length) + 192
        s = 0
        while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
            mem[idx + 32] = address(stor4[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
        idx = 0
        s = 128
        t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
        while idx < stor2.length:
            if mem[s] >= 2:
                revert with 'NH{q', 33
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
        mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
        idx = 0
        s = (32 * stor2.length) + 160
        t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
        while idx < mem[(32 * stor2.length) + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * stor3.length) + 160
        _906 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
        mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
        idx = 0
        s = (32 * stor2.length) + (32 * stor3.length) + 192
        t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
        while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
           len (32 * stor2.length) + (32 * stor3.length) + (32 * _906) + 192
    if storvar30003[var30002] > 1:
        revert with 'NH{q', 33
    mem[var32002] = var32001
    if (32 * stor2.length) + 96 > var32002:
        if storvar34003[var34002] > 1:
            revert with 'NH{q', 33
        mem[var36002] = var36001
        if (32 * stor2.length) + 96 > var36002:
            if storvar38003[var38002] > 1:
                revert with 'NH{q', 33
            mem[var40002] = var40001
            if (32 * stor2.length) + 96 > var40002:
                if storvar42003[var42002] > 1:
                    revert with 'NH{q', 33
                # nil
            else:
                mem[(32 * stor2.length) + 128] = stor3.length
                if stor3.length:
                    idx = (32 * stor2.length) + 160
                    s = 0
                    while (32 * stor2.length) + (32 * stor3.length) + 128 > idx:
                        mem[idx + 32] = address(stor3[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if not stor4.length:
                        idx = 0
                        s = 128
                        t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
                        while idx < stor2.length:
                            if mem[s] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        idx = (32 * stor2.length) + (32 * stor3.length) + 192
                        s = 0
                        while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
                            mem[idx + 32] = address(stor4[s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                # nil
        else:
            mem[(32 * stor2.length) + 128] = stor3.length
            if stor3.length:
                idx = (32 * stor2.length) + 160
                s = 0
                while (32 * stor2.length) + (32 * stor3.length) + 128 > idx:
                    mem[idx + 32] = address(stor3[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not stor4.length:
                    idx = 0
                    s = 128
                    t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
                    while idx < stor2.length:
                        if mem[s] >= 2:
                            revert with 'NH{q', 33
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    idx = (32 * stor2.length) + (32 * stor3.length) + 192
                    s = 0
                    while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
                        mem[idx + 32] = address(stor4[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                # nil
            else:
                mem[64] = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
                mem[(32 * stor2.length) + (32 * stor3.length) + 160] = stor4.length
                if stor4.length:
                    idx = (32 * stor2.length) + (32 * stor3.length) + 192
                    s = 0
                    while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
                        mem[idx + 32] = address(stor4[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    idx = 0
                    s = 128
                    t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
                    while idx < stor2.length:
                        if mem[s] >= 2:
                            revert with 'NH{q', 33
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    # nil
                else:
                    mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
                    mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
                    idx = 0
                    s = 128
                    t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
                    while idx < stor2.length:
                        if mem[s] >= 2:
                            revert with 'NH{q', 33
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (96 * stor2.length) + 128
                    mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
                    idx = 0
                    s = (32 * stor2.length) + 160
                    t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
                    while idx < mem[(32 * stor2.length) + 128]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (96 * stor2.length) + (32 * stor3.length) + 160
                    _901 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
                    mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
                    idx = 0
                    s = (32 * stor2.length) + (32 * stor3.length) + 192
                    t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
                    while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + (32 * _901) + -mem[64] + 384
    else:
        mem[(32 * stor2.length) + 128] = stor3.length
        if not stor3.length:
            mem[64] = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
            mem[(32 * stor2.length) + (32 * stor3.length) + 160] = stor4.length
            if not stor4.length:
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
                idx = 0
                s = 128
                t = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320
                while idx < stor2.length:
                    if mem[s] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (96 * stor2.length) + 128
                mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = stor3.length
                idx = 0
                s = (32 * stor2.length) + 160
                t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
                while idx < mem[(32 * stor2.length) + 128]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (96 * stor2.length) + (32 * stor3.length) + 160
                _791 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
                mem[(64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
                idx = 0
                s = (32 * stor2.length) + (32 * stor3.length) + 192
                t = (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + 384
                while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (64 * stor2.length) + (64 * stor3.length) + (32 * stor4.length) + (32 * _791) + -mem[64] + 384
            mem[(32 * stor2.length) + (32 * stor3.length) + 192] = address(stor4.field_0)
            idx = (32 * stor2.length) + (32 * stor3.length) + 192
            s = 0
            while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
                mem[idx + 32] = address(stor4[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < stor2.length:
                if mem[s] >= 2:
                    revert with 'NH{q', 33
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
            _859 = mem[(32 * stor2.length) + 128]
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = mem[(32 * stor2.length) + 128]
            idx = 0
            s = (32 * stor2.length) + 160
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
            while idx < mem[(32 * stor2.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * _859) + 160
            _903 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _859) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            idx = 0
            s = (32 * stor2.length) + (32 * stor3.length) + 192
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _859) + 384
            while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _859) + (32 * _903) + -mem[64] + 384
        mem[0] = 3
        mem[(32 * stor2.length) + 160] = address(stor3.field_0)
        idx = (32 * stor2.length) + 160
        s = 0
        while (32 * stor2.length) + (32 * stor3.length) + 128 > idx:
            mem[idx + 32] = address(stor3[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192
        mem[(32 * stor2.length) + (32 * stor3.length) + 160] = stor4.length
        if stor4.length:
            idx = (32 * stor2.length) + (32 * stor3.length) + 192
            s = 0
            while (32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 160 > idx:
                mem[idx + 32] = address(stor4[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < stor2.length:
                if mem[s] >= 2:
                    revert with 'NH{q', 33
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            # nil
        else:
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 192] = 96
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 288] = stor2.length
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < stor2.length:
                if mem[s] >= 2:
                    revert with 'NH{q', 33
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 224] = (32 * stor2.length) + 128
            _860 = mem[(32 * stor2.length) + 128]
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 320] = mem[(32 * stor2.length) + 128]
            idx = 0
            s = (32 * stor2.length) + 160
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 352
            while idx < mem[(32 * stor2.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + 256] = (32 * stor2.length) + (32 * _860) + 160
            _904 = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            mem[(64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _860) + 352] = mem[(32 * stor2.length) + (32 * stor3.length) + 160]
            idx = 0
            s = (32 * stor2.length) + (32 * stor3.length) + 192
            t = (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _860) + 384
            while idx < mem[(32 * stor2.length) + (32 * stor3.length) + 160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (64 * stor2.length) + (32 * stor3.length) + (32 * stor4.length) + (32 * _860) + (32 * _904) + -mem[64] + 384
}



}
