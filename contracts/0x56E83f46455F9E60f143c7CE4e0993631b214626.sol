contract main {




// =====================  Runtime code  =====================


#
#  - sub_1df78764(?)
#
array of struct stor0;
array of address stor1;
uint256 sub_68bb600b;
address sub_7d3cdd60Address;
uint256 sub_cb6adbe9;
address sub_9ab8c78fAddress;
uint256 sub_8796f547;
address sub_62a251e3Address;
uint256 sub_5f0b2083;
uint256 stor9;
uint256 paused;
array of struct stor11;

function sub_5dfb849b(?) payable {
    return stor1.length
}

function sub_5f0b2083(?) payable {
    return sub_5f0b2083
}

function sub_62a251e3(?) payable {
    return sub_62a251e3Address
}

function getPaused() payable {
    return paused
}

function sub_68bb600b(?) payable {
    return sub_68bb600b
}

function sub_7d3cdd60(?) payable {
    return sub_7d3cdd60Address
}

function sub_8796f547(?) payable {
    return sub_8796f547
}

function sub_9ab8c78f(?) payable {
    return sub_9ab8c78fAddress
}

function sub_a5be5f7a(?) payable {
    return stor11.length
}

function sub_cb6adbe9(?) payable {
    return sub_cb6adbe9
}

function _fallback() payable {
    revert
}

function setPaused(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    paused = arg1
}

function setdevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        stor1.length = arg1
    revert with 0, 'Ownable: caller is not the owner'
}

function sub_28c02b76(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        sub_9ab8c78fAddress = address(arg1)
    revert with 0, 'Ownable: caller is not the owner'
}

function sub_d41e4080(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        sub_62a251e3Address = address(arg1)
    revert with 0, 'Ownable: caller is not the owner'
}

function sub_f6f8399e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        sub_7d3cdd60Address = address(arg1)
    revert with 0, 'Ownable: caller is not the owner'
}

function sub_6d009f5d(?) payable {
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        stor11.length = 0
        idx = sha3(11)
        while sha3(11) + (2 * stor11.length) > idx:
            stor[idx] = 0
            stor1[idx] = 0
            idx = idx + 2
            continue 
    revert with 0, 'Ownable: caller is not the owner'
}

function setFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        sub_68bb600b = arg1
        sub_cb6adbe9 = arg2
        sub_8796f547 = arg3
        sub_5f0b2083 = arg4
        if arg1 > !arg2:
            revert with 0, 17
        if arg1 + arg2 > !arg3:
            revert with 0, 17
        if arg1 + arg2 + arg3 > !arg4:
            revert with 0, 17
        stor9 = arg1 + arg2 + arg3 + arg4
    revert with 0, 'Ownable: caller is not the owner'
}

function getRouters() payable {
    mem[64] = (32 * stor11.length) + 128
    mem[96] = stor11.length
    s = 128
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        _11 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11] = stor11[idx].field_0
        mem[_11 + 32] = stor11[idx].field_256
        mem[s] = _11
        s = s + 32
        idx = idx + 1
        continue 
    _12 = mem[64]
    mem[mem[64]] = 32
    _13 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _13:
        _18 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_18 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _12 + (64 * _13) + -mem[64] + 64
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
        idx = 0
        while idx < stor0.length:
            mem[0] = 0
            if stor0[idx].field_0 == arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is already the owner'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        stor0.length++
        stor0[stor0.length].field_0 = arg1
    revert with 0, 'Ownable: caller is not the owner'
}

function addRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0, 'router address cannot be 0'
        require ext_code.size(arg1)
        staticcall arg1.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        stor11.length++
        stor11[stor11.length].field_0 = arg1
        stor11[stor11.length].field_256 = mem[140 len 20]
    revert with 0, 'Ownable: caller is not the owner'
}

function owner() payable {
    mem[64] = (32 * stor0.length) + 128
    mem[96] = stor0.length
    if not stor0.length:
        mem[(32 * stor0.length) + 128] = 32
        mem[(32 * stor0.length) + 160] = stor0.length
        idx = 0
        s = 128
        t = (32 * stor0.length) + 192
        while idx < stor0.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor0.length) + 128
           len (96 * stor0.length) + 64
    mem[128] = address(stor0.field_0)
    idx = 128
    s = 0
    while (32 * stor0.length) + 96 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0.length) + 128] = 32
    mem[(32 * stor0.length) + 160] = stor0.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor0.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor0.length) + -mem[64] + 192
}

function addRouters(address[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            s = 0
            while s < stor0.length:
                mem[0] = 0
                if stor0[s].field_0 != msg.sender:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if not address(cd[((32 * idx) + arg1 + 36)]):
                    revert with 0, 'router address cannot be 0'
                _49 = mem[64]
                mem[64] = mem[64] + 64
                mem[_49] = address(cd[((32 * idx) + arg1 + 36)])
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _54 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_54] == mem[_54 + 12 len 20]
                mem[_49 + 32] = mem[_54 + 12 len 20]
                stor11.length++
                mem[0] = 11
                stor11[stor11.length].field_0 = address(cd[((32 * idx) + arg1 + 36)])
                stor11[stor11.length].field_256 = mem[_49 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            revert with 0, 'Ownable: caller is not the owner'
    revert with 0, 'Ownable: caller is not the owner'
}

function getContractInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _9
    require _8 + _9 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_9)] = mem[ceil32(return_data.size) + _8 + 128 len ceil32(_9)]
    if ceil32(_9) > _9:
        mem[_9 + (2 * ceil32(return_data.size)) + 128] = 0
    mem[mem[64]] = ext_call.return_data[0]
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = _9
    mem[mem[64] + 96 len ceil32(_9)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_9)]
    if ceil32(_9) > _9:
        mem[_9 + mem[64] + 96] = 0
    return ext_call.return_data[0], Array(len=_9, data=mem[mem[64] + 96 len ceil32(_9)])
}

function sub_832d1941(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[64] = 192
    mem[96 len 96] = call.data[calldata.size len 96]
    idx = 0
    while idx < ('cd', 68).length:
        if cd[36] >= stor11.length:
            revert with 0, 50
        mem[0] = 11
        if idx >= ('cd', 68).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(stor11[cd[36]].field_256)
        staticcall stor11[cd[36]].field_256.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _152 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _153 = mem[_152]
        require mem[_152] == mem[_152 + 12 len 20]
        if idx >= ('cd', 68).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _156 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _157 = mem[_156]
        if not mem[_156]:
            if idx >= ('cd', 100).length:
                revert with 0, 50
            if cd[((32 * idx) + cd[100] + 36)] and 1 > -1 / cd[((32 * idx) + cd[100] + 36)]:
                revert with 0, 17
            if cd[36] >= stor11.length:
                revert with 0, 50
            mem[0] = 11
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(stor11[cd[36]].field_256)
            staticcall stor11[cd[36]].field_256.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _162 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_162] == mem[_162 + 12 len 20]
            if not mem[_162 + 12 len 20]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            require ext_code.size(address(_153))
            staticcall address(_153).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _173 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _178 = mem[_173]
            require mem[_173] == mem[_173 + 18 len 14]
            _180 = mem[_173 + 32]
            require mem[_173 + 32] == mem[_173 + 50 len 14]
            require mem[_173 + 64] == mem[_173 + 92 len 4]
            if mem[_173 + 18 len 14] < cd[((32 * idx) + cd[100] + 36)]:
                if mem[_173 + 50 len 14] < cd[((32 * idx) + cd[100] + 36)]:
                    _189 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_189] = 0
                    mem[_189 + 32] = idx
                    mem[_189 + 64] = Mask(112, 0, _178)
                    _191 = mem[64]
                    idx = 0
                    s = _189
                    t = mem[64]
                    while idx < 3:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _191 + -mem[64] + 96
                if idx >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(_153))
                staticcall address(_153).0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _201 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_201] == mem[_201 + 12 len 20]
                if mem[_201 + 12 len 20] != address(cd[((32 * idx) + cd[68] + 36)]):
                    _222 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_222] = 0
                    mem[_222 + 32] = idx
                    mem[_222 + 64] = Mask(112, 0, _178)
                    _228 = mem[64]
                    idx = 0
                    s = _222
                    t = mem[64]
                    while idx < 3:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _228 + -mem[64] + 96
                _223 = mem[64]
                mem[64] = mem[64] + 96
                mem[_223] = 1
                mem[_223 + 32] = idx
                mem[_223 + 64] = Mask(112, 0, _180)
                _229 = mem[64]
                idx = 0
                s = _223
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _229 + -mem[64] + 96
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_153))
            staticcall address(_153).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _199 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_199] == mem[_199 + 12 len 20]
            if mem[_199 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                _216 = mem[64]
                mem[64] = mem[64] + 96
                mem[_216] = 1
                mem[_216 + 32] = idx
                mem[_216 + 64] = Mask(112, 0, _178)
                _225 = mem[64]
                idx = 0
                s = _216
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _225 + -mem[64] + 96
            if Mask(112, 0, _180) < cd[((32 * idx) + cd[100] + 36)]:
                _224 = mem[64]
                mem[64] = mem[64] + 96
                mem[_224] = 0
                mem[_224 + 32] = idx
                mem[_224 + 64] = Mask(112, 0, _178)
                _230 = mem[64]
                idx = 0
                s = _224
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _230 + -mem[64] + 96
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_153))
            staticcall address(_153).0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _248 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_248] == mem[_248 + 12 len 20]
            if mem[_248 + 12 len 20] != address(cd[((32 * idx) + cd[68] + 36)]):
                _270 = mem[64]
                mem[64] = mem[64] + 96
                mem[_270] = 0
                mem[_270 + 32] = idx
                mem[_270 + 64] = Mask(112, 0, _178)
                _273 = mem[64]
                idx = 0
                s = _270
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _273 + -mem[64] + 96
            _271 = mem[64]
            mem[64] = mem[64] + 96
            mem[_271] = 1
            mem[_271 + 32] = idx
            mem[_271 + 64] = Mask(112, 0, _180)
            _274 = mem[64]
            idx = 0
            s = _271
            t = mem[64]
            while idx < 3:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _274 + -mem[64] + 96
        if bool(bool(mem[_156] < 78)) or bool(bool(mem[_156] < 32)):
            if idx >= ('cd', 100).length:
                revert with 0, 50
            if cd[((32 * idx) + cd[100] + 36)] and 10^mem[_156] > -1 / cd[((32 * idx) + cd[100] + 36)]:
                revert with 0, 17
            if cd[36] >= stor11.length:
                revert with 0, 50
            mem[0] = 11
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(stor11[cd[36]].field_256)
            staticcall stor11[cd[36]].field_256.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _167 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_167] == mem[_167 + 12 len 20]
            if not mem[_167 + 12 len 20]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            require ext_code.size(address(_153))
            staticcall address(_153).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _179 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _183 = mem[_179]
            require mem[_179] == mem[_179 + 18 len 14]
            _186 = mem[_179 + 32]
            require mem[_179 + 32] == mem[_179 + 50 len 14]
            require mem[_179 + 64] == mem[_179 + 92 len 4]
            if mem[_179 + 18 len 14] < cd[((32 * idx) + cd[100] + 36)] * 10^_157:
                if mem[_179 + 50 len 14] < cd[((32 * idx) + cd[100] + 36)] * 10^_157:
                    _195 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_195] = 0
                    mem[_195 + 32] = idx
                    mem[_195 + 64] = Mask(112, 0, _183)
                    _200 = mem[64]
                    idx = 0
                    s = _195
                    t = mem[64]
                    while idx < 3:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _200 + -mem[64] + 96
                if idx >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(_153))
                staticcall address(_153).0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _212 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_212] == mem[_212 + 12 len 20]
                if mem[_212 + 12 len 20] != address(cd[((32 * idx) + cd[68] + 36)]):
                    _234 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_234] = 0
                    mem[_234 + 32] = idx
                    mem[_234 + 64] = Mask(112, 0, _183)
                    _243 = mem[64]
                    idx = 0
                    s = _234
                    t = mem[64]
                    while idx < 3:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _243 + -mem[64] + 96
                _235 = mem[64]
                mem[64] = mem[64] + 96
                mem[_235] = 1
                mem[_235 + 32] = idx
                mem[_235 + 64] = Mask(112, 0, _186)
                _244 = mem[64]
                idx = 0
                s = _235
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _244 + -mem[64] + 96
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_153))
            staticcall address(_153).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _210 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_210] == mem[_210 + 12 len 20]
            if mem[_210 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                _231 = mem[64]
                mem[64] = mem[64] + 96
                mem[_231] = 1
                mem[_231 + 32] = idx
                mem[_231 + 64] = Mask(112, 0, _183)
                _237 = mem[64]
                idx = 0
                s = _231
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _237 + -mem[64] + 96
            if Mask(112, 0, _186) < cd[((32 * idx) + cd[100] + 36)] * 10^_157:
                _236 = mem[64]
                mem[64] = mem[64] + 96
                mem[_236] = 0
                mem[_236 + 32] = idx
                mem[_236 + 64] = Mask(112, 0, _183)
                _245 = mem[64]
                idx = 0
                s = _236
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _245 + -mem[64] + 96
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_153))
            staticcall address(_153).0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _263 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_263] == mem[_263 + 12 len 20]
            if mem[_263 + 12 len 20] != address(cd[((32 * idx) + cd[68] + 36)]):
                _276 = mem[64]
                mem[64] = mem[64] + 96
                mem[_276] = 0
                mem[_276 + 32] = idx
                mem[_276 + 64] = Mask(112, 0, _183)
                _280 = mem[64]
                idx = 0
                s = _276
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _280 + -mem[64] + 96
            _277 = mem[64]
            mem[64] = mem[64] + 96
            mem[_277] = 1
            mem[_277 + 32] = idx
            mem[_277 + 64] = Mask(112, 0, _186)
            _281 = mem[64]
            idx = 0
            s = _277
            t = mem[64]
            while idx < 3:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _281 + -mem[64] + 96
        t = 10
        u = 1
        s = mem[_156]
        while s > 1:
            if t > -1 / t:
                revert with 0, 17
            if not bool(s):
                t = t * t
                u = u
                s = uint255(s) * 0.5
                continue 
            t = t * t
            u = t * u
            s = uint255(s) * 0.5
            continue 
        if u > -1 / t:
            revert with 0, 17
        if idx >= ('cd', 100).length:
            revert with 0, 50
        if cd[((32 * idx) + cd[100] + 36)] and t * u > -1 / cd[((32 * idx) + cd[100] + 36)]:
            revert with 0, 17
        if cd[36] >= stor11.length:
            revert with 0, 50
        mem[0] = 11
        if idx >= ('cd', 68).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(stor11[cd[36]].field_256)
        staticcall stor11[cd[36]].field_256.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _323 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_323] == mem[_323 + 12 len 20]
        if not mem[_323 + 12 len 20]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require ext_code.size(address(_153))
        staticcall address(_153).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _327 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _328 = mem[_327]
        require mem[_327] == mem[_327 + 18 len 14]
        _329 = mem[_327 + 32]
        require mem[_327 + 32] == mem[_327 + 50 len 14]
        require mem[_327 + 64] == mem[_327 + 92 len 4]
        if mem[_327 + 18 len 14] < cd[((32 * idx) + cd[100] + 36)] * t * u:
            if mem[_327 + 50 len 14] < cd[((32 * idx) + cd[100] + 36)] * t * u:
                _331 = mem[64]
                mem[64] = mem[64] + 96
                mem[_331] = 0
                mem[_331 + 32] = idx
                mem[_331 + 64] = Mask(112, 0, _328)
                _332 = mem[64]
                idx = 0
                s = _331
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _332 + -mem[64] + 96
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_153))
            staticcall address(_153).0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _339 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_339] == mem[_339 + 12 len 20]
            if mem[_339 + 12 len 20] != address(cd[((32 * idx) + cd[68] + 36)]):
                _343 = mem[64]
                mem[64] = mem[64] + 96
                mem[_343] = 0
                mem[_343 + 32] = idx
                mem[_343 + 64] = Mask(112, 0, _328)
                _347 = mem[64]
                idx = 0
                s = _343
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _347 + -mem[64] + 96
            _344 = mem[64]
            mem[64] = mem[64] + 96
            mem[_344] = 1
            mem[_344 + 32] = idx
            mem[_344 + 64] = Mask(112, 0, _329)
            _348 = mem[64]
            idx = 0
            s = _344
            t = mem[64]
            while idx < 3:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _348 + -mem[64] + 96
        if idx >= ('cd', 68).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(_153))
        staticcall address(_153).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _338 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_338] == mem[_338 + 12 len 20]
        if mem[_338 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
            _342 = mem[64]
            mem[64] = mem[64] + 96
            mem[_342] = 1
            mem[_342 + 32] = idx
            mem[_342 + 64] = Mask(112, 0, _328)
            _346 = mem[64]
            idx = 0
            s = _342
            t = mem[64]
            while idx < 3:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _346 + -mem[64] + 96
        if Mask(112, 0, _329) < cd[((32 * idx) + cd[100] + 36)] * t * u:
            _345 = mem[64]
            mem[64] = mem[64] + 96
            mem[_345] = 0
            mem[_345 + 32] = idx
            mem[_345 + 64] = Mask(112, 0, _328)
            _349 = mem[64]
            idx = 0
            s = _345
            t = mem[64]
            while idx < 3:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _349 + -mem[64] + 96
        if idx >= ('cd', 68).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(_153))
        staticcall address(_153).0xd21220a7 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _356 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_356] == mem[_356 + 12 len 20]
        if mem[_356 + 12 len 20] != address(cd[((32 * idx) + cd[68] + 36)]):
            _358 = mem[64]
            mem[64] = mem[64] + 96
            mem[_358] = 0
            mem[_358 + 32] = idx
            mem[_358 + 64] = Mask(112, 0, _328)
            _360 = mem[64]
            idx = 0
            s = _358
            t = mem[64]
            while idx < 3:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _360 + -mem[64] + 96
        _359 = mem[64]
        mem[64] = mem[64] + 96
        mem[_359] = 1
        mem[_359 + 32] = idx
        mem[_359 + 64] = Mask(112, 0, _329)
        _361 = mem[64]
        idx = 0
        s = _359
        t = mem[64]
        while idx < 3:
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _361 + -mem[64] + 96
    return 0
}

function sub_2e572faf(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[64] = 256
    mem[96 len 160] = call.data[calldata.size len 160]
    idx = 0
    while idx < ('cd', 36).length:
        s = 0
        while s < ('cd', 4).length:
            require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            _476 = mem[64]
            mem[64] = mem[64] + 96
            mem[_476 len 96] = call.data[calldata.size len 96]
            t = 0
            while t < ('cd', 100).length:
                if cd[((32 * idx) + cd[36] + 36)] >= stor11.length:
                    revert with 0, 50
                mem[0] = 11
                if t >= ('cd', 100).length:
                    revert with 0, 50
                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * t) + cd[100] + 36)])
                require ext_code.size(stor11[cd[((32 * idx) + cd[36] + 36)]].field_256)
                staticcall stor11[cd[((32 * idx) + cd[36] + 36)]].field_256.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[100] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _719 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _720 = mem[_719]
                require mem[_719] == mem[_719 + 12 len 20]
                if t >= ('cd', 100).length:
                    revert with 0, 50
                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                staticcall address(cd[((32 * t) + cd[100] + 36)]).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _723 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _724 = mem[_723]
                if not mem[_723]:
                    if t >= ('cd', 68).length:
                        revert with 0, 50
                    if cd[((32 * t) + cd[68] + 36)] and 1 > -1 / cd[((32 * t) + cd[68] + 36)]:
                        revert with 0, 17
                    if cd[((32 * idx) + cd[36] + 36)] >= stor11.length:
                        revert with 0, 50
                    mem[0] = 11
                    if t >= ('cd', 100).length:
                        revert with 0, 50
                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[100] + 36)])
                    require ext_code.size(stor11[cd[((32 * idx) + cd[36] + 36)]].field_256)
                    staticcall stor11[cd[((32 * idx) + cd[36] + 36)]].field_256.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[100] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _729 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_729] == mem[_729 + 12 len 20]
                    if not mem[_729 + 12 len 20]:
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        continue 
                    require ext_code.size(address(_720))
                    staticcall address(_720).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _740 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _745 = mem[_740]
                    require mem[_740] == mem[_740 + 18 len 14]
                    _747 = mem[_740 + 32]
                    require mem[_740 + 32] == mem[_740 + 50 len 14]
                    require mem[_740 + 64] == mem[_740 + 92 len 4]
                    if mem[_740 + 18 len 14] < cd[((32 * t) + cd[68] + 36)]:
                        if mem[_740 + 50 len 14] < cd[((32 * t) + cd[68] + 36)]:
                            _756 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_756] = 0
                            mem[_756 + 32] = t
                            mem[_756 + 64] = Mask(112, 0, _745)
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if t >= ('cd', 100).length:
                            revert with 0, 50
                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                        require ext_code.size(address(_720))
                        staticcall address(_720).0xd21220a7 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _772 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_772] == mem[_772 + 12 len 20]
                        if mem[_772 + 12 len 20] != address(cd[((32 * t) + cd[100] + 36)]):
                            _799 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_799] = 0
                            mem[_799 + 32] = t
                            mem[_799 + 64] = Mask(112, 0, _745)
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        _800 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_800] = 1
                        mem[_800 + 32] = t
                        mem[_800 + 64] = Mask(112, 0, _747)
                        _813 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_813] = 1
                        mem[_813 + 32] = s
                        mem[_813 + 64] = t
                        mem[_813 + 96] = idx
                        mem[_813 + 128] = Mask(112, 0, _747)
                        idx = 0
                        s = _813
                        t = mem[64]
                        while idx < 5:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if t >= ('cd', 100).length:
                            revert with 0, 50
                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                        require ext_code.size(address(_720))
                        staticcall address(_720).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _768 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_768] == mem[_768 + 12 len 20]
                        if mem[_768 + 12 len 20] == address(cd[((32 * t) + cd[100] + 36)]):
                            _792 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_792] = 1
                            mem[_792 + 32] = t
                            mem[_792 + 64] = Mask(112, 0, _745)
                            _804 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_804] = 1
                            mem[_804 + 32] = s
                            mem[_804 + 64] = t
                            mem[_804 + 96] = idx
                            mem[_804 + 128] = Mask(112, 0, _745)
                            idx = 0
                            s = _804
                            t = mem[64]
                            while idx < 5:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            if Mask(112, 0, _747) < cd[((32 * t) + cd[68] + 36)]:
                                _801 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_801] = 0
                                mem[_801 + 32] = t
                                mem[_801 + 64] = Mask(112, 0, _745)
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            if t >= ('cd', 100).length:
                                revert with 0, 50
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            require ext_code.size(address(_720))
                            staticcall address(_720).0xd21220a7 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _844 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_844] == mem[_844 + 12 len 20]
                            if mem[_844 + 12 len 20] != address(cd[((32 * t) + cd[100] + 36)]):
                                _890 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_890] = 0
                                mem[_890 + 32] = t
                                mem[_890 + 64] = Mask(112, 0, _745)
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            _891 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_891] = 1
                            mem[_891 + 32] = t
                            mem[_891 + 64] = Mask(112, 0, _747)
                            _900 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_900] = 1
                            mem[_900 + 32] = s
                            mem[_900 + 64] = t
                            mem[_900 + 96] = idx
                            mem[_900 + 128] = Mask(112, 0, _747)
                            idx = 0
                            s = _900
                            t = mem[64]
                            while idx < 5:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    if bool(bool(mem[_723] < 78)) or bool(bool(mem[_723] < 32)):
                        if t >= ('cd', 68).length:
                            revert with 0, 50
                        if cd[((32 * t) + cd[68] + 36)] and 10^mem[_723] > -1 / cd[((32 * t) + cd[68] + 36)]:
                            revert with 0, 17
                        if cd[((32 * idx) + cd[36] + 36)] >= stor11.length:
                            revert with 0, 50
                        mem[0] = 11
                        if t >= ('cd', 100).length:
                            revert with 0, 50
                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[100] + 36)])
                        require ext_code.size(stor11[cd[((32 * idx) + cd[36] + 36)]].field_256)
                        staticcall stor11[cd[((32 * idx) + cd[36] + 36)]].field_256.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[100] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _734 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_734] == mem[_734 + 12 len 20]
                        if not mem[_734 + 12 len 20]:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            continue 
                        require ext_code.size(address(_720))
                        staticcall address(_720).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _746 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _750 = mem[_746]
                        require mem[_746] == mem[_746 + 18 len 14]
                        _753 = mem[_746 + 32]
                        require mem[_746 + 32] == mem[_746 + 50 len 14]
                        require mem[_746 + 64] == mem[_746 + 92 len 4]
                        if mem[_746 + 18 len 14] < cd[((32 * t) + cd[68] + 36)] * 10^_724:
                            if mem[_746 + 50 len 14] < cd[((32 * t) + cd[68] + 36)] * 10^_724:
                                _764 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_764] = 0
                                mem[_764 + 32] = t
                                mem[_764 + 64] = Mask(112, 0, _750)
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            if t >= ('cd', 100).length:
                                revert with 0, 50
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            require ext_code.size(address(_720))
                            staticcall address(_720).0xd21220a7 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _787 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_787] == mem[_787 + 12 len 20]
                            if mem[_787 + 12 len 20] != address(cd[((32 * t) + cd[100] + 36)]):
                                _821 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_821] = 0
                                mem[_821 + 32] = t
                                mem[_821 + 64] = Mask(112, 0, _750)
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            _822 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_822] = 1
                            mem[_822 + 32] = t
                            mem[_822 + 64] = Mask(112, 0, _753)
                            _841 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_841] = 1
                            mem[_841 + 32] = s
                            mem[_841 + 64] = t
                            mem[_841 + 96] = idx
                            mem[_841 + 128] = Mask(112, 0, _753)
                            idx = 0
                            s = _841
                            t = mem[64]
                            while idx < 5:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            if t >= ('cd', 100).length:
                                revert with 0, 50
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            require ext_code.size(address(_720))
                            staticcall address(_720).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _783 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_783] == mem[_783 + 12 len 20]
                            if mem[_783 + 12 len 20] == address(cd[((32 * t) + cd[100] + 36)]):
                                _811 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_811] = 1
                                mem[_811 + 32] = t
                                mem[_811 + 64] = Mask(112, 0, _750)
                                _829 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_829] = 1
                                mem[_829 + 32] = s
                                mem[_829 + 64] = t
                                mem[_829 + 96] = idx
                                mem[_829 + 128] = Mask(112, 0, _750)
                                idx = 0
                                s = _829
                                t = mem[64]
                                while idx < 5:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                            else:
                                if Mask(112, 0, _753) < cd[((32 * t) + cd[68] + 36)] * 10^_724:
                                    _823 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_823] = 0
                                    mem[_823 + 32] = t
                                    mem[_823 + 64] = Mask(112, 0, _750)
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                if t >= ('cd', 100).length:
                                    revert with 0, 50
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                require ext_code.size(address(_720))
                                staticcall address(_720).0xd21220a7 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _875 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_875] == mem[_875 + 12 len 20]
                                if mem[_875 + 12 len 20] != address(cd[((32 * t) + cd[100] + 36)]):
                                    _907 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_907] = 0
                                    mem[_907 + 32] = t
                                    mem[_907 + 64] = Mask(112, 0, _750)
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                _908 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_908] = 1
                                mem[_908 + 32] = t
                                mem[_908 + 64] = Mask(112, 0, _753)
                                _916 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_916] = 1
                                mem[_916 + 32] = s
                                mem[_916 + 64] = t
                                mem[_916 + 96] = idx
                                mem[_916 + 128] = Mask(112, 0, _753)
                                idx = 0
                                s = _916
                                t = mem[64]
                                while idx < 5:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                    else:
                        v = 10
                        w = 1
                        u = mem[_723]
                        while u > 1:
                            if v > -1 / v:
                                revert with 0, 17
                            if not bool(u):
                                v = v * v
                                w = w
                                u = uint255(u) * 0.5
                                continue 
                            v = v * v
                            w = v * w
                            u = uint255(u) * 0.5
                            continue 
                        if w > -1 / v:
                            revert with 0, 17
                        if t >= ('cd', 68).length:
                            revert with 0, 50
                        if cd[((32 * t) + cd[68] + 36)] and v * w > -1 / cd[((32 * t) + cd[68] + 36)]:
                            revert with 0, 17
                        if cd[((32 * idx) + cd[36] + 36)] >= stor11.length:
                            revert with 0, 50
                        mem[0] = 11
                        if t >= ('cd', 100).length:
                            revert with 0, 50
                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[100] + 36)])
                        require ext_code.size(stor11[cd[((32 * idx) + cd[36] + 36)]].field_256)
                        staticcall stor11[cd[((32 * idx) + cd[36] + 36)]].field_256.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[100] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _974 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_974] == mem[_974 + 12 len 20]
                        if not mem[_974 + 12 len 20]:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            continue 
                        require ext_code.size(address(_720))
                        staticcall address(_720).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _978 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _979 = mem[_978]
                        require mem[_978] == mem[_978 + 18 len 14]
                        _980 = mem[_978 + 32]
                        require mem[_978 + 32] == mem[_978 + 50 len 14]
                        require mem[_978 + 64] == mem[_978 + 92 len 4]
                        if mem[_978 + 18 len 14] < cd[((32 * t) + cd[68] + 36)] * v * w:
                            if mem[_978 + 50 len 14] < cd[((32 * t) + cd[68] + 36)] * v * w:
                                _982 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_982] = 0
                                mem[_982 + 32] = t
                                mem[_982 + 64] = Mask(112, 0, _979)
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            if t >= ('cd', 100).length:
                                revert with 0, 50
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            require ext_code.size(address(_720))
                            staticcall address(_720).0xd21220a7 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _993 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_993] == mem[_993 + 12 len 20]
                            if mem[_993 + 12 len 20] != address(cd[((32 * t) + cd[100] + 36)]):
                                _998 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_998] = 0
                                mem[_998 + 32] = t
                                mem[_998 + 64] = Mask(112, 0, _979)
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            _999 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_999] = 1
                            mem[_999 + 32] = t
                            mem[_999 + 64] = Mask(112, 0, _980)
                            _1008 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_1008] = 1
                            mem[_1008 + 32] = s
                            mem[_1008 + 64] = t
                            mem[_1008 + 96] = idx
                            mem[_1008 + 128] = Mask(112, 0, _980)
                            idx = 0
                            s = _1008
                            t = mem[64]
                            while idx < 5:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            if t >= ('cd', 100).length:
                                revert with 0, 50
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            require ext_code.size(address(_720))
                            staticcall address(_720).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _991 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_991] == mem[_991 + 12 len 20]
                            if mem[_991 + 12 len 20] == address(cd[((32 * t) + cd[100] + 36)]):
                                _997 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_997] = 1
                                mem[_997 + 32] = t
                                mem[_997 + 64] = Mask(112, 0, _979)
                                _1002 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_1002] = 1
                                mem[_1002 + 32] = s
                                mem[_1002 + 64] = t
                                mem[_1002 + 96] = idx
                                mem[_1002 + 128] = Mask(112, 0, _979)
                                idx = 0
                                s = _1002
                                t = mem[64]
                                while idx < 5:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                            else:
                                if Mask(112, 0, _980) < cd[((32 * t) + cd[68] + 36)] * v * w:
                                    _1000 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1000] = 0
                                    mem[_1000 + 32] = t
                                    mem[_1000 + 64] = Mask(112, 0, _979)
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                if t >= ('cd', 100).length:
                                    revert with 0, 50
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                require ext_code.size(address(_720))
                                staticcall address(_720).0xd21220a7 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1023 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1023] == mem[_1023 + 12 len 20]
                                if mem[_1023 + 12 len 20] != address(cd[((32 * t) + cd[100] + 36)]):
                                    _1029 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1029] = 0
                                    mem[_1029 + 32] = t
                                    mem[_1029 + 64] = Mask(112, 0, _979)
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                _1030 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1030] = 1
                                mem[_1030 + 32] = t
                                mem[_1030 + 64] = Mask(112, 0, _980)
                                _1034 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_1034] = 1
                                mem[_1034 + 32] = s
                                mem[_1034 + 64] = t
                                mem[_1034 + 96] = idx
                                mem[_1034 + 128] = Mask(112, 0, _980)
                                idx = 0
                                s = _1034
                                t = mem[64]
                                while idx < 5:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                return memory
                  from mem[64]
                   len 160
            _709 = mem[64]
            mem[64] = mem[64] + 96
            mem[_709] = 0
            mem[_709 + 32] = 0
            mem[_709 + 64] = 0
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}



}
