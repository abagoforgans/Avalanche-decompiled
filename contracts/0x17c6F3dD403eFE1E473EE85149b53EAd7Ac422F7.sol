contract main {




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
  stop
}

function sub_00a0ce06(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    stor0.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor0.length > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            stor0[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor0.length > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_6ebf27c6(?) {
    require calldata.size - 4 >= 32
    if block.number <= arg1:
        mem[192 len 2048] = mem[128], 64, mem[192 len 1984]
        return 64, 0, 64, mem[192 len 2048]
    mem[96] = stor0.length
    if not stor0.length:
        if stor0.length > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * stor0.length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * stor0.length) + 128] = 2 * stor0.length
        mem[64] = (98 * stor0.length) + 160
        if not uint255(stor0.length):
            idx = 0
            while idx < stor0.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                staticcall mem[(32 * idx) + 128].getReserves() with:
                        gas 15000 wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[(32 * stor0.length) + 128]:
                    revert with 'NH{q', 50
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 1 > !(2 * idx):
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[(32 * stor0.length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + (32 * stor0.length) + 160] = ext_call.return_data[32]
                mem[(64 * idx) + (32 * stor0.length) + 160] = ext_call.return_data[0]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _38 = mem[64]
            mem[mem[64]] = 64
            _43 = mem[(32 * stor0.length) + 128]
            mem[mem[64] + 64] = mem[(32 * stor0.length) + 128]
            mem[mem[64] + 96 len 32 * _43] = mem[(32 * stor0.length) + 160 len 32 * _43]
            mem[mem[64] + 32] = block.number
            return memory
              from mem[64]
               len _38 + (32 * _43) + -mem[64] + 96
        mem[(32 * stor0.length) + 160 len 64 * stor0.length] = call.data[calldata.size len 64 * stor0.length]
        idx = 0
        while idx < stor0.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            staticcall mem[(32 * idx) + 128].getReserves() with:
                    gas 15000 wei
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[(32 * stor0.length) + 128]:
                revert with 'NH{q', 50
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[(32 * stor0.length) + 128]:
                revert with 'NH{q', 50
            mem[(32 * (2 * idx) + 1) + (32 * stor0.length) + 160] = ext_call.return_data[32]
            mem[(64 * idx) + (32 * stor0.length) + 160] = ext_call.return_data[0]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _40 = mem[64]
        mem[mem[64]] = 64
        _47 = mem[(32 * stor0.length) + 128]
        mem[mem[64] + 64] = mem[(32 * stor0.length) + 128]
        mem[mem[64] + 96 len 32 * _47] = mem[(32 * stor0.length) + 160 len 32 * _47]
        mem[mem[64] + 32] = block.number
        return memory
          from mem[64]
           len _40 + (32 * _47) + -mem[64] + 96
    mem[0] = 0
    mem[128] = address(stor0.field_0)
    idx = 128
    s = 0
    while (32 * stor0.length) + 96 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor0.length > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 2 * stor0.length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * stor0.length) + 128] = 2 * stor0.length
    mem[64] = (98 * stor0.length) + 160
    if not uint255(stor0.length):
        idx = 0
        while idx < stor0.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            staticcall mem[(32 * idx) + 128].getReserves() with:
                    gas 15000 wei
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[(32 * stor0.length) + 128]:
                revert with 'NH{q', 50
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[(32 * stor0.length) + 128]:
                revert with 'NH{q', 50
            mem[(32 * (2 * idx) + 1) + (32 * stor0.length) + 160] = ext_call.return_data[32]
            mem[(64 * idx) + (32 * stor0.length) + 160] = ext_call.return_data[0]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _93 = mem[64]
        mem[mem[64]] = 64
        _97 = mem[(32 * stor0.length) + 128]
        mem[mem[64] + 64] = mem[(32 * stor0.length) + 128]
        mem[mem[64] + 96 len 32 * _97] = mem[(32 * stor0.length) + 160 len 32 * _97]
        mem[mem[64] + 32] = block.number
        return memory
          from mem[64]
           len _93 + (32 * _97) + -mem[64] + 96
    mem[(32 * stor0.length) + 160 len 64 * stor0.length] = call.data[calldata.size len 64 * stor0.length]
    idx = 0
    while idx < stor0.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        staticcall mem[(32 * idx) + 128].getReserves() with:
                gas 15000 wei
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * idx >= mem[(32 * stor0.length) + 128]:
            revert with 'NH{q', 50
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 1 > !(2 * idx):
            revert with 'NH{q', 17
        if (2 * idx) + 1 >= mem[(32 * stor0.length) + 128]:
            revert with 'NH{q', 50
        mem[(32 * (2 * idx) + 1) + (32 * stor0.length) + 160] = ext_call.return_data[32]
        mem[(64 * idx) + (32 * stor0.length) + 160] = ext_call.return_data[0]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _95 = mem[64]
    mem[mem[64]] = 64
    _101 = mem[(32 * stor0.length) + 128]
    mem[mem[64] + 64] = mem[(32 * stor0.length) + 128]
    mem[mem[64] + 96 len 32 * _101] = mem[(32 * stor0.length) + 160 len 32 * _101]
    mem[mem[64] + 32] = block.number
    return memory
      from mem[64]
       len _95 + (32 * _101) + -mem[64] + 96
}



}
