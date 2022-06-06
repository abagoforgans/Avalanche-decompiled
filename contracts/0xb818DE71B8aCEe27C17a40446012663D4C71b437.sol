contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint256 sub_6881bdcd;

function records(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return records[arg1].field_512, records[arg1].field_768
}

function sub_6881bdcd(?) payable {
    return sub_6881bdcd
}

function sub_7b657c35(?) payable {
    require calldata.size - 4 >= 32
    return records[arg1].field_256
}

function sub_8b3ba062(?) payable {
    require calldata.size - 4 >= 32
    return records[arg1].field_512
}

function owner() payable {
    return owner
}

function sub_ad79b546(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return records[arg1][address(arg2)].field_0
}

function sub_c1efb2ec(?) payable {
    require calldata.size - 4 >= 32
    return records[arg1].field_768
}

function sub_de05051c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
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

function sub_308f6fa3(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if not stor1[msg.sender]:
        revert with 0, 'OFH: FORBIDDEN'
    records[arg1][address(arg2)].field_0 = 0
}

function sub_2191291d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if not stor1[msg.sender]:
        revert with 0, 'OFH: FORBIDDEN'
    records[arg1].field_512 = address(arg2)
    emit 0x1ee4b236: arg1, address(arg2)
}

function sub_0e2c1eaa(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'NRC: INVALID_MAX_HOLDINGS'
    sub_6881bdcd = arg1
    emit 0xad9f5610: arg1
}

function sub_37f761f3(?) payable {
    require calldata.size - 4 >= 64
    if not stor1[msg.sender]:
        revert with 0, 'OFH: FORBIDDEN'
    if arg2 <= records[arg1].field_768:
        revert with 0, 'NRC: LOCK_PERIOD_CANT_DECREASE'
    records[arg1].field_768 = arg2
    emit 0x1d138250: arg1, arg2
}

function addFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'OFH: INVALID_ADDRESS'
    stor1[address(arg1)] = 1
    emit FactoryAdded(arg1);
}

function setFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'NestedRecords: INVALID_ADDRESS'
    stor1[address(arg1)] = 1
    emit FactoryAdded(arg1);
}

function removeFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor1[address(arg1)]:
        revert with 0, 'OFH: NOT_SUPPORTED'
    stor1[address(arg1)] = 0
    emit FactoryRemoved(arg1);
}

function removeNFT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, 'OFH: FORBIDDEN'
    records[arg1].field_256 = 0
    idx = 0
    while records[arg1].field_256 > idx:
        records[arg1][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    records[arg1].field_512 = 0
    records[arg1].field_768 = 0
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

function sub_3d0372ae(?) payable {
    require calldata.size - 4 >= 64
    if not stor1[msg.sender]:
        revert with 0, 'OFH: FORBIDDEN'
    if arg2 >= records[arg1].field_256:
        revert with 'NH{q', 50
    if not records[arg1][stor[arg2 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'records', 2)))].field_0].field_0:
        revert with 0, 'NRC: HOLDING_INACTIVE'
    records[arg1][stor[arg2 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'records', 2)))].field_0].field_0 = 0
    if records[arg1].field_256 < 1:
        revert with 'NH{q', 17
    if records[arg1].field_256 - 1 >= records[arg1].field_256:
        revert with 'NH{q', 50
    if arg2 >= records[arg1].field_256:
        revert with 'NH{q', 50
    stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'records', 2))) + arg2].field_0 = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'records', 2))) + records[arg1].field_256].field_0
    if not records[arg1].field_256:
        revert with 'NH{q', 49
    stor[records[arg1].field_256 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'records', 2)))].field_0 = 0
    records[arg1].field_256--
}

function sub_4e319b2c(?) payable {
    require calldata.size - 4 >= 32
    mem[64] = (32 * records[arg1].field_256) + 128
    mem[96] = records[arg1].field_256
    if not records[arg1].field_256:
        mem[(32 * records[arg1].field_256) + 128] = 32
        mem[(32 * records[arg1].field_256) + 160] = records[arg1].field_256
        idx = 0
        s = 128
        t = (32 * records[arg1].field_256) + 192
        while idx < records[arg1].field_256:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * records[arg1].field_256) + 128
           len (96 * records[arg1].field_256) + 64
    mem[128] = records[arg1][1].field_0
    idx = 128
    s = 0
    while (32 * records[arg1].field_256) + 96 > idx:
        mem[idx + 32] = records[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * records[arg1].field_256) + 128] = 32
    mem[(32 * records[arg1].field_256) + 160] = records[arg1].field_256
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < records[arg1].field_256:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * records[arg1].field_256) + -mem[64] + 192
}

function sub_000570b7(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if not stor1[msg.sender]:
        revert with 0, 'OFH: FORBIDDEN'
    if arg3:
        records[arg1][address(arg2)].field_0 = arg3
    else:
        if records[arg1].field_256:
            mem[128] = records[arg1][1].field_0
            idx = 128
            s = 0
            while (32 * records[arg1].field_256) + 96 > idx:
                mem[idx + 32] = records[arg1][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
        idx = 0
        while idx < records[arg1].field_256:
            if idx >= records[arg1].field_256:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20] != address(arg2):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not stor1[msg.sender]:
                revert with 0, 'OFH: FORBIDDEN'
            if idx >= records[arg1].field_256:
                revert with 'NH{q', 50
            if not records[arg1][records[arg1][idx + 1].field_0].field_0:
                revert with 0, 'NRC: HOLDING_INACTIVE'
            records[arg1][records[arg1][idx + 1].field_0].field_0 = 0
            if records[arg1].field_256 < 1:
                revert with 'NH{q', 17
            if records[arg1].field_256 - 1 >= records[arg1].field_256:
                revert with 'NH{q', 50
            if idx >= records[arg1].field_256:
                revert with 'NH{q', 50
            records[arg1][idx + 1].field_0 = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'records', 2))) + records[arg1].field_256].field_0
            if not records[arg1].field_256:
                revert with 'NH{q', 49
            stor[records[arg1].field_256 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'records', 2)))].field_0 = 0
            records[arg1].field_256--
}

function sub_4671b0e3(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    if not stor1[msg.sender]:
        revert with 0, 'OFH: FORBIDDEN'
    if not records[arg1][address(arg2)].field_0:
        if records[arg1].field_256 >= sub_6881bdcd:
            revert with 0, 'NRC: TOO_MANY_TOKENS'
        if not address(arg4):
            revert with 0, 'NRC: INVALID_RESERVE'
        if records[arg1].field_512 != address(arg4):
            if records[arg1].field_512:
                revert with 0, 'NRC: INVALID_RESERVE'
        records[arg1][address(arg2)].field_0 = arg3
        records[arg1].field_256++
        stor[records[arg1].field_256 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'records', 2)))].field_0 = address(arg2)
        records[arg1].field_512 = address(arg4)
    else:
        if records[arg1].field_512 != address(arg4):
            revert with 0, 'NRC: RESERVE_MISMATCH'
        if records[arg1][address(arg2)].field_0 > !arg3:
            revert with 'NH{q', 17
        if not stor1[msg.sender]:
            revert with 0, 'OFH: FORBIDDEN'
        if records[arg1][address(arg2)].field_0 + arg3:
            records[arg1][address(arg2)].field_0 += arg3
        else:
            if records[arg1].field_256:
                mem[128] = records[arg1][1].field_0
                idx = 128
                s = 0
                while (32 * records[arg1].field_256) + 96 > idx:
                    mem[idx + 32] = records[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            idx = 0
            while idx < records[arg1].field_256:
                if idx >= records[arg1].field_256:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + 140 len 20] != address(arg2):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not stor1[msg.sender]:
                    revert with 0, 'OFH: FORBIDDEN'
                if idx >= records[arg1].field_256:
                    revert with 'NH{q', 50
                if not records[arg1][records[arg1][idx + 1].field_0].field_0:
                    revert with 0, 'NRC: HOLDING_INACTIVE'
                records[arg1][records[arg1][idx + 1].field_0].field_0 = 0
                if records[arg1].field_256 < 1:
                    revert with 'NH{q', 17
                if records[arg1].field_256 - 1 >= records[arg1].field_256:
                    revert with 'NH{q', 50
                if idx >= records[arg1].field_256:
                    revert with 'NH{q', 50
                records[arg1][idx + 1].field_0 = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'records', 2))) + records[arg1].field_256].field_0
                if not records[arg1].field_256:
                    revert with 'NH{q', 49
                stor[records[arg1].field_256 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'records', 2)))].field_0 = 0
                records[arg1].field_256--
}

function sub_a916722c(?) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    mem[96] = records[arg1].field_256
    if not records[arg1].field_256:
        if records[arg1].field_256 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * records[arg1].field_256) + 128] = records[arg1].field_256
        mem[64] = (64 * records[arg1].field_256) + 160
        if not records[arg1].field_256:
            idx = 0
            while idx < records[arg1].field_256:
                if idx >= records[arg1].field_256:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = sha3(arg1, 2)
                if idx >= records[arg1].field_256:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * records[arg1].field_256) + 160] = records[arg1][address(mem[(32 * idx) + 128])].field_0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[(64 * records[arg1].field_256) + 160] = 64
            mem[(64 * records[arg1].field_256) + 224] = records[arg1].field_256
            s = 0
            s = 128
            t = mem[64] + 96
            while records[arg1].field_256 < records[arg1].field_256:
                mem[t] = mem[s + 12 len 20]
                s = records[arg1].field_256 + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * records[arg1].field_256) + 192] = t + -(64 * records[arg1].field_256) - 160
            _53 = mem[(32 * records[arg1].field_256) + 128]
            mem[t] = mem[(32 * records[arg1].field_256) + 128]
            mem[t + 32 len 32 * _53] = mem[(32 * records[arg1].field_256) + 160 len 32 * _53]
            return memory
              from mem[64]
               len t + (32 * _53) + -mem[64] + 32
        mem[(32 * records[arg1].field_256) + 160 len 32 * records[arg1].field_256] = call.data[calldata.size len 32 * records[arg1].field_256]
        idx = 0
        while idx < records[arg1].field_256:
            if idx >= records[arg1].field_256:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(arg1, 2)
            if idx >= records[arg1].field_256:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * records[arg1].field_256) + 160] = records[arg1][address(mem[(32 * idx) + 128])].field_0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[(64 * records[arg1].field_256) + 160] = 64
        mem[(64 * records[arg1].field_256) + 224] = records[arg1].field_256
        s = 0
        s = 128
        t = mem[64] + 96
        while records[arg1].field_256 < records[arg1].field_256:
            mem[t] = mem[s + 12 len 20]
            s = records[arg1].field_256 + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * records[arg1].field_256) + 192] = t + -(64 * records[arg1].field_256) - 160
        _54 = mem[(32 * records[arg1].field_256) + 128]
        mem[t] = mem[(32 * records[arg1].field_256) + 128]
        mem[t + 32 len 32 * _54] = mem[(32 * records[arg1].field_256) + 160 len 32 * _54]
        return memory
          from mem[64]
           len t + (32 * _54) + -mem[64] + 32
    mem[0] = sha3(arg1, 2) + 1
    mem[128] = records[arg1][1].field_0
    idx = 128
    s = 0
    while (32 * records[arg1].field_256) + 96 > idx:
        mem[idx + 32] = records[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if records[arg1].field_256 > test266151307():
        revert with 'NH{q', 65
    mem[(32 * records[arg1].field_256) + 128] = records[arg1].field_256
    mem[64] = (64 * records[arg1].field_256) + 160
    if not records[arg1].field_256:
        idx = 0
        while idx < records[arg1].field_256:
            if idx >= records[arg1].field_256:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(arg1, 2)
            if idx >= records[arg1].field_256:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * records[arg1].field_256) + 160] = records[arg1][address(mem[(32 * idx) + 128])].field_0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[(64 * records[arg1].field_256) + 160] = 64
        mem[(64 * records[arg1].field_256) + 224] = records[arg1].field_256
        s = 0
        s = 128
        t = mem[64] + 96
        while records[arg1].field_256 < records[arg1].field_256:
            mem[t] = mem[s + 12 len 20]
            s = records[arg1].field_256 + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * records[arg1].field_256) + 192] = t + -(64 * records[arg1].field_256) - 160
        _110 = mem[(32 * records[arg1].field_256) + 128]
        mem[t] = mem[(32 * records[arg1].field_256) + 128]
        mem[t + 32 len 32 * _110] = mem[(32 * records[arg1].field_256) + 160 len 32 * _110]
        return memory
          from mem[64]
           len t + (32 * _110) + -mem[64] + 32
    mem[(32 * records[arg1].field_256) + 160 len 32 * records[arg1].field_256] = call.data[calldata.size len 32 * records[arg1].field_256]
    idx = 0
    while idx < records[arg1].field_256:
        if idx >= records[arg1].field_256:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(arg1, 2)
        if idx >= records[arg1].field_256:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * records[arg1].field_256) + 160] = records[arg1][address(mem[(32 * idx) + 128])].field_0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(64 * records[arg1].field_256) + 160] = 64
    mem[(64 * records[arg1].field_256) + 224] = records[arg1].field_256
    s = 0
    s = 128
    t = mem[64] + 96
    while records[arg1].field_256 < records[arg1].field_256:
        mem[t] = mem[s + 12 len 20]
        s = records[arg1].field_256 + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * records[arg1].field_256) + 192] = t + -(64 * records[arg1].field_256) - 160
    _111 = mem[(32 * records[arg1].field_256) + 128]
    mem[t] = mem[(32 * records[arg1].field_256) + 128]
    mem[t + 32 len 32 * _111] = mem[(32 * records[arg1].field_256) + 160 len 32 * _111]
    return memory
      from mem[64]
       len t + (32 * _111) + -mem[64] + 32
}



}
