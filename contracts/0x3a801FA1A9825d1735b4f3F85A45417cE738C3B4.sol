contract main {




// =====================  Runtime code  =====================


#
#  - determineType(address arg1)
#
address supportsInterfaceContractAddress;
array of uint256 stor1;
array of uint256 stor2;

function supportsInterfaceContract() payable {
    return supportsInterfaceContractAddress
}

function _fallback() payable {
    revert
}

function erc721InterfaceIds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor1.length
    return (stor1[0.125 / arg1] / 256^(4 * arg1 % 8) << 224)
}

function erc1155InterfaceIds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor2.length
    return (stor2[0.125 / arg1] / 256^(4 * arg1 % 8) << 224)
}

function supportsInterface(address arg1, bytes4[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    s = arg2 + 36
    t = 128
    idx = 0
    while idx < arg2.length:
        require cd[s] == Mask(32, 224, cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg2.length) + 97] = 0xd04da39000000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg2.length) + 101] = arg1
    mem[ceil32(32 * arg2.length) + 133] = 64
    mem[ceil32(32 * arg2.length) + 165] = arg2.length
    idx = 0
    s = ceil32(32 * arg2.length) + 197
    t = 128
    while idx < arg2.length:
        mem[s] = Mask(32, 224, mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(supportsInterfaceContractAddress)
    staticcall supportsInterfaceContractAddress.0xd04da390 with:
            gas gas_remaining wei
           args address(arg1), Array(len=arg2.length, data=mem[ceil32(32 * arg2.length) + 197 len 32 * arg2.length])
    if ext_call.success:
        mem[ceil32(32 * arg2.length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * arg2.length) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _473 = mem[ceil32(32 * arg2.length) + 97 len 4], address(arg1) << 64
        require mem[ceil32(32 * arg2.length) + 97 len 4], address(arg1) << 64 <= test266151307()
        require ceil32(32 * arg2.length) + return_data.size + 97 > ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], address(arg1) << 64 + 128
        _475 = mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], address(arg1) << 64 + 97]
        if mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], address(arg1) << 64 + 97] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], address(arg1) << 64 + 97]) + 1 < 0 or ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], address(arg1) << 64 + 97]) + 98 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], address(arg1) << 64 + 97]) + 98
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 97] = mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], address(arg1) << 64 + 97]
        require return_data.size >= _473 + (32 * _475) + 32
        s = ceil32(32 * arg2.length) + _473 + 129
        t = ceil32(32 * arg2.length) + ceil32(return_data.size) + 129
        idx = 0
        while idx < _475:
            require mem[s] == bool(mem[s])
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _853 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _475
        idx = 0
        s = mem[64] + 64
        t = ceil32(32 * arg2.length) + ceil32(return_data.size) + 129
        while idx < _475:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _853 + (32 * _475) + -mem[64] + 64
    if return_data.size <= 3:
        if not return_data.size:
            if arg2.length > test266151307():
                revert with 0, 65
            mem[ceil32(32 * arg2.length) + 97] = arg2.length
            mem[64] = ceil32(32 * arg2.length) + (32 * arg2.length) + 129
            if arg2.length:
                mem[ceil32(32 * arg2.length) + 129 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            idx = 0
            while idx < arg2.length:
                if idx >= arg2.length:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg2.length) + 129] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg2.length) + (32 * arg2.length) + 129] = 32
            mem[ceil32(32 * arg2.length) + (32 * arg2.length) + 161] = arg2.length
            idx = 0
            s = mem[64] + 64
            t = ceil32(32 * arg2.length) + 129
            while idx < arg2.length:
                mem[s] = bool(mem[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len ceil32(32 * arg2.length) + (64 * arg2.length) + -mem[64] + 193
        mem[ceil32(32 * arg2.length) + 97] = return_data.size
        mem[ceil32(32 * arg2.length) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if arg2.length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 98] = arg2.length
        mem[64] = ceil32(32 * arg2.length) + ceil32(return_data.size) + (32 * arg2.length) + 130
        if arg2.length:
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 130 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            if idx >= arg2.length:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 130] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + (32 * arg2.length) + 130] = 32
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + (32 * arg2.length) + 162] = arg2.length
        idx = 0
        s = mem[64] + 64
        t = ceil32(32 * arg2.length) + ceil32(return_data.size) + 130
        while idx < arg2.length:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len ceil32(32 * arg2.length) + ceil32(return_data.size) + (64 * arg2.length) + -mem[64] + 194
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
        if not return_data.size:
            if arg2.length > test266151307():
                revert with 0, 65
            mem[ceil32(32 * arg2.length) + 97] = arg2.length
            mem[64] = ceil32(32 * arg2.length) + (32 * arg2.length) + 129
            if arg2.length:
                mem[ceil32(32 * arg2.length) + 129 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            idx = 0
            while idx < arg2.length:
                if idx >= arg2.length:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg2.length) + 129] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg2.length) + (32 * arg2.length) + 129] = 32
            mem[ceil32(32 * arg2.length) + (32 * arg2.length) + 161] = arg2.length
            idx = 0
            s = mem[64] + 64
            t = ceil32(32 * arg2.length) + 129
            while idx < arg2.length:
                mem[s] = bool(mem[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len ceil32(32 * arg2.length) + (64 * arg2.length) + -mem[64] + 193
        mem[ceil32(32 * arg2.length) + 97] = return_data.size
        mem[ceil32(32 * arg2.length) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if arg2.length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 98] = arg2.length
        mem[64] = ceil32(32 * arg2.length) + ceil32(return_data.size) + (32 * arg2.length) + 130
        if arg2.length:
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 130 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            if idx >= arg2.length:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 130] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + (32 * arg2.length) + 130] = 32
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + (32 * arg2.length) + 162] = arg2.length
        idx = 0
        s = mem[64] + 64
        t = ceil32(32 * arg2.length) + ceil32(return_data.size) + 130
        while idx < arg2.length:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len ceil32(32 * arg2.length) + ceil32(return_data.size) + (64 * arg2.length) + -mem[64] + 194
    if return_data.size < 68:
        if not return_data.size:
            if arg2.length > test266151307():
                revert with 0, 65
            mem[ceil32(32 * arg2.length) + 97] = arg2.length
            mem[64] = ceil32(32 * arg2.length) + (32 * arg2.length) + 129
            if arg2.length:
                mem[ceil32(32 * arg2.length) + 129 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            idx = 0
            while idx < arg2.length:
                if idx >= arg2.length:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg2.length) + 129] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg2.length) + (32 * arg2.length) + 129] = 32
            mem[ceil32(32 * arg2.length) + (32 * arg2.length) + 161] = arg2.length
            idx = 0
            s = mem[64] + 64
            t = ceil32(32 * arg2.length) + 129
            while idx < arg2.length:
                mem[s] = bool(mem[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len ceil32(32 * arg2.length) + (64 * arg2.length) + -mem[64] + 193
        mem[ceil32(32 * arg2.length) + 97] = return_data.size
        mem[ceil32(32 * arg2.length) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if arg2.length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 98] = arg2.length
        mem[64] = ceil32(32 * arg2.length) + ceil32(return_data.size) + (32 * arg2.length) + 130
        if arg2.length:
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 130 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            if idx >= arg2.length:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 130] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + (32 * arg2.length) + 130] = 32
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + (32 * arg2.length) + 162] = arg2.length
        idx = 0
        s = mem[64] + 64
        t = ceil32(32 * arg2.length) + ceil32(return_data.size) + 130
        while idx < arg2.length:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len ceil32(32 * arg2.length) + ceil32(return_data.size) + (64 * arg2.length) + -mem[64] + 194
    mem[ceil32(32 * arg2.length) + 97 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if 0, address(arg1) << 64 > test266151307() or 0, address(arg1) << 64 + 36 > return_data.size:
        if not return_data.size:
            if arg2.length > test266151307():
                revert with 0, 65
            mem[ceil32(32 * arg2.length) + 97] = arg2.length
            mem[64] = ceil32(32 * arg2.length) + (32 * arg2.length) + 129
            if arg2.length:
                mem[ceil32(32 * arg2.length) + 129 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            idx = 0
            while idx < arg2.length:
                if idx >= arg2.length:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg2.length) + 129] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg2.length) + (32 * arg2.length) + 129] = 32
            mem[ceil32(32 * arg2.length) + (32 * arg2.length) + 161] = arg2.length
            idx = 0
            s = mem[64] + 64
            t = ceil32(32 * arg2.length) + 129
            while idx < arg2.length:
                mem[s] = bool(mem[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len ceil32(32 * arg2.length) + (64 * arg2.length) + -mem[64] + 193
        mem[ceil32(32 * arg2.length) + 97] = return_data.size
        mem[ceil32(32 * arg2.length) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if arg2.length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 98] = arg2.length
        mem[64] = ceil32(32 * arg2.length) + ceil32(return_data.size) + (32 * arg2.length) + 130
        if arg2.length:
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 130 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            if idx >= arg2.length:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 130] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + (32 * arg2.length) + 130] = 32
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + (32 * arg2.length) + 162] = arg2.length
        idx = 0
        s = mem[64] + 64
        t = ceil32(32 * arg2.length) + ceil32(return_data.size) + 130
        while idx < arg2.length:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len ceil32(32 * arg2.length) + ceil32(return_data.size) + (64 * arg2.length) + -mem[64] + 194
    if mem[ceil32(32 * arg2.length) + 0, address(arg1) << 64 + 97] > test266151307():
        if not return_data.size:
            if arg2.length > test266151307():
                revert with 0, 65
            mem[ceil32(32 * arg2.length) + 97] = arg2.length
            mem[64] = ceil32(32 * arg2.length) + (32 * arg2.length) + 129
            if arg2.length:
                mem[ceil32(32 * arg2.length) + 129 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            idx = 0
            while idx < arg2.length:
                if idx >= arg2.length:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg2.length) + 129] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg2.length) + (32 * arg2.length) + 129] = 32
            mem[ceil32(32 * arg2.length) + (32 * arg2.length) + 161] = arg2.length
            idx = 0
            s = mem[64] + 64
            t = ceil32(32 * arg2.length) + 129
            while idx < arg2.length:
                mem[s] = bool(mem[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len ceil32(32 * arg2.length) + (64 * arg2.length) + -mem[64] + 193
        mem[ceil32(32 * arg2.length) + 97] = return_data.size
        mem[ceil32(32 * arg2.length) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if arg2.length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 98] = arg2.length
        mem[64] = ceil32(32 * arg2.length) + ceil32(return_data.size) + (32 * arg2.length) + 130
        if arg2.length:
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 130 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            if idx >= arg2.length:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 130] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + (32 * arg2.length) + 130] = 32
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + (32 * arg2.length) + 162] = arg2.length
        idx = 0
        s = mem[64] + 64
        t = ceil32(32 * arg2.length) + ceil32(return_data.size) + 130
        while idx < arg2.length:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len ceil32(32 * arg2.length) + ceil32(return_data.size) + (64 * arg2.length) + -mem[64] + 194
    if 0, address(arg1) << 64 + mem[ceil32(32 * arg2.length) + 0, address(arg1) << 64 + 97] + 32 > return_data.size - 4:
        if not return_data.size:
            if arg2.length > test266151307():
                revert with 0, 65
            mem[ceil32(32 * arg2.length) + 97] = arg2.length
            mem[64] = ceil32(32 * arg2.length) + (32 * arg2.length) + 129
            if arg2.length:
                mem[ceil32(32 * arg2.length) + 129 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            idx = 0
            while idx < arg2.length:
                if idx >= arg2.length:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg2.length) + 129] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg2.length) + (32 * arg2.length) + 129] = 32
            mem[ceil32(32 * arg2.length) + (32 * arg2.length) + 161] = arg2.length
            idx = 0
            s = mem[64] + 64
            t = ceil32(32 * arg2.length) + 129
            while idx < arg2.length:
                mem[s] = bool(mem[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len ceil32(32 * arg2.length) + (64 * arg2.length) + -mem[64] + 193
        mem[ceil32(32 * arg2.length) + 97] = return_data.size
        mem[ceil32(32 * arg2.length) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if arg2.length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 98] = arg2.length
        mem[64] = ceil32(32 * arg2.length) + ceil32(return_data.size) + (32 * arg2.length) + 130
        if arg2.length:
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 130 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            if idx >= arg2.length:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 130] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + (32 * arg2.length) + 130] = 32
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + (32 * arg2.length) + 162] = arg2.length
        idx = 0
        s = mem[64] + 64
        t = ceil32(32 * arg2.length) + ceil32(return_data.size) + 130
        while idx < arg2.length:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len ceil32(32 * arg2.length) + ceil32(return_data.size) + (64 * arg2.length) + -mem[64] + 194
    if floor32(0, address(arg1) << 64 + mem[ceil32(32 * arg2.length) + 0, address(arg1) << 64 + 97] + 31) + 98 < 97 or ceil32(32 * arg2.length) + floor32(0, address(arg1) << 64 + mem[ceil32(32 * arg2.length) + 0, address(arg1) << 64 + 97] + 31) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg2.length) + floor32(0, address(arg1) << 64 + mem[ceil32(32 * arg2.length) + 0, address(arg1) << 64 + 97] + 31) + 98
    if ceil32(32 * arg2.length) + 0, address(arg1) << 64 + 97:
        if arg2.length > test266151307():
            revert with 0, 65
        _546 = mem[64]
        mem[mem[64]] = arg2.length
        mem[64] = mem[64] + (32 * arg2.length) + 32
        if not arg2.length:
            idx = 0
            while idx < arg2.length:
                if idx >= mem[_546]:
                    revert with 0, 50
                mem[(32 * idx) + _546 + 32] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _771 = mem[64]
            mem[mem[64]] = 32
            _801 = mem[_546]
            mem[mem[64] + 32] = mem[_546]
            idx = 0
            s = mem[64] + 64
            t = _546 + 32
            while idx < _801:
                mem[s] = bool(mem[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _771 + (32 * _801) + -mem[64] + 64
        mem[_546 + 32 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            if idx >= mem[_546]:
                revert with 0, 50
            mem[(32 * idx) + _546 + 32] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _772 = mem[64]
        mem[mem[64]] = 32
        _802 = mem[_546]
        mem[mem[64] + 32] = mem[_546]
        idx = 0
        s = mem[64] + 64
        t = _546 + 32
        while idx < _802:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _772 + (32 * _802) + -mem[64] + 64
    if not return_data.size:
        if arg2.length > test266151307():
            revert with 0, 65
        _595 = mem[64]
        mem[mem[64]] = arg2.length
        mem[64] = mem[64] + (32 * arg2.length) + 32
        if not arg2.length:
            idx = 0
            while idx < arg2.length:
                if idx >= mem[_595]:
                    revert with 0, 50
                mem[(32 * idx) + _595 + 32] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _773 = mem[64]
            mem[mem[64]] = 32
            _803 = mem[_595]
            mem[mem[64] + 32] = mem[_595]
            idx = 0
            s = mem[64] + 64
            t = _595 + 32
            while idx < _803:
                mem[s] = bool(mem[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _773 + (32 * _803) + -mem[64] + 64
        mem[_595 + 32 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            if idx >= mem[_595]:
                revert with 0, 50
            mem[(32 * idx) + _595 + 32] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _774 = mem[64]
        mem[mem[64]] = 32
        _804 = mem[_595]
        mem[mem[64] + 32] = mem[_595]
        idx = 0
        s = mem[64] + 64
        t = _595 + 32
        while idx < _804:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _774 + (32 * _804) + -mem[64] + 64
    _547 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size) + 1
    mem[_547] = return_data.size
    mem[_547 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if arg2.length > test266151307():
        revert with 0, 65
    _596 = mem[64]
    mem[mem[64]] = arg2.length
    mem[64] = mem[64] + (32 * arg2.length) + 32
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            if idx >= mem[_596]:
                revert with 0, 50
            mem[(32 * idx) + _596 + 32] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _775 = mem[64]
        mem[mem[64]] = 32
        _805 = mem[_596]
        mem[mem[64] + 32] = mem[_596]
        idx = 0
        s = mem[64] + 64
        t = _596 + 32
        while idx < _805:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _775 + (32 * _805) + -mem[64] + 64
    mem[_596 + 32 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        if idx >= mem[_596]:
            revert with 0, 50
        mem[(32 * idx) + _596 + 32] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _776 = mem[64]
    mem[mem[64]] = 32
    _806 = mem[_596]
    mem[mem[64] + 32] = mem[_596]
    idx = 0
    s = mem[64] + 64
    t = _596 + 32
    while idx < _806:
        mem[s] = bool(mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _776 + (32 * _806) + -mem[64] + 64
}



}
