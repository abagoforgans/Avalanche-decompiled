contract main {




// =====================  Runtime code  =====================


address owner;
array of struct read_mypair2;

function owner() payable {
    return owner
}

function read_mypair2(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < read_mypair2.length
    return read_mypair2[arg1].field_0
}

function mypair_lenght() payable {
    return read_mypair2.length
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        if msg.sender != 0xc5c4ee80481b0560774459dc47770dc6ec5f47df:
            revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function dell_mypair(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require read_mypair2.length - 1 < read_mypair2.length
    require arg1 < read_mypair2.length
    read_mypair2[arg1].field_0 = read_mypair2[read_mypair2.length].field_0
    require read_mypair2.length
    read_mypair2[read_mypair2.length].field_0 = 0
    read_mypair2.length--
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xc5c4ee80481b0560774459dc47770dc6ec5f47df:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function add_mypair(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        read_mypair2.length++
        mem[0] = 1
        read_mypair2[read_mypair2.length].field_0 = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function read_mypair() payable {
    mem[64] = (32 * read_mypair2.length) + 128
    mem[96] = read_mypair2.length
    if not read_mypair2.length:
        mem[(32 * read_mypair2.length) + 128] = 32
        mem[(32 * read_mypair2.length) + 160] = read_mypair2.length
        idx = 0
        s = (32 * read_mypair2.length) + 192
        t = 128
        while idx < read_mypair2.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * read_mypair2.length) + 128
           len (96 * read_mypair2.length) + 64
    mem[128] = address(read_mypair2.field_0)
    idx = 128
    s = 0
    while (32 * read_mypair2.length) + 96 > idx:
        mem[idx + 32] = read_mypair2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * read_mypair2.length) + 128] = 32
    mem[(32 * read_mypair2.length) + 160] = read_mypair2.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < read_mypair2.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * read_mypair2.length) + -mem[64] + 192
}

function read_mypair2(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + arg1 <= read_mypair2.length:
        require arg2 <= test266151307()
        mem[96] = arg2
        mem[64] = (32 * arg2) + 128
        if arg2:
            mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        idx = arg1
        while idx < arg1 + arg2:
            require idx < read_mypair2.length
            mem[0] = 1
            require idx - arg1 < arg2
            mem[(32 * idx - arg1) + 128] = read_mypair2[idx].field_0
            idx = idx + 1
            continue 
        mem[(32 * arg2) + 128] = 32
        mem[(32 * arg2) + 160] = arg2
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < mem[96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * arg2) + -mem[64] + 192
    require read_mypair2.length - arg1 <= test266151307()
    mem[96] = read_mypair2.length - arg1
    mem[64] = (32 * read_mypair2.length - arg1) + 128
    if not read_mypair2.length - arg1:
        idx = arg1
        while idx < read_mypair2.length:
            mem[0] = 1
            require idx - arg1 < mem[96]
            mem[(32 * idx - arg1) + 128] = read_mypair2[idx].field_0
            idx = idx + 1
            continue 
        mem[(32 * read_mypair2.length - arg1) + 128] = 32
        _41 = mem[96]
        mem[(32 * read_mypair2.length - arg1) + 160] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _41:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (32 * read_mypair2.length - arg1) + (32 * _41) + -mem[64] + 192
    mem[128 len 32 * read_mypair2.length - arg1] = call.data[calldata.size len 32 * read_mypair2.length - arg1]
    idx = arg1
    while idx < read_mypair2.length:
        mem[0] = 1
        require idx - arg1 < mem[96]
        mem[(32 * idx - arg1) + 128] = read_mypair2[idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * read_mypair2.length - arg1) + 128] = 32
    _42 = mem[96]
    mem[(32 * read_mypair2.length - arg1) + 160] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < mem[96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * read_mypair2.length - arg1) + (32 * _42) + -mem[64] + 192
}

function Read_pair() payable {
    require read_mypair2.length <= test266151307()
    mem[96] = read_mypair2.length
    mem[64] = (32 * read_mypair2.length) + 128
    if not read_mypair2.length:
        idx = 0
        while idx < read_mypair2.length:
            require idx < mem[96]
            mem[mem[(32 * idx) + 128]] = read_mypair2[idx].field_0
            require idx < read_mypair2.length
            mem[0] = 1
            require ext_code.size(read_mypair2[idx].field_0)
            staticcall read_mypair2[idx].field_0.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _65 = mem[_59]
            require mem[_59] == mem[_59 + 18 len 14]
            require mem[_59 + 32] == mem[_59 + 50 len 14]
            require mem[_59 + 64] == mem[_59 + 92 len 4]
            require idx < mem[96]
            _79 = mem[(32 * idx) + 128]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 64] = mem[_59 + 50 len 14]
            mem[_79 + 32] = Mask(112, 0, _65)
            idx = idx + 1
            continue 
        _46 = mem[64]
        mem[mem[64]] = 32
        _49 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _49:
            _89 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_89 + 32]
            mem[t + 64] = mem[_89 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _46 + (96 * _49) + -mem[64] + 64
    mem[64] = (32 * read_mypair2.length) + 224
    mem[(32 * read_mypair2.length) + 128] = 0
    mem[(32 * read_mypair2.length) + 160] = 0
    mem[(32 * read_mypair2.length) + 192] = 0
    mem[var8001] = (32 * read_mypair2.length) + 128
    s = var8001
    idx = var8002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * read_mypair2.length) + 128] = 0
        mem[(32 * read_mypair2.length) + 160] = 0
        mem[(32 * read_mypair2.length) + 192] = 0
        mem[s + 32] = (32 * read_mypair2.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < read_mypair2.length:
        require idx < mem[96]
        mem[mem[(32 * idx) + 128]] = read_mypair2[idx].field_0
        require idx < read_mypair2.length
        mem[0] = 1
        require ext_code.size(read_mypair2[idx].field_0)
        staticcall read_mypair2[idx].field_0.getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _128 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _129 = mem[_128]
        require mem[_128] == mem[_128 + 18 len 14]
        require mem[_128 + 32] == mem[_128 + 50 len 14]
        require mem[_128 + 64] == mem[_128 + 92 len 4]
        require idx < mem[96]
        _133 = mem[(32 * idx) + 128]
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 64] = mem[_128 + 50 len 14]
        mem[_133 + 32] = Mask(112, 0, _129)
        idx = idx + 1
        continue 
    _115 = mem[64]
    mem[mem[64]] = 32
    _118 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _118:
        _136 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_136 + 32]
        mem[t + 64] = mem[_136 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _115 + (96 * _118) + -mem[64] + 64
}

function Read_pair(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + arg1 <= read_mypair2.length:
        require arg2 <= test266151307()
        mem[96] = arg2
        mem[64] = (32 * arg2) + 128
        if not arg2:
            idx = 0
            while idx < arg2:
                require arg1 + idx < read_mypair2.length
                mem[0] = 1
                require ext_code.size(stor[('name', 'read_mypair2', 1) + arg1 + idx].field_0)
                staticcall stor[('name', 'read_mypair2', 1) + arg1 + idx].field_0.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _89 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _101 = mem[_89]
                require mem[_89] == mem[_89 + 18 len 14]
                require mem[_89 + 32] == mem[_89 + 50 len 14]
                require mem[_89 + 64] == mem[_89 + 92 len 4]
                require idx < mem[96]
                _133 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 64] = mem[_89 + 50 len 14]
                mem[_133 + 32] = Mask(112, 0, _101)
                idx = idx + 1
                continue 
            _79 = mem[64]
            mem[mem[64]] = 32
            _87 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _87:
                _153 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_153 + 32]
                mem[t + 64] = mem[_153 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _79 + (96 * _87) + -mem[64] + 64
        mem[64] = (32 * arg2) + 224
        mem[(32 * arg2) + 128] = 0
        mem[(32 * arg2) + 160] = 0
        mem[(32 * arg2) + 192] = 0
        mem[var12001] = (32 * arg2) + 128
        s = var12001
        idx = var12002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * arg2) + 128] = 0
            mem[(32 * arg2) + 160] = 0
            mem[(32 * arg2) + 192] = 0
            mem[s + 32] = (32 * arg2) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg2:
            require arg1 + idx < read_mypair2.length
            mem[0] = 1
            require ext_code.size(stor[('name', 'read_mypair2', 1) + arg1 + idx].field_0)
            staticcall stor[('name', 'read_mypair2', 1) + arg1 + idx].field_0.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _209 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _221 = mem[_209]
            require mem[_209] == mem[_209 + 18 len 14]
            require mem[_209 + 32] == mem[_209 + 50 len 14]
            require mem[_209 + 64] == mem[_209 + 92 len 4]
            require idx < mem[96]
            _229 = mem[(32 * idx) + 128]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 64] = mem[_209 + 50 len 14]
            mem[_229 + 32] = Mask(112, 0, _221)
            idx = idx + 1
            continue 
        _199 = mem[64]
        mem[mem[64]] = 32
        _207 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _207:
            _235 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_235 + 32]
            mem[t + 64] = mem[_235 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _199 + (96 * _207) + -mem[64] + 64
    require read_mypair2.length - arg1 <= test266151307()
    mem[96] = read_mypair2.length - arg1
    mem[64] = (32 * read_mypair2.length - arg1) + 128
    if not read_mypair2.length - arg1:
        idx = 0
        while idx < read_mypair2.length - arg1:
            require arg1 + idx < read_mypair2.length
            mem[0] = 1
            require ext_code.size(stor[('name', 'read_mypair2', 1) + arg1 + idx].field_0)
            staticcall stor[('name', 'read_mypair2', 1) + arg1 + idx].field_0.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _106 = mem[_90]
            require mem[_90] == mem[_90 + 18 len 14]
            require mem[_90 + 32] == mem[_90 + 50 len 14]
            require mem[_90 + 64] == mem[_90 + 92 len 4]
            require idx < mem[96]
            _136 = mem[(32 * idx) + 128]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 64] = mem[_90 + 50 len 14]
            mem[_136 + 32] = Mask(112, 0, _106)
            idx = idx + 1
            continue 
        _83 = mem[64]
        mem[mem[64]] = 32
        _88 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _88:
            _157 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_157 + 32]
            mem[t + 64] = mem[_157 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _83 + (96 * _88) + -mem[64] + 64
    mem[64] = (32 * read_mypair2.length - arg1) + 224
    mem[(32 * read_mypair2.length - arg1) + 128] = 0
    mem[(32 * read_mypair2.length - arg1) + 160] = 0
    mem[(32 * read_mypair2.length - arg1) + 192] = 0
    mem[var13001] = (32 * read_mypair2.length - arg1) + 128
    s = var13001
    idx = var13002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * read_mypair2.length - arg1) + 128] = 0
        mem[(32 * read_mypair2.length - arg1) + 160] = 0
        mem[(32 * read_mypair2.length - arg1) + 192] = 0
        mem[s + 32] = (32 * read_mypair2.length - arg1) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < read_mypair2.length - arg1:
        require arg1 + idx < read_mypair2.length
        mem[0] = 1
        require ext_code.size(stor[('name', 'read_mypair2', 1) + arg1 + idx].field_0)
        staticcall stor[('name', 'read_mypair2', 1) + arg1 + idx].field_0.getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _210 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _222 = mem[_210]
        require mem[_210] == mem[_210 + 18 len 14]
        require mem[_210 + 32] == mem[_210 + 50 len 14]
        require mem[_210 + 64] == mem[_210 + 92 len 4]
        require idx < mem[96]
        _231 = mem[(32 * idx) + 128]
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 64] = mem[_210 + 50 len 14]
        mem[_231 + 32] = Mask(112, 0, _222)
        idx = idx + 1
        continue 
    _203 = mem[64]
    mem[mem[64]] = 32
    _208 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _208:
        _239 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_239 + 32]
        mem[t + 64] = mem[_239 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _203 + (96 * _208) + -mem[64] + 64
}



}
