contract main {




// =====================  Runtime code  =====================


#
#  - sub_183eaef7(?)
#  - owner()
#
array of address stor0;
array of address stor1;
uint256 sub_68bb600b;
address sub_7d3cdd60Address;
uint256 sub_cb6adbe9;
address sub_9ab8c78fAddress;
uint256 sub_8796f547;
address sub_62a251e3Address;
uint256 sub_5f0b2083;
uint256 stor9;
array of struct stor10;
uint256 paused;

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
    return stor10.length
}

function sub_cb6adbe9(?) payable {
    return sub_cb6adbe9
}

function _fallback() payable {
    revert
}

function setPaused(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    paused = arg1
}

function setdevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        stor1.length = arg1
    revert with 0, 'O'
}

function sub_28c02b76(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        sub_9ab8c78fAddress = address(arg1)
    revert with 0, 'O'
}

function sub_d41e4080(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        sub_62a251e3Address = address(arg1)
    revert with 0, 'O'
}

function sub_f6f8399e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        sub_7d3cdd60Address = address(arg1)
    revert with 0, 'O'
}

function sub_6d009f5d(?) payable {
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        stor10.length = 0
        idx = sha3(10)
        while sha3(10) + (2 * stor10.length) > idx:
            stor[idx] = 0
            stor1[idx] = 0
            idx = idx + 2
            continue 
    revert with 0, 'O'
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0, 'OZ'
        idx = 0
        while idx < stor0.length:
            mem[0] = 0
            if stor0[idx] == arg1:
                revert with 0, 'OA'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        stor0.length++
        stor0[stor0.length] = arg1
    revert with 0, 'O'
}

function getRouters() payable {
    mem[64] = (32 * stor10.length) + 128
    mem[96] = stor10.length
    s = 128
    idx = 0
    while idx < stor10.length:
        mem[0] = 10
        _11 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11] = stor10[idx].field_0
        mem[_11 + 32] = stor10[idx].field_256
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

function addRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0, 'R0'
        require ext_code.size(arg1)
        staticcall arg1.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        stor10.length++
        stor10[stor10.length].field_0 = arg1
        stor10[stor10.length].field_256 = mem[140 len 20]
    revert with 0, 'O'
}

function setFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        sub_68bb600b = arg1
        sub_cb6adbe9 = arg2
        sub_8796f547 = arg3
        sub_5f0b2083 = arg4
        if sub_68bb600b > -sub_cb6adbe9 - 1:
            revert with 'NH{q', 17
        if sub_68bb600b + sub_cb6adbe9 > -sub_8796f547 - 1:
            revert with 'NH{q', 17
        if sub_68bb600b + sub_cb6adbe9 + sub_8796f547 > -sub_5f0b2083 - 1:
            revert with 'NH{q', 17
        stor9 = sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083
    revert with 0, 'O'
}

function sub_02a9bc50(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args stor1.length, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    revert with 0, 'O'
}

function sub_a8b9b715(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args stor1.length, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    revert with 0, 'O'
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
        if stor0[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            s = 0
            while s < stor0.length:
                mem[0] = 0
                if stor0[s] != msg.sender:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
                if not address(cd[((32 * idx) + arg1 + 36)]):
                    revert with 0, 'R0'
                _48 = mem[64]
                mem[64] = mem[64] + 64
                mem[_48] = address(cd[((32 * idx) + arg1 + 36)])
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _53 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_53] == mem[_53 + 12 len 20]
                mem[_48 + 32] = mem[_53 + 12 len 20]
                stor10.length++
                mem[0] = 10
                stor10[stor10.length].field_0 = address(cd[((32 * idx) + arg1 + 36)])
                stor10[stor10.length].field_256 = mem[_48 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            revert with 0, 'O'
    revert with 0, 'O'
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
    require ext_call.return_data[0] == ext_call.return_data[0]
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
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _9
    require _8 + _9 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_9)] = mem[ceil32(return_data.size) + _8 + 128 len ceil32(_9)]
    if ceil32(_9) > _9:
        mem[(2 * ceil32(return_data.size)) + _9 + 128] = 0
    mem[mem[64]] = ext_call.return_data[0]
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = _9
    mem[mem[64] + 96 len ceil32(_9)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_9)]
    if ceil32(_9) > _9:
        mem[mem[64] + _9 + 96] = 0
    return ext_call.return_data[0], Array(len=_9, data=mem[mem[64] + 96 len ceil32(_9)])
}

function distribute(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2:
        s = arg2
        idx = mem[96]
        while idx > 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s <= idx:
                _45 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_45] == mem[_45]
                if mem[_45] >= s:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = s
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _61 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_61] == bool(mem[_61])
                if idx < s:
                    revert with 'NH{q', 17
                s = s
                idx = idx - s
                continue 
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_47] == mem[_47]
            if mem[_47] >= idx:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = idx
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _63 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_63] == bool(mem[_63])
            if idx < idx:
                revert with 'NH{q', 17
            s = idx
            idx = 0
            continue 
    else:
        idx = mem[96]
        while idx > 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] <= idx:
                _46 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_46] == mem[_46]
                if mem[_46] >= ext_call.return_data[0]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _62 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_62] == bool(mem[_62])
                if idx < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                idx = idx - ext_call.return_data[0]
                continue 
            _48 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_48] == mem[_48]
            if mem[_48] >= idx:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = idx
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _64 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_64] == bool(mem[_64])
            if idx < idx:
                revert with 'NH{q', 17
            idx = 0
            continue 
}

function sub_e4522133(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[100] = this.address
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = 64
    mem[ceil32(return_data.size) + 164] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = ceil32(return_data.size) + 196
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 100).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _42 = mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
    _43 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _43
    require _42 + (32 * _43) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _42 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _43:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _77 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _78 = mem[_77]
    require mem[_77] == mem[_77]
    mem[mem[64] + 4] = address(cd[36])
    mem[mem[64] + 36] = _78
    require ext_code.size(address(cd[68]))
    call address(cd[68]).0xa9059cbb with:
         gas gas_remaining wei
        args address(cd[36]), _78
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _81 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_81] == bool(mem[_81])
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _85 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_85] == mem[_85 + 12 len 20]
    if mem[_85 + 12 len 20] != address(cd[68]):
        if 0 >= _43:
            revert with 'NH{q', 50
        _89 = mem[(2 * ceil32(return_data.size)) + 128]
        _91 = mem[64]
        mem[64] = mem[64] + 32
        mem[_91 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_91 + 36] = 0
        mem[_91 + 68] = _89
        mem[_91 + 100] = msg.sender
        mem[_91 + 132] = 128
        mem[_91 + 164] = mem[_91]
        mem[_91 + 196 len ceil32(mem[_91])] = mem[_91 + 32 len ceil32(mem[_91])]
        if ceil32(mem[_91]) > mem[_91]:
            mem[_91 + mem[_91] + 196] = 0
        require ext_code.size(address(cd[36]))
        call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, _89, msg.sender, 128, mem[_91], mem[_91 + 196 len ceil32(mem[_91])]
    else:
        if 1 >= _43:
            revert with 'NH{q', 50
        _90 = mem[(2 * ceil32(return_data.size)) + 160]
        _92 = mem[64]
        mem[64] = mem[64] + 32
        mem[_92 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_92 + 36] = 0
        mem[_92 + 68] = _90
        mem[_92 + 100] = msg.sender
        mem[_92 + 132] = 128
        mem[_92 + 164] = mem[_92]
        mem[_92 + 196 len ceil32(mem[_92])] = mem[_92 + 32 len ceil32(mem[_92])]
        if ceil32(mem[_92]) > mem[_92]:
            mem[_92 + mem[_92] + 196] = 0
        require ext_code.size(address(cd[36]))
        call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, _90, msg.sender, 128, mem[_92], mem[_92 + 196 len ceil32(mem[_92])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3bc625e1(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    if not ('cd', 68).length:
        if ('cd', 68).length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * ('cd', 68).length) + 128] = ('cd', 68).length
        mem[64] = (64 * ('cd', 68).length) + 160
        if not ('cd', 68).length:
            idx = 0
            while idx < ('cd', 68).length:
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _152 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _160 = mem[_152]
                require mem[_152] == mem[_152 + 12 len 20]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(_160))
                staticcall address(_160).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _188 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _192 = mem[_188]
                require mem[_188] == mem[_188 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 0
                if idx >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 0
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _212 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _216 = mem[_212]
                require mem[_212] == mem[_212 + 12 len 20]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(_216))
                staticcall address(_216).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _228 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_228] == mem[_228 + 12 len 20]
                if mem[_228 + 12 len 20]:
                    require ext_code.size(address(_192))
                    staticcall address(_192).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _244 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _248 = mem[_244]
                    require mem[_244] == mem[_244 + 18 len 14]
                    _252 = mem[_244 + 32]
                    require mem[_244 + 32] == mem[_244 + 50 len 14]
                    require mem[_244 + 64] == mem[_244 + 92 len 4]
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    require ext_code.size(address(_192))
                    staticcall address(_192).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _268 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_268] == mem[_268 + 12 len 20]
                    if mem[_268 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = Mask(112, 0, _248)
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
                    else:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        require ext_code.size(address(_192))
                        staticcall address(_192).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _292 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_292] == mem[_292 + 12 len 20]
                        if mem[_292 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = Mask(112, 0, _252)
                            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _148 = mem[64]
            mem[mem[64]] = 64
            _156 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _312 = mem[(32 * ('cd', 68).length) + 128]
            mem[_148 + (32 * mem[96]) + 96] = mem[(32 * ('cd', 68).length) + 128]
            mem[_148 + (32 * _156) + 128 len 32 * _312] = mem[(32 * ('cd', 68).length) + 160 len 32 * _312]
            return memory
              from mem[64]
               len _148 + (32 * _156) + (32 * _312) + -mem[64] + 128
        mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        idx = 0
        while idx < ('cd', 68).length:
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _153 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _161 = mem[_153]
            require mem[_153] == mem[_153 + 12 len 20]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_161))
            staticcall address(_161).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _189 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _193 = mem[_189]
            require mem[_189] == mem[_189 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = 0
            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 0
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _213 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _217 = mem[_213]
            require mem[_213] == mem[_213 + 12 len 20]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_217))
            staticcall address(_217).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _229 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_229] == mem[_229 + 12 len 20]
            if mem[_229 + 12 len 20]:
                require ext_code.size(address(_193))
                staticcall address(_193).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _245 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _249 = mem[_245]
                require mem[_245] == mem[_245 + 18 len 14]
                _253 = mem[_245 + 32]
                require mem[_245 + 32] == mem[_245 + 50 len 14]
                require mem[_245 + 64] == mem[_245 + 92 len 4]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(_193))
                staticcall address(_193).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _269 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_269] == mem[_269 + 12 len 20]
                if mem[_269 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = Mask(112, 0, _249)
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
                else:
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    require ext_code.size(address(_193))
                    staticcall address(_193).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _293 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_293] == mem[_293 + 12 len 20]
                    if mem[_293 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = Mask(112, 0, _253)
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _149 = mem[64]
        mem[mem[64]] = 64
        _157 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _313 = mem[(32 * ('cd', 68).length) + 128]
        mem[_149 + (32 * mem[96]) + 96] = mem[(32 * ('cd', 68).length) + 128]
        mem[_149 + (32 * _157) + 128 len 32 * _313] = mem[(32 * ('cd', 68).length) + 160 len 32 * _313]
        return memory
          from mem[64]
           len _149 + (32 * _157) + (32 * _313) + -mem[64] + 128
    mem[128 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 68).length
    mem[64] = (64 * ('cd', 68).length) + 160
    if not ('cd', 68).length:
        idx = 0
        while idx < ('cd', 68).length:
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _154 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _162 = mem[_154]
            require mem[_154] == mem[_154 + 12 len 20]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_162))
            staticcall address(_162).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _190 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _194 = mem[_190]
            require mem[_190] == mem[_190 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = 0
            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 0
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _214 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _218 = mem[_214]
            require mem[_214] == mem[_214 + 12 len 20]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_218))
            staticcall address(_218).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _230 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_230] == mem[_230 + 12 len 20]
            if mem[_230 + 12 len 20]:
                require ext_code.size(address(_194))
                staticcall address(_194).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _246 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _250 = mem[_246]
                require mem[_246] == mem[_246 + 18 len 14]
                _254 = mem[_246 + 32]
                require mem[_246 + 32] == mem[_246 + 50 len 14]
                require mem[_246 + 64] == mem[_246 + 92 len 4]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(_194))
                staticcall address(_194).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _270 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_270] == mem[_270 + 12 len 20]
                if mem[_270 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = Mask(112, 0, _250)
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
                else:
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    require ext_code.size(address(_194))
                    staticcall address(_194).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _294 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_294] == mem[_294 + 12 len 20]
                    if mem[_294 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = Mask(112, 0, _254)
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _150 = mem[64]
        mem[mem[64]] = 64
        _158 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _314 = mem[(32 * ('cd', 68).length) + 128]
        mem[_150 + (32 * mem[96]) + 96] = mem[(32 * ('cd', 68).length) + 128]
        mem[_150 + (32 * _158) + 128 len 32 * _314] = mem[(32 * ('cd', 68).length) + 160 len 32 * _314]
        return memory
          from mem[64]
           len _150 + (32 * _158) + (32 * _314) + -mem[64] + 128
    mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    idx = 0
    while idx < ('cd', 68).length:
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _155 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _163 = mem[_155]
        require mem[_155] == mem[_155 + 12 len 20]
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(_163))
        staticcall address(_163).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _191 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _195 = mem[_191]
        require mem[_191] == mem[_191 + 12 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = 0
        if idx >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 0
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _215 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _219 = mem[_215]
        require mem[_215] == mem[_215 + 12 len 20]
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(_219))
        staticcall address(_219).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _231 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_231] == mem[_231 + 12 len 20]
        if mem[_231 + 12 len 20]:
            require ext_code.size(address(_195))
            staticcall address(_195).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _247 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _251 = mem[_247]
            require mem[_247] == mem[_247 + 18 len 14]
            _255 = mem[_247 + 32]
            require mem[_247 + 32] == mem[_247 + 50 len 14]
            require mem[_247 + 64] == mem[_247 + 92 len 4]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_195))
            staticcall address(_195).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _271 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_271] == mem[_271 + 12 len 20]
            if mem[_271 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = Mask(112, 0, _251)
                if idx >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
            else:
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(_195))
                staticcall address(_195).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _295 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_295] == mem[_295 + 12 len 20]
                if mem[_295 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = Mask(112, 0, _255)
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _151 = mem[64]
    mem[mem[64]] = 64
    _159 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _315 = mem[(32 * ('cd', 68).length) + 128]
    mem[_151 + (32 * mem[96]) + 96] = mem[(32 * ('cd', 68).length) + 128]
    mem[_151 + (32 * _159) + 128 len 32 * _315] = mem[(32 * ('cd', 68).length) + 160 len 32 * _315]
    return memory
      from mem[64]
       len _151 + (32 * _159) + (32 * _315) + -mem[64] + 128
}

function sub_f3ff11d2(?) payable {
    require calldata.size - 4 >= 96
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
    if ('cd', 4).length and ('cd', 36).length > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if ('cd', 4).length * ('cd', 36).length and ('cd', 68).length > -1 / ('cd', 4).length * ('cd', 36).length:
        revert with 'NH{q', 17
    if ('cd', 4).length * ('cd', 36).length * ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length * ('cd', 36).length * ('cd', 68).length
    mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 128
    if not ('cd', 4).length * ('cd', 36).length * ('cd', 68).length:
        idx = 0
        while idx < ('cd', 36).length:
            s = 0
            while s < ('cd', 4).length:
                require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if ('cd', 68).length > test266151307():
                    revert with 'NH{q', 65
                _572 = mem[64]
                mem[mem[64]] = ('cd', 68).length
                if not ('cd', 68).length:
                    if ('cd', 68).length > test266151307():
                        revert with 'NH{q', 65
                    _574 = mem[64] + (32 * ('cd', 68).length) + 32
                    mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                    mem[64] = _574 + (32 * ('cd', 68).length) + 32
                    if not ('cd', 68).length:
                        t = 0
                        while t < ('cd', 68).length:
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _869 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _894 = mem[_869]
                            require mem[_869] == mem[_869 + 12 len 20]
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(_894))
                            staticcall address(_894).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _962 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _967 = mem[_962]
                            require mem[_962] == mem[_962 + 12 len 20]
                            if t >= mem[_572]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _572 + 32] = 0
                            if t >= mem[_574]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _574 + 32] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _990 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _994 = mem[_990]
                            require mem[_990] == mem[_990 + 12 len 20]
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(_994))
                            staticcall address(_994).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1046 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1046] == mem[_1046 + 12 len 20]
                            if mem[_1046 + 12 len 20]:
                                require ext_code.size(address(_967))
                                staticcall address(_967).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1062 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1066 = mem[_1062]
                                require mem[_1062] == mem[_1062 + 18 len 14]
                                _1074 = mem[_1062 + 32]
                                require mem[_1062 + 32] == mem[_1062 + 50 len 14]
                                require mem[_1062 + 64] == mem[_1062 + 92 len 4]
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_967))
                                staticcall address(_967).token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1115 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1115] == mem[_1115 + 12 len 20]
                                if mem[_1115 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                    if t >= mem[_572]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _572 + 32] = Mask(112, 0, _1066)
                                    if t >= mem[_574]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _574 + 32] = 1
                                else:
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_967))
                                    staticcall address(_967).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1150 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1150] == mem[_1150 + 12 len 20]
                                    if mem[_1150 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                        if t >= mem[_572]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _572 + 32] = Mask(112, 0, _1074)
                                        if t >= mem[_574]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _574 + 32] = 1
                            if t == -1:
                                revert with 'NH{q', 17
                            t = t + 1
                            continue 
                        _1182 = mem[_572]
                        t = 0
                        u = 0
                        while t < _1182:
                            _1186 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1186] = idx
                            mem[_1186 + 32] = s
                            if t >= mem[_572]:
                                revert with 'NH{q', 50
                            mem[_1186 + 64] = mem[(32 * t) + _572 + 32]
                            if t >= mem[_574]:
                                revert with 'NH{q', 50
                            mem[_1186 + 96] = mem[(32 * t) + _574 + 32]
                            if u == -1:
                                revert with 'NH{q', 17
                            if u >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * u) + 128] = _1186
                            if t == -1:
                                revert with 'NH{q', 17
                            t = t + 1
                            u = u + 1
                            continue 
                    else:
                        mem[_574 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                        t = 0
                        while t < ('cd', 68).length:
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _871 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _896 = mem[_871]
                            require mem[_871] == mem[_871 + 12 len 20]
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(_896))
                            staticcall address(_896).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _963 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _968 = mem[_963]
                            require mem[_963] == mem[_963 + 12 len 20]
                            if t >= mem[_572]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _572 + 32] = 0
                            if t >= mem[_574]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _574 + 32] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _991 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _995 = mem[_991]
                            require mem[_991] == mem[_991 + 12 len 20]
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(_995))
                            staticcall address(_995).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1047 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1047] == mem[_1047 + 12 len 20]
                            if mem[_1047 + 12 len 20]:
                                require ext_code.size(address(_968))
                                staticcall address(_968).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1063 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1067 = mem[_1063]
                                require mem[_1063] == mem[_1063 + 18 len 14]
                                _1075 = mem[_1063 + 32]
                                require mem[_1063 + 32] == mem[_1063 + 50 len 14]
                                require mem[_1063 + 64] == mem[_1063 + 92 len 4]
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_968))
                                staticcall address(_968).token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1116 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1116] == mem[_1116 + 12 len 20]
                                if mem[_1116 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                    if t >= mem[_572]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _572 + 32] = Mask(112, 0, _1067)
                                    if t >= mem[_574]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _574 + 32] = 1
                                else:
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_968))
                                    staticcall address(_968).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1151 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1151] == mem[_1151 + 12 len 20]
                                    if mem[_1151 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                        if t >= mem[_572]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _572 + 32] = Mask(112, 0, _1075)
                                        if t >= mem[_574]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _574 + 32] = 1
                            if t == -1:
                                revert with 'NH{q', 17
                            t = t + 1
                            continue 
                        _1183 = mem[_572]
                        t = 0
                        u = 0
                        while t < _1183:
                            _1188 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1188] = idx
                            mem[_1188 + 32] = s
                            if t >= mem[_572]:
                                revert with 'NH{q', 50
                            mem[_1188 + 64] = mem[(32 * t) + _572 + 32]
                            if t >= mem[_574]:
                                revert with 'NH{q', 50
                            mem[_1188 + 96] = mem[(32 * t) + _574 + 32]
                            if u == -1:
                                revert with 'NH{q', 17
                            if u >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * u) + 128] = _1188
                            if t == -1:
                                revert with 'NH{q', 17
                            t = t + 1
                            u = u + 1
                            continue 
                else:
                    mem[mem[64] + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                    if ('cd', 68).length > test266151307():
                        revert with 'NH{q', 65
                    mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                    mem[64] = _572 + (64 * ('cd', 68).length) + 64
                    if not ('cd', 68).length:
                        t = 0
                        while t < ('cd', 68).length:
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _873 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _898 = mem[_873]
                            require mem[_873] == mem[_873 + 12 len 20]
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(_898))
                            staticcall address(_898).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _964 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _969 = mem[_964]
                            require mem[_964] == mem[_964 + 12 len 20]
                            if t >= mem[_572]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _572 + 32] = 0
                            if t >= mem[_572 + (32 * ('cd', 68).length) + 32]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _572 + (32 * ('cd', 68).length) + 64] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _992 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _996 = mem[_992]
                            require mem[_992] == mem[_992 + 12 len 20]
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(_996))
                            staticcall address(_996).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1048 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1048] == mem[_1048 + 12 len 20]
                            if mem[_1048 + 12 len 20]:
                                require ext_code.size(address(_969))
                                staticcall address(_969).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1064 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1068 = mem[_1064]
                                require mem[_1064] == mem[_1064 + 18 len 14]
                                _1076 = mem[_1064 + 32]
                                require mem[_1064 + 32] == mem[_1064 + 50 len 14]
                                require mem[_1064 + 64] == mem[_1064 + 92 len 4]
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_969))
                                staticcall address(_969).token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1117 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1117] == mem[_1117 + 12 len 20]
                                if mem[_1117 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                    if t >= mem[_572]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _572 + 32] = Mask(112, 0, _1068)
                                    if t >= mem[_572 + (32 * ('cd', 68).length) + 32]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _572 + (32 * ('cd', 68).length) + 64] = 1
                                else:
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_969))
                                    staticcall address(_969).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1152 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1152] == mem[_1152 + 12 len 20]
                                    if mem[_1152 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                        if t >= mem[_572]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _572 + 32] = Mask(112, 0, _1076)
                                        if t >= mem[_572 + (32 * ('cd', 68).length) + 32]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _572 + (32 * ('cd', 68).length) + 64] = 1
                            if t == -1:
                                revert with 'NH{q', 17
                            t = t + 1
                            continue 
                        _1184 = mem[_572]
                        t = 0
                        u = 0
                        while t < _1184:
                            _1190 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1190] = idx
                            mem[_1190 + 32] = s
                            if t >= mem[_572]:
                                revert with 'NH{q', 50
                            mem[_1190 + 64] = mem[(32 * t) + _572 + 32]
                            if t >= mem[_572 + (32 * ('cd', 68).length) + 32]:
                                revert with 'NH{q', 50
                            mem[_1190 + 96] = mem[(32 * t) + _572 + (32 * ('cd', 68).length) + 64]
                            if u == -1:
                                revert with 'NH{q', 17
                            if u >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * u) + 128] = _1190
                            if t == -1:
                                revert with 'NH{q', 17
                            t = t + 1
                            u = u + 1
                            continue 
                    else:
                        mem[_572 + (32 * ('cd', 68).length) + 64 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                        t = 0
                        while t < ('cd', 68).length:
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _875 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _900 = mem[_875]
                            require mem[_875] == mem[_875 + 12 len 20]
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(_900))
                            staticcall address(_900).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _965 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _970 = mem[_965]
                            require mem[_965] == mem[_965 + 12 len 20]
                            if t >= mem[_572]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _572 + 32] = 0
                            if t >= mem[_572 + (32 * ('cd', 68).length) + 32]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _572 + (32 * ('cd', 68).length) + 64] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _993 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _997 = mem[_993]
                            require mem[_993] == mem[_993 + 12 len 20]
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(_997))
                            staticcall address(_997).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1049 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1049] == mem[_1049 + 12 len 20]
                            if mem[_1049 + 12 len 20]:
                                require ext_code.size(address(_970))
                                staticcall address(_970).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1065 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1069 = mem[_1065]
                                require mem[_1065] == mem[_1065 + 18 len 14]
                                _1077 = mem[_1065 + 32]
                                require mem[_1065 + 32] == mem[_1065 + 50 len 14]
                                require mem[_1065 + 64] == mem[_1065 + 92 len 4]
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_970))
                                staticcall address(_970).token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1118 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1118] == mem[_1118 + 12 len 20]
                                if mem[_1118 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                    if t >= mem[_572]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _572 + 32] = Mask(112, 0, _1069)
                                    if t >= mem[_572 + (32 * ('cd', 68).length) + 32]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _572 + (32 * ('cd', 68).length) + 64] = 1
                                else:
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_970))
                                    staticcall address(_970).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1153 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1153] == mem[_1153 + 12 len 20]
                                    if mem[_1153 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                        if t >= mem[_572]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _572 + 32] = Mask(112, 0, _1077)
                                        if t >= mem[_572 + (32 * ('cd', 68).length) + 32]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t) + _572 + (32 * ('cd', 68).length) + 64] = 1
                            if t == -1:
                                revert with 'NH{q', 17
                            t = t + 1
                            continue 
                        _1185 = mem[_572]
                        t = 0
                        u = 0
                        while t < _1185:
                            _1192 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1192] = idx
                            mem[_1192 + 32] = s
                            if t >= mem[_572]:
                                revert with 'NH{q', 50
                            mem[_1192 + 64] = mem[(32 * t) + _572 + 32]
                            if t >= mem[_572 + (32 * ('cd', 68).length) + 32]:
                                revert with 'NH{q', 50
                            mem[_1192 + 96] = mem[(32 * t) + _572 + (32 * ('cd', 68).length) + 64]
                            if u == -1:
                                revert with 'NH{q', 17
                            if u >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * u) + 128] = _1192
                            if t == -1:
                                revert with 'NH{q', 17
                            t = t + 1
                            u = u + 1
                            continue 
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _257 = mem[64]
        mem[mem[64]] = 32
        _258 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _258:
            _559 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_559 + 32]
            mem[t + 64] = mem[_559 + 64]
            mem[t + 96] = mem[_559 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _257 + (128 * _258) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 256
    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 128] = 0
    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 160] = 0
    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 192] = 0
    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 224] = 0
    mem[var43001] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 128
    s = var43001
    idx = var43002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 128] = 0
        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 160] = 0
        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 192] = 0
        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 224] = 0
        mem[s + 32] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        s = 0
        while s < ('cd', 4).length:
            require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if ('cd', 68).length > test266151307():
                revert with 'NH{q', 65
            _1216 = mem[64]
            mem[mem[64]] = ('cd', 68).length
            if not ('cd', 68).length:
                if ('cd', 68).length > test266151307():
                    revert with 'NH{q', 65
                _1217 = mem[64] + (32 * ('cd', 68).length) + 32
                mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                mem[64] = _1217 + (32 * ('cd', 68).length) + 32
                if not ('cd', 68).length:
                    t = 0
                    while t < ('cd', 68).length:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1368 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1392 = mem[_1368]
                        require mem[_1368] == mem[_1368 + 12 len 20]
                        if t >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                        require ext_code.size(address(_1392))
                        staticcall address(_1392).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1411 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1415 = mem[_1411]
                        require mem[_1411] == mem[_1411 + 12 len 20]
                        if t >= mem[_1216]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1216 + 32] = 0
                        if t >= mem[_1217]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1217 + 32] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1435 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1439 = mem[_1435]
                        require mem[_1435] == mem[_1435 + 12 len 20]
                        if t >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                        require ext_code.size(address(_1439))
                        staticcall address(_1439).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1451 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1451] == mem[_1451 + 12 len 20]
                        if mem[_1451 + 12 len 20]:
                            require ext_code.size(address(_1415))
                            staticcall address(_1415).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1467 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1471 = mem[_1467]
                            require mem[_1467] == mem[_1467 + 18 len 14]
                            _1475 = mem[_1467 + 32]
                            require mem[_1467 + 32] == mem[_1467 + 50 len 14]
                            require mem[_1467 + 64] == mem[_1467 + 92 len 4]
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(_1415))
                            staticcall address(_1415).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1491 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1491] == mem[_1491 + 12 len 20]
                            if mem[_1491 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                if t >= mem[_1216]:
                                    revert with 'NH{q', 50
                                mem[(32 * t) + _1216 + 32] = Mask(112, 0, _1471)
                                if t >= mem[_1217]:
                                    revert with 'NH{q', 50
                                mem[(32 * t) + _1217 + 32] = 1
                            else:
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_1415))
                                staticcall address(_1415).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1515 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1515] == mem[_1515 + 12 len 20]
                                if mem[_1515 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                    if t >= mem[_1216]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _1216 + 32] = Mask(112, 0, _1475)
                                    if t >= mem[_1217]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _1217 + 32] = 1
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        continue 
                    _1531 = mem[_1216]
                    t = 0
                    u = 0
                    while t < _1531:
                        _1535 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1535] = idx
                        mem[_1535 + 32] = s
                        if t >= mem[_1216]:
                            revert with 'NH{q', 50
                        mem[_1535 + 64] = mem[(32 * t) + _1216 + 32]
                        if t >= mem[_1217]:
                            revert with 'NH{q', 50
                        mem[_1535 + 96] = mem[(32 * t) + _1217 + 32]
                        if u == -1:
                            revert with 'NH{q', 17
                        if u >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * u) + 128] = _1535
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = u + 1
                        continue 
                else:
                    mem[_1217 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                    t = 0
                    while t < ('cd', 68).length:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1370 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1394 = mem[_1370]
                        require mem[_1370] == mem[_1370 + 12 len 20]
                        if t >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                        require ext_code.size(address(_1394))
                        staticcall address(_1394).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1412 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1416 = mem[_1412]
                        require mem[_1412] == mem[_1412 + 12 len 20]
                        if t >= mem[_1216]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1216 + 32] = 0
                        if t >= mem[_1217]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1217 + 32] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1436 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1440 = mem[_1436]
                        require mem[_1436] == mem[_1436 + 12 len 20]
                        if t >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                        require ext_code.size(address(_1440))
                        staticcall address(_1440).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1452 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1452] == mem[_1452 + 12 len 20]
                        if mem[_1452 + 12 len 20]:
                            require ext_code.size(address(_1416))
                            staticcall address(_1416).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1468 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1472 = mem[_1468]
                            require mem[_1468] == mem[_1468 + 18 len 14]
                            _1476 = mem[_1468 + 32]
                            require mem[_1468 + 32] == mem[_1468 + 50 len 14]
                            require mem[_1468 + 64] == mem[_1468 + 92 len 4]
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(_1416))
                            staticcall address(_1416).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1492 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1492] == mem[_1492 + 12 len 20]
                            if mem[_1492 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                if t >= mem[_1216]:
                                    revert with 'NH{q', 50
                                mem[(32 * t) + _1216 + 32] = Mask(112, 0, _1472)
                                if t >= mem[_1217]:
                                    revert with 'NH{q', 50
                                mem[(32 * t) + _1217 + 32] = 1
                            else:
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_1416))
                                staticcall address(_1416).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1516 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1516] == mem[_1516 + 12 len 20]
                                if mem[_1516 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                    if t >= mem[_1216]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _1216 + 32] = Mask(112, 0, _1476)
                                    if t >= mem[_1217]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _1217 + 32] = 1
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        continue 
                    _1532 = mem[_1216]
                    t = 0
                    u = 0
                    while t < _1532:
                        _1537 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1537] = idx
                        mem[_1537 + 32] = s
                        if t >= mem[_1216]:
                            revert with 'NH{q', 50
                        mem[_1537 + 64] = mem[(32 * t) + _1216 + 32]
                        if t >= mem[_1217]:
                            revert with 'NH{q', 50
                        mem[_1537 + 96] = mem[(32 * t) + _1217 + 32]
                        if u == -1:
                            revert with 'NH{q', 17
                        if u >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * u) + 128] = _1537
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = u + 1
                        continue 
            else:
                mem[mem[64] + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                if ('cd', 68).length > test266151307():
                    revert with 'NH{q', 65
                mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                mem[64] = _1216 + (64 * ('cd', 68).length) + 64
                if not ('cd', 68).length:
                    t = 0
                    while t < ('cd', 68).length:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1372 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1396 = mem[_1372]
                        require mem[_1372] == mem[_1372 + 12 len 20]
                        if t >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                        require ext_code.size(address(_1396))
                        staticcall address(_1396).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1413 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1417 = mem[_1413]
                        require mem[_1413] == mem[_1413 + 12 len 20]
                        if t >= mem[_1216]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1216 + 32] = 0
                        if t >= mem[_1216 + (32 * ('cd', 68).length) + 32]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1216 + (32 * ('cd', 68).length) + 64] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1437 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1441 = mem[_1437]
                        require mem[_1437] == mem[_1437 + 12 len 20]
                        if t >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                        require ext_code.size(address(_1441))
                        staticcall address(_1441).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1453 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1453] == mem[_1453 + 12 len 20]
                        if mem[_1453 + 12 len 20]:
                            require ext_code.size(address(_1417))
                            staticcall address(_1417).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1469 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1473 = mem[_1469]
                            require mem[_1469] == mem[_1469 + 18 len 14]
                            _1477 = mem[_1469 + 32]
                            require mem[_1469 + 32] == mem[_1469 + 50 len 14]
                            require mem[_1469 + 64] == mem[_1469 + 92 len 4]
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(_1417))
                            staticcall address(_1417).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1493 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1493] == mem[_1493 + 12 len 20]
                            if mem[_1493 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                if t >= mem[_1216]:
                                    revert with 'NH{q', 50
                                mem[(32 * t) + _1216 + 32] = Mask(112, 0, _1473)
                                if t >= mem[_1216 + (32 * ('cd', 68).length) + 32]:
                                    revert with 'NH{q', 50
                                mem[(32 * t) + _1216 + (32 * ('cd', 68).length) + 64] = 1
                            else:
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_1417))
                                staticcall address(_1417).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1517 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1517] == mem[_1517 + 12 len 20]
                                if mem[_1517 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                    if t >= mem[_1216]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _1216 + 32] = Mask(112, 0, _1477)
                                    if t >= mem[_1216 + (32 * ('cd', 68).length) + 32]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _1216 + (32 * ('cd', 68).length) + 64] = 1
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        continue 
                    _1533 = mem[_1216]
                    t = 0
                    u = 0
                    while t < _1533:
                        _1539 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1539] = idx
                        mem[_1539 + 32] = s
                        if t >= mem[_1216]:
                            revert with 'NH{q', 50
                        mem[_1539 + 64] = mem[(32 * t) + _1216 + 32]
                        if t >= mem[_1216 + (32 * ('cd', 68).length) + 32]:
                            revert with 'NH{q', 50
                        mem[_1539 + 96] = mem[(32 * t) + _1216 + (32 * ('cd', 68).length) + 64]
                        if u == -1:
                            revert with 'NH{q', 17
                        if u >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * u) + 128] = _1539
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = u + 1
                        continue 
                else:
                    mem[_1216 + (32 * ('cd', 68).length) + 64 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                    t = 0
                    while t < ('cd', 68).length:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1374 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1398 = mem[_1374]
                        require mem[_1374] == mem[_1374 + 12 len 20]
                        if t >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                        require ext_code.size(address(_1398))
                        staticcall address(_1398).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1414 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1418 = mem[_1414]
                        require mem[_1414] == mem[_1414 + 12 len 20]
                        if t >= mem[_1216]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1216 + 32] = 0
                        if t >= mem[_1216 + (32 * ('cd', 68).length) + 32]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1216 + (32 * ('cd', 68).length) + 64] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1438 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1442 = mem[_1438]
                        require mem[_1438] == mem[_1438 + 12 len 20]
                        if t >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                        require ext_code.size(address(_1442))
                        staticcall address(_1442).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1454 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1454] == mem[_1454 + 12 len 20]
                        if mem[_1454 + 12 len 20]:
                            require ext_code.size(address(_1418))
                            staticcall address(_1418).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1470 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1474 = mem[_1470]
                            require mem[_1470] == mem[_1470 + 18 len 14]
                            _1478 = mem[_1470 + 32]
                            require mem[_1470 + 32] == mem[_1470 + 50 len 14]
                            require mem[_1470 + 64] == mem[_1470 + 92 len 4]
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(_1418))
                            staticcall address(_1418).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1494 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1494] == mem[_1494 + 12 len 20]
                            if mem[_1494 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                if t >= mem[_1216]:
                                    revert with 'NH{q', 50
                                mem[(32 * t) + _1216 + 32] = Mask(112, 0, _1474)
                                if t >= mem[_1216 + (32 * ('cd', 68).length) + 32]:
                                    revert with 'NH{q', 50
                                mem[(32 * t) + _1216 + (32 * ('cd', 68).length) + 64] = 1
                            else:
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_1418))
                                staticcall address(_1418).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1518 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1518] == mem[_1518 + 12 len 20]
                                if mem[_1518 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                    if t >= mem[_1216]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _1216 + 32] = Mask(112, 0, _1478)
                                    if t >= mem[_1216 + (32 * ('cd', 68).length) + 32]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t) + _1216 + (32 * ('cd', 68).length) + 64] = 1
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        continue 
                    _1534 = mem[_1216]
                    t = 0
                    u = 0
                    while t < _1534:
                        _1541 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1541] = idx
                        mem[_1541 + 32] = s
                        if t >= mem[_1216]:
                            revert with 'NH{q', 50
                        mem[_1541 + 64] = mem[(32 * t) + _1216 + 32]
                        if t >= mem[_1216 + (32 * ('cd', 68).length) + 32]:
                            revert with 'NH{q', 50
                        mem[_1541 + 96] = mem[(32 * t) + _1216 + (32 * ('cd', 68).length) + 64]
                        if u == -1:
                            revert with 'NH{q', 17
                        if u >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * u) + 128] = _1541
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = u + 1
                        continue 
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _867 = mem[64]
    mem[mem[64]] = 32
    _892 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _892:
        _1194 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_1194 + 32]
        mem[t + 64] = mem[_1194 + 64]
        mem[t + 96] = mem[_1194 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _867 + (128 * _892) + -mem[64] + 64
}



}
